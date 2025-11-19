id sub_1000018F4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void sub_100001938(uint64_t a1)
{
  responseFlags = 0;
  v2 = CFUserNotificationReceiveResponse(*(a1 + 56), 0.0, &responseFlags);
  CFRelease(*(a1 + 56));
  if (!v2)
  {
    if ((responseFlags & 3) != 0 || !*(a1 + 32))
    {
      goto LABEL_13;
    }

    v4 = +[LSApplicationWorkspace defaultWorkspace];
    v5 = [NSURL URLWithString:*(a1 + 32)];
    v20 = 0;
    v6 = [v4 openSensitiveURL:v5 withOptions:0 error:&v20];
    v7 = v20;

    v8 = softwareupdatebridge_log;
    v9 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v9)
      {
        v10 = *(a1 + 32);
        *buf = 138543362;
        v23 = v10;
        v11 = "successfully opened url: (%{public}@)";
        v12 = v8;
        v13 = 12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }

    else if (v9)
    {
      v14 = *(a1 + 32);
      *buf = 138543618;
      v23 = v14;
      v24 = 2114;
      v25 = v7;
      v11 = "failed to open url (%{public}@) with error: (%{public}@)";
      v12 = v8;
      v13 = 22;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    LODWORD(v23) = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "failed to get response from CFUserNotification: %{public}d", buf, 8u);
  }

LABEL_13:
  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = dispatch_get_global_queue(0, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100001BBC;
    v17[3] = &unk_10002C750;
    v19 = v15;
    v18 = *(a1 + 40);
    dispatch_async(v16, v17);
  }
}

id sub_100001BBC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void sub_1000038DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000038FC(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(*(*(a1 + 32) + 8) + 24), 0.0, &responseFlags);
  v2 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = responseFlags & 3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[SpaceNotification]: User pressed %lu\n", buf, 0xCu);
  }

  v3 = responseFlags & 3;
  v4 = softwareupdatebridge_log;
  v5 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[SpaceNotification]: User pressed Unpair, time to unpair\n", buf, 2u);
    }

    v10 = @"obliterate";
    v11 = &__kCFBooleanTrue;
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = +[NRPairedDeviceRegistry sharedInstance];
    v8 = SUBActiveNRDevice();
    [v7 unpairWithDevice:v8 withOptions:v6 operationHasBegun:&stru_10002C7B8];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[SpaceNotification]: User pressed OK..Nothing to do\n", buf, 2u);
  }

  CFRelease(*(*(*(a1 + 32) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = 0;
}

void sub_100003AE0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[SpaceNotification]: Unable to unpair: %@", &v4, 0xCu);
  }
}

id SUBError(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_100003BD8(a1, a2, 0, a3, a4, &a9);

  return v9;
}

id sub_100003BD8(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v12)
  {
    v15 = [v12 mutableCopy];
  }

  else
  {
    v15 = +[NSMutableDictionary dictionary];
  }

  v16 = v15;
  if (v14)
  {
    v17 = [[NSString alloc] initWithFormat:v14 arguments:a6];
    if (v17)
    {
      [v16 setObject:v17 forKeyedSubscript:NSLocalizedDescriptionKey];
    }
  }

  if (v13)
  {
    [v16 setObject:v13 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v18 = [NSError errorWithDomain:v11 code:a2 userInfo:v16];

  return v18;
}

id SUBErrorUserInfo(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_100003BD8(a1, a2, a3, a4, a5, &a9);

  return v9;
}

uint64_t SUBIsChargerConnected()
{
  v0 = IOServiceMatching("IOPMPowerSource");
  if (!v0)
  {
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (!MatchingService)
  {
    return 0;
  }

  v2 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"ExternalConnected", kCFAllocatorDefault, 0);
  IOObjectRelease(v2);
  if (!CFProperty)
  {
    return 0;
  }

  Value = CFBooleanGetValue(CFProperty);
  CFRelease(CFProperty);
  return Value;
}

id SUBActiveNRDevice()
{
  v0 = +[NRPairedDeviceRegistry sharedInstance];
  v1 = [v0 getAllDevices];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = NRDevicePropertyIsActive;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 valueForProperty:{v6, v13}];
        v10 = [v9 BOOLValue];

        if (v10)
        {
          v11 = v8;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

uint64_t SUBIsRunningInStoreDemoMode()
{
  if (qword_1000338E8 != -1)
  {
    sub_1000199C4();
  }

  v0 = qword_1000338E0;
  objc_sync_enter(v0);
  if (qword_1000338F8 != -1)
  {
    sub_1000199D8();
  }

  v1 = byte_1000338F0;
  objc_sync_exit(v0);

  return v1;
}

void sub_100003FC4(id a1)
{
  qword_1000338E0 = objc_alloc_init(NSNumber);

  _objc_release_x1();
}

void sub_100004000(id a1)
{
  byte_1000338F0 = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0) != 0;
  out_token = 0;
  v1 = dispatch_get_global_queue(25, 0);
  v2 = notify_register_dispatch("com.apple.demo-settings.changed", &out_token, v1, &stru_10002C880);

  if (v2)
  {
    v3 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      if (byte_1000338F0)
      {
        v4 = @"Enabled";
      }

      else
      {
        v4 = @"Disabled";
      }

      *buf = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Failed to register for storeDemoMode state change notifications. StoreDemoMode currently %@", buf, 0xCu);
    }
  }
}

void sub_10000412C(id a1, int a2)
{
  v2 = qword_1000338E0;
  objc_sync_enter(v2);
  byte_1000338F0 = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0) != 0;
  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_1000338F0)
    {
      v4 = @"Enabled";
    }

    else
    {
      v4 = @"Disabled";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "StoreDemoMode settings changed. StoreDemoMode is now %@", &v5, 0xCu);
  }

  objc_sync_exit(v2);
}

uint64_t SUBIsRunningInStandaloneGizmoMode()
{
  if (qword_100033908 != -1)
  {
    sub_1000199EC();
  }

  return byte_100033900;
}

void sub_10000428C(id a1)
{
  if (MGGetBoolAnswer())
  {
    v1 = CFPreferencesGetAppBooleanValue(@"StandAloneGizmoMode", @"com.apple.subridge", 0) != 0;
  }

  else
  {
    v1 = 0;
  }

  byte_100033900 = v1;
}

id copySUBSimulationFileName()
{
  if (qword_100033918 != -1)
  {
    sub_100019A00();
  }

  v1 = qword_100033910;

  return v1;
}

void sub_100004324(id a1)
{
  if (MGGetBoolAnswer())
  {
    v1 = CFPreferencesCopyValue(@"SimulationFileName", @"com.apple.subridge", @"mobile", kCFPreferencesAnyHost);
    v2 = qword_100033910;
    qword_100033910 = v1;

    if (qword_100033910)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          v5 = 138412290;
          v6 = qword_100033910;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Found default for simulator file %@", &v5, 0xCu);
        }

        return;
      }

      v4 = qword_100033910;
    }

    else
    {
      v4 = 0;
    }

    qword_100033910 = 0;
  }

  else
  {
    v4 = qword_100033910;
    qword_100033910 = 0;
  }
}

const __CFString *stringForMAAssetCancelResult(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_10002C8E0 + a1);
  }
}

const __CFString *stringForMAAssetPurgeResult(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_10002C918 + a1);
  }
}

void enableNotification(const char *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "Notification", a1);
  xpc_set_event();
}

uint64_t sub_10000455C()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    result = CFPreferencesGetAppIntegerValue(@"SUDefaultsCleanupVersion", @"com.apple.subridge", 0);
    if (result <= 1)
    {
      v1 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *v2 = 0;
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Resetting asset URLs to default values", v2, 2u);
      }

      ASSetAssetServerURLForAssetType();
      ASSetAssetServerURLForAssetType();
      ASSetAssetServerURLForAssetType();
      ASSetDefaultAssetServerURLForAssetType();
      ASSetDefaultAssetServerURLForAssetType();
      ASSetDefaultAssetServerURLForAssetType();
      CFPreferencesSetAppValue(@"SUDefaultsCleanupVersion", &off_10002F550, @"com.apple.subridge");
      return CFPreferencesAppSynchronize(@"com.apple.subridge");
    }
  }

  return result;
}

void SUBLoggingInit()
{
  if (qword_100033920 != -1)
  {
    sub_100019A14();
  }
}

void sub_1000046B0(id a1)
{
  softwareupdatebridge_log = os_log_create("com.apple.subridge", "Logging");

  _objc_release_x1();
}

const __CFString *SUBStringForManagerState(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_10002CA20 + a1 - 1);
  }
}

const char *SUBStringForUserInstallRequestType(unint64_t a1)
{
  if (a1 > 3)
  {
    return "unknown";
  }

  else
  {
    return (&off_10002CA70)[a1];
  }
}

uint64_t sub_100004744(uint64_t *a1)
{
  if (qword_100033938 != -1)
  {
    sub_100019A28();
  }

  v2 = 12;
  if (!byte_100033930)
  {
    v2 = 0;
  }

  *a1 = v2;
  return qword_100033928;
}

void sub_10000479C(id a1)
{
  v1 = SUBMessageTypeAddClient[0];
  v2 = SUBMessageTypeScanForUpdates[0];
  v3 = SUBMessageTypeStartDownload[0];
  v4 = SUBMessageTypeInstallUpdate[0];
  v5 = SUBMessageTypeQueryManagerState[0];
  v6 = SUBMessageTypeUserDidAcceptTermsAndConditions[0];
  v7 = SUBMessageTypeUserDidAcceptTermsAndConditionsWithReply[0];
  v8 = SUBMessageTypePurgeUpdate[0];
  v9 = SUBMessageTypeSetUserInstallRequestType[0];
  v10 = SUBMessageTypeGetSupportsInstallTonight[0];
  v12 = SUBMessageTypeGetCloudDescriptors[0];
  v13 = SUBMessageTypeRemoveCloudDescriptor[0];
  v11 = malloc_type_calloc(1uLL, 0x180uLL, 0x297B8A29uLL);
  qword_100033928 = v11;
  *v11 = v1;
  v11[2] = 0x1000000;
  *(v11 + 2) = sub_1000049AC;
  *(v11 + 3) = 0;
  *(v11 + 4) = v2;
  v11[10] = 16777217;
  *(v11 + 6) = 0;
  *(v11 + 7) = sub_100004A28;
  *(v11 + 8) = v3;
  v11[18] = 16777217;
  *(v11 + 10) = 0;
  *(v11 + 11) = sub_100004B7C;
  *(v11 + 12) = v4;
  v11[26] = 16777217;
  *(v11 + 14) = 0;
  *(v11 + 15) = sub_100004D7C;
  *(v11 + 16) = v5;
  v11[34] = 16843009;
  *(v11 + 18) = 0;
  *(v11 + 19) = sub_100004F50;
  *(v11 + 20) = v6;
  v11[42] = 16777217;
  *(v11 + 22) = 0;
  *(v11 + 23) = 0;
  *(v11 + 24) = v7;
  v11[50] = 16777473;
  *(v11 + 26) = 0;
  *(v11 + 27) = 0;
  *(v11 + 28) = v8;
  v11[58] = 16843009;
  *(v11 + 30) = 0;
  *(v11 + 31) = sub_1000050AC;
  *(v11 + 32) = v9;
  v11[66] = 16843009;
  *(v11 + 34) = 0;
  *(v11 + 35) = 0;
  *(v11 + 36) = v10;
  v11[74] = 16777473;
  *(v11 + 38) = 0;
  *(v11 + 39) = 0;
  *(v11 + 40) = v12;
  v11[82] = 0x1000000;
  *(v11 + 42) = sub_100005198;
  *(v11 + 43) = 0;
  *(v11 + 44) = v13;
  v11[90] = 0x1000000;
  *(v11 + 46) = sub_100005244;
  *(v11 + 47) = 0;
  byte_100033930 = 1;
}

