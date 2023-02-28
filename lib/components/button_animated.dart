import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class AnimatedButton extends StatelessWidget {
  const AnimatedButton({
    super.key,
    required this.press,
    required RiveAnimationController btnRiveAnimetedController,
  }) : _btnRiveAnimetedController = btnRiveAnimetedController;
  final VoidCallback press;
  final RiveAnimationController _btnRiveAnimetedController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        height: 64,
        width: 260,
        child: Stack(
          children: [
            RiveAnimation.asset("assets/RiveAssets/button.riv",
                controllers: [_btnRiveAnimetedController]),
            Positioned.fill(
              top: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(Icons.arrow_right),
                  const Text(
                    "Start the course",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
