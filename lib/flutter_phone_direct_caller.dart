import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPhoneDirectCaller {
  static const MethodChannel _channel =
      MethodChannel('flutter_phone_direct_caller');

  static Future<bool?> callNumber(String number, bool speaker) async {
    return await _channel.invokeMethod(
      'callNumber',
      <String, Object>{
        'number': number,
        'speaker': speaker
      },
    );
  }
}