void sub_1000049AC(void *a1, void *a2)
{
  v3 = qword_100033950;
  v4 = a2;
  v5 = a1;
  [v3 addClient:v5];
  [qword_100033950 forwardXPCMessage:v4 fromClient:v5];
}

void sub_100004A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = SUBError(@"SUBError", 21, 0, @"Cannot scan while update is being installed", a5, a6, a7, a8, v15);
  v9 = qword_100033950;
  v10 = [NSString stringWithUTF8String:SUBMessageTypeKey[0]];
  v16[0] = v10;
  v11 = [NSString stringWithUTF8String:SUBMessageTypeScanResult[0]];
  v17[0] = v11;
  v12 = [NSString stringWithUTF8String:SUBMessageErrorKey[0]];
  v16[1] = v12;
  v13 = sub_100013A88(v8);
  v17[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v9 forwardIDSMessage:v14];
}

void sub_100004B7C(uint64_t a1, void *a2)
{
  v2 = SUBMessageDescriptorKey[0];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_10000B488(v3, v2, v4);

  v10 = SUBError(@"SUBError", 21, 0, @"Cannot start download while update is being installed", v6, v7, v8, v9, v5);
  v11 = qword_100033950;
  v12 = [NSString stringWithUTF8String:SUBMessageTypeKey[0]];
  v21[0] = v12;
  v13 = [NSString stringWithUTF8String:SUBMessageTypeDownloadProgress[0]];
  v22[0] = v13;
  v14 = [NSString stringWithUTF8String:SUBMessageDownloadKey[0]];
  v21[1] = v14;
  v15 = [SUBDownload downloadWithDescriptor:v5 andProgress:0];
  v16 = sub_100013A88(v15);
  v22[1] = v16;
  v17 = [NSString stringWithUTF8String:SUBMessageErrorKey[0]];
  v21[2] = v17;
  v18 = sub_100013A88(v10);
  v22[2] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  [v11 forwardIDSMessage:v19];
}

void sub_100004D7C(uint64_t a1, void *a2)
{
  v2 = SUBMessageDescriptorKey[0];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_10000B488(v3, v2, v4);

  v10 = SUBError(@"SUBError", 21, 0, @"Cannot install update while update is being installed", v6, v7, v8, v9, v19);
  v11 = qword_100033950;
  v12 = [NSString stringWithUTF8String:SUBMessageTypeKey[0]];
  v20[0] = v12;
  v13 = [NSString stringWithUTF8String:SUBMessageTypeInstallResult[0]];
  v21[0] = v13;
  v14 = [NSString stringWithUTF8String:SUBMessageDescriptorKey[0]];
  v20[1] = v14;
  v15 = sub_100013A88(v5);
  v21[1] = v15;
  v16 = [NSString stringWithUTF8String:SUBMessageErrorKey[0]];
  v20[2] = v16;
  v17 = sub_100013A88(v10);
  v21[2] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
  [v11 forwardIDSMessage:v18];
}

void sub_100004F50(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[SUBInstallationMonitor sharedInstallationMonitor];
  v6 = [v5 descriptorBeingInstalled];

  if (v6)
  {
    reply = xpc_dictionary_create_reply(v4);
    v8 = reply;
    if (reply)
    {
      xpc_dictionary_set_int64(reply, SUBMessageManagerStateKey[0], 10);
      sub_10000B378(v8, SUBMessageDescriptorKey[0], v6);
      xpc_connection_send_message(v3, v8);
    }

    else
    {
      v10 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "failed to create reply to manager state message", v11, 2u);
      }
    }
  }

  else
  {
    v9 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "no descriptor being installed while in short circuit handler?", buf, 2u);
    }
  }
}

void sub_1000050AC(void *a1, void *a2)
{
  v3 = a1;
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v9 = SUBMessageErrorKey[0];
    v10 = SUBError(@"SUBError", 21, 0, @"cannot purge update while update is being installed", v4, v5, v6, v7, v12);
    sub_10000B378(reply, v9, v10);

    xpc_connection_send_message(v3, reply);
  }

  else
  {
    v11 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "failed to create reply to manager state message", &v12, 2u);
    }
  }
}

void sub_100005198(void *a1, void *a2)
{
  connection = a1;
  reply = xpc_dictionary_create_reply(a2);
  v4 = +[SUBCloudDescriptorManager sharedCloudDescriptorManager];
  v5 = [v4 getCloudDescriptors];

  if (reply)
  {
    sub_10000B378(reply, SUBMessageDescriptorArrayKey[0], v5);
    xpc_connection_send_message(connection, reply);
  }
}

void sub_100005244(uint64_t a1, void *a2)
{
  v2 = SUBMessageDescriptorKey[0];
  v3 = a2;
  v4 = objc_opt_class();
  v6 = sub_10000B488(v3, v2, v4);

  v5 = +[SUBCloudDescriptorManager sharedCloudDescriptorManager];
  [v5 removeCloudDescriptor:v6];
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  SUBLoggingInit();
  v1 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Subridged starting up. Setting up tmp dir", buf, 2u);
  }

  v2 = _set_user_dir_suffix();
  v3 = softwareupdatebridge_log;
  v4 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = v3;
      v6 = NSTemporaryDirectory();
      *buf = 138412290;
      v66 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "tmp directory for subridged set to %@", buf, 0xCu);
    }
  }

  else if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Failed to set up tmp directory for subridged", buf, 2u);
  }

  sub_10000455C();
  v7 = objc_alloc_init(SUBMessageEndpoint);
  v8 = qword_100033948;
  qword_100033948 = v7;

  v9 = objc_alloc_init(SUBBridgeServer);
  v10 = qword_100033950;
  qword_100033950 = v9;

  [qword_100033950 setEndpoint:qword_100033948];
  v11 = [[SUBTaskSerializer alloc] initWithQueueLabel:"com.apple.subridge.MessageSerializer.Incoming"];
  v12 = qword_100033958;
  qword_100033958 = v11;

  v13 = objc_alloc_init(SUBDocumentationFetcher);
  v14 = qword_100033940;
  qword_100033940 = v13;

  v15 = qword_100033948;
  v16 = [NSString stringWithUTF8String:SUBMessageTypeFetchDocumentation[0]];
  [v15 setHandler:&stru_10002CAD0 forMessagesOfType:v16];

  v17 = qword_100033948;
  v18 = [NSString stringWithUTF8String:SUBMessageTypeDownloadProgress[0]];
  [v17 setHandler:&stru_10002CB18 forMessagesOfType:v18];

  v19 = qword_100033948;
  v20 = [NSString stringWithUTF8String:SUBMessageTypeInstallationCanProceed[0]];
  v21 = [NSString stringWithUTF8String:SUBMessageTypeInstallationWillProceed[0], v20];
  v64[1] = v21;
  v22 = [NSArray arrayWithObjects:v64 count:2];
  [v19 setHandler:&stru_10002CB88 forMessagesOfTypes:v22];

  v23 = qword_100033948;
  v24 = [NSString stringWithUTF8String:SUBMessageTypeShowDownloadAndPrepareError[0]];
  [v23 setHandler:&stru_10002CBA8 forMessagesOfType:v24];

  v25 = qword_100033948;
  v26 = [NSString stringWithUTF8String:SUBMessageTypeScanResult[0]];
  [v25 setHandler:&stru_10002CBF0 forMessagesOfType:v26];

  v27 = qword_100033948;
  v28 = [NSString stringWithUTF8String:SUBMessageTypeInstallResult[0]];
  [v27 setHandler:&stru_10002CC10 forMessagesOfType:v28];

  v29 = qword_100033948;
  v30 = [NSString stringWithUTF8String:SUBMessageTypeShowInstallError[0]];
  [v29 setHandler:&stru_10002CC30 forMessagesOfType:v30];

  v31 = qword_100033948;
  v32 = [NSString stringWithUTF8String:SUBMessageTypeRetrieveSsoToken[0]];
  [v31 setHandler:&stru_10002CC50 forMessagesOfType:v32];

  v33 = qword_100033948;
  v34 = [NSString stringWithUTF8String:SUBMessageTypeBadgeBridgeApp[0]];
  [v33 setHandler:&stru_10002CC98 forMessagesOfType:v34];

  v35 = qword_100033948;
  v36 = [NSString stringWithUTF8String:SUBMessageTypeShowUpdateAvailable[0]];
  [v35 setHandler:&stru_10002CCD8 forMessagesOfType:v36];

  v37 = qword_100033948;
  v38 = [NSString stringWithUTF8String:SUBMessageTypeCreateStashBag[0]];
  [v37 setHandler:&stru_10002CD18 forMessagesOfType:v38];

  v39 = qword_100033948;
  v40 = [NSString stringWithUTF8String:SUBMessageTypePerformMigration[0]];
  [v39 setHandler:&stru_10002CDB0 forMessagesOfType:v40];

  v41 = qword_100033948;
  v42 = [NSString stringWithUTF8String:SUBMessageTypeUserDidAcceptTermsAndConditionsChanged[0]];
  [v41 setHandler:&stru_10002CDD0 forMessagesOfType:v42];

  v43 = qword_100033948;
  v44 = [NSString stringWithUTF8String:SUBMessageTypeUserInstallRequestTypeChanged[0]];
  [v43 setHandler:&stru_10002CDF0 forMessagesOfType:v44];

  v45 = qword_100033948;
  v46 = [NSString stringWithUTF8String:SUBMessageTypeGetCompanionLockState[0]];
  [v45 setHandler:&stru_10002CE10 forMessagesOfType:v46];

  v47 = qword_100033948;
  v48 = [NSString stringWithUTF8String:SUBMessageTypeUnlockCompanion[0]];
  [v47 setHandler:&stru_10002CE30 forMessagesOfType:v48];

  v49 = qword_100033948;
  v50 = [NSString stringWithUTF8String:SUBMessageTypePresentingAlertOnGizmo[0]];
  [v49 setHandler:&stru_10002CE70 forMessagesOfType:v50];

  v51 = qword_100033948;
  v52 = [NSString stringWithUTF8String:SUBMessageTypeGizmoOSVersionDidChange[0]];
  [v51 setHandler:&stru_10002CE90 forMessagesOfType:v52];

  v53 = qword_100033948;
  v54 = [NSString stringWithUTF8String:SUBMessageTypeShowDuetConditions[0]];
  [v53 setHandler:&stru_10002CEB0 forMessagesOfType:v54];

  [qword_100033948 resume];
  v55 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "resumed IDS endpoint", buf, 2u);
  }

  mach_service = xpc_connection_create_mach_service(off_100033680, 0, 1uLL);
  v57 = qword_100033960;
  qword_100033960 = mach_service;

  if (!qword_100033960)
  {
    v58 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Failed to create mach service listener connection", buf, 2u);
    }

    abort();
  }

  v59 = qword_100033948;
  v60 = [NSString stringWithUTF8String:SUBMessageTypeDisplayTerms[0]];
  [v59 setHandler:&stru_10002CED0 forMessagesOfType:v60];

  v61 = qword_100033948;
  v62 = [NSString stringWithUTF8String:SUBMessageTypeDisplayTermsCloud[0]];
  [v61 setHandler:&stru_10002CF30 forMessagesOfType:v62];

  xpc_connection_set_event_handler(qword_100033960, &stru_10002CFD0);
  xpc_connection_activate(qword_100033960);
  v63 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "activated XPC peer connection listener", buf, 2u);
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, &stru_10002D0E0);
  objc_autoreleasePoolPop(v0);
  CFRunLoopRun();
  exit(1);
}

