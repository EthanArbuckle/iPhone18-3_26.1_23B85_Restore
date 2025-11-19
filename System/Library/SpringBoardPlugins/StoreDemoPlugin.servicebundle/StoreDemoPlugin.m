void sub_15FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1618(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1630(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [NSString stringWithCString:a2 encoding:4];
  type = xpc_get_type(v5);
  if (type == &_xpc_type_BOOL)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSNumber numberWithBool:xpc_BOOL_get_value(v5)];
LABEL_22:
    v15 = v11;
    [v10 setObject:v11 forKey:v6];

    v9 = 1;
    goto LABEL_23;
  }

  if (type == &_xpc_type_string)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSString stringWithCString:xpc_string_get_string_ptr(v5) encoding:4];
    goto LABEL_22;
  }

  if (type == &_xpc_type_int64)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSNumber numberWithLongLong:xpc_int64_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_uint64)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_dictionary)
  {
    v12 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [v12 initWithXPCDictionary:v5];
    goto LABEL_22;
  }

  if (type == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v5);
    length = xpc_data_get_length(v5);
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSData dataWithBytes:bytes_ptr length:length];
    goto LABEL_22;
  }

  if (type == &_xpc_type_array)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSArray arrayWithXPCArray:v5];
    goto LABEL_22;
  }

  if (type == &_xpc_type_double)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSNumber numberWithDouble:xpc_double_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_date)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSDate dateWithTimeIntervalSince1970:xpc_date_get_value(v5)];
    goto LABEL_22;
  }

  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_B8EC(v6, v8);
  }

  v9 = 0;
LABEL_23:

  return v9;
}

void sub_1FB0(id a1)
{
  qword_1E030 = objc_alloc_init(MSDAlarmManager);

  _objc_release_x1();
}

void sub_23DC(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = defaultLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[MSDAlarmManager disableSleepAlarm]_block_invoke";
      v8 = 2114;
      v9 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s - SleepAlarm completion handler returned error : %{public}@", &v6, 0x16u);
    }
  }
}

void sub_29CC(id a1)
{
  qword_1E040 = objc_alloc_init(MSDStoreHoursManager);

  _objc_release_x1();
}

void sub_2B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2BB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained expirationTimer];
  [v1 fire];
}

void sub_3F28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained expirationTimer];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 expirationTimer];
    [v5 invalidate];

    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 setExpirationTimer:0];
  }

  v7 = [NSTimer alloc];
  v8 = *(a1 + 32);
  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v7 initWithFireDate:v8 interval:v9 target:"storeHourSettingsExpirationHandler:" selector:0 userInfo:0 repeats:0.0];
  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 setExpirationTimer:v10];

  v12 = +[NSRunLoop currentRunLoop];
  v13 = objc_loadWeakRetained((a1 + 40));
  v14 = [v13 expirationTimer];
  [v12 addTimer:v14 forMode:NSDefaultRunLoopMode];

  v15 = defaultLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 32) toString];
    v17 = 138543362;
    v18 = v16;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Store hour settings will expire on %{public}@", &v17, 0xCu);
  }
}

void sub_427C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained storeOpenTimer];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 storeOpenTimer];
    [v5 invalidate];

    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 setStoreOpenTimer:0];
  }

  v7 = [NSTimer alloc];
  v8 = *(a1 + 32);
  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v7 initWithFireDate:v8 interval:v9 target:"storeOpenHandler:" selector:0 userInfo:0 repeats:0.0];
  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 setStoreOpenTimer:v10];

  v14 = +[NSRunLoop currentRunLoop];
  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 storeOpenTimer];
  [v14 addTimer:v13 forMode:NSDefaultRunLoopMode];
}

void sub_4548(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained storeCloseTimer];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 storeCloseTimer];
    [v5 invalidate];

    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 setStoreCloseTimer:0];
  }

  v7 = [NSTimer alloc];
  v8 = *(a1 + 32);
  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v7 initWithFireDate:v8 interval:v9 target:"storeCloseHandler:" selector:0 userInfo:0 repeats:0.0];
  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 setStoreCloseTimer:v10];

  v14 = +[NSRunLoop currentRunLoop];
  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 storeCloseTimer];
  [v14 addTimer:v13 forMode:NSDefaultRunLoopMode];
}

