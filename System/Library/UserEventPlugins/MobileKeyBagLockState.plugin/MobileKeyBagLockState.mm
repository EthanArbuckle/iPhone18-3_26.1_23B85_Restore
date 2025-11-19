void sub_698(uint64_t a1, uint64_t a2, int a3, int a4)
{
  switch(a3)
  {
    case -469774324:
      v7 = kMobileKeyBagPasscodeThresholdNotifyToken;
      notify_post(kMobileKeyBagPasscodeThresholdNotifyToken);
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v8 = 136315650;
      v9 = "aksNotificationCallback";
      v10 = 2080;
      v11 = v7;
      v12 = 1024;
      v13 = a4;
      v6 = " LockStateNotifier %s posting notification: %s (handle: %d)\n";
      goto LABEL_10;
    case -469774321:
      notify_post("com.apple.mobile.keybagd.first_unlock");
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v8 = 136315650;
      v9 = "aksNotificationCallback";
      v10 = 2080;
      v11 = "com.apple.mobile.keybagd.first_unlock";
      v12 = 1024;
      v13 = a4;
      v6 = "MKBPLUGINSTART: LockStateNotifier %s posting notification: %s (handle: %d)\n";
      goto LABEL_10;
    case -469774323:
      v5 = kMobileKeyBagLockStatusNotifyToken;
      notify_post(kMobileKeyBagLockStatusNotifyToken);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = "aksNotificationCallback";
        v10 = 2080;
        v11 = v5;
        v12 = 1024;
        v13 = a4;
        v6 = " LockStateNotifier %s posted notification: %s (handle: %d)\n";
LABEL_10:
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v6, &v8, 0x1Cu);
      }

      break;
  }
}

void start(NSObject *a1)
{
  notification = 0;
  v2 = IOServiceMatching("AppleKeyStore");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    v5 = IONotificationPortCreate(kIOMainPortDefault);
    qword_40B8 = v5;
    if (v5)
    {
      IONotificationPortSetDispatchQueue(v5, a1);
      v6 = IOServiceAddInterestNotification(qword_40B8, v4, "IOGeneralInterest", sub_698, 0, &notification);
      if (!v6)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MKBPLUGINSTART: LockStateNotifier Started", buf, 2u);
        }

        if (MKBDeviceUnlockedSinceBoot() == 1)
        {
          v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v8 = kMobileKeyBagLockStatusNotifyToken;
          if (v7)
          {
            *buf = 136315394;
            v11 = "start";
            v12 = 2080;
            v13 = kMobileKeyBagLockStatusNotifyToken;
            _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MKBPLUGINSTART: LockStateNotifier %s posting notification: %s\n", buf, 0x16u);
          }

          notify_post(v8);
        }

        return;
      }

      printf("Can't register for notification: %08x\n", v6);
      if (notification)
      {
        IOObjectRelease(notification);
      }
    }

    else
    {
      puts("Can't create notification port");
    }
  }

  else
  {
    printf("Can't find %s service\n", "AppleKeyStore");
  }

  if (qword_40B8)
  {
    IONotificationPortDestroy(qword_40B8);
  }
}

void init_mkb_watchstate()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);
  xpc_event_module_get_queue();
}