void sub_100005AB0(id a1, NSDictionary *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [NSString stringWithUTF8String:SUBMessageDescriptorKey[0]];
  v7 = objc_opt_class();
  v8 = sub_100013B30(v4, v6, v7);

  if (v8)
  {
    if (MGGetBoolAnswer())
    {
      v9 = [NSString stringWithUTF8String:SUBMessageDocumentationAssetServerURLKey[0]];
      v10 = [(NSDictionary *)v4 objectForKey:v9];

      v11 = v10 != 0;
      if (v10)
      {
        v12 = [NSURL URLWithString:v10];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    v19 = [[SUBTransaction alloc] initWithName:@"FetchingDocumentation"];
    v20 = qword_100033940;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100005D1C;
    v22[3] = &unk_10002CAF8;
    v23 = v5;
    v24 = v19;
    v21 = v19;
    [v20 fetchDocumentationForDescriptor:v8 localOnly:0 shouldOverrideURL:v11 overrideURL:v12 completion:v22];
  }

  else
  {
    v13 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "malformed fetch documentation message", buf, 2u);
    }

    v18 = qword_100033948;
    v12 = SUBError(@"SUBError", 1, 0, @"Missing %s key in message", v14, v15, v16, v17, SUBMessageDescriptorKey[0]);
    [v18 sendErrorReply:v12 toMessage:v5 isCritical:1];
  }
}

void sub_100005D1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [qword_100033948 sendErrorReply:v6 toMessage:*(a1 + 32) isCritical:1];
  }

  else
  {
    v7 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "successful doc download; sending reply", v12, 2u);
    }

    v8 = qword_100033948;
    v9 = [NSString stringWithUTF8String:SUBMessageDocumentationKey[0]];
    v13 = v9;
    v10 = sub_100013A88(v5);
    v14 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v8 sendReply:v11 toMessage:*(a1 + 32) isCritical:1];
  }

  [*(a1 + 40) invalidate];
}

void sub_100005E90(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = a2;
  v4 = qword_100033958;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005F28;
  v6[3] = &unk_10002CB68;
  v7 = v3;
  v5 = v3;
  [v4 enqueueAsynchronousTask:v6];
}

void sub_100005F28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000062B4;
  v6[3] = &unk_10002CB40;
  v7 = v3;
  v5 = v3;
  sub_100005FC0(v4, v6);
}

void sub_100005FC0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000A2C8;
  v29[3] = &unk_10002D170;
  v5 = v3;
  v30 = v5;
  v6 = objc_retainBlock(v29);
  v7 = [NSString stringWithUTF8String:SUBMessageDescriptorKey[0]];
  v8 = objc_opt_class();
  v9 = sub_100013B30(v5, v7, v8);

  if (v9 && ([v9 documentation], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000A564;
    v25[3] = &unk_10002D198;
    v26 = v5;
    v27 = v9;
    v28 = v4;
    (v6[2])(v6, v27, v25);
  }

  else
  {
    v11 = [NSString stringWithUTF8String:SUBMessageDownloadKey[0]];
    v12 = objc_opt_class();
    v13 = sub_100013B30(v5, v11, v12);

    v14 = [v13 descriptor];
    v15 = v14;
    if (v14 && ([v14 documentation], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000A660;
      v20[3] = &unk_10002D1C0;
      v21 = v5;
      v22 = v15;
      v23 = v13;
      v24 = v4;
      v17 = v6[2];
      v18 = v13;
      v19 = v15;
      v17(v6, v19, v20);
    }

    else
    {

      (*(v4 + 2))(v4, v5);
    }
  }
}

uint64_t sub_1000062B4(uint64_t a1, uint64_t a2)
{
  [qword_100033950 forwardIDSMessage:a2];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_100006300(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = a2;
  v4 = qword_100033958;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006398;
  v6[3] = &unk_10002CB68;
  v7 = v3;
  v5 = v3;
  [v4 enqueueAsynchronousTask:v6];
}

void sub_100006398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006430;
  v6[3] = &unk_10002CB40;
  v7 = v3;
  v5 = v3;
  sub_100005FC0(v4, v6);
}

uint64_t sub_100006430(uint64_t a1, uint64_t a2)
{
  [qword_100033950 forwardIDSMessage:a2];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_10000647C(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = a2;
  v4 = qword_100033958;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006514;
  v6[3] = &unk_10002CBD0;
  v7 = v3;
  v5 = v3;
  [v4 enqueueSynchronousTask:v6];
}

void sub_100006514(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSString stringWithUTF8String:SUBMessageErrorKey[0]];
  v3 = objc_opt_class();
  v4 = sub_100013B30(v1, v2, v3);

  v5 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 userInfo];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Download error: %{public}@ with userInfo: %{public}@", &v9, 0x16u);
  }

  v8 = objc_alloc_init(SUBUserNotification);
  [(SUBUserNotification *)v8 showDownloadAndPrepareError:v4];
}

void sub_100006654(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = a2;
  v4 = qword_100033958;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000066EC;
  v6[3] = &unk_10002CB68;
  v7 = v3;
  v5 = v3;
  [v4 enqueueAsynchronousTask:v6];
}

void sub_1000066EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [NSString stringWithUTF8String:SUBMessageErrorKey[0]];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
LABEL_6:
    v13 = *(a1 + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100006B40;
    v14[3] = &unk_10002CB40;
    v15 = v3;
    sub_100005FC0(v13, v14);

    goto LABEL_10;
  }

  v7 = *(a1 + 32);
  v8 = [NSString stringWithUTF8String:SUBMessageErrorKey[0]];
  v9 = objc_opt_class();
  v6 = sub_100013B30(v7, v8, v9);

  v10 = [v6 code];
  v11 = softwareupdatebridge_log;
  v12 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
  if (v10 == 4)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[ScanResultHandler]: Scan returned result as up to date. Clearing badge", buf, 2u);
    }

    sub_100006904(0);
    goto LABEL_6;
  }

  if (v12)
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[ScanResultHandler]: Scan returned error %{public}@. Forwarding ScanResult to bridge without documentation checks", buf, 0xCu);
  }

  [qword_100033950 forwardIDSMessage:*(a1 + 32)];
  v3[2](v3);
LABEL_10:
}

void sub_100006904(int a1)
{
  memcpy(__dst, "com.apple.Bridge", sizeof(__dst));
  SBSSpringBoardServerPort();
  v2 = SBSetApplicationBadgeNumber();
  if (v2)
  {
    v3 = v2;
    v4 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67240192;
      LODWORD(v17) = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "failed to badge bridge app: %{public}d", &v16, 8u);
    }
  }

  v5 = SUBActiveNRDevice();
  v6 = [v5 valueForProperty:NRDevicePropertyPairingID];
  v7 = [v5 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "failed to get pairingID and pairingDataStorePath. Skipping badging.", &v16, 2u);
    }
  }

  else
  {
    v11 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.Bridge" pairingID:v6 pairingDataStore:v7];
    v12 = v11;
    if (v11)
    {
      [v11 setBool:a1 > 0 forKey:@"kBadgedForSoftwareUpdateKey"];
      v13 = [v12 synchronize];
    }

    else
    {
      v14 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "failed to instantiate domain accessor; paired device info: %@", &v16, 0xCu);
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Bridge.badgeUpdate", 0, 0, 0);
  }
}

void sub_100006B40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[ScanResultHandler]: Forwarding ScanResult to bridge after documentation check", v5, 2u);
  }

  [qword_100033950 forwardIDSMessage:v3];
  (*(*(a1 + 32) + 16))();
}

void sub_100006BE0(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = a2;
  v4 = qword_100033958;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006C78;
  v6[3] = &unk_10002CB68;
  v7 = v3;
  v5 = v3;
  [v4 enqueueAsynchronousTask:v6];
}

void sub_100006C78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = SUBMessageTypeInstallResult[0];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received %{public}s", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006DA4;
  v7[3] = &unk_10002CB40;
  v8 = v3;
  v6 = v3;
  sub_100005FC0(v5, v7);
}

void sub_100006DA4(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [NSString stringWithUTF8String:SUBMessageErrorKey[0]];
  v4 = objc_opt_class();
  v5 = sub_100013B30(v10, v3, v4);

  if (!v5)
  {
    sub_100006904(0);
    v6 = [NSString stringWithUTF8String:SUBMessageDescriptorKey[0]];
    v7 = objc_opt_class();
    v8 = sub_100013B30(v10, v6, v7);

    v9 = +[SUBInstallationMonitor sharedInstallationMonitor];
    [v9 gizmoDidBeginInstallingDescriptor:v8];
  }

  [qword_100033950 forwardIDSMessage:v10];
  (*(*(a1 + 32) + 16))();
}

void sub_100006ED0(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = a2;
  v4 = qword_100033958;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006F68;
  v6[3] = &unk_10002CBD0;
  v7 = v3;
  v5 = v3;
  [v4 enqueueSynchronousTask:v6];
}

void sub_100006F68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSString stringWithUTF8String:SUBMessageErrorKey[0]];
  v3 = objc_opt_class();
  v4 = sub_100013B30(v1, v2, v3);

  if (v4)
  {
    v5 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [v4 userInfo];
      v9 = 138543618;
      v10 = v4;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Install error %{public}@ with userInfo %{public}@", &v9, 0x16u);
    }
  }

  v8 = objc_alloc_init(SUBUserNotification);
  [(SUBUserNotification *)v8 showInstallationError:v4];
}

void sub_1000070AC(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = a3;
  v4 = [[SUBTransaction alloc] initWithName:@"RetrievingSsoToken"];
  v5 = objc_alloc_init(SUBAppleConnectSSO);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007190;
  v8[3] = &unk_10002CC78;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  [(SUBAppleConnectSSO *)v5 retrieveSSOToken:v8];
}

void sub_100007190(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = qword_100033948;
  if (a3)
  {
    [qword_100033948 sendErrorReply:a3 toMessage:*(a1 + 32) isCritical:1];
  }

  else
  {
    v7 = [NSString stringWithUTF8String:SUBMessageSsoTokenKey[0]];
    v10 = v7;
    v8 = sub_100013A88(v5);
    v11 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [v6 sendReply:v9 toMessage:*(a1 + 32) isCritical:1];
  }

  [*(a1 + 40) invalidate];
}

void sub_1000072A8(id a1, NSDictionary *a2, NSString *a3)
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SUDisableAvailabilityAlerts", @"com.apple.subridge", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppBooleanValue == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    [qword_100033958 enqueueSynchronousTask:&stru_10002CCB8];
  }

  else
  {
    v5 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not displaying update alert due to default setting", v7, 2u);
    }
  }
}

void sub_100007370(id a1)
{
  v10 = objc_alloc_init(SUBUserNotification);
  v1 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
  v2 = [v1 localizedStringForKey:@"UPDATE_AVAILABLE_HEADER" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
  v3 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
  v4 = [v3 localizedStringForKey:@"UPDATE_AVAILABLE_MESSAGE" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
  v5 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
  v6 = [v5 localizedStringForKey:@"DETAILS_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
  v7 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
  v8 = [v7 localizedStringForKey:@"CLOSE_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
  LOBYTE(v9) = 1;
  [(SUBUserNotification *)v10 showUserNotificationHeader:v2 message:v4 internalMessage:0 defButton:v6 altButton:v8 bridgePane:@"bridge:root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK" showOnLockLockScreen:v9 dismissalHandler:0];
}

void sub_100007508(id a1, NSDictionary *a2, NSString *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[SUBTransaction alloc] initWithName:@"CreatingStashBag"];
  v7 = objc_alloc_init(SUBPairedUnlockManager);
  v8 = [NSString stringWithUTF8String:SUBMessageDescriptorKey[0]];
  v9 = objc_opt_class();
  v10 = sub_100013B30(v5, v8, v9);

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007678;
  v15[3] = &unk_10002CD90;
  v16 = v4;
  v17 = v10;
  v18 = v7;
  v19 = v6;
  v11 = v6;
  v12 = v7;
  v13 = v10;
  v14 = v4;
  [(SUBPairedUnlockManager *)v12 supportsPairedUnlock:v15];
}

void sub_100007678(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = softwareupdatebridge_log;
  v7 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138543362;
      v45 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "failed to determine if device supports paired unlock: %{public}@", buf, 0xCu);
    }

    [qword_100033948 sendErrorReply:v5 toMessage:*(a1 + 32) isCritical:1];
    goto LABEL_25;
  }

  if (a2)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "paired unlock supported", buf, 2u);
    }

    v8 = MKBGetDeviceLockState();
    if ([*(a1 + 40) userInstallRequestType] != 3 || !v8 || v8 == 3)
    {
      disableNotification();
      v9 = *(a1 + 48);
      v10 = [*(a1 + 40) manifest];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100007C40;
      v31[3] = &unk_10002CD68;
      v32 = *(a1 + 32);
      v33 = *(a1 + 56);
      [v9 stageStashBagWithManifest:v10 completion:v31];

      goto LABEL_25;
    }

    enableNotification("com.apple.mobile.keybagd.lock_status");
    v22 = qword_100033948;
    v23 = [NSString stringWithUTF8String:SUBMessageCreateStashBagResponseKey[0]];
    v38 = v23;
    v24 = [NSString stringWithUTF8String:SUBMessagePairedUnlockPending[0]];
    v39 = v24;
    v25 = NSDictionary;
    v26 = &v39;
    v27 = &v38;
