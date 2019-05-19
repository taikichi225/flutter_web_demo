import 'dart:html' as prefix0;

import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Top(),
    );
  }
}

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Happy Birthday!!!"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(20, (index) {
          return Container(
            margin: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width/3,
            height: MediaQuery.of(context).size.width/3,
            child: Image.asset("birthday${index%9}.jpg", fit:BoxFit.fill),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Image.asset("cake.png"),
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => NextPage()));
        },
      ),
    );
  }
}


class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Happy Birthday!!!"),
        leading: GestureDetector(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Image.asset("back.png"),
          ),
          onTap: () { Navigator.of(context).pop(); },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 15),
                child: Text("Happy Birthday!!!", style: TextStyle(fontSize: 60),),
              ),
              Image.asset("birthday_nextpage.png"),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text("To ME!!!", style: TextStyle(fontSize: 60),),
              ),
            ],
          ),
        ),
      )
    );
  }
}