id defaultLogHandle()
{
  if (qword_1E058 != -1)
  {
    sub_C35C();
  }

  v1 = qword_1E050;

  return v1;
}

void sub_48D0(id a1)
{
  qword_1E050 = os_log_create("com.apple.MobileStoreDemo", "Default");

  _objc_release_x1();
}

id screenSaverLogHandle()
{
  if (qword_1E068 != -1)
  {
    sub_C370();
  }

  v1 = qword_1E060;

  return v1;
}

void sub_4958(id a1)
{
  qword_1E060 = os_log_create("com.apple.MobileStoreDemo", "ScreenSaver");

  _objc_release_x1();
}

id messageLogHandle()
{
  if (qword_1E078 != -1)
  {
    sub_C384();
  }

  v1 = qword_1E070;

  return v1;
}

void sub_49E0(id a1)
{
  qword_1E070 = os_log_create("com.apple.MobileStoreDemo", "Message");

  _objc_release_x1();
}

id signpostLogHandle()
{
  if (qword_1E088 != -1)
  {
    sub_C398();
  }

  v1 = qword_1E080;

  return v1;
}

void sub_4A68(id a1)
{
  if (os_variant_has_internal_content())
  {
    v1 = os_log_create("com.apple.MobileStoreDemo", "Signpost");
  }

  else
  {
    v1 = &_os_log_disabled;
    v2 = &_os_log_disabled;
  }

  v3 = qword_1E080;
  qword_1E080 = v1;
}

void sub_4AD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = +[MSDLogModel sharedInstance];
  [v10 logWithFormat:v9 andArgs:&a9];
}

void sub_4B7C(id a1)
{
  qword_1E090 = objc_alloc_init(MSDLogModel);

  _objc_release_x1();
}

void sub_5114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_512C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_5144(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v14 = [*(a1 + 32) stringByAppendingFormat:@"/%@", a2];
  v6 = [*(a1 + 40) description];
  NSLog(@"Checking existing log file (full path) %@ against %@", v14, v6);

  v7 = [*(a1 + 48) attributesOfItemAtPath:v14 error:0];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(*(*(a1 + 56) + 8) + 40) fileCreationDate];
  v11 = [v10 compare:*(a1 + 40)];

  if (v11 == -1)
  {
    v12 = [*(*(*(a1 + 56) + 8) + 40) fileCreationDate];
    v13 = [v12 description];
    NSLog(@"Removing %@ whose creation date is %@.", v14, v13);

    [*(a1 + 48) removeItemAtPath:v14 error:0];
  }

  *a4 = 0;
}

void sub_54CC(id a1)
{
  qword_1E0A0 = objc_alloc_init(MSDScreenSaverManager);

  _objc_release_x1();
}

void sub_5668(uint64_t a1)
{
  [*(a1 + 32) setJustBootUp:1];
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5AF8;
  block[3] = &unk_187D0;
  v35 = *(a1 + 32);
  v4 = v2;
  v36 = v4;
  dispatch_async(v3, block);

  v5 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v4, v5))
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "1 second has passed waiting for xpc call to check type of demo device.  Moving on...", buf, 2u);
    }
  }

  v7 = +[MSDKManagedDevice sharedInstance];
  v8 = [v7 isScreenDarkHoursEnabled];

  if (v8)
  {
    v9 = screenSaverLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Will turn off display at night due to screen dark hours override.", buf, 2u);
    }
  }

  [*(a1 + 32) setTurnOffDisplayAtNight:v8];
  v10 = MGCopyAnswer();
  v29 = v10;
  if (v10 && [v10 BOOLValue])
  {
    v11 = screenSaverLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Will turn off always-on time at night for Andromeda device.", buf, 2u);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  [*(a1 + 32) setTurnOffAlwaysOnTimeAtNight:v12];
  v13 = [NSArray arrayWithObjects:@"com.apple.ist.demoloop", @"com.retailtech.arkenstone", @"com.apple.ist.DemoDiscoveryApp", @"com.apple.ist.windward", @"com.apple.ist.DigitalSignage.iOS", 0];
  v14 = +[LSApplicationWorkspace defaultWorkspace];
  [v14 addObserver:*(a1 + 32)];

  v15 = screenSaverLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Observer for LSApplicationWorkSpace registered.", buf, 2u);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v13;
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v30 + 1) + 8 * i);
        v22 = [LSApplicationProxy applicationProxyForIdentifier:v21 placeholder:0];
        v23 = v22;
        if (v22)
        {
          v24 = [v22 appState];
          v25 = [v24 isInstalled];

          if (v25)
          {
            [*(a1 + 32) setScreenSaverAppID:v21];

            goto LABEL_28;
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

  v26 = screenSaverLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [*(a1 + 32) screenSaverAppID];
    *buf = 138543362;
    v38 = v27;
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Screen saver app is %{public}@", buf, 0xCu);
  }

  v28 = [*(a1 + 32) screenSaverAppID];

  if (v28)
  {
    [*(a1 + 32) setupIdleTimerHandler];
  }
}