LABEL_19:
    v28 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
    [v22 sendReply:v28 toMessage:*(a1 + 32) isCritical:1];

    goto LABEL_25;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "paired unlock not supported", buf, 2u);
  }

  v11 = &NSSearchPathForDirectoriesInDomains_ptr;
  if ([*(a1 + 40) userInstallRequestType] == 3)
  {
LABEL_18:
    v22 = qword_100033948;
    v23 = [NSString stringWithUTF8String:SUBMessageCreateStashBagResponseKey[0]];
    v40 = v23;
    v24 = [NSString stringWithUTF8String:SUBMessagePairedUnlockNotSupported[0]];
    v41 = v24;
    v25 = v11[210];
    v26 = &v41;
    v27 = &v40;
    goto LABEL_19;
  }

  v42[0] = kCFUserNotificationAlertHeaderKey;
  v30 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
  v12 = [v30 localizedStringForKey:@"ENTER_PASSCODE_HEADER" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
  v43[0] = v12;
  v42[1] = kCFUserNotificationAlertMessageKey;
  v13 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
  v14 = [v13 localizedStringForKey:@"ENTER_PASSCODE_MESSAGE" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
  v43[1] = v14;
  v42[2] = kCFUserNotificationDefaultButtonTitleKey;
  v15 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
  v16 = [v15 localizedStringForKey:@"CLOSE_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
  v43[2] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];

  error = -1;
  v18 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 1uLL, &error, v17);
  if (v18 && !error)
  {
    v19 = [[SUBTransaction alloc] initWithName:@"ShowingUserNotification"];
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007BFC;
    block[3] = &unk_10002CD40;
    v35 = v19;
    v36 = v18;
    v21 = v19;
    dispatch_async(v20, block);

    v11 = &NSSearchPathForDirectoriesInDomains_ptr;
    goto LABEL_18;
  }

  v29 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    LODWORD(v45) = error;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "failed to display notification: %{public}d", buf, 8u);
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_25:
}

void sub_100007BFC(uint64_t a1)
{
  CFUserNotificationReceiveResponse(*(a1 + 40), 0.0, 0);
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_100007C40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = softwareupdatebridge_log;
  v5 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138543362;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "failed to stage stash bag on gizmo: %{public}@", buf, 0xCu);
    }

    [qword_100033948 sendErrorReply:v3 toMessage:*(a1 + 32) isCritical:1];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "did stage stash bag on gizmo", buf, 2u);
    }

    v6 = qword_100033948;
    v7 = [NSString stringWithUTF8String:SUBMessageCreateStashBagResponseKey[0]];
    v8 = [NSString stringWithUTF8String:SUBMessageCreatedStashBagResponse[0], v7];
    v11 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [v6 sendReply:v9 toMessage:*(a1 + 32) isCritical:1];
  }

  [*(a1 + 40) invalidate];
}

void sub_100007DE0(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = SUBMessageDescriptorKey[0];
  v4 = a2;
  v5 = [NSString stringWithUTF8String:v3];
  v6 = objc_opt_class();
  v7 = sub_100013B30(v4, v5, v6);

  v8 = [[SUBTransaction alloc] initWithName:@"PurgingUpdateAssets"];
  v9 = qword_100033940;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007EFC;
  v11[3] = &unk_10002CBD0;
  v12 = v8;
  v10 = v8;
  [v9 purgeAssetsNotMatchingDescriptor:v7 completion:v11];
}

void sub_100007F04(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = a2;
  v4 = qword_100033958;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007F9C;
  v6[3] = &unk_10002CB68;
  v7 = v3;
  v5 = v3;
  [v4 enqueueAsynchronousTask:v6];
}

void sub_100007F9C(uint64_t a1, void *a2)
{
  v2 = qword_100033950;
  v3 = *(a1 + 32);
  v4 = a2;
  [v2 forwardIDSMessage:v3];
  v4[2]();
}

void sub_100008004(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = a2;
  v4 = qword_100033958;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000809C;
  v6[3] = &unk_10002CB68;
  v7 = v3;
  v5 = v3;
  [v4 enqueueAsynchronousTask:v6];
}

void sub_10000809C(uint64_t a1, void *a2)
{
  v2 = qword_100033950;
  v3 = *(a1 + 32);
  v4 = a2;
  [v2 forwardIDSMessage:v3];
  v4[2]();
}

void sub_100008104(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = a3;
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", +[SUBPairedUnlockManager lockState]);
  v5 = qword_100033948;
  v6 = [NSString stringWithUTF8String:SUBMessageCompanionLockState[0]];
  v9 = v6;
  v7 = sub_100013A88(v4);
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v5 sendReply:v8 toMessage:v3 isCritical:1];
}

void sub_10000821C(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = SUBMessageDescriptorKey[0];
  v4 = a2;
  v5 = [NSString stringWithUTF8String:v3];
  v6 = objc_opt_class();
  v7 = sub_100013B30(v4, v5, v6);

  v17 = objc_alloc_init(SUBUserNotification);
  v18 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
  v8 = [v18 localizedStringForKey:@"UNLOCK_COMPANION_HEADER" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
  v9 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
  v10 = [v9 localizedStringForKey:@"UNLOCK_COMPANION_MESSAGE" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
  v11 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
  v12 = [v11 localizedStringForKey:@"OK_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
  v13 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
  v14 = [v13 localizedStringForKey:@"CLOSE_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100008468;
  v19[3] = &unk_10002CBD0;
  v20 = v7;
  v15 = v7;
  LOBYTE(v16) = 1;
  [(SUBUserNotification *)v17 showUserNotificationHeader:v8 message:v10 internalMessage:0 defButton:v12 altButton:v14 bridgePane:@"bridge:root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK" showOnLockLockScreen:v16 dismissalHandler:v19];
}

void sub_100008468(uint64_t a1)
{
  v2 = qword_100033948;
  v3 = [NSString stringWithUTF8String:SUBMessageTypeKey[0]];
  v8[0] = v3;
  v4 = [NSString stringWithUTF8String:SUBMessageTypeInstallUpdate[0]];
  v9[0] = v4;
  v5 = [NSString stringWithUTF8String:SUBMessageDescriptorKey[0]];
  v8[1] = v5;
  v6 = sub_100013A88(*(a1 + 32));
  v9[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v2 sendMessage:v7 isCritical:1 completion:&stru_10002CE50];
}

void sub_100008598(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "failed to send install update message: %{public}@", &v4, 0xCu);
    }
  }
}

void sub_100008648(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = a2;
  v4 = qword_100033958;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000086E0;
  v6[3] = &unk_10002CB68;
  v7 = v3;
  v5 = v3;
  [v4 enqueueAsynchronousTask:v6];
}

void sub_1000086E0(uint64_t a1, void *a2)
{
  v2 = qword_100033950;
  v3 = *(a1 + 32);
  v4 = a2;
  [v2 forwardIDSMessage:v3];
  v4[2]();
}

void sub_100008748(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[GizmoOSVersionDidChange]: handling IDS message from watch", v5, 2u);
  }

  v4 = +[SUBInstallationMonitor sharedInstallationMonitor];
  [v4 gizmoUpdateCompleted];
}

void sub_1000087CC(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = a2;
  v4 = qword_100033958;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008864;
  v6[3] = &unk_10002CBD0;
  v7 = v3;
  v5 = v3;
  [v4 enqueueSynchronousTask:v6];
}

void sub_100008864(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSString stringWithUTF8String:SUBMessageDescriptorKey[0]];
  v3 = objc_opt_class();
  v5 = sub_100013B30(v1, v2, v3);

  v4 = objc_alloc_init(SUBUserNotification);
  [(SUBUserNotification *)v4 showDuetConditions:v5];
}

void sub_100008904(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Want to display terms notification... checking if still needed", v7, 2u);
  }

  v4 = [NSString stringWithUTF8String:SUBMessageTypeKey[0]];
  v8 = v4;
  v5 = [NSString stringWithUTF8String:SUBMessageTypeQueryManagerState[0]];
  v9 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  [qword_100033948 sendMessage:v6 isCritical:1 withReply:&stru_10002CF10];
}

void sub_100008A2C(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = v4;
  if (!a3)
  {
    v6 = qword_100033958;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100008ACC;
    v7[3] = &unk_10002CBD0;
    v8 = v4;
    [v6 enqueueSynchronousTask:v7];
  }
}

void sub_100008ACC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSString stringWithUTF8String:SUBMessageDescriptorKey[0]];
  v3 = objc_opt_class();
  v4 = sub_100013B30(v1, v2, v3);

  if ([v4 displayTermsRequested] && (objc_msgSend(v4, "userDidAcceptTermsAndConditions") & 1) == 0)
  {
    v6 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Displaying terms notification", v18, 2u);
    }

    v15 = objc_alloc_init(SUBUserNotification);
    v16 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
    v7 = [v16 localizedStringForKey:@"TERMS_HEADER" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
    v8 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
    v9 = [v8 localizedStringForKey:@"TERMS_MESSAGE" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
    v10 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
    v11 = [v10 localizedStringForKey:@"OPEN_APP_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
    v12 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
    v13 = [v12 localizedStringForKey:@"LATER_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
    LOBYTE(v14) = 1;
    [(SUBUserNotification *)v15 showUserNotificationHeader:v7 message:v9 internalMessage:0 defButton:v11 altButton:v13 bridgePane:@"bridge:root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK&terms=YES" showOnLockLockScreen:v14 dismissalHandler:0];
  }

  else
  {
    v5 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Don't need to display terms notification", buf, 2u);
    }
  }
}

void sub_100008D50(id a1, NSDictionary *a2, NSString *a3)
{
  v3 = a2;
  v4 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received Terms request from the cloud", buf, 2u);
  }

  v5 = objc_alloc_init(NRTermsAcknowledgementRegistry);
  v6 = +[NRPairedDeviceRegistry sharedInstance];
  v7 = [v6 getAllDevicesWithArchivedAltAccountDevicesMatching:&stru_10002CF70];
  v8 = [v7 lastObject];

  v9 = [v8 valueForProperty:NRDevicePropertyPairingID];
  v10 = [[NRTermsEvent alloc] initWithDeviceID:v9];
  v11 = [NSString stringWithUTF8String:SUBMessageDescriptorKey[0]];
  v12 = objc_opt_class();
  v13 = sub_100013B30(v3, v11, v12);

  v14 = [v13 documentation];
  v15 = [v14 licenseAgreement];
  [v10 setTermsText:v15];

  [v10 setPresentationReason:@"software update"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100008FDC;
  v20[3] = &unk_10002CD90;
  v21 = v10;
  v22 = v5;
  v23 = v9;
  v24 = v13;
  v16 = v13;
  v17 = v9;
  v18 = v5;
  v19 = v10;
  [v18 checkForAcknowledgement:v19 forDeviceID:v17 withCompletion:v20];
}

BOOL sub_100008F98(id a1, NRDevice *a2)
{
  v2 = [(NRDevice *)a2 valueForProperty:NRDevicePropertyIsArchived];
  v3 = v2 == 0;

  return v3;
}

void sub_100008FDC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(a1 + 32) setEventType:4];
    [*(a1 + 40) add:*(a1 + 32) forDeviceID:*(a1 + 48) withCompletion:&stru_10002CF90];
  }

  else
  {
    v30 = v5;
    v29 = +[SUBCloudDescriptorManager sharedCloudDescriptorManager];
    [v29 getCloudDescriptors];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = v35 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v32 + 1) + 8 * v11) documentation];
          v13 = [v12 licenseAgreement];
          v14 = [*(a1 + 56) documentation];
          v15 = [v14 licenseAgreement];
          v16 = [v13 isEqualToData:v15];

          if (v16)
          {
            v25 = softwareupdatebridge_log;
            if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Found equivalent terms, not posting notification", buf, 2u);
            }

            goto LABEL_15;
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v17 = +[SUBCloudDescriptorManager sharedCloudDescriptorManager];
    [v17 saveCloudDescriptor:*(a1 + 56)];

    v27 = objc_alloc_init(SUBUserNotification);
    v28 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
    v18 = [v28 localizedStringForKey:@"TERMS_HEADER" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
    v19 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
    v20 = [v19 localizedStringForKey:@"TERMS_MESSAGE" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
    v21 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
    v22 = [v21 localizedStringForKey:@"OPEN_APP_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
    v23 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
    v24 = [v23 localizedStringForKey:@"LATER_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
    LOBYTE(v26) = 1;
    [(SUBUserNotification *)v27 showUserNotificationHeader:v18 message:v20 internalMessage:0 defButton:v22 altButton:v24 bridgePane:@"bridge:root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK&terms=YES" showOnLockLockScreen:v26 dismissalHandler:0];

LABEL_15:
    v6 = v30;
  }
}

void sub_10000934C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = softwareupdatebridge_log;
  v4 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v8 = 138412290;
      v9 = v2;
      v5 = "Unable to broadcast terms acceptance: %@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v8) = 0;
    v5 = "Sent terms add to all watches";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }
}

