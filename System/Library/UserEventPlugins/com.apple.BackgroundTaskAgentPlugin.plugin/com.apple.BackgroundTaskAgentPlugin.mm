id sub_DD0(id result, uint64_t a2, int a3)
{
  if (a3 == -536723200)
  {
    v5 = result;
    [result updateBatteryLevel:a2];

    return [v5 updatePluggedinState:a2];
  }

  return result;
}

id sub_E28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_new();
  [a3 rescheduleNetworkStabilizationTimer];

  return [v4 drain];
}

id sub_FA0(id result, uint64_t a2, int a3, intptr_t a4)
{
  v4 = result;
  HIDWORD(v6) = a3 + 536870288;
  LODWORD(v6) = a3 + 536870288;
  v5 = v6 >> 4;
  if (v5 > 1)
  {
    if (v5 == 2 || v5 == 9)
    {
      [result setSystemWillSleep:0];
      result = [v4 shouldRescheduleTimer];
      if (result)
      {
        [v4 setShouldRescheduleTimer:0];

        return [v4 rescheduleNetworkStabilizationTimer];
      }
    }
  }

  else
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }
    }

    else
    {
      [result setSystemWillSleep:1];
      if ([objc_msgSend(v4 "networkStabilizationTimer")])
      {
        [v4 setShouldRescheduleTimer:1];
        [v4 cancelNetworkStabilizationTimer];
      }
    }

    v9 = [v4 rootDomainConnect];

    return IOAllowPowerChange(v9, a4);
  }

  return result;
}

id sub_1F88(uint64_t a1)
{
  [*(a1 + 32) printJobListwithPrefix:"Current Job List" withLogLevel:2 withJobStatus:1];
  result = [*(a1 + 32) processJobListImmediately];
  byte_D938 = 0;
  return result;
}

id sub_22D8(uint64_t a1, void *a2, void *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_6120(a3, a2);
  }

  return [*(a1 + 32) removeJob:a3 withToken:a2];
}

void sub_2E80(uint64_t a1, int a2, xpc_object_t xdict)
{
  if (xpc_dictionary_get_BOOL(xdict, kBackgroundTaskAgentJobWindowAdjustTime))
  {
    v5 = kBackgroundTaskAgentJobWindowStartTime;
    v6 = xpc_dictionary_get_double(xdict, kBackgroundTaskAgentJobWindowStartTime);
    xpc_dictionary_set_double(xdict, v5, v6 + *(a1 + 32));
    v7 = kBackgroundTaskAgentJobWindowEndTime;
    v8 = xpc_dictionary_get_double(xdict, kBackgroundTaskAgentJobWindowEndTime) + *(a1 + 32);

    xpc_dictionary_set_double(xdict, v7, v8);
  }
}

uint64_t sub_3B04(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *result = a4;
  *(result + 4) = a2;
  *(result + 12) = 2048;
  *(result + 14) = a3;
  return result;
}

id sub_3B28(uint64_t a1, void *a2)
{

  return [a2 description];
}

void btaInstall()
{
  objc_opt_new();
  malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  if (CFPreferencesGetAppBooleanValue(@"ignoreRequests", kBTAPluginIdentifier, 0))
  {
    xpc_event_provider_create();
  }

  xpc_event_provider_create();
}

id sub_3CEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = objc_opt_new();
  if (a3)
  {
    v9 = xpc_copy_description(a3);
  }

  else
  {
    v9 = 0;
  }

  if (a1 == 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = a2;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "userEventCallback: Remove Event - token = %llu", &v11, 0xCu);
    }

    [*(a4 + 8) cancelJobWithToken:a2];
  }

  else if (a1 == 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      v12 = a2;
      v13 = 2080;
      v14 = v9;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "userEventCallback: Add Event - token = %llu, jobRequest = %s", &v11, 0x16u);
    }

    if (a3 && xpc_get_type(a3) == &_xpc_type_dictionary)
    {
      [*(a4 + 8) newJob:a3 withToken:a2];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_6984(v9);
    }
  }

  free(v9);
  return [v8 drain];
}