intptr_t sub_5AF8(uint64_t a1)
{
  v2 = +[MSDKManagedDevice sharedInstance];
  [*(a1 + 32) setDeviceType:{objc_msgSend(v2, "typeOfDemoDevice:", 0)}];

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void sub_5F54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RBSProcessStateDescriptor descriptor];
  [v4 setValues:1];
  [v4 setEndowmentNamespaces:&off_19418];
  [v3 setStateDescriptor:v4];
  v5 = [*(a1 + 32) screenSaverAppID];
  v6 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v5];
  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];
  [v3 setPredicates:v7];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_60C0;
  v8[3] = &unk_187F8;
  v8[4] = *(a1 + 32);
  [v3 setUpdateHandler:v8];
}

id sub_6368(uint64_t a1)
{
  v2 = screenSaverLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) displayBacklightLevel];
    *buf = 134217984;
    v23 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Received display layout update; backlight level: %ld", buf, 0xCu);
  }

  v4 = [*(a1 + 40) backlightLevel];
  if (v4 != [*(a1 + 32) displayBacklightLevel])
  {
    v5 = screenSaverLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) backlightLevel];
      v7 = [*(a1 + 32) displayBacklightLevel];
      *buf = 134218240;
      v23 = v6;
      v24 = 2048;
      v25 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Backlight changed from %td to %td.", buf, 0x16u);
    }
  }

  [*(a1 + 40) setIsStandbyMode:{objc_msgSend(*(a1 + 40), "isInStandbyMode:", *(a1 + 32))}];
  v8 = screenSaverLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) isStandbyMode];
    *buf = 67109120;
    LODWORD(v23) = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Device is in Standby Mode: %d", buf, 8u);
  }

  if ([*(a1 + 40) backlightLevel] != -1 && objc_msgSend(*(a1 + 40), "backlightLevel") || objc_msgSend(*(a1 + 32), "displayBacklightLevel") < 1)
  {
    if ([*(a1 + 40) backlightLevel] >= 1 && !objc_msgSend(*(a1 + 32), "displayBacklightLevel"))
    {
      v12 = [*(a1 + 40) storeHoursManager];
      [v12 evaluateStoreStatusAgainstCurrentTime];

      v13 = [*(a1 + 40) storeHoursManager];
      v14 = [v13 isStoreOpenNow];

      if (v14)
      {
        v15 = dispatch_time(0, 120000000000);
        v16 = [*(a1 + 40) workQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_66E4;
        block[3] = &unk_185D0;
        block[4] = *(a1 + 40);
        dispatch_after(v15, v16, block);
      }
    }
  }

  else
  {
    v10 = [*(a1 + 40) justBootUp];
    v11 = *(a1 + 40);
    if (v10)
    {
      [v11 setJustBootUp:0];
      [*(a1 + 40) handleSpringBoardLaunch];
    }

    else if (([v11 screenSaverRunning] & 1) == 0)
    {
      v17 = [*(a1 + 40) timer];

      if (v17)
      {
        v18 = screenSaverLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Timer will be canceled because screen lights up.", buf, 2u);
        }

        v19 = [*(a1 + 40) timer];
        [v19 invalidate];

        [*(a1 + 40) setTimer:0];
      }
    }
  }

  return [*(a1 + 40) setBacklightLevel:{objc_msgSend(*(a1 + 32), "displayBacklightLevel")}];
}

