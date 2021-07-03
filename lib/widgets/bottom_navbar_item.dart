import 'package:bwa_kos/theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNavbarItem extends StatelessWidget {
  final String imageUrl;
  bool isActive;

  BottomNavbarItem({this.imageUrl, this.isActive});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          width: 26,
        ),
        Spacer(),
        //APABILA DIA MEMENUHI ISACTIVE, MAKA MENAMPILKAN INI. JIKA TIDAK MAKA CONTAINER KOSONG
        isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(1000),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