id sub_40A8(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  return [*(a1 + 32) setIsScreenBlanked:state64 != 0];
}

void sub_40F8(uint64_t a1)
{
  CTTelephonyCenterGetDefault();
  v2 = *(a1 + 32);
  CTTelephonyCenterAddObserver();
  v3 = *(a1 + 32);
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterGetDefault();
  v4 = *(a1 + 32);
  CTTelephonyCenterAddObserver();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v6 = *(a1 + 32);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_4364, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void sub_41E4(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5884;
  block[3] = &unk_C4B0;
  block[4] = a2;
  dispatch_async([a2 queue], block);
}

void sub_4264(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_583C;
  block[3] = &unk_C4B0;
  block[4] = a2;
  dispatch_async([a2 queue], block);
}

void sub_42E4(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5844;
  block[3] = &unk_C4B0;
  block[4] = a2;
  dispatch_async([a2 queue], block);
}

id sub_4364(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_opt_new();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_56E0;
  v7[3] = &unk_C580;
  v7[4] = a2;
  v7[5] = a3;
  dispatch_async([a2 queue], v7);
  return [v5 drain];
}

id sub_56E0(uint64_t a1)
{
  result = CFEqual(*(a1 + 40), @"SignificantTimeChangeNotification");
  if (result)
  {
    [*(a1 + 32) systemToMonotonicTimeOffset];
    v4 = v3;
    Current = CFAbsoluteTimeGetCurrent();
    [*(a1 + 32) getKernelMonotonicClock];
    v7 = v6;
    [*(a1 + 32) setSystemToMonotonicTimeOffset:Current - v6];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      [*(a1 + 32) systemToMonotonicTimeOffset];
      *v10 = 134218752;
      *&v10[4] = Current;
      v11 = 2048;
      v12 = v7;
      v13 = 2048;
      v14 = v4;
      v15 = 2048;
      v16 = v9;
      _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "BackgroundTaskAgentMonitor SignificantTimeChangeNotification: Current Absolute Time = %.2f, Current Kernel Monotonic Time = %.2f, Old Offset = %.2f, New Offset = %.2f", v10, 0x2Au);
    }

    result = [*(a1 + 32) numAdjustTimeJobs];
    if (result >= 1)
    {
      [*(a1 + 32) systemToMonotonicTimeOffset];
      *v10 = v8 - v4;
      return [objc_msgSend(*(a1 + 32) target];
    }
  }

  return result;
}

id sub_5844(uint64_t a1)
{
  [*(a1 + 32) setIsInVoiceCall:0];
  v2 = *(a1 + 32);

  return [v2 updateRoamingState];
}

NSString *stringFromCFAbsoluteTime(double a1)
{
  v3 = (kCFAbsoluteTimeIntervalSince1970 + a1);
  memset(&v2, 0, sizeof(v2));
  *v4 = 0u;
  v5 = 0u;
  localtime_r(&v3, &v2);
  strftime(v4, 0x20uLL, "%Y-%m-%d %X %z", &v2);
  return [NSString stringWithUTF8String:v4];
}