void sub_66E4(uint64_t a1)
{
  v2 = screenSaverLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) backlightLevel];
    v4 = [*(a1 + 32) isStandbyMode];
    v6 = 134218240;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Checking device state before screen saver launch; backlight level = %ld; Stanby Mode = %{BOOL}d", &v6, 0x12u);
  }

  if ([*(a1 + 32) backlightLevel] && !objc_msgSend(*(a1 + 32), "isStandbyMode"))
  {
    v5 = screenSaverLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Skip screen saver launch", &v6, 2u);
    }
  }

  else
  {
    [*(a1 + 32) launchScreenSaver];
  }
}

id sub_6B6C(uint64_t a1)
{
  v2 = [*(a1 + 40) bundleIdentifier];
  [*(a1 + 32) setScreenSaverAppID:v2];

  v3 = *(a1 + 32);

  return [v3 setupIdleTimerHandler];
}

void sub_6EA0(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = [v2 taskState];

  v4 = [*(a1 + 32) state];
  v5 = [v4 endowmentNamespaces];

  v6 = [v5 containsObject:@"com.apple.frontboard.visibility"];
  v7 = screenSaverLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 40) applicationStateString:v3 withVisibility:v6];
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "App state change to %{public}@", &v9, 0xCu);
  }

  if (v3 == 1 || v3 == 3)
  {
    goto LABEL_7;
  }

  if (v3 != 4)
  {
    goto LABEL_10;
  }

  if ((v6 & 1) == 0)
  {
LABEL_7:
    [*(a1 + 40) screenSaverStopped];
  }

  if (((v3 == 4) & v6) == 1)
  {
    [*(a1 + 40) screenSaverStarted];
  }

LABEL_10:
}

void sub_70B8(uint64_t a1)
{
  v2 = screenSaverLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v12 = 136315394;
    *v13 = "[MSDScreenSaverManager handleStoreHourSettingsChanged:]_block_invoke";
    *&v13[8] = 2114;
    v14 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%s: Triggered by NSNotification - %{public}@", &v12, 0x16u);
  }

  v4 = [*(a1 + 40) loadScreenSaverConfig];
  v5 = +[MSDKManagedDevice sharedInstance];
  v6 = [v5 isScreenDarkHoursEnabled];

  v7 = v6 ^ [*(a1 + 40) turnOffDisplayAtNight];
  if (v7 == 1)
  {
    [*(a1 + 40) setTurnOffDisplayAtNight:v6];
  }

  v8 = screenSaverLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 67109376;
    *v13 = v4;
    *&v13[4] = 1024;
    *&v13[6] = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Screen saver config changed: %{BOOL}d, Feature flag changed: %{BOOL}d", &v12, 0xEu);
  }

  if ((v7 | v4))
  {
    if (SBSGetScreenLockStatus())
    {
      v9 = +[MSDStoreHoursManager sharedInstance];
      if ([v9 isStoreOpenNow])
      {
      }

      else
      {
        v10 = [*(a1 + 40) turnOffDisplayAtNight];

        if (v10)
        {
          v11 = screenSaverLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v12) = 0;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Skip launching SpringBoard since store is closed.", &v12, 2u);
          }

          [*(a1 + 40) stopScreenSaver];
          goto LABEL_16;
        }
      }
    }

    [*(a1 + 40) launchSpringBoard];
LABEL_16:
    if ([*(a1 + 40) turnOffAlwaysOnTimeAtNight])
    {
      [*(a1 + 40) setupAlwaysOnTimeToggleTimer];
    }
  }
}

void sub_76BC(id a1, BSProcessHandle *a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = screenSaverLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSError *)v3 localizedDescription];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "StoreDemo plugin: failed to launch SpringBoard - %{public}@", &v6, 0xCu);
    }
  }
}

void sub_7AB0(id a1, BSProcessHandle *a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = screenSaverLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSError *)v3 localizedDescription];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "StoreDemo plugin: failed to launch app - %{public}@", &v6, 0xCu);
    }

    dispatch_async(&_dispatch_main_q, &stru_188A0);
  }
}

