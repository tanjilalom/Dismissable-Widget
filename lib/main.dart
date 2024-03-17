import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Dismissible(
          key: ValueKey("key"),
          secondaryBackground: Container(
            color: Colors.deepPurple[100],
            child: Icon(Icons.delete),
          ),
          background: Container(
            color: Colors.deepPurple[100],
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 20), child: Text("Delete")),
                SizedBox(width: 10,),
                Icon(Icons.delete),
              ],
            ),
          ),
          child: ListTile(
            title: Text("Dismissable Widget Said so"),
            subtitle:
                Text("easily dismissable widget so that work will go smooth"),
            trailing: Icon(Icons.ac_unit),
          ),
        ),
      ),
    );
  }
}
