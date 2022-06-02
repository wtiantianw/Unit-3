import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return MaterialApp(
      title: "第三章 基础组件",
      home: Scaffold(
        appBar: AppBar(
          title: Text('基础组件'),
          elevation: 30.0, //设置标题阴影 不需要的话值设置成 0.0
        ),
        body: MyHome(),
      ),
      theme: ThemeData(
          //设置主题颜色
          primarySwatch: Colors.purple),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello world",
          textAlign: TextAlign.left,
        ),
        Text(
          "Hello world! I'm Jack. " * 4,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          "Hello world",
          textScaleFactor: 1.5,
        ),
        Text(
          "Hello world",
          style: TextStyle(
              color: Colors.blue,
              fontSize: 18.0,
              height: 1.2,
              fontFamily: "Courier",
              background: Paint()..color = Colors.yellow,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed),
        ),
        Text.rich(TextSpan(children: [
          TextSpan(text: "Home: "),
          TextSpan(
            text: "https://flutterchina.club",
            style: TextStyle(color: Colors.blue),
          ),
        ])),
        DefaultTextStyle(
          //1.设置文本默认样式
          style: TextStyle(
            color: Colors.red,
            fontSize: 20.0,
          ),
          textAlign: TextAlign.start,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("hello world"),
              Text("I am Jack"),
              Text(
                "I am Jack",
                style: TextStyle(
                    inherit: false, //2.不继承默认样式
                    color: Colors.grey),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("normal"),
              onPressed: () {},
            ),
            TextButton(
              child: Text("normal"),
              onPressed: () {},
            ),
            OutlineButton(
              child: Text("normal"),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {},
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.send),
              label: Text("发送"),
              onPressed: () {},
            ),
            OutlineButton.icon(
              icon: Icon(Icons.add),
              label: Text("添加"),
              onPressed: () {},
            ),
            TextButton.icon(
              icon: Icon(Icons.info),
              label: Text("详情"),
              onPressed: () {},
            ),
          ],
        ),
        Image.network(
          "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
          width: 100.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.accessible, color: Colors.green),
            Icon(Icons.error, color: Colors.green),
            Icon(Icons.fingerprint, color: Colors.green),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: _switchSelected, //当前状态
              onChanged: (value) {
                //重新构建页面
                _switchSelected = value;
              },
            ),
            Checkbox(
              value: _checkboxSelected,
              activeColor: Colors.red, //选中时的颜色
              onChanged: (value) {
                _checkboxSelected = value!;
              },
            ),
          ],
        ),
        TextField(
          autofocus: true,
          decoration: InputDecoration(
              labelText: "用户名",
              hintText: "用户名或邮箱",
              prefixIcon: Icon(Icons.person)),
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "密码",
              hintText: "您的登录密码",
              prefixIcon: Icon(Icons.lock)),
          obscureText: true,
        ),
    Padding(padding:const EdgeInsets.only(top:28.0)),
    ElevatedButton(
              child: Text("登录"),
              onPressed: () {},
            ),
 
      ],
    );
  }
}

bool _switchSelected = true; //维护单选开关状态
bool _checkboxSelected = true; //维护复选框状态
