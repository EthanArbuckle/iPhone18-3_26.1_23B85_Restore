@interface AudioNotification
+ (void)sendLiveRecordingOffNotificationWithInterrupt:(unsigned __int8)a3;
+ (void)sendLiveRecordingOnNotification;
@end

@implementation AudioNotification

+ (void)sendLiveRecordingOnNotification
{
  if (byte_10010E470 == 1)
  {
    byte_10010E470 = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.SpeechRecognitionCore.liveRecordingOnFromInterrupt", 0, 0, 0);
    v3 = RXOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v4 = "Sending LiveRecordingOnFromInterrupt notification";
      v5 = &v8;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    }
  }

  else
  {
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v6, @"com.apple.SpeechRecognitionCore.liveRecordingOn", 0, 0, 0);
    v3 = RXOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v4 = "Sending LiveRecordingOn notification";
      v5 = &v7;
      goto LABEL_6;
    }
  }
}

+ (void)sendLiveRecordingOffNotificationWithInterrupt:(unsigned __int8)a3
{
  if (a3)
  {
    byte_10010E470 = 1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.SpeechRecognitionCore.liveRecordingOffFromInterrupt", 0, 0, 0);
    v4 = RXOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v5 = "Sending LiveRecordingOffFromInterrupt notification";
      v6 = &v9;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else
  {
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v7, @"com.apple.SpeechRecognitionCore.liveRecordingOff", 0, 0, 0);
    v4 = RXOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v5 = "Sending LiveRecordingOff notification";
      v6 = &v8;
      goto LABEL_6;
    }
  }
}

@end