void sub_100009428(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "event on peer listener", buf, 2u);
  }

  type = xpc_get_type(v2);
  if (type == &_xpc_type_connection)
  {
    v7 = v2;
    v8 = sub_10000B6F4();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100009620;
    v11[3] = &unk_10002D0C0;
    v9 = v7;
    v12 = v9;
    v13 = v8;
    xpc_connection_set_event_handler(v9, v11);
    xpc_connection_activate(v9);
    v10 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "activated peer connection", buf, 2u);
    }
  }

  else
  {
    if (type == &_xpc_type_error)
    {
      sub_100019A3C(v2);
    }

    v5 = xpc_copy_description(v2);
    v6 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "unexpected type on peer listener connection: %{public}s", buf, 0xCu);
    }

    if (v5)
    {
      free(v5);
    }
  }
}

void sub_100009620(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 134218240;
    v45 = v3;
    v46 = 2048;
    v47 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "got message %p on peer connection %p", buf, 0x16u);
  }

  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    v11 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 134217984;
      v45 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "got xpc error on peer connection %p", buf, 0xCu);
    }

    [qword_100033950 removeClient:*(a1 + 32)];
    v13 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = v13;
      string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
      *buf = 134218242;
      v45 = v14;
      v46 = 2082;
      v47 = string;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "got xpc error on peer connection %p: %{public}s", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v6 = xpc_dictionary_get_string(v3, SUBMessageTypeKey[0]);
  if (qword_100033938 != -1)
  {
    sub_100019AD0();
  }

  if (byte_100033930 == 1)
  {
    v7 = qword_100033928 + 12;
    v8 = -1;
    while (1)
    {
      v9 = *(v7 - 12);
      v10 = strlen(v9);
      if (!strncmp(v6, v9, v10))
      {
        break;
      }

      v7 += 32;
      if (++v8 >= 0xB)
      {
        goto LABEL_16;
      }
    }

    v17 = *(v7 - 4);
    v18 = *(v7 - 1);
    v19 = *(v7 + 4);
    if (v18 & 1) == 0 || (*(a1 + 40))
    {
      if (*(v7 - 4))
      {
        v28 = *v7;
        v29 = *(v7 - 2);
        v30 = *(v7 - 3);
        v31 = *(v7 + 12);
        v20 = +[SUBInstallationMonitor sharedInstallationMonitor];
        v21 = [v20 descriptorBeingInstalled];

        if (v21)
        {
          v22 = softwareupdatebridge_log;
          if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v45 = v6;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "gizmo is installing; short circuiting message of type %{public}s", buf, 0xCu);
          }

          if (v31)
          {
            v31(*(a1 + 32), v3);
          }
        }

        else if (v30)
        {
          reply = xpc_dictionary_create_reply(v3);
          v24 = qword_100033950;
          v27 = *(a1 + 32);
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_100009A94;
          v32[3] = &unk_10002D098;
          v33 = v3;
          v34 = reply;
          v35 = *(a1 + 32);
          v36 = v9;
          v37 = v17;
          v38 = v30;
          v39 = v29;
          v40 = v18;
          v41 = v28;
          v42 = v19;
          v43 = v31;
          v25 = reply;
          [v24 forwardXPCMessage:v33 fromClient:v27 withReply:v32];
        }

        else
        {
          [qword_100033950 forwardXPCMessage:v3 fromClient:*(a1 + 32)];
        }
      }

      else if (v19)
      {
        v19(*(a1 + 32), v3);
      }

      else
      {
        v26 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v45 = v6;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "unhandled message of type %{public}s", buf, 0xCu);
        }
      }

      goto LABEL_16;
    }

LABEL_15:
    xpc_connection_cancel(*(a1 + 32));
  }

LABEL_16:
}

void sub_100009A94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_100033958;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100009CB8;
    v20[3] = &unk_10002CFF8;
    v8 = &v21;
    v21 = *(a1 + 32);
    v9 = &v22;
    v22 = *(a1 + 40);
    v10 = &v23;
    v23 = v6;
    v24 = *(a1 + 48);
    [v7 enqueueSynchronousTask:v20];
  }

  else
  {
    v11 = qword_100033958;
    if (*(a1 + 66) == 1)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100009DA4;
      v16[3] = &unk_10002D048;
      v8 = &v17;
      v17 = v5;
      v9 = &v18;
      v18 = *(a1 + 40);
      v10 = &v19;
      v19 = *(a1 + 48);
      [v11 enqueueAsynchronousTask:v16];
    }

    else
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100009ECC;
      v12[3] = &unk_10002D070;
      v8 = &v13;
      v13 = v5;
      v9 = &v14;
      v14 = *(a1 + 40);
      v10 = &v15;
      v15 = *(a1 + 48);
      [v11 enqueueSynchronousTask:v12];
    }
  }
}

id sub_100009CB8(uint64_t a1)
{
  string = xpc_dictionary_get_string(*(a1 + 32), SUBMessageTypeKey[0]);
  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = string;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "failed to forward message of type %{public}s", &v5, 0xCu);
  }

  sub_10000B378(*(a1 + 40), SUBMessageErrorKey[0], *(a1 + 48));
  return [qword_100033950 sendClient:*(a1 + 56) message:*(a1 + 40)];
}

void sub_100009DA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009E68;
  v6[3] = &unk_10002D020;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v5 = v3;
  sub_100005FC0(v4, v6);
}

uint64_t sub_100009E68(uint64_t a1, void *a2)
{
  v3 = sub_10000B8C8(a2, *(a1 + 32));
  [qword_100033950 sendClient:*(a1 + 40) message:*(a1 + 32)];
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

id sub_100009ECC(uint64_t a1)
{
  v2 = sub_10000B8C8(*(a1 + 32), *(a1 + 40));
  v3 = qword_100033950;
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 sendClient:v4 message:v5];
}

void sub_100009F1C(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (!strcmp(string, "com.apple.mobile.keybagd.lock_status"))
  {
    v3 = [NSString stringWithUTF8String:SUBMessageTypeKey[0]];
    v6 = v3;
    v4 = [NSString stringWithUTF8String:SUBMessageTypeQueryManagerState[0]];
    v7 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

    [qword_100033948 sendMessage:v5 isCritical:1 withReply:&stru_10002D100];
  }
}

void sub_10000A024(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = v4;
  if (!a3)
  {
    v6 = qword_100033958;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000A0C4;
    v7[3] = &unk_10002CBD0;
    v8 = v4;
    [v6 enqueueSynchronousTask:v7];
  }
}

void sub_10000A0C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSString stringWithUTF8String:SUBMessageDescriptorKey[0]];
  v3 = objc_opt_class();
  v9 = sub_100013B30(v1, v2, v3);

  v4 = MKBGetDeviceLockState();
  if ([v9 userInstallRequestType] != 3 || v4 == 3 || v4 == 0)
  {
    if ([v9 userInstallRequestType] == 3)
    {
      v7 = objc_alloc_init(SUBPairedUnlockManager);
      v8 = [v9 manifest];
      [(SUBPairedUnlockManager *)v7 stageStashBagWithManifest:v8 completion:&stru_10002D120];
    }

    else
    {
      disableNotification();
    }
  }
}

void sub_10000A1C8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v2;
      v4 = "failed to stage stash bag on gizmo: %{public}@";
      v5 = v3;
      v6 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v4, &v8, v6);
    }
  }

  else
  {
    disableNotification();
    v7 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      v4 = "did stage stash bag on gizmo";
      v5 = v7;
      v6 = 2;
      goto LABEL_6;
    }
  }
}

void sub_10000A2C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (MGGetBoolAnswer())
  {
    v7 = *(a1 + 32);
    v8 = [NSString stringWithUTF8String:SUBMessageDocumentationAssetServerURLKey[0]];
    v9 = [v7 objectForKey:v8];

    v10 = v9 != 0;
    if (v9)
    {
      v11 = [NSURL URLWithString:v9];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = [[SUBTransaction alloc] initWithName:@"FetchingDocumentation"];
  v13 = qword_100033940;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000A468;
  v17[3] = &unk_10002D148;
  v19 = v12;
  v20 = v6;
  v18 = v5;
  v14 = v12;
  v15 = v6;
  v16 = v5;
  [v13 fetchDocumentationForDescriptor:v16 localOnly:0 shouldOverrideURL:v10 overrideURL:v11 completion:v17];
}

void sub_10000A468(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "failed to retrieve documentation for update (%{public}@) with error: (%{public}@)", &v9, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) invalidate];
}

void sub_10000A564(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) mutableCopy];
  if (v5)
  {
    v7 = sub_100013A88(v5);
    v8 = SUBMessageErrorKey;
  }

  else
  {
    [*(a1 + 40) setDocumentation:v10];
    v7 = sub_100013A88(*(a1 + 40));
    v8 = SUBMessageDescriptorKey;
  }

  v9 = [NSString stringWithUTF8String:*v8];
  [v6 setObject:v7 forKeyedSubscript:v9];

  (*(*(a1 + 48) + 16))();
}

void sub_10000A660(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) mutableCopy];
  if (v5)
  {
    v7 = sub_100013A88(v5);
    v8 = SUBMessageErrorKey;
  }

  else
  {
    [*(a1 + 40) setDocumentation:v10];
    v7 = sub_100013A88(*(a1 + 48));
    v8 = SUBMessageDownloadKey;
  }

  v9 = [NSString stringWithUTF8String:*v8];
  [v6 setObject:v7 forKeyedSubscript:v9];

  (*(*(a1 + 56) + 16))();
}