void sub_59D0()
{
  sub_3A84();
  sub_3ABC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_5A4C(void *a1)
{
  xpc_dictionary_get_string(a1, "BackgroundTaskAgentClientName");
  sub_3AC8();
  sub_3ABC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_5AD0(void *a1)
{
  xpc_dictionary_get_string(a1, "BackgroundTaskAgentClientName");
  sub_3AC8();
  sub_3ABC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_5B6C(void *a1)
{
  xpc_dictionary_get_string(a1, "BackgroundTaskAgentClientName");
  sub_3A84();
  sub_3ABC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_5C00(void *a1)
{
  xpc_dictionary_get_string(a1, "BackgroundTaskAgentClientName");
  sub_3A84();
  sub_3ABC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_5C94(void *a1)
{
  xpc_dictionary_get_string(a1, "BackgroundTaskAgentClientName");
  sub_3A84();
  sub_3ABC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_5D28()
{
  sub_3B1C();
  xpc_dictionary_get_string(v0, "BackgroundTaskAgentClientName");
  sub_3A84();
  sub_3AD4();
  sub_3ABC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x34u);
}

void sub_5DBC()
{
  sub_3B1C();
  xpc_dictionary_get_string(v0, "BackgroundTaskAgentClientName");
  sub_3A84();
  sub_3AD4();
  sub_3ABC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x34u);
}

void sub_5E50()
{
  sub_3B1C();
  xpc_dictionary_get_string(v0, "BackgroundTaskAgentClientName");
  sub_3A84();
  sub_3ABC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_5EEC()
{
  sub_3B1C();
  xpc_dictionary_get_string(v0, "BackgroundTaskAgentClientName");
  sub_3A84();
  sub_3ABC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_5FCC(void *a1)
{
  [objc_msgSend(a1 "description")];
  sub_3AC8();
  sub_3AB0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_6120(void *a1, void *a2)
{
  xpc_dictionary_get_string(a1, "BackgroundTaskAgentClientName");
  [objc_msgSend(a2 "description")];
  sub_3AB0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_61E8(uint64_t a1, void *a2)
{
  [sub_3B28(a1 a2)];
  sub_3A98();
  sub_3AB0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_6270(uint64_t a1, void *a2)
{
  [sub_3B28(a1 a2)];
  sub_3A98();
  sub_3AB0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_62F8(uint64_t a1, void *a2)
{
  [sub_3B28(a1 a2)];
  sub_3A98();
  sub_3AB0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_6380(uint64_t a1, void *a2)
{
  [sub_3B28(a1 a2)];
  sub_3A98();
  sub_3AB0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_644C(void *a1, void *a2)
{
  xpc_dictionary_get_string(a1, "BackgroundTaskAgentClientName");
  [objc_msgSend(a2 "description")];
  sub_3AB0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_64FC(uint64_t *a1)
{
  v6 = *a1;
  sub_3AB0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_65CC()
{
  sub_3B1C();
  [v0 UTF8String];
  sub_3AB0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_67BC()
{
  sub_3AC8();
  sub_3AB0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_6834(void *a1)
{
  [objc_msgSend(a1 "description")];
  sub_3AC8();
  sub_3ABC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_68FC()
{
  v0 = 136315138;
  v1 = "com.apple.backgroundtaskagent";
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "btaInstall: %s failed to register for launch events", &v0, 0xCu);
}

void sub_6984(uint64_t a1)
{
  v1 = 136315138;
  v2 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "userEventCallback: jobRequest is not a dictionary: %s", &v1, 0xCu);
}

void sub_6A80(_DWORD *a1)
{
  v6 = a1[12];
  v7 = a1[18];
  v8 = a1[23];
  v9 = a1[36];
  sub_3AB0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Au);
}

void sub_6C2C(void *a1, void *a2)
{
  [objc_msgSend(a1 "description")];
  [objc_msgSend(a2 "description")];
  sub_588C();
  sub_3AB0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_6CC8(void *a1, void *a2)
{
  [objc_msgSend(a1 "description")];
  [objc_msgSend(a2 "description")];
  sub_588C();
  sub_3AB0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_6D64(void *a1)
{
  [objc_msgSend(a1 "description")];
  sub_3AB0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_6DE8(void *a1)
{
  [objc_msgSend(a1 "description")];
  sub_3AB0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_6E6C(int *a1)
{
  v6 = *a1;
  sub_3AB0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_6F68(void *a1)
{
  [objc_msgSend(a1 "description")];
  sub_3ABC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_7348()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_3ABC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_73EC(int *a1)
{
  v6 = *a1;
  sub_3AB0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
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