void sub_7B90(id a1)
{
  v1 = SBUIGetUserAgent();
  [v1 lockAndDimDevice];
}

void sub_8118(uint64_t a1)
{
  if ([*(a1 + 32) screenSaverRunning])
  {
    if ([*(a1 + 32) deviceType] == &dword_4 + 2)
    {
      v2 = +[MSDKManagedDevice sharedInstance];
      [v2 clearCurrentSafariHistory];

      v3 = +[MSDAlarmManager sharedInstance];
      [v3 disableAlarms];

      v4 = +[MSDAlarmManager sharedInstance];
      [v4 disableSleepAlarm];

      v5 = +[MSDKManagedDevice sharedInstance];
      [v5 restoreWallpaperSettingsIfNeeded];

      v6 = +[MSDKManagedDevice sharedInstance];
      v7 = [*(a1 + 32) screenSaverAppID];
      v12[0] = v7;
      v12[1] = @"com.apple.ist.dast";
      v12[2] = @"com.apple.ist.ie";
      v12[3] = @"com.apple.ist.DigitalCatalog";
      v8 = [NSArray arrayWithObjects:v12 count:4];
      [v6 closeRunningAppsExcept:v8];

      v9 = +[MSDKManagedDevice sharedInstance];
      [v9 refreshDeviceSettings];

      v10 = +[MSDKManagedDevice sharedInstance];
      v11 = +[NSDate now];
      [v10 setLastShallowRefreshTime:v11];
    }
  }
}

void sub_84FC(id a1)
{
  v1 = screenSaverLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "Lock and dim screen now...", v3, 2u);
  }

  v2 = SBUIGetUserAgent();
  [v2 lockAndDimDevice];
}

void sub_968C(id a1)
{
  qword_1E0B0 = objc_alloc_init(MSDTestPreferences);

  _objc_release_x1();
}

void sub_A744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_A760(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_A778(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  type = xpc_get_type(v5);
  if (type == &_xpc_type_BOOL)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSNumber numberWithBool:xpc_BOOL_get_value(v5)];
LABEL_22:
    v14 = v10;
    [v9 addObject:v10];

    v8 = 1;
    goto LABEL_23;
  }

  if (type == &_xpc_type_string)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSString stringWithCString:xpc_string_get_string_ptr(v5) encoding:4];
    goto LABEL_22;
  }

  if (type == &_xpc_type_int64)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSNumber numberWithLongLong:xpc_int64_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_uint64)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v5);
    length = xpc_data_get_length(v5);
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSData dataWithBytes:bytes_ptr length:length];
    goto LABEL_22;
  }

  if (type == &_xpc_type_double)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSNumber numberWithDouble:xpc_double_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_dictionary)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSDictionary dictionaryWithXPCDictionary:v5];
    goto LABEL_22;
  }

  if (type == &_xpc_type_array)
  {
    v13 = *(a1 + 32);
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [v13 initWithXPCArray:v5];
    goto LABEL_22;
  }

  if (type == &_xpc_type_date)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSDate dateWithTimeIntervalSince1970:xpc_date_get_value(v5)];
    goto LABEL_22;
  }

  v7 = defaultLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_C600(a2, v7);
  }

  v8 = 0;
LABEL_23:

  return v8;
}

void sub_AB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_AB40(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = xpc_string_create([v6 UTF8String]);
LABEL_5:
    v9 = v8;
    xpc_array_append_value(v7, v8);

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = xpc_data_create([v6 bytes], objc_msgSend(v6, "length"));
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v6;
    v11 = [v10 objCType];
    if (*v11 == 105 && !v11[1] || (v12 = [v10 objCType], *v12 == 115) && !v12[1] || (v13 = objc_msgSend(v10, "objCType"), *v13 == 113) && !v13[1] || (v14 = objc_msgSend(v10, "objCType"), *v14 == 113) && !v14[1])
    {
      v20 = *(a1 + 32);
      v21 = xpc_int64_create([v10 longLongValue]);
    }

    else
    {
      v15 = [v10 objCType];
      if (*v15 == 102 && !v15[1] || (v16 = [v10 objCType], *v16 == 100) && !v16[1])
      {
        v20 = *(a1 + 32);
        [v10 doubleValue];
        v21 = xpc_double_create(v23);
      }

      else
      {
        v17 = [v10 objCType];
        if (*v17 != 66 || v17[1])
        {
          v18 = [v10 objCType];
          if (*v18 != 99 || v18[1])
          {
            v19 = defaultLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_C6BC(v10, v19);
            }

            *a4 = 1;
            *(*(*(a1 + 40) + 8) + 24) = 0;
            goto LABEL_40;
          }
        }

        v20 = *(a1 + 32);
        v21 = xpc_BOOL_create([v10 BOOLValue]);
      }
    }

    v25 = v21;
    xpc_array_append_value(v20, v21);

