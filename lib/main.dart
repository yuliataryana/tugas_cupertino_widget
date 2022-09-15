import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Tugas Cupertino Widget',
      theme: CupertinoThemeData(
        brightness: Brightness.light
      ), 
      home: TampilAlertDialog()
    );


  }
}

class TampilAlertDialog extends StatelessWidget {
  const TampilAlertDialog({Key? key}) :super(key: key);
  void _tampilAlertDialog(context) {
    showCupertinoModalPopup(
      context: context, builder: (context) => CupertinoAlertDialog(
        content: Text("Apakah sudah benar?", style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          CupertinoDialogAction(child: Text("Belum"), onPressed: () => Navigator.pop(context),),
          CupertinoDialogAction(child: Text("Sudah"), onPressed: () => Navigator.pop(context),),
        ],
      ));
  }
 
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
          padding: EdgeInsets.all(0),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            ),
            onPressed: () {},
          ),
          backgroundColor: Colors.pink,
          middle: Text(
            "Tugas Cupertino Widget",
            style: TextStyle(color: Colors.black),
          ),
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                CupertinoIcons.settings,
                color: Colors.white,
                size: 22,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
                size: 22,
              ),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello!! Saya Yulia Taryana dan ini tugas saya.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              CupertinoButton(
                color: Colors.pink,
                child: Text(
                  "Coba",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () => _tampilAlertDialog(context))
            ],
          ),
        ),
      );
  }
}