char *SUBResultTypeForMessageType(const char *a1)
{
  if (!strcmp(a1, SUBMessageTypeScanForUpdates[0]))
  {
    return SUBMessageTypeScanResult[0];
  }

  if (!strcmp(a1, SUBMessageTypeStartDownload[0]))
  {
    return SUBMessageTypeDownloadProgress[0];
  }

  if (!strcmp(a1, SUBMessageTypeInstallUpdate[0]))
  {
    return SUBMessageTypeInstallResult[0];
  }

  if (!strcmp(a1, SUBMessageTypeSetUserInstallRequestType[0]))
  {
    return off_100033598[0];
  }

  if (!strcmp(a1, SUBMessageTypeUserDidAcceptTermsAndConditions[0]))
  {
    return off_100033518[0];
  }

  return 0;
}

void sub_10000AA14(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000AACC;
  v6[3] = &unk_10002CBD0;
  v7 = v2;
  v4 = *(v3 + 16);
  v5 = v2;
  v4(v3, v6);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_10000AF10(uint64_t a1, void *a2)
{
  v3 = a2;
  string = xpc_dictionary_get_string(*(a1 + 32), SUBMessageTypeKey[0]);
  if (!v3)
  {
    goto LABEL_15;
  }

  v5 = string;
  v6 = softwareupdatebridge_log;
  v7 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    LOWORD(v18) = 0;
    v15 = "failed to forward message without message type";
    v16 = v6;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v18, 2u);
    goto LABEL_15;
  }

  if (v7)
  {
    v18 = 136446210;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "failed to forward message of type %{public}s", &v18, 0xCu);
  }

  v8 = SUBResultTypeForMessageType(v5);
  if (!v8)
  {
    v17 = softwareupdatebridge_log;
    if (!os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    LOWORD(v18) = 0;
    v15 = "no result message type for dropped message";
    v16 = v17;
    goto LABEL_14;
  }

  v9 = v8;
  v10 = sub_10000B8C8(*(a1 + 40), 0);
  xpc_dictionary_set_string(v10, SUBMessageTypeKey[0], v9);
  sub_10000B378(v10, SUBMessageErrorKey[0], v3);
  if (!strcmp(v5, SUBMessageTypeStartDownload[0]))
  {
    v11 = *(a1 + 40);
    v12 = [NSString stringWithUTF8String:SUBMessageDownloadKey[0]];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (!v13)
    {
      v14 = objc_alloc_init(SUBDownload);
      sub_10000B378(v10, SUBMessageDownloadKey[0], v14);
    }
  }

  [*(a1 + 48) sendClient:*(a1 + 56) message:v10];

LABEL_15:
}

void sub_10000B1CC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) count])
  {
    v2 = sub_10000B8C8(*(a1 + 40), 0);
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = *(*(a1 + 32) + 16);
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          xpc_connection_send_message(*(*(&v8 + 1) + 8 * v7), v2);
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

void sub_10000B378(void *a1, const char *a2, void *a3)
{
  if (a1 && a2 && a3)
  {
    v5 = a3;
    v6 = a1;
    v10 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v10 encodeObject:v5 forKey:NSKeyedArchiveRootObjectKey];

    [v10 finishEncoding];
    v7 = [v10 encodedData];
    v8 = [v7 bytes];
    v9 = [v10 encodedData];
    xpc_dictionary_set_data(v6, a2, v8, [v9 length]);
  }
}

id sub_10000B488(void *a1, const char *a2, uint64_t a3)
{
  data = 0;
  if (a1)
  {
    if (a2)
    {
      length = 0;
      data = xpc_dictionary_get_data(a1, a2, &length);
      if (data)
      {
        v5 = [NSKeyedUnarchiver alloc];
        v6 = [NSData dataWithBytes:data length:length];
        v7 = [v5 initForReadingFromData:v6 error:0];

        data = [v7 decodeObjectOfClass:a3 forKey:NSKeyedArchiveRootObjectKey];
        [v7 finishDecoding];
      }
    }
  }

  return data;
}

id sub_10000B55C(void *a1, const char *a2, void *a3)
{
  v5 = a3;
  data = 0;
  if (a1)
  {
    if (a2)
    {
      length = 0;
      data = xpc_dictionary_get_data(a1, a2, &length);
      if (data)
      {
        v7 = [NSKeyedUnarchiver alloc];
        v8 = [NSData dataWithBytes:data length:length];
        v9 = [v7 initForReadingFromData:v8 error:0];

        v13 = 0;
        data = [v9 decodeTopLevelObjectOfClasses:v5 forKey:NSKeyedArchiveRootObjectKey error:&v13];
        v10 = v13;
        [v9 finishDecoding];
        if (v10)
        {
          v11 = softwareupdatebridge_log;
          if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v16 = a2;
            v17 = 2112;
            v18 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Error decoding %s: %@", buf, 0x16u);
          }
        }
      }
    }
  }

  return data;
}

BOOL sub_10000B6F4()
{
  v15 = 0u;
  v16 = 0u;
  xpc_connection_get_audit_token();
  memset(&token, 0, sizeof(token));
  v0 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  if (v0)
  {
    v1 = v0;
    error = 0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.allow-subridge", &error);
    v3 = error;
    if (v2)
    {
      v4 = v2;
      v5 = CFGetTypeID(v2);
      if (v5 == CFBooleanGetTypeID())
      {
        v6 = CFBooleanGetValue(v4) != 0;
      }

      else
      {
        v12 = softwareupdatebridge_log;
        v6 = 0;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(token.val[0]) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "entitlement has wrong type", &token, 2u);
          v6 = 0;
        }
      }

      CFRelease(v1);
      goto LABEL_16;
    }

    v7 = softwareupdatebridge_log;
    v8 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v8)
      {
        token.val[0] = 138543362;
        *&token.val[1] = v3;
        v9 = "unable to look up client entitlement: %{public}@";
        v10 = v7;
        v11 = 12;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &token, v11);
      }
    }

    else if (v8)
    {
      LOWORD(token.val[0]) = 0;
      v9 = "client is not entitled";
      v10 = v7;
      v11 = 2;
      goto LABEL_14;
    }

    v6 = 0;
    v4 = v1;
LABEL_16:
    CFRelease(v4);

    return v6;
  }

  return 0;
}

id sub_10000B8C8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = xpc_dictionary_create(0, 0, 0);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B9A0;
  v9[3] = &unk_10002D288;
  v7 = v6;
  v10 = v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void sub_10000B9A0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = xpc_string_create([v7 UTF8String]);
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = xpc_data_create([v7 bytes], objc_msgSend(v7, "length"));
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = xpc_int64_create([v7 integerValue]);
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:
  v10 = *(a1 + 32);
  v11 = v12;
  xpc_dictionary_set_value(v10, [v12 UTF8String], v9);
  *a4 = 0;
}

id sub_10000BAD4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && xpc_get_type(v1) == &_xpc_type_dictionary)
  {
    +[NSMutableDictionary dictionary];
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_10000BBB0;
    v3 = applier[3] = &unk_10002D2B0;
    v6 = v3;
    xpc_dictionary_apply(v2, applier);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_10000BBB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  type = xpc_get_type(v5);
  if (type == &_xpc_type_string)
  {
    v7 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v5)];
  }

  else if (type == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v5);
    v7 = [NSData dataWithBytes:bytes_ptr length:xpc_data_get_length(v5)];
  }

  else
  {
    if (type != &_xpc_type_int64)
    {
      goto LABEL_9;
    }

    v7 = [NSNumber numberWithLongLong:xpc_int64_get_value(v5)];
  }

  v9 = v7;
  if (v7)
  {
    v10 = *(a1 + 32);
    v11 = [NSString stringWithUTF8String:a2];
    [v10 setObject:v9 forKey:v11];
  }

LABEL_9:

  return 1;
}

void sub_10000C10C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C208;
  v8[3] = &unk_10002D330;
  v11 = *(a1 + 64);
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v12 = *(a1 + 65);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v4;
  *&v7 = v3;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v3 _fetchDocumentationForDocumentationID:v2 localOnly:1 shouldOverrideURL:0 overrideURL:0 completion:v8];
}

void sub_10000C208(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  if ((*(a1 + 64) & 1) == 0)
  {
    if (v5)
    {
      v7 = [v5 licenseAgreement];

      if (!v6 && v7)
      {
        goto LABEL_5;
      }

      if (*(a1 + 64))
      {
        goto LABEL_14;
      }
    }

    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = *(a1 + 65);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000C498;
    v24[3] = &unk_10002D308;
    v17 = &v25;
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v24[4] = *(a1 + 32);
    v25 = v22;
    [v18 _fetchDocumentationForDocumentationID:v19 localOnly:0 shouldOverrideURL:v20 overrideURL:v21 completion:v24];
LABEL_13:

    goto LABEL_14;
  }

LABEL_5:
  if (*(a1 + 56))
  {
    v8 = [v5 licenseAgreement];
    v9 = [v8 length];

    if (!v9)
    {
      v10 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : Empty license agreement found locally", buf, 2u);
      }

      v15 = SUBError(@"SUBError", 6, 0, @"Empty license found locally", v11, v12, v13, v14, v23);

      v6 = v15;
    }

    v16 = *(*(a1 + 32) + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C450;
    block[3] = &unk_10002D2E0;
    v17 = &v29;
    v29 = *(a1 + 56);
    v27 = v5;
    v6 = v6;
    v28 = v6;
    dispatch_async(v16, block);

    goto LABEL_13;
  }

LABEL_14:
}

void sub_10000C47C(void *a1)
{
  objc_begin_catch(a1);

  objc_end_catch();
}

void sub_10000C498(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C574;
    block[3] = &unk_10002D2E0;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void sub_10000C5A0(void *a1)
{
  objc_begin_catch(a1);

  objc_end_catch();
}

void sub_10000C848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10000C868(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v3 = *(*(*(a1 + 40) + 8) + 24);
  if (!v3)
  {
LABEL_4:
    v4 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = @"com.apple.MobileAsset.WatchSoftwareUpdateDocumentation";
      v5 = "[SUBDocumentationFetcher] : Successfully downloaded %{public}@ catalog";
LABEL_8:
      v6 = v4;
      v7 = 12;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v11, v7);
      return dispatch_semaphore_signal(*(a1 + 32));
    }

    return dispatch_semaphore_signal(*(a1 + 32));
  }

  if (v3 != 18)
  {
    if (v3 != 10)
    {
      v8 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*(*(a1 + 40) + 8) + 24);
        v11 = 138543618;
        v12 = @"com.apple.MobileAsset.WatchSoftwareUpdateDocumentation";
        v13 = 2050;
        v14 = v9;
        v5 = "[SUBDocumentationFetcher] : failed to download %{public}@ catalog: %{public}ld";
        v6 = v8;
        v7 = 22;
        goto LABEL_11;
      }

      return dispatch_semaphore_signal(*(a1 + 32));
    }

    goto LABEL_4;
  }

  v4 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = @"com.apple.MobileAsset.WatchSoftwareUpdateDocumentation";
    v5 = "[SUBDocumentationFetcher] : Pallas found no matching asset for %{public}@";
    goto LABEL_8;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000D618(id a1, MAProgressNotification *a2)
{
  v2 = a2;
  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : SUDocumentation progress:", &v17, 2u);
  }

  if ([(MAProgressNotification *)v2 totalWritten])
  {
    if ([(MAProgressNotification *)v2 totalExpected])
    {
      v4 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
        v6 = [(MAProgressNotification *)v2 totalWritten];
        v7 = [(MAProgressNotification *)v2 totalExpected];
        v17 = 134349056;
        v18 = (v6 / v7);
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Percent Complete: %{public}f", &v17, 0xCu);
      }
    }
  }

  v8 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    [(MAProgressNotification *)v2 expectedTimeRemaining];
    v17 = 134349056;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Time Remaining  : %{public}f", &v17, 0xCu);
  }

  v11 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(MAProgressNotification *)v2 isStalled];
    v17 = 67240192;
    LODWORD(v18) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IsStalled       : %{public}d", &v17, 8u);
  }

  v14 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    [(MAProgressNotification *)v2 taskDescription];
    v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v17 = 138543362;
    v18 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Descriptor      : %{public}@", &v17, 0xCu);
  }
}

