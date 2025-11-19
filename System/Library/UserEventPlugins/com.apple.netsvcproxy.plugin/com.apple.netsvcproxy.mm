void sub_E88(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 && [*(a1 + 32) captiveOutageWaitingForUserActivity])
  {
    v2 = nplog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "[active user] outage notification is pending, launching NSP", v4, 2u);
    }

    v3 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
    [v3 launchOwner];
  }
}

void sub_21A0(id a1)
{
  v3 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v1 = [NSURLSession sessionWithConfiguration:v3];
  v2 = qword_17DE0;
  qword_17DE0 = v1;
}

void enable_timestamps(char a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4A90;
  block[3] = &unk_14780;
  v2 = a1;
  if (qword_17DF0 != -1)
  {
    dispatch_once(&qword_17DF0, block);
  }
}

void sub_4A90(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    if (mach_timebase_info(&dword_17DF8))
    {
      v1 = nplog_obj();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        sub_AAAC(v1);
      }
    }

    else
    {
      g_recordTimestamps = 1;
    }
  }
}

double get_interval_for_mach_times(unint64_t a1, unint64_t a2, double a3, double a4, double a5)
{
  result = 0.0;
  if (a2 > a1 && (g_recordTimestamps & 1) != 0)
  {
    LODWORD(a4) = dword_17DF8;
    LODWORD(a5) = *algn_17DFC;
    return (a2 - a1) * *&a4 / *&a5 / 1000000.0;
  }

  return result;
}

void *create_timestamps()
{
  if (g_recordTimestamps != 1)
  {
    return 0;
  }

  result = malloc_type_malloc(0x78uLL, 0x100004000313F17uLL);
  if (!result)
  {
    return 0;
  }

  result[14] = 0;
  *(result + 5) = 0u;
  *(result + 6) = 0u;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 1) = 0u;
  *(result + 2) = 0u;
  *result = 0u;
  return result;
}

id NPGetInternalQueue()
{
  if (qword_17E08 != -1)
  {
    sub_AAF0();
  }

  v1 = qword_17E00;

  return v1;
}

void sub_4BF0(id a1)
{
  qword_17E00 = dispatch_queue_create("NetworkServiceProxy internal queue", 0);

  _objc_release_x1();
}

