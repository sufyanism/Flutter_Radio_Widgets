import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Radio Example'),
        ),
        body: const Center(
          child: MyRadioGroup(),
        ),
      ),
    );
  }
}

class MyRadioGroup extends StatefulWidget {
  const MyRadioGroup({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyRadioGroupState createState() => _MyRadioGroupState();
}

class _MyRadioGroupState extends State<MyRadioGroup> {
  String selectedRadio = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RadioListTile(
          title: const Text('Option 1'),
          value: 'Option 1',
          groupValue: selectedRadio,
          onChanged: (value) {
            setState(() {
              selectedRadio = value as String;
            });
          },
        ),
        RadioListTile(
          title: const Text('Option 2'),
          value: 'Option 2',
          groupValue: selectedRadio,
          onChanged: (value) {
            setState(() {
              selectedRadio = value as String;
            });
          },
        ),
        RadioListTile(
          title: const Text('Option 3'),
          value: 'Option 3',
          groupValue: selectedRadio,
          onChanged: (value) {
            setState(() {
              selectedRadio = value as String;
            });
          },
        ),
        const SizedBox(height: 20),
        Text('Selected Radio: $selectedRadio'),
      ],
    );
  }
}
