uint64_t sub_100000B38(uint64_t result, xpc_object_t xdict)
{
  if (*(result + 40) == 1)
  {
    v2 = result;
    string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
    v4 = *(v2 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = string;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received notification: %s", &v5, 0xCu);
    }

    if (!strcmp(string, "com.apple.system.lowpowermode.auto_disabled"))
    {
      return [qword_100008090 displayAutoDisabledNotification];
    }

    else if (!strcmp(string, "com.apple.system.lowpowermode.first_time"))
    {
      return [qword_100008090 displayFirstUseNotification];
    }

    else if (!strcmp(string, "com.apple.system.lowpowermode"))
    {
      return [qword_100008090 removeAutoDisabledNotification];
    }

    else if (!strcmp(string, "com.apple.thermalmonitor.ageAwareMitigationsEnabled"))
    {
      return [qword_1000080A0 displayMitigationsEnabledNotification];
    }

    else if (!strcmp(string, "com.apple.powerlog.batteryServiceNotification"))
    {
      return [qword_1000080A0 displayBatteryServiceNotification];
    }

    else
    {
      result = strcmp(string, [kIBLMNotification UTF8String]);
      if (!result)
      {
        return [qword_1000080B0 displayIBLMEngagedNotification];
      }
    }
  }

  return result;
}

void start()
{
  mach_service = xpc_connection_create_mach_service("com.apple.thermalMonitor.displayMitigationsEnabledNote", 0, 1uLL);
  v1 = +[PowerUIChargeAwarenessNotifier sharedInstance];
  v2 = qword_1000080A8;
  qword_1000080A8 = v1;

  v3 = +[PowerUIIBLMNotificationManager sharedInstance];
  v4 = qword_1000080B0;
  qword_1000080B0 = v3;

  if (+[PowerUISmartChargeUtilities isInternalBuild]&& ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()))
  {
    v5 = +[PowerUIRuntimeAwarenessNotifier sharedInstance];
    v6 = qword_1000080B8;
    qword_1000080B8 = v5;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = os_log_create("com.apple.PowerUIAgent", "main");
  v9 = +[PowerUISmartChargeUtilities isiPhone];
  v10 = dispatch_get_global_queue(2, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100000B38;
  handler[3] = &unk_1000041C8;
  v41 = v9;
  v11 = v8;
  v40 = v11;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v10, handler);

  if ((+[PowerUISmartChargeUtilities isOBCSupported]& 1) != 0 || MGGetBoolAnswer())
  {
    v12 = +[PowerUISmartChargeManager manager];
    v13 = qword_1000080C0;
    qword_1000080C0 = v12;
  }

  else if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    v31 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"allowMCLOverride" inDomain:@"com.apple.smartcharging.topoffprotection"];
    v13 = v31;
    if (v31 && ([v31 BOOLValue] & 1) != 0)
    {
      v32 = &qword_1000080C0;
      v33 = PowerUISmartChargeManager_ptr;
    }

    else
    {
      v32 = &qword_1000080E0;
      v33 = PowerUISmartChargeManagerUnsupported_ptr;
    }

    v35 = [*v33 manager];
    v36 = *v32;
    *v32 = v35;
  }

  else
  {
    v34 = +[PowerUISmartChargeManagerUnsupported manager];
    v13 = qword_1000080E8;
    qword_1000080E8 = v34;
  }

  xpc_set_event_stream_handler("com.apple.alarm", 0, &stru_100004208);
  v14 = +[PowerUICECUtilities isDemoDevice];
  if (v14)
  {
    v15 = &unk_1000080D0;
  }

  else
  {
    v15 = &unk_1000080C8;
  }

  v16 = PowerUIDemoCECManager_ptr;
  if (!v14)
  {
    v16 = PowerUICECManager_ptr;
  }

  v17 = [*v16 manager];
  v18 = *v15;
  *v15 = v17;

  v19 = dispatch_get_global_queue(0, 0);
  xpc_set_idle_handler();

  if (v9)
  {
    v20 = +[PowerUIUPOManager sharedInstance];
    v21 = qword_1000080A0;
    qword_1000080A0 = v20;

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100001150;
    v37[3] = &unk_100004270;
    v38 = v11;
    xpc_connection_set_event_handler(mach_service, v37);
    xpc_connection_activate(mach_service);
    v22 = +[PowerUILPMNotifier sharedInstance];
    v23 = qword_100008090;
    qword_100008090 = v22;

    v24 = +[PowerUIDrainAnalyzer sharedInstance];
    v25 = qword_100008098;
    qword_100008098 = v24;

    v26 = +[PowerUIIBLMNotificationManager sharedInstance];
    v27 = qword_1000080B0;
    qword_1000080B0 = v26;

    if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
    {
      if (+[PowerUISmartChargeUtilities isInternalBuild])
      {
        v28 = +[PowerUIDrainMonitor sharedInstance];
        [v28 start];
      }
    }
  }

  v29 = objc_alloc_init(PowerUIAudioAccessorySmartChargeManager);
  v30 = qword_1000080D8;
  qword_1000080D8 = v29;

  objc_autoreleasePoolPop(v7);
  CFRunLoopRun();
  exit(1);
}

void sub_100001150(uint64_t a1, void *a2)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000011EC;
  handler[3] = &unk_100004270;
  v5 = *(a1 + 32);
  v3 = a2;
  xpc_connection_set_event_handler(v3, handler);
  xpc_connection_activate(v3);
}

void sub_1000011EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received message on thermal monitor connection", buf, 2u);
  }

  v5 = objc_autoreleasePoolPush();
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    if (xpc_dictionary_get_BOOL(v3, "postNotification"))
    {
      v7 = *(a1 + 32);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Going to post a notification", v10, 2u);
      }

      [qword_1000080A0 requestBulletin];
      reply = xpc_dictionary_create_reply(v3);
      v9 = xpc_dictionary_get_remote_connection(v3);
      xpc_connection_send_message(v9, reply);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Invalid message type!", v11, 2u);
    }
  }

  objc_autoreleasePoolPop(v5);
}