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
          primarySwatch: Colors.blue,
        ),
        home: const Notification());
  }
}

class Notification extends StatefulWidget {
  const Notification({super.key});

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Thông báo',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 5, top: 20),
                child: Text(
                  'Mới',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              CardNotifi(
                status: false,
                title: 'Nước giặt Omo giá siêu rẻ',
                content: 'Omo',
                content2: 'Combo giấy ăn',
                content3: 'FREESHIP hôm nay',
                time: '6/10/2022',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 5, top: 20),
                child: Text(
                  'Trước đó',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              CardNotifi(
                status: true,
                title: 'Nước giặt Omo giá siêu rẻ',
                content: 'Omo',
                content2: 'Combo giấy ăn',
                content3: 'FREESHIP hôm nay',
                time: '6/10/2022',
              ),
              CardNotifi(
                status: true,
                title: 'Nước giặt Omo giá siêu rẻ',
                content: 'Omo',
                content2: 'Combo giấy ăn',
                content3: 'FREESHIP hôm nay',
                time: '6/10/2022',
              ),
              CardNotifi(
                status: true,
                title: 'Nước giặt Omo giá siêu rẻ',
                content: 'Omo',
                content2: 'Combo giấy ăn',
                content3: 'FREESHIP hôm nay',
                time: '6/10/2022',
              ),
              CardNotifi(
                status: true,
                title: 'Nước giặt Omo giá siêu rẻ',
                content: 'Omo',
                content2: 'Combo giấy ăn',
                content3: 'FREESHIP hôm nay',
                time: '6/10/2022',
              ),
              CardNotifi(
                status: true,
                title: 'Nước giặt Omo giá siêu rẻ',
                content: 'Omo',
                content2: 'Combo giấy ăn',
                content3: 'FREESHIP hôm nay',
                time: '6/10/2022',
              ),
            ],
          ),
        ));
  }
}

class CardNotifi extends StatelessWidget {
  CardNotifi(
      {super.key,
      required this.status,
      required this.title,
      required this.content,
      required this.content2,
      required this.content3,
      required this.time});
  bool status;
  String title;
  String content;
  String content2;
  String content3;
  String time;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Center(
        child: Container(
          margin: const EdgeInsets.only(bottom: 5),
          width: 350,
          decoration: BoxDecoration(
              color:
                  status ? Color.fromARGB(255, 216, 215, 215) : Colors.orange,
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: status ? Colors.black : Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Text(content,
                    style: TextStyle(
                        color: status ? Colors.black : Colors.white,
                        fontSize: 13)),
                Text(content2,
                    style: TextStyle(
                        color: status ? Colors.black : Colors.white,
                        fontSize: 13)),
                Text(content3,
                    style: TextStyle(
                        color: status ? Colors.black : Colors.white,
                        fontSize: 13)),
                Text(time,
                    style: TextStyle(
                        color: status ? Colors.black : Colors.white,
                        fontSize: 13)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