LABEL_40:
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = [v6 xpcArrayFromArray];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = [v6 createXPCDictionary];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    [v6 timeIntervalSince1970];
    v8 = xpc_date_create(v22);
    goto LABEL_5;
  }

  v24 = defaultLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_C678(v24);
  }

  *a4 = 1;
  *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_6:
}

void sub_B86C(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Converted from xpc to NSDictionary: %{public}@", &v3, 0xCu);
}

void sub_B8EC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "The value for key %{public}@ has a type that is not supported yet", &v2, 0xCu);
}

void sub_B964()
{
  v0 = objc_opt_class();
  sub_1F28();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_BA08(void *a1)
{
  [a1 objCType];
  sub_1F28();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_BA90(uint64_t a1, void *a2)
{
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 136315394;
    sub_1F5C();
    v6 = a1;
    _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%s: format not correct: %{public}@", v5, 0x16u);
  }
}

void sub_BB54(void *a1)
{
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 localizedDescription];
    [a1 code];
    sub_1F38();
    sub_1F28();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  }
}

void sub_BC18()
{
  v1[0] = 136315394;
  sub_1F5C();
  v2 = 0;
  _os_log_error_impl(&dword_0, v0, OS_LOG_TYPE_ERROR, "%s: Cannot convert %{public}@ to dictionary", v1, 0x16u);
}

void sub_BCA0()
{
  v2[0] = 136315394;
  sub_1F5C();
  v3 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%s: Not a valid JSON object: %{public}@", v2, 0x16u);
}

void sub_BD24(void *a1)
{
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 localizedDescription];
    [a1 code];
    sub_1F38();
    sub_1F28();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  }
}

void sub_BE40(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MSDAlarmManager getCurrentSleepAlarms]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%s - iPad does not support Sleep Alarms", &v1, 0xCu);
}

void sub_BEC4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MSDAlarmManager disableSleepAlarm]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%s - iPad does not support Sleep Alarms", &v1, 0xCu);
}

void sub_BF48(void *a1, NSObject **a2)
{
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [a1 localizedDescription];
    v6 = 136315394;
    v7 = "[MSDAlarmManager disableSleepAlarm]";
    v8 = 2114;
    v9 = v5;
    _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%s - Cannot get sleepSchedule - %{public}@", &v6, 0x16u);
  }

  *a2 = v4;
}

void sub_C078()
{
  sub_4880();
  sub_4874();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_C0E8(void *a1, NSObject *a2)
{
  v3 = [a1 toString];
  sub_4880();
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Store hour settings have or will be expired on %{public}@", v4, 0xCu);
}

void sub_C17C()
{
  sub_4880();
  sub_4874();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_C22C()
{
  sub_4880();
  sub_4874();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_C29C(uint64_t a1, void *a2, void *a3)
{
  v6 = defaultLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a1;
    _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Failed to parse store hour date string - %{public}@", &v7, 0xCu);
  }
}

void sub_C3D4(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Backlight assertion failed to acquire: %{public}@", &v4, 0xCu);
}

void sub_C46C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "ScreenSaver Launch options: %{public}@", &v2, 0xCu);
}

void sub_C580(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Converted from xpc to NSArray: %{public}@", &v3, 0xCu);
}

void sub_C600(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "The value at index %lu in this xpcArray are of an unsupported type", &v2, 0xCu);
}

void sub_C6BC(void *a1, NSObject *a2)
{
  v3 = 136315138;
  v4 = [a1 objCType];
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unsupported NSNumber type: %s for xpc dictionary encoding", &v3, 0xCu);
}