void sub_10000D874(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 32);
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D95C;
  block[3] = &unk_10002D3E8;
  v13 = a2;
  *&v5 = *(a1 + 40);
  *(&v5 + 1) = *v3;
  v9 = v5;
  v6 = *(a1 + 48);
  v14 = *(a1 + 64);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  dispatch_async(v4, block);
}

void sub_10000D95C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == 10 || v2 == 0)
  {
    v4 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 138543362;
      *&v18[4] = @"com.apple.MobileAsset.WatchSoftwareUpdateDocumentation";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : %{public}@ download succeeded", v18, 0xCu);
    }

    v5 = [[SUBDocumentation alloc] initWithMAAsset:*(a1 + 32)];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 72);
    v9 = v5;
    v10 = 0;
  }

  else
  {
    v11 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 64);
      *v18 = 134349056;
      *&v18[4] = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : documentation asset download failed: %{public}ld", v18, 0xCu);
    }

    v5 = SUBError(@"SUBError", 7, *(a1 + 56), @"Documentation asset download failed", v13, v14, v15, v16, *v18);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 72);
    v9 = 0;
    v10 = v5;
  }

  [v6 _invokeFetchCompletionsForDocumentationID:v7 localOnly:v8 documentation:v9 error:v10];
}

void sub_10000DBA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000DC3C;
  v3[3] = &unk_10002D438;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _purgeAssetsNotMatchingDescriptor:v2 completion:v3];
}

void sub_10000DC3C(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000DCE0;
    block[3] = &unk_10002D1E8;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void sub_10000DD04(void *a1)
{
  objc_begin_catch(a1);

  objc_end_catch();
}

void sub_10000E084(id a1, int64_t a2)
{
  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = stringForMAAssetCancelResult(a2);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : Asset download cancel result: %{public}@", &v6, 0xCu);
  }
}

void sub_10000E148(id a1, int64_t a2)
{
  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = stringForMAAssetPurgeResult(a2);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : Asset purge result: %{public}@", &v6, 0xCu);
  }
}

void sub_10000E76C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E830;
  block[3] = &unk_10002D508;
  v9 = v5;
  v10 = *(a1 + 40);
  v11 = a2;
  v7 = v5;
  dispatch_async(v6, block);
}

void sub_10000E830(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *v13 = 138543362;
      *&v13[4] = v7;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Failed to determine if paired unlock is supported: %{public}@", v13, 0xCu);
    }

    v8 = *(a1 + 40);
    v9 = SUBError(@"SUBError", 17, *(a1 + 32), @"Could not determine if paired unlock is supported", v3, v4, v5, v6, *v13);
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(*(a1 + 40) + 16);

    v12();
  }
}

void sub_10000EB78(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EC3C;
  block[3] = &unk_10002D508;
  v11 = a2;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

void sub_10000EC3C(uint64_t a1)
{
  if (*(a1 + 48) && !*(a1 + 32))
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(v10 + 16);

      v11();
    }
  }

  else
  {
    v2 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *v12 = 138543362;
      *&v12[4] = v7;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Failed to stage stash bag on gizmo: %{public}@", v12, 0xCu);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = SUBError(@"SUBError", 17, *(a1 + 32), @"Failed to stage stash bag on gizmo", v3, v4, v5, v6, *v12);
      (*(v8 + 16))(v8, v9);
    }
  }
}

void sub_10000ED88(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EE4C;
  block[3] = &unk_10002D508;
  v11 = a2;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

void sub_10000EE4C(uint64_t a1)
{
  if (*(a1 + 48) && !*(a1 + 32))
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(v10 + 16);

      v11();
    }
  }

  else
  {
    v2 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *v12 = 138543362;
      *&v12[4] = v7;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Failed to stage stash bag on gizmo: %{public}@", v12, 0xCu);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = SUBError(@"SUBError", 17, *(a1 + 32), @"Failed to stage stash bag on gizmo", v3, v4, v5, v6, *v12);
      (*(v8 + 16))(v8, v9);
    }
  }
}

void sub_10000EFF0(id a1)
{
  qword_100033968 = objc_alloc_init(SUBCloudDescriptorManager);

  _objc_release_x1();
}

void sub_10000F1EC(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:*(a1 + 32)];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = +[NSFileManager defaultManager];
    v6 = *(a1 + 32);
    v17 = 0;
    [v5 createDirectoryAtPath:v6 withIntermediateDirectories:0 attributes:0 error:&v17];
    v4 = v17;

    if (v4)
    {
      v7 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        *buf = 138412546;
        v19 = v8;
        v20 = 2112;
        v21 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to create: %@ - Error: %@", buf, 0x16u);
      }
    }
  }

  v9 = sub_100013A88(*(a1 + 40));
  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) productVersion];
    v12 = [NSString stringWithFormat:@"%@/%@", v10, v11];

    LODWORD(v11) = [v9 writeToFile:v12 atomically:1];
    v13 = softwareupdatebridge_log;
    v14 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v14)
      {
        *buf = 138412290;
        v19 = v12;
        v15 = "Serialized data to %@";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      }
    }

    else if (v14)
    {
      *buf = 138412290;
      v19 = v12;
      v15 = "Failed to serialize cloud descriptor to %@";
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v16 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to serialize cloud descriptor", buf, 2u);
  }

LABEL_16:
}

void sub_10000FCA0(id a1)
{
  qword_100033978 = objc_alloc_init(SUBInstallationMonitor);

  _objc_release_x1();
}

void sub_10000FF7C(uint64_t a1)
{
  v2 = [*(a1 + 32) _installMarkerPath];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [v3 fileExistsAtPath:v2];

    if (v4)
    {
      v5 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "received gizmo did begin installing message but install marker already exists";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      }
    }

    else
    {
      v7 = sub_100013A88(*(a1 + 40));
      v8 = +[NSDate date];
      v23[0] = @"Descriptor";
      v23[1] = @"Date";
      v24[0] = v7;
      v24[1] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
      v18 = 0;
      v10 = [NSPropertyListSerialization dataWithPropertyList:v9 format:200 options:0 error:&v18];
      v11 = v18;
      v12 = v11;
      if (v10)
      {
        v17 = v11;
        v13 = [v10 writeToFile:v2 options:268435457 error:&v17];
        v14 = v17;

        if (v13)
        {
          *(*(a1 + 32) + 8) = 1;
          [*(a1 + 32) setDescriptor:*(a1 + 40)];
          [*(a1 + 32) setMarkerCreationDate:v8];
        }

        else
        {
          v16 = softwareupdatebridge_log;
          if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v20 = v2;
            v21 = 2112;
            v22 = v14;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "failed to create install marker at %@: %@", buf, 0x16u);
          }
        }

        v12 = v14;
      }

      else
      {
        v15 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v12;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "failed to serialize install marker: %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v5 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "no install marker path";
      goto LABEL_7;
    }
  }
}

void sub_1000102D4(uint64_t a1)
{
  v2 = [*(a1 + 32) _installMarkerPath];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [v3 fileExistsAtPath:v2];

    if (v4)
    {
      v5 = +[NSFileManager defaultManager];
      v14 = 0;
      v6 = [v5 removeItemAtPath:v2 error:&v14];
      v7 = v14;

      if (v6)
      {
        v8 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = v2;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[GizmoOSVersionDidChange]: Successfully cleared out install marker file at %@", buf, 0xCu);
        }

        *(*(a1 + 32) + 8) = 1;
        [*(a1 + 32) setDescriptor:0];
        [*(a1 + 32) setMarkerCreationDate:0];
        goto LABEL_19;
      }

      v11 = [v7 domain];
      if ([v11 isEqualToString:NSCocoaErrorDomain])
      {
        if ([v7 code] == 260)
        {

LABEL_19:
          goto LABEL_20;
        }

        v13 = [v7 code];

        if (v13 == 4)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      v12 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v16 = v2;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[GizmoOSVersionDidChange]: Failed to remove install marker at %@: %@", buf, 0x16u);
      }

      goto LABEL_19;
    }

    v9 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "[GizmoOSVersionDidChange]: Received gizmo OS version change message but install marker does not exist";
      goto LABEL_11;
    }
  }

  else
  {
    v9 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "[GizmoOSVersionDidChange]: no install marker path";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    }
  }

LABEL_20:
}

uint64_t sub_1000106C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000106DC(uint64_t a1)
{
  v2 = [*(a1 + 32) _installMarkerPath];
  if (!v2)
  {
    v18 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "no install marker path", buf, 2u);
    }

    goto LABEL_31;
  }

  v3 = *(a1 + 32);
  if (*(v3 + 8))
  {
    goto LABEL_6;
  }

  v28 = 0;
  v4 = [NSData dataWithContentsOfFile:v2 options:0 error:&v28];
  v5 = v28;
  v6 = v5;
  if (!v4)
  {
    v19 = [v5 domain];
    if ([v19 isEqualToString:NSCocoaErrorDomain])
    {
      if ([v6 code] == 260)
      {

LABEL_28:
        goto LABEL_31;
      }

      v24 = [v6 code];

      if (v24 == 4)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    v22 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = v2;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "failed to read install marker at %@: %@", buf, 0x16u);
    }

    goto LABEL_28;
  }

  *(*(a1 + 32) + 8) = 1;
  v27 = 0;
  v7 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v27];
  v8 = v27;

  if (v7)
  {
    v9 = [v7 objectForKey:@"Date"];
    [*(a1 + 32) setMarkerCreationDate:v9];

    v10 = objc_opt_class();
    v11 = sub_100013B30(v7, @"Descriptor", v10);
    [*(a1 + 32) setDescriptor:v11];

    v3 = *(a1 + 32);
LABEL_6:
    if (![v3 _installIntervalHasPassedSinceDate:*(v3 + 24)])
    {
LABEL_9:
      v15 = [*(a1 + 32) descriptor];
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      goto LABEL_31;
    }

    [*(a1 + 32) setDescriptor:0];
    [*(a1 + 32) setMarkerCreationDate:0];
    v12 = +[NSFileManager defaultManager];
    v26 = 0;
    v13 = [v12 removeItemAtPath:v2 error:&v26];
    v14 = v26;

    if (v13)
    {

      goto LABEL_9;
    }

    v20 = [v14 domain];
    if ([v20 isEqualToString:NSCocoaErrorDomain])
    {
      if ([v14 code] == 260)
      {

LABEL_30:
        goto LABEL_31;
      }

      v25 = [v14 code];

      if (v25 == 4)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    v23 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = v2;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "failed to remove install marker at %@: %@", buf, 0x16u);
    }

    goto LABEL_30;
  }

  v21 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "failed to deserialize install marker: %@", buf, 0xCu);
  }

LABEL_31:
}

void sub_100010C70(uint64_t a1)
{
  ServiceTicket = AMAuthInstallSsoCreateServiceTicket();
  v3 = softwareupdatebridge_log;
  v4 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
  if (ServiceTicket)
  {
    if (v4)
    {
      *buf = 67109378;
      v12 = ServiceTicket;
      v13 = 2112;
      v14 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "failed to get SSO token: %d; error: %@", buf, 0x12u);
    }

    v9 = *(a1 + 32);
    v10 = SUBError(@"SUBError", 14, 0, @"Failed to get SSO token: %d error: %@", v5, v6, v7, v8, ServiceTicket);;
    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "got AppleConnect SSO data", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100011FD8(id a1)
{
  qword_100033988 = objc_alloc_init(NSMutableArray);

  _objc_release_x1();
}

id sub_100012344(uint64_t a1)
{
  v2 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 transactionName];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[SUBTransaction]: Invalidating transaction %@ due to to timeout", &v7, 0xCu);
  }

  return [*(a1 + 32) invalidate];
}

