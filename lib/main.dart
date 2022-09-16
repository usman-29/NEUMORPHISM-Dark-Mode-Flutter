import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: darkMode == true ? Colors.grey[850] : Colors.grey[300],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color:
                        darkMode == true ? Colors.grey[850] : Colors.grey[300],
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        color: darkMode == true
                            ? const Color(0xFF212121)
                            : const Color(0xFF9E9E9E),
                        offset: const Offset(5, 5),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: darkMode == true
                            ? const Color(0xFF424242)
                            : Colors.white,
                        offset: const Offset(-5, -5),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Icon(
                  Icons.android,
                  size: 80,
                  color: darkMode == true ? Colors.white : Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          darkMode = false;
                        });
                      },
                      color: Colors.white,
                      child: const Text(
                        "Dark",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          darkMode = true;
                        });
                      },
                      color: Colors.black,
                      child: const Text(
                        "Light",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
