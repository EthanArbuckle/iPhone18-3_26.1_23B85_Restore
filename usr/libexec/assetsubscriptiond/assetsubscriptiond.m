void sub_100000D30(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = string;
    v4 = UAFGetLogCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[UAFEventHandler setupNotifyHandlers]_block_invoke";
      v18 = 2080;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Received XPC event from notifyd: %s", buf, 0x16u);
    }

    v5 = [NSString stringWithUTF8String:v3];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [&off_100004308 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
LABEL_6:
      v9 = 0;
      while (1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(&off_100004308);
        }

        if ([v5 hasPrefix:*(*(&v11 + 1) + 8 * v9)])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [&off_100004308 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v7)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      if (+[UAFUser isMultiUser](UAFUser, "isMultiUser") && [v5 hasPrefix:@"com.apple.mobile.keybagd.user_changed"])
      {
        +[UAFUserManager performUserCleanup];
      }

      else
      {
        v10 = UAFGetLogCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1000014C0(v5, v10);
        }
      }
    }
  }
}

void sub_100000FC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = UAFGetLogCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 15)
  {
    if (v4)
    {
      v6 = 136315138;
      v7 = "+[UAFEventHandler handleSignal:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Received SIGTERM", &v6, 0xCu);
    }

    exit(0);
  }

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = 136315394;
    v7 = "+[UAFEventHandler handleSignal:]_block_invoke";
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Signal(%d) is not currently handled. Nothing to do", &v6, 0x12u);
  }
}

void sub_100001114(id a1)
{
  v1 = dispatch_get_global_queue(21, 0);
  for (i = 0; i != 3; ++i)
  {
    v3 = dword_100001A78[i];
    v4 = dispatch_source_create(&_dispatch_source_type_signal, v3, 0, v1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000122C;
    handler[3] = &unk_1000041D0;
    v7 = v3;
    dispatch_source_set_event_handler(v4, handler);
    dispatch_resume(v4);
    v5 = qword_1000081B0[i];
    qword_1000081B0[i] = v4;

    signal(v3, 1);
  }
}

void start()
{
  v0 = _set_user_dir_suffix();
  v1 = UAFGetLogCategory();
  v2 = v1;
  if (v0)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = NSTemporaryDirectory();
      v16 = 136315394;
      v17 = "main";
      v18 = 2114;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Temporary directory is %{public}@", &v16, 0x16u);
    }

    v4 = objc_autoreleasePoolPush();
    v5 = UAFGetLogCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "main";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Starting up assetsubscriptiond...", &v16, 0xCu);
    }

    v6 = +[NSFileManager defaultManager];
    v7 = +[UAFSubscriptionStoreManager defaultManager];
    v8 = [v7 databaseName];
    v9 = [v6 fileExistsAtPath:v8];

    if ((v9 & 1) == 0)
    {
      v10 = +[UAFAssetSetManager defaults];
      [v10 setBool:1 forKey:kUAFInhibitRemoves];
    }

    v11 = objc_alloc_init(UAFEventHandler);
    +[UAFEventHandler setupSignalHandlers];
    [(UAFEventHandler *)v11 setupNotifyHandlers];
    +[NSXPCListener enableTransactions];
    v12 = [[UAFXPCService alloc] initSubscriptionService];
    v13 = qword_1000081C8;
    qword_1000081C8 = v12;

    [qword_1000081C8 startAsync];
    UAFRegisterSubscriptionXPCActivities();
    objc_autoreleasePoolPop(v4);
    v14 = objc_autoreleasePoolPush();
    dispatch_main();
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v15 = *__error();
    v16 = 136315394;
    v17 = "main";
    v18 = 1024;
    LODWORD(v19) = v15;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s _set_user_dir_suffix failed with: %d", &v16, 0x12u);
  }

  exit(1);
}

void sub_1000014C0(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[UAFEventHandler setupNotifyHandlers]_block_invoke";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s Received unhandled notification from notifyd: %{public}@", &v2, 0x16u);
}