id sub_100013A88(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v2 encodeObject:v1 forKey:NSKeyedArchiveRootObjectKey];
    [v2 finishEncoding];
    v3 = [v2 encodedData];
  }

  else
  {
    v3 = +[NSNull null];
  }

  return v3;
}

id sub_100013B30(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 objectForKey:v6];
  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = v7;
  v9 = [v5 objectForKey:v6];
  v10 = +[NSNull null];
  v11 = [v9 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    v13 = [NSKeyedUnarchiver alloc];
    v14 = [v5 objectForKey:v6];
    v15 = [v13 initForReadingFromData:v14 error:0];

    v16 = [v15 decodeObjectOfClass:a3 forKey:NSKeyedArchiveRootObjectKey];
    [v15 finishDecoding];
    v12 = 0;
    if (objc_opt_isKindOfClass())
    {
      v12 = v16;
    }
  }

  else
  {
LABEL_3:
    v12 = 0;
  }

  return v12;
}

void sub_100013CCC(id a1)
{
  qword_100033998 = objc_alloc_init(SUBMessageEndpoint);

  _objc_release_x1();
}

uint64_t sub_1000140DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000140F4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    [v2 addObject:v3];
  }

  else
  {
    v4 = [NSMutableArray arrayWithObject:v3];
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;
  }

  [*(a1 + 32) _checkConnectivityForQueuedDisconnectedBlocks];
  [*(*(*(a1 + 48) + 8) + 40) invalidate];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100014334(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100014580(uint64_t a1)
{
  [*(*(a1 + 32) + 40) addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 56)];
  [*(*(a1 + 32) + 48) addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 56)];
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_10001471C(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeDelegate:?];
  [*(*(a1 + 32) + 48) removeDelegate:?];
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_10001496C(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = sub_1000140DC;
    v15[4] = sub_1000140EC;
    v2 = *(a1 + 72);
    v3 = [SUBTransaction alloc];
    v4 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.sendMessage.1.2"];
    v5 = [(SUBTransaction *)v3 initWithNameAndTimeout:v4 timeOut:v2];

    v16 = v5;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 80);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100014B20;
    v12[3] = &unk_10002D6A0;
    v9 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = v15;
    [v6 _sendMessage:v7 isCritical:v8 useTimeout:v9 completion:v12];

    _Block_object_dispose(v15, 8);
  }

  else
  {
    [*(a1 + 32) _sendMessage:*(a1 + 40) isCritical:*(a1 + 80) useTimeout:*(a1 + 48) completion:0];
  }

  [*(*(*(a1 + 64) + 8) + 40) invalidate];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

void sub_100014B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014B20(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100014E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014E68(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  (*(a1[4] + 16))();
  [*(*(a1[6] + 8) + 40) invalidate];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100015090(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = sub_1000140DC;
    v11[4] = sub_1000140EC;
    v2 = [SUBTransaction alloc];
    v3 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.sendMessage.2.2"];
    v4 = [(SUBTransaction *)v2 initWithNameAndTimeout:v3 timeOut:0];

    v12 = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001521C;
    v8[3] = &unk_10002D718;
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 56);
    v10 = v11;
    v5 = objc_retainBlock(v8);

    _Block_object_dispose(v11, 8);
  }

  else
  {
    v5 = 0;
  }

  [*(a1 + 32) _sendMessage:*(a1 + 40) isCritical:*(a1 + 72) useTimeout:*(a1 + 48) withReply:v5];
  [*(*(*(a1 + 64) + 8) + 40) invalidate];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_10001521C(void *a1, void *a2, void *a3)
{
  v5 = *(a1[4] + 64);
  v6 = a3;
  v7 = a2;
  dispatch_assert_queue_V2(v5);
  (*(a1[5] + 16))();

  [*(*(a1[6] + 8) + 40) invalidate];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1000154C0(void *a1)
{
  v2 = a1[4];
  (*(a1[5] + 16))();
  [*(*(a1[6] + 8) + 40) invalidate];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100015894(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = sub_1000140DC;
    v16[4] = sub_1000140EC;
    v2 = *(a1 + 80);
    v3 = [SUBTransaction alloc];
    v4 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.sendCloudMessage1.2"];
    v5 = [(SUBTransaction *)v3 initWithNameAndTimeout:v4 timeOut:v2];

    v17 = v5;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 88);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100015A58;
    v13[3] = &unk_10002D6A0;
    v14 = *(a1 + 64);
    v15 = v16;
    [v6 _sendCloudMessage:v7 isCritical:v8 useTimeout:v9 destinations:v10 completion:v13];

    _Block_object_dispose(v16, 8);
  }

  else
  {
    [*(a1 + 32) _sendCloudMessage:*(a1 + 40) isCritical:*(a1 + 88) useTimeout:*(a1 + 48) destinations:*(a1 + 56) completion:0];
  }

  [*(*(*(a1 + 72) + 8) + 40) invalidate];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

void sub_100015A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100015A58(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100015CF0(void *a1)
{
  v2 = a1[4];
  (*(a1[5] + 16))();
  [*(*(a1[6] + 8) + 40) invalidate];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100015F58(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = sub_1000140DC;
    v12[4] = sub_1000140EC;
    v2 = *(a1 + 80);
    v3 = [SUBTransaction alloc];
    v4 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.sendCloudMessage2.2"];
    v5 = [(SUBTransaction *)v3 initWithNameAndTimeout:v4 timeOut:v2];

    v13 = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000160F0;
    v9[3] = &unk_10002D718;
    v9[4] = *(a1 + 32);
    v10 = *(a1 + 64);
    v11 = v12;
    v6 = objc_retainBlock(v9);

    _Block_object_dispose(v12, 8);
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) _sendCloudMessage:*(a1 + 40) isCritical:*(a1 + 88) useTimeout:*(a1 + 48) withReply:v6 destinations:*(a1 + 56)];
  [*(*(*(a1 + 72) + 8) + 40) invalidate];
  v7 = *(*(a1 + 72) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_1000160F0(void *a1, void *a2, void *a3)
{
  v5 = *(a1[4] + 64);
  v6 = a3;
  v7 = a2;
  dispatch_assert_queue_V2(v5);
  (*(a1[5] + 16))();

  [*(*(a1[6] + 8) + 40) invalidate];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1000163C8(void *a1)
{
  v2 = a1[4];
  (*(a1[5] + 16))();
  [*(*(a1[6] + 8) + 40) invalidate];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_1000165E8(uint64_t a1)
{
  [*(a1 + 32) _sendReply:*(a1 + 40) toMessage:*(a1 + 48) isCritical:*(a1 + 64)];
  [*(*(*(a1 + 56) + 8) + 40) invalidate];
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100016848(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 48) copy];
  [v2 setObject:v3 forKey:*(a1 + 40)];
}

void sub_100016978(uint64_t a1)
{
  v2 = [*(a1 + 48) copy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = *(*(a1 + 40) + 8);
        v10 = objc_retainBlock(v2);
        [v9 setObject:v10 forKey:{v8, v11}];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void sub_10001703C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = +[NSNull null];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    [*(a1 + 32) setObject:v7 forKey:v10];
  }

  *a4 = 0;
}

void sub_100017BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose((v35 - 224), 8);
  _Block_object_dispose((v35 - 176), 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_100017C04(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = +[NSNull null];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    [*(a1 + 32) setObject:v7 forKey:v10];
  }

  *a4 = 0;
}

intptr_t sub_100017CAC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 40);
  v4 = *(a1 + 112);
  v5 = *(*(a1 + 96) + 8);
  v6 = *(v5 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(*(a1 + 104) + 8);
  v34 = *(v9 + 40);
  obj = v6;
  v10 = [v3 sendData:v2 toDestinations:v7 priority:v4 options:v8 identifier:&obj error:&v34];
  objc_storeStrong((v5 + 40), obj);
  objc_storeStrong((v9 + 40), v34);
  *(*(*(a1 + 88) + 8) + 24) = v10;
  if (*(*(*(a1 + 88) + 8) + 24))
  {
    v11 = *(a1 + 64);
    v12 = softwareupdatebridge_log;
    v13 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = *(a1 + 64);
        v15 = *(*(*(a1 + 96) + 8) + 40);
        *buf = 138543618;
        v37 = v14;
        v38 = 2114;
        v39 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sent message reply to: %{public}@ with identifier: %{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v26 = *(a1 + 72);
      v27 = SUBMessageTypeKey[0];
      v28 = v12;
      v29 = [NSString stringWithUTF8String:v27];
      v30 = [v26 objectForKeyedSubscript:v29];
      v31 = *(*(*(a1 + 96) + 8) + 40);
      *buf = 138543618;
      v37 = v30;
      v38 = 2114;
      v39 = v31;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Sent message: %{public}@ with identifier: %{public}@", buf, 0x16u);
    }

    v24 = 1;
  }

  else
  {
    v16 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(*(*(a1 + 104) + 8) + 40);
      *buf = 138543362;
      v37 = v21;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to send message: %{public}@", buf, 0xCu);
    }

    if (*(a1 + 120))
    {
      v33 = *(*(*(a1 + 104) + 8) + 40);
      **(a1 + 120) = SUBError(@"SUBError", 2, v33, @"Failed to send message: %@", v17, v18, v19, v20, v33);
    }

    v22 = softwareupdatebridge_log;
    v23 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
    v24 = 0;
    if (v23)
    {
      v25 = *(*(*(a1 + 104) + 8) + 40);
      *buf = 138412290;
      v37 = v25;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to send message: %@", buf, 0xCu);
      v24 = 0;
    }
  }

  *(*(*(a1 + 88) + 8) + 24) = v24;
  return dispatch_semaphore_signal(*(a1 + 80));
}

void sub_1000182F0(uint64_t a1)
{
  [*(a1 + 32) _sendErrorReply:*(a1 + 40) toMessage:*(a1 + 48) isCritical:*(a1 + 64)];
  [*(*(*(a1 + 56) + 8) + 40) invalidate];
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100018AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100018AFC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32));
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))(v3, 0, *(a1 + 32));
    }
  }

  [*(*(*(a1 + 56) + 8) + 40) invalidate];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_1000192BC(void *a1)
{
  if (a1[4])
  {
    v2 = a1[8];
    v3 = *(a1[8] + 16);
  }

  else
  {
    v4 = a1[5];
    v5 = [NSString stringWithUTF8String:SUBMessageErrorKey[0]];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = objc_opt_class();
      v8 = a1[5];
      v9 = [NSString stringWithUTF8String:SUBMessageErrorKey[0]];
      v10 = [v8 objectForKeyedSubscript:v9];
      v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:v7 fromData:v10 error:0];

      (*(a1[8] + 16))();
      goto LABEL_6;
    }

    v14 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v15 = a1[6];
      v16 = a1[7];
      v18 = 138543618;
      v19 = v15;
      v20 = 2114;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received message reply (%{public}@) to message with identifier: %{public}@", &v18, 0x16u);
    }

    v17 = a1[5];
    v3 = *(a1[8] + 16);
  }

  v3();
LABEL_6:
  [*(*(a1[9] + 8) + 40) invalidate];
  v12 = *(a1[9] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

void sub_1000194A4(uint64_t a1)
{
  v2 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v10 = 138543618;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received message: %{public}@; identifier: %{public}@", &v10, 0x16u);
  }

  v5 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) outgoingResponseIdentifier];
  (*(v5 + 16))(v5, v6, v7);

  [*(*(*(a1 + 72) + 8) + 40) invalidate];
  v8 = *(*(a1 + 72) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_100019A3C(void *a1)
{
  v2 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = 136446210;
    string = xpc_dictionary_get_string(a1, _xpc_error_key_description);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "error on XPC peer listener connection: %{public}s", &v4, 0xCu);
  }

  abort();
}