id get_nsdata_from_xpc_object(void *a1, const char *a2)
{
  v2 = xpc_dictionary_get_value(a1, a2);
  v3 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_data)
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id get_nsdictionary_from_xpc_object(void *a1, const char *a2)
{
  v2 = xpc_dictionary_get_value(a1, a2);
  v3 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id get_nsarray_from_xpc_object(void *a1, const char *a2)
{
  v2 = xpc_dictionary_get_value(a1, a2);
  v3 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_array)
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_5730(uint64_t a1, const void *a2, unint64_t a3, uint64_t a4)
{
  objc_opt_self();
  if (!a2)
  {
    v8 = 0;
    goto LABEL_10;
  }

  if (a3 >= 4 && a4 == 2)
  {
    v7 = 2;
LABEL_9:
    inet_ntop(v7, a2, v10, 0x40u);
    v8 = [NSString stringWithUTF8String:v10];
    goto LABEL_10;
  }

  v8 = 0;
  if (a3 >= 0x10 && a4 == 30)
  {
    v7 = 30;
    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

id sub_5808(uint64_t a1, unint64_t a2)
{
  objc_opt_self();
  if (a2 <= 0x20)
  {
    __b = 0;
    if (a2 >= 8)
    {
      v4 = a2 >> 3;
      memset(&__b, 255, a2 >> 3);
    }

    else
    {
      v4 = 0;
    }

    if ((a2 & 7) != 0)
    {
      *(&__b + v4) = 0xFF00u >> (a2 & 7);
    }

    v3 = sub_5730(NPUtilities, &__b, 4uLL, 2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_58B0(uint64_t a1, unint64_t a2)
{
  objc_opt_self();
  v3 = 0;
  v6[0] = 0;
  v6[1] = 0;
  if (a2 >= 8)
  {
    v3 = a2 >> 3;
    memset(v6, 255, a2 >> 3);
  }

  if ((a2 & 7) != 0)
  {
    *(v6 + v3) = 0xFF00u >> (a2 & 7);
  }

  v4 = sub_5730(NPUtilities, v6, 0x10uLL, 30);

  return v4;
}

void sub_5CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_5CBC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_5CD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_uuid)
  {
    bytes = xpc_uuid_get_bytes(v4);
    if (bytes)
    {
      v6 = [[NSUUID alloc] initWithUUIDBytes:bytes];
      v7 = *(*(*(a1 + 32) + 8) + 40);
      if (!v7)
      {
        v8 = objc_alloc_init(NSMutableArray);
        v9 = *(*(a1 + 32) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        v7 = *(*(*(a1 + 32) + 8) + 40);
      }

      [v7 addObject:v6];
    }
  }

  return 1;
}

void sub_6110(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

void sub_6148(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_61F0(uint64_t a1)
{
  if (MKBDeviceUnlockedSinceBoot())
  {
    if (([*(a1 + 32) didInitialLaunch] & 1) == 0)
    {
      [*(a1 + 32) setDidInitialLaunch:1];
      v2 = *(a1 + 32);

      [v2 launchOwner];
    }
  }

  else
  {
    out_token = -1;
    v3 = dispatch_get_global_queue(0, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_6350;
    v6[3] = &unk_14918;
    v6[4] = *(a1 + 32);
    v4 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v3, v6);

    if (v4)
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_AC74(v5);
      }
    }

    else if (MKBDeviceUnlockedSinceBoot())
    {
      notify_cancel(out_token);
      if (([*(a1 + 32) didInitialLaunch] & 1) == 0)
      {
        [*(a1 + 32) setDidInitialLaunch:1];
        [*(a1 + 32) launchOwner];
      }
    }
  }
}

id sub_6350(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Received first unlock notification.", v4, 2u);
  }

  result = [*(a1 + 32) didInitialLaunch];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setDidInitialLaunch:1];
    return [*(a1 + 32) launchOwner];
  }

  return result;
}

void sub_6420(id a1)
{
  qword_17E18 = objc_alloc_init(NSPUserEventAgentFileHandleMaintainer);

  _objc_release_x1();
}

void sub_64D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
  [v6 handleProviderAction:a1 token:a2 event:v5];
}

id sub_6770(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%@ file handle reader setting timer fired", &v5, 0xCu);
  }

  [*(a1 + 32) setFileHandleReaderSettingTimer:0];
  return [*(a1 + 32) setupReadabilityHandlers];
}

id sub_6B14(uint64_t a1)
{
  kdebug_trace();
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "File Handle Maintainer got a readable event on a file handle: %@", &v5, 0xCu);
  }

  [*(a1 + 40) cancelFileHandleReaderSources];
  [*(a1 + 40) setDidInitialLaunch:1];
  [*(a1 + 40) launchOwner];
  return [*(a1 + 40) startFileHandleReaderSettingTimer];
}

uint64_t sub_6CA0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 launchOwnerWhenReadable])
  {
    [*(a1 + 32) startFileHandleReader:v3];
  }

  return 1;
}

id nplog_obj()
{
  if (qword_17E30 != -1)
  {
    sub_AD54();
  }

  v1 = qword_17E28;

  return v1;
}

void sub_6F10(id a1)
{
  qword_17E28 = os_log_create("com.apple.networkserviceproxy", "");

  _objc_release_x1();
}

id nplog_large_obj()
{
  if (qword_17E40 != -1)
  {
    sub_AD68();
  }

  v1 = qword_17E38;

  return v1;
}

void sub_6F98(id a1)
{
  qword_17E38 = os_log_create("com.apple.networkserviceproxy", "Large");

  _objc_release_x1();
}

void nsp_print_backtrace()
{
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  v0 = backtrace(v9, 128);
  v1 = backtrace_symbols(v9, v0);
  v2 = v1;
  if (v0 >= 1)
  {
    v3 = v0;
    v4 = v1;
    do
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *v4;
        *buf = 136315138;
        v8 = v6;
        _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "    %s", buf, 0xCu);
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  free(v2);
}

void sub_717C(id a1)
{
  qword_17E48 = objc_alloc_init(NPUserEventAgent);

  _objc_release_x1();
}

void sub_73B0(id a1, NSTimer *a2)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Resurrection timer fired", v4, 2u);
  }

  v3 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
  [v3 launchOwner];
}

void sub_762C(id a1, NSTimer *a2)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Config Fetch timer fired", v4, 2u);
  }

  v3 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
  [v3 launchOwner];
}

