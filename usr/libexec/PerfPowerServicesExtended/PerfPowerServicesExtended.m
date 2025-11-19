id sub_1000008E8()
{
  v0 = +[PowerlogCore sharedCore];
  [v0 stopCore];

  if (+[PLDefaults debugEnabled])
  {
    NSLog(@"*** Powerlog Exit *** sleep to avoid bounce");
  }

  return [PLUtilities exitWithReason:2];
}

uint64_t start()
{
  EnterSandbox();
  v0 = objc_autoreleasePoolPush();
  if (+[PowerlogCore allowRun])
  {
    if (+[PLDefaults debugEnabled])
    {
      v1 = +[PLUtilities fullModeDaemonName];
      v2 = [NSString stringWithFormat:@"*** start %@ ***", v1];

      v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Executables/PerfPowerServicesExtended/PerfPowerServicesExtended.m"];
      v4 = [v3 lastPathComponent];
      v5 = [NSString stringWithUTF8String:"main"];
      [PLCoreStorage logMessage:v2 fromFile:v4 fromFunction:v5 fromLineNumber:59];

      v6 = PLLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_10000100C();
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100000F14, @"com.apple.powerlog.state_changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v8 = +[PowerlogCore sharedCore];
    [v8 startCore];

    objc_autoreleasePoolPop(v0);
    do
    {
      v9 = +[NSRunLoop currentRunLoop];
      v10 = +[NSDate distantFuture];
      v11 = [v9 runMode:NSDefaultRunLoopMode beforeDate:v10];
    }

    while ((v11 & 1) != 0);
    v12 = +[PowerlogCore sharedCore];
    [v12 stopCore];
  }

  else
  {
    v13 = +[NSFileManager defaultManager];
    v14 = [@"/var/mobile/Library/Caches" stringByAppendingString:@"/powerlogd.launchd"];
    v15 = [v13 fileExistsAtPath:v14];

    v16 = +[PLDefaults debugEnabled];
    if (v15)
    {
      if (v16)
      {
        v17 = +[PLUtilities fullModeDaemonName];
        v18 = [NSString stringWithFormat:@"*** kill %@ ***", v17];

        v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Executables/PerfPowerServicesExtended/PerfPowerServicesExtended.m"];
        v20 = [v19 lastPathComponent];
        v21 = [NSString stringWithUTF8String:"main"];
        [PLCoreStorage logMessage:v18 fromFile:v20 fromFunction:v21 fromLineNumber:64];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_10000100C();
        }
      }

      v23 = +[NSFileManager defaultManager];
      v24 = [@"/var/mobile/Library/Caches" stringByAppendingString:@"/powerlogd.launchd"];
      v41 = 0;
      v25 = [v23 removeItemAtPath:v24 error:&v41];
      v26 = v41;

      if (v25)
      {
        if (+[PLDefaults debugEnabled])
        {
          v27 = [@"/var/mobile/Library/Caches" stringByAppendingString:@"/powerlogd.launchd"];
          NSLog(@"%@ removed ", v27);
        }
      }

      else
      {
        NSLog(@"*** ERROR *** unable to remove launchd flag: %@", v26);
      }

      v34 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v34, @"com.apple.powerlog.state_changed", 0, 0, 0);
      if (+[PLDefaults debugEnabled])
      {
        v35 = [NSString stringWithFormat:@"sleep to avoid bounce"];
        v36 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Executables/PerfPowerServicesExtended/PerfPowerServicesExtended.m"];
        v37 = [v36 lastPathComponent];
        v38 = [NSString stringWithUTF8String:"main"];
        [PLCoreStorage logMessage:v35 fromFile:v37 fromFunction:v38 fromLineNumber:73];

        v39 = PLLogCommon();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          sub_10000100C();
        }
      }

      sleep(0xAu);
    }

    else
    {
      if (v16)
      {
        v28 = +[PLUtilities fullModeDaemonName];
        v29 = [NSString stringWithFormat:@"*** stop %@ *** sleep to avoid bounce", v28];

        v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Executables/PerfPowerServicesExtended/PerfPowerServicesExtended.m"];
        v31 = [v30 lastPathComponent];
        v32 = [NSString stringWithUTF8String:"main"];
        [PLCoreStorage logMessage:v29 fromFile:v31 fromFunction:v32 fromLineNumber:77];

        v33 = PLLogCommon();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          sub_10000100C();
        }
      }

      sleep(0xAu);
    }

    objc_autoreleasePoolPop(v0);
  }

  return 0;
}

void sub_100000F14()
{
  if (+[PLDefaults debugEnabled])
  {
    NSLog(@"*** PLStateChanged ***");
  }

  v0 = +[PLDefaults taskMode];
  v1 = +[PowerlogCore allowRun];
  v2 = +[PLDefaults liveModeQuery];
  if (v1)
  {
    if (v2 == 1)
    {
      v3 = v0;
    }

    else
    {
      v3 = 0;
    }

    if (v3 != 1)
    {
      if (+[PLDefaults debugEnabled])
      {
        NSLog(@"*** Powerlog Continue ***");
      }

      return;
    }

    goto LABEL_12;
  }

  if (v0)
  {
LABEL_12:
    v4 = +[PLSubmissions sharedInstance];
    [v4 taskingCleanup];
  }

  sub_1000008E8();
}

void sub_100000FE4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}