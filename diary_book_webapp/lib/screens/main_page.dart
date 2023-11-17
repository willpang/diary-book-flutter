import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String? _dropDownText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        toolbarHeight: 100,
        elevation: 4,
        title: Row(children: [
          Text('Diary',
              style: TextStyle(fontSize: 39, color: Colors.blueGrey.shade400)),
          Text('Book', style: TextStyle(fontSize: 39, color: Colors.green))
        ]),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton(
                    items: <String>['Latest', 'Earliest'].map((String value) {
                      return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.grey),
                          ));
                    }).toList(),
                    hint: (_dropDownText == null)
                        ? Text('Select')
                        : Text(_dropDownText!),
                    onChanged: (value) {
                      if (value == 'Latest') {
                        setState(() {
                          _dropDownText = value;
                        });
                      } else if (value == 'Earliest') {
                        setState(() {
                          _dropDownText = value;
                        });
                      }
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}