void sub_78A8(id a1, NSTimer *a2)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Token Fetch timer fired", v4, 2u);
  }

  v3 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
  [v3 launchOwner];
}

void sub_7B24(id a1, NSTimer *a2)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Device identity fetch timer fired", v4, 2u);
  }

  v3 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
  [v3 launchOwner];
}

void sub_7DA0(id a1, NSTimer *a2)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Subscription check timer fired", v4, 2u);
  }

  v3 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
  [v3 launchOwner];
}

void sub_801C(id a1, NSTimer *a2)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Proxy restore timer fired", v4, 2u);
  }

  v3 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
  [v3 launchOwner];
}

void sub_8298(id a1, NSTimer *a2)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "odoh retore timer fired", v4, 2u);
  }

  v3 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
  [v3 launchOwner];
}

void sub_8514(id a1, NSTimer *a2)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "odoh auth outage restore fired", v4, 2u);
  }

  v3 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
  [v3 launchOwner];
}

void sub_8790(id a1, NSTimer *a2)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "proxy path probe timer fired", v4, 2u);
  }

  v3 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
  [v3 launchOwner];
}

void sub_8A0C(id a1, NSTimer *a2)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "direct path probe timer fired", v4, 2u);
  }

  v3 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
  [v3 launchOwner];
}

void sub_8C0C(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%@: location monitor timer fired", &v5, 0xCu);
  }

  v4 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
  [v4 launchOwner];
}

void sub_8DEC(id a1)
{
  out_token = -1;
  v1 = dispatch_get_global_queue(0, 0);
  v2 = notify_register_dispatch("com.apple.networking.captive.CNPluginListChanged", &out_token, v1, &stru_14BF8);

  if (v2)
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_B020();
    }
  }
}

void sub_8E7C(id a1, int a2)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "received captive plugin list changed notification", v4, 2u);
  }

  v3 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
  [v3 launchOwner];
}

void sub_8F88(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v4 = *(a1 + 32);
  [v4 setUserActivityNotificationHandle:IOPMScheduleUserActivityLevelNotification()];

  if (![*(a1 + 32) userActivityNotificationHandle])
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_B054();
    }
  }
}

void sub_929C()
{
  v0 = nplog_obj();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v0, OS_LOG_TYPE_INFO, "dynamic store changed", v2, 2u);
  }

  v1 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
  [v1 launchOwner];
}

void NPUserEventAgentModuleInit()
{
  v0 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
  [v0 startEventAgentModeWithEventName:@"com.apple.networkserviceproxy.file-descriptor-maintainer"];

  xpc_event_provider_create();
}

void sub_A7D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[NPUserEventAgent sharedAgent];
  [v6 handleProviderAction:a1 token:a2 event:v5];
}

void sub_A84C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_A874(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_A9EC(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Random ratio %f", &v2, 0xCu);
}

void sub_AB6C(os_log_t log)
{
  v1 = 136315138;
  v2 = "+[NPUtilities createMaskedIPv4Address:prefix:]";
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "%s called with null address", &v1, 0xCu);
}

void sub_ABF0(os_log_t log)
{
  v1 = 136315138;
  v2 = "+[NPUtilities createMaskedIPv6Address:prefix:]";
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "%s called with null address", &v1, 0xCu);
}

void sub_ACCC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "File Handle Maintainer got a %ld action with token %llu", &v3, 0x16u);
}

void sub_B088()
{
  Error = SCCopyLastError();
  sub_A894();
  sub_A874(&dword_0, v1, v2, "Failed to update the dynamic store notification keys: %@", v3, v4, v5, v6, v7);
}

void sub_B108()
{
  Error = SCCopyLastError();
  sub_A894();
  sub_A874(&dword_0, v1, v2, "Failed to set dynamic store dispatch queue: %@", v3, v4, v5, v6, v7);
}

void sub_B188()
{
  Error = SCCopyLastError();
  sub_A894();
  sub_A874(&dword_0, v1, v2, "Failed to create dynamic store: %@", v3, v4, v5, v6, v7);
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, const char *);
  return _CFCalendarDecomposeAbsoluteTime(calendar, at, v3);
}

void xpc_event_provider_create()
{
    ;
  }
}

void xpc_event_provider_get_queue()
{
    ;
  }
}

void xpc_event_provider_token_fire()
{
    ;
  }
}