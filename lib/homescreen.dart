import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_16/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: NeuBox(child: Icon(Icons.arrow_back)),
                    ),
                    Text("P L A Y L I S T"),
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: NeuBox(child: Icon(Icons.menu)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                NeuBox(
                    child: Column(
                  children: [
                    ClipRRect(
                      child: Image.asset("assets/imageone.jpg"),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "One Direction",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade700,
                                    fontSize: 18),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text("YOU & I",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.black,
                            size: 32,
                          )
                        ],
                      ),
                    )
                  ],
                )),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("0:00"),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text("4:22")
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                NeuBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.6,
                    progressColor: Colors.blue[300],
                    backgroundColor: Colors.transparent,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(height: 80,
                  child: Row(
                    children:const [
                      Expanded(
                          child:NeuBox(child: Icon(Icons.skip_previous,size: 32,))),
                      Expanded(
                          child:Padding(
                            padding: EdgeInsets.symmetric(horizontal:20.0),
                            child: NeuBox(child: Icon(Icons.play_arrow,size: 32,)),
                          )),
                      Expanded(
                          child :NeuBox(child: Icon(Icons.skip_next,size: 32,)))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
