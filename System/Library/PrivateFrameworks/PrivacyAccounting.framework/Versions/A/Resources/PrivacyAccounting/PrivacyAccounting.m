void sub_1000014C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100001704(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001714(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001724(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001734(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100001744(void *a1, uint64_t a2)
{
  v2 = [a1 valueForEntitlement:a2];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1000017AC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 previousState];
  v9 = [v6 state];

  [WeakRetained process:v7 didUpdateFromPreviousState:v8 toState:v9];
}

void sub_100001854(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPredicates:*(a1 + 32)];
  v4 = +[RBSProcessStateDescriptor descriptor];
  [v4 setValues:1];
  [v3 setStateDescriptor:v4];
  objc_initWeak(&location, *(a1 + 40));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000017AC;
  v5[3] = &unk_100018B58;
  objc_copyWeak(&v6, &location);
  [v3 setUpdateHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_10000193C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.PrivacyAccounting", "Daemon");
  v2 = qword_10001ECD0;
  qword_10001ECD0 = v1;

  v3 = qword_10001ECD0;
  if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "privacyaccountingd launched", &v9, 2u);
  }

  v11 = 0;
  if (!vproc_swap_integer())
  {
    v4 = qword_10001ECD0;
    if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = v11;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "privacyaccountingd last exit status: %lld", &v9, 0xCu);
    }
  }

  sub_100001CB4();
  v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.privacyaccountingd"];
  v6 = [[PALServer alloc] initWithListener:v5 maxStoreSize:104857600];
  v7 = objc_alloc_init(PALAppUninstallObserver);
  [(PALServer *)v6 observeAppUninstallsWithAppUninstallObserver:v7];

  sub_100001FF4();
  sub_10000200C(v6);
  sub_1000020A4(v6);
  v8 = [(PALServer *)v6 listener];
  [v8 resume];

  sub_1000021C4();
  objc_autoreleasePoolPop(v0);
  dispatch_main();
}

size_t sub_100001CB4()
{
  bzero(v2, 0x400uLL);
  [@"com.apple.privacyaccountingd" UTF8String];
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    sub_10000DAEC();
  }

  *__error() = 0;
  result = confstr(65537, v2, 0x400uLL);
  if (result - 1025 <= 0xFFFFFFFFFFFFFBFFLL)
  {
    v1 = qword_10001ECD0;
    if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000DB08(v1);
    }

    _os_crash();
    __break(1u);
  }

  return result;
}

void sub_100001DE8(id a1)
{
  qword_10001ED00 = objc_opt_new();

  _objc_release_x1();
}

void sub_10000200C(void *a1)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000280C;
  handler[3] = &unk_1000186B8;
  v3 = a1;
  v1 = v3;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, handler);
}

void sub_1000020A4(void *a1)
{
  v1 = a1;
  v2 = off_10001E8A0;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000223C;
  handler[3] = &unk_1000186B8;
  v3 = v1;
  v9 = v3;
  xpc_activity_register(v2, XPC_ACTIVITY_CHECK_IN, handler);
  v4 = off_10001E8A8;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000242C;
  v6[3] = &unk_1000186B8;
  v7 = v3;
  v5 = v3;
  xpc_activity_register(v4, XPC_ACTIVITY_CHECK_IN, v6);
}

void sub_1000021C4()
{
  signal(15, 1);
  v0 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  v1 = qword_10001ECD8;
  qword_10001ECD8 = v0;

  dispatch_source_set_event_handler(qword_10001ECD8, &stru_100018770);
  v2 = qword_10001ECD8;

  dispatch_activate(v2);
}

void sub_10000223C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  state = xpc_activity_get_state(v3);
  v6 = qword_10001ECD0;
  if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_INFO))
  {
    *v13 = 136315394;
    *&v13[4] = off_10001E8A0;
    *&v13[12] = 2048;
    *&v13[14] = state;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "XPC activity triggered: name=%s, state=%ld", v13, 0x16u);
  }

  if (state == 2)
  {
    v7 = *(a1 + 32);
    v8 = v3;
    if (!xpc_activity_set_state(v8, 4))
    {
      v9 = qword_10001ECD0;
      if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_ERROR))
      {
        sub_10000DE60(v8, v9);
      }
    }

    v10 = [v7 queue];
    *v13 = _NSConcreteStackBlock;
    *&v13[8] = 3221225472;
    *&v13[16] = sub_100002A60;
    v14 = &unk_100018708;
    v15 = v8;
    v16 = v7;
    v11 = v8;
    v12 = v7;
    dispatch_async(v10, v13);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10000242C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  state = xpc_activity_get_state(v3);
  v6 = qword_10001ECD0;
  if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_INFO))
  {
    *v13 = 136315394;
    *&v13[4] = off_10001E8A8;
    *&v13[12] = 2048;
    *&v13[14] = state;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "XPC activity triggered: name=%s, state=%ld", v13, 0x16u);
  }

  if (state == 2)
  {
    v7 = *(a1 + 32);
    v8 = v3;
    if (!xpc_activity_set_state(v8, 4))
    {
      v9 = qword_10001ECD0;
      if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_ERROR))
      {
        sub_10000DE60(v8, v9);
      }
    }

    v10 = [v7 queue];
    *v13 = _NSConcreteStackBlock;
    *&v13[8] = 3221225472;
    *&v13[16] = sub_100002C84;
    v14 = &unk_100018708;
    v15 = v8;
    v16 = v7;
    v11 = v8;
    v12 = v7;
    dispatch_async(v10, v13);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1000025F4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
    if (string)
    {
      v4 = string;
      v5 = strcmp(string, "com.apple.LaunchServices.applicationUnregistered");
      v6 = qword_10001ECD0;
      if (v5)
      {
        if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_ERROR))
        {
          sub_10000DBA0();
        }
      }

      else
      {
        if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_INFO))
        {
          v13 = 136446210;
          v14 = v4;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Received distributed notification via XPC event: %{public}s", &v13, 0xCu);
        }

        v7 = xpc_dictionary_get_value(v2, "UserInfo");
        v8 = v7;
        if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
        {
          v9 = _CFXPCCreateCFObjectFromXPCObject();
          if (v9)
          {
            v10 = +[NSNotificationCenter defaultCenter];
            v11 = [NSString stringWithUTF8String:v4];
            [v10 postNotificationName:v11 object:0 userInfo:v9];
          }

          else
          {
            v12 = qword_10001ECD0;
            if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_ERROR))
            {
              sub_10000DC08(v12);
            }
          }
        }

        else if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_ERROR))
        {
          sub_10000DC4C();
        }
      }
    }

    else if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000DCB4();
    }
  }
}

void sub_10000280C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
    if (string)
    {
      if (!strcmp(string, "com.apple.Preferences.ResetPrivacyWarningsNotification"))
      {
        if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_DEBUG))
        {
          sub_10000DD84();
        }

        v9[0] = 0;
        v9[1] = v9;
        v9[2] = 0x3032000000;
        v9[3] = sub_100001704;
        v9[4] = sub_100001A08;
        v10 = os_transaction_create();
        objc_initWeak(&location, *(a1 + 32));
        v5 = [*(a1 + 32) queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100002A0C;
        block[3] = &unk_100018690;
        objc_copyWeak(&v7, &location);
        block[4] = v9;
        dispatch_async(v5, block);

        objc_destroyWeak(&v7);
        objc_destroyWeak(&location);
        _Block_object_dispose(v9, 8);
      }

      else if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_ERROR))
      {
        sub_10000DD1C();
      }
    }

    else if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000DDF8();
    }
  }
}

void sub_1000029EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_100002A0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained disableLogging];

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100002A60(uint64_t a1)
{
  v2 = CFAbsoluteTimeGetCurrent() + -604800.0;
  v3 = [[PAXPCActivityCancellationToken alloc] initWithActivity:*(a1 + 32)];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002B34;
  v5[3] = &unk_1000186E0;
  v4 = *(a1 + 40);
  v6 = *(a1 + 32);
  [v4 pruneEventsFromStartTime:v3 toEndTime:v5 withCancellationToken:0.0 completion:v2];
}

void sub_100002B34(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000DEE0();
    }

    v5 = *(a1 + 32);
    v4 = (a1 + 32);
    v6 = xpc_activity_set_state(v5, 3);
    v7 = qword_10001ECD0;
    if (v6)
    {
      if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_INFO))
      {
        v11 = 136315138;
        v12 = off_10001E8A0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "XPC activity deferred: name=%s", &v11, 0xCu);
      }
    }

    else if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000DF48(v4, v7);
    }
  }

  else
  {
    v9 = *(a1 + 32);
    v8 = (a1 + 32);
    if (!xpc_activity_set_state(v9, 5))
    {
      v10 = qword_10001ECD0;
      if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_ERROR))
      {
        sub_10000DFC8(v8, v10);
      }
    }
  }
}

void sub_100002C84(uint64_t a1)
{
  v2 = [[PAXPCActivityCancellationToken alloc] initWithActivity:*(a1 + 32)];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002D38;
  v4[3] = &unk_100018730;
  v3 = *(a1 + 40);
  v5 = *(a1 + 32);
  [v3 gatherAndSendDailyAnalyticsWithCancellationToken:v2 completion:v4];
}

void sub_100002D38(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 5;
  }

  else
  {
    v2 = 3;
  }

  v3 = (a1 + 32);
  if (!xpc_activity_set_state(*(a1 + 32), v2))
  {
    v4 = qword_10001ECD0;
    if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000E048(v3, v4, v2);
    }
  }
}

void sub_100002DAC(id a1)
{
  v1 = qword_10001ECD0;
  if (os_log_type_enabled(qword_10001ECD0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Received signal SIGTERM. Will terminate when clean.", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_100002E2C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100002E4C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

xpc_activity_state_t sub_100002E74()
{

  return xpc_activity_get_state(v0);
}

id sub_1000030DC()
{
  if (qword_10001ECE8 != -1)
  {
    sub_10000348C();
  }

  v1 = qword_10001ECE0;

  return v1;
}

void sub_100003290(id a1)
{
  qword_10001ECE0 = os_log_create("com.apple.PrivacyAccounting", "PALApplicationMetadataResolver");

  _objc_release_x1();
}

void sub_100003364(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 accessor];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Resolved application metadata for accessor: %{public}@ -> %{public}@", &v6, 0x16u);
}

void sub_100003F34(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_10001ECF0;
  qword_10001ECF0 = v1;

  v3 = [PAApplication applicationWithPath:@"/System/Library/CoreServices/AegirProxyApp.app/AegirProxyApp"];
  v4 = qword_10001ECF0;
  v5 = sub_10000402C(@"com.apple.NanoUniverse.AegirProxyApp");
  [v4 setObject:v3 forKeyedSubscript:v5];

  v8 = [PAApplication applicationWithPath:@"/Applications/Sidecar.app/Sidecar"];
  v6 = qword_10001ECF0;
  v7 = sub_10000402C(@"com.apple.sidecar");
  [v6 setObject:v8 forKeyedSubscript:v7];
}

PALResolvedAccessorCacheKey *sub_10000402C(void *a1)
{
  v1 = a1;
  v2 = [PALResolvedAccessorCacheKey alloc];
  v3 = [PAApplication applicationWithBundleID:v1];

  v4 = [(PALResolvedAccessorCacheKey *)v2 initWithAccessor:v3 clientProvidedIdentity:0];

  return v4;
}

void sub_1000040B4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1000041A4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 accessor];
  v5[0] = 67109378;
  v5[1] = [v4 insecureProcessIdentifier];
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Couldn't look up audit token for PID %d for microphone access %{public}@", v5, 0x12u);
}

void sub_100004264(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 accessor];
  sub_100002E68();
  sub_1000040B4(&_mh_execute_header, v5, v6, "Got positive cache result for accessor: %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000043F0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 accessor];
  sub_100002E68();
  sub_1000040B4(&_mh_execute_header, v5, v6, "Got negative cache result for accessor: %{public}@", v7, v8, v9, v10, v11);
}

void sub_100004484(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 accessor];
  v7 = 138412546;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Dropping incoming access=%@ with accessor=%{public}@", &v7, 0x16u);
}

BOOL PALMetricDataReductionTestString(void *a1, void *a2, unint64_t a3)
{
  v5 = a1;
  v6 = [a2 dataUsingEncoding:4];
  v7 = PALMetricDataReductionTestData(v5, v6, a3);

  return v7;
}

BOOL PALMetricDataReductionTestData(void *a1, void *a2, unint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    if (a3 <= 0x40)
    {
      memset(&v9, 0, sizeof(v9));
      CC_SHA256_Init(&v9);
      CC_SHA256_Update(&v9, [v5 bytes], objc_msgSend(v5, "length"));
      CC_SHA256_Update(&v9, [v6 bytes], objc_msgSend(v6, "length"));
      CC_SHA256_Final(md, &v9);
      v7 = bswap64(*md) >> -a3 == 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

id sub_100004C80()
{
  if (qword_10001ED18 != -1)
  {
    sub_100005388();
  }

  v1 = qword_10001ED10;

  return v1;
}

void sub_100005118(id a1)
{
  qword_10001ED10 = os_log_create("com.apple.PrivacyAccounting", "PALSettings");

  _objc_release_x1();
}

void sub_10000515C(id a1)
{
  v1 = +[NSMutableSet set];
  v2 = qword_10001ED20;
  qword_10001ED20 = v1;

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [qword_10001ED20 addObject:PAAccessCategoryCalendar];
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v3 = qword_10001ED20;
    v4 = PAAccessCategoryUserTracking;

    [v3 addObject:v4];
  }
}

void sub_100005220(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100005240(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Settings plist not found at %{public}@, nothing to migrate.", &v2, 0xCu);
}

void sub_1000053B0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to generate salt for metric collection.  Got return code %d", v2, 8u);
}

id sub_100005738()
{
  if (qword_10001ED38 != -1)
  {
    sub_10000595C();
  }

  v1 = qword_10001ED30;

  return v1;
}

void sub_100005848(id a1)
{
  qword_10001ED30 = os_log_create("com.apple.PrivacyAccounting", "PALPaths");

  _objc_release_x1();
}

void sub_10000588C(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *a2;
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Creating directory %{public}@ failed with error: %{public}@", &v4, 0x16u);
}

void sub_100005970(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 biomeDirectory];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Removing directory %{public}@ failed with error: %{public}@", &v6, 0x16u);
}

void sub_100005DF0(uint64_t a1)
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [*(a1 + 40) delegate];
        [v8 applicationDidUninstall:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_1000061BC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Didn't get bundleIDs in user info dictionary: %@", &v2, 0xCu);
}

void sub_10000663C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100006660(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 state])
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v3 = [v6 error];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

uint64_t sub_1000066D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) cancelled];
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v6 = [NSError errorWithDomain:@"PAErrorDomain" code:15 userInfo:0];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    [*(a1 + 40) updateWithEvent:v3];
  }

  objc_autoreleasePoolPop(v4);

  return v5 ^ 1;
}

void sub_10000694C(id a1)
{
  v1 = qword_10001ED48;
  qword_10001ED48 = &off_1000198E8;
}

void sub_10000751C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000754C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finalizeAllAccessIntervalsAndRemoveSession:0];
}

void sub_100007590(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finalizeAllAccessIntervalsAndRemoveSession:1];
}

void sub_100007B88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 40) + 16))();
  v12 = v4;
  v5 = [v12 domain];
  v6 = [v5 isEqualToString:@"PAErrorDomain"];

  v7 = v12;
  if (!v6)
  {
    goto LABEL_7;
  }

  v8 = [v12 code];
  if (v8 == 2)
  {
LABEL_5:

LABEL_6:
    v7 = [*(a1 + 32) connection];
    [v7 invalidate];
    goto LABEL_7;
  }

  if (v8 != 12)
  {
    v7 = v12;
    if (v8 != 9)
    {
LABEL_7:

      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v11 = PAErrorBoolValueForUserInfoKey();

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_8:
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_100007C94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [v2 logAccess:v3 error:&v16];
  v5 = v16;
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 56) + 16);
LABEL_6:
    v7();
    goto LABEL_7;
  }

  if ([*(a1 + 40) kind] != 2)
  {
    v10 = *(a1 + 40);
    v7 = *(*(a1 + 56) + 16);
    goto LABEL_6;
  }

  v8 = [*(a1 + 48) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007DE0;
  block[3] = &unk_100018918;
  v11 = *(a1 + 40);
  v9 = v11.i64[0];
  v13 = vextq_s8(v11, v11, 8uLL);
  v15 = *(a1 + 56);
  v14 = v5;
  dispatch_async(v8, block);

LABEL_7:
}

uint64_t sub_100007DE0(uint64_t a1)
{
  [*(a1 + 32) stopTrackingIntervalForAccess:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 16);

  return v4();
}

void sub_100007FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100007FC4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 enableLogging];
  }

  else
  {
    [v3 disableLogging];
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_100008154(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) settings];
  (*(v1 + 16))(v1, [v2 loggingEnabled]);
}

void sub_1000083A4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) settings];
  v4 = [v3 loggingEnabled];

  if (v4)
  {
    v5 = [*(a1 + 32) storeConfig];
    v6 = [v5 datastorePath];
    [v6 UTF8String];
    v7 = *(a1 + 80);
    *buf = *(a1 + 64);
    v29 = v7;
    v8 = sandbox_extension_issue_file_to_process();

    v9 = [*(a1 + 40) log];
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = [*v2 storeConfig];
        v12 = [v11 datastorePath];
        *buf = 138543362;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Issuing sandbox extension to reader for path %{public}@", buf, 0xCu);
      }

      v13 = [[NSData alloc] initWithBytesNoCopy:v8 length:strlen(v8) + 1 freeWhenDone:1];
      v14 = *(a1 + 48);
      v15 = [*(a1 + 32) storeConfig];
      v16 = [v15 datastorePath];
      (*(v14 + 16))(v14, 0, v13, v16);

      v17 = *(*(a1 + 56) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = 0;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10000A2E0(v2, v10);
      }

      v20 = *(a1 + 48);
      v26 = NSLocalizedDescriptionKey;
      v21 = __error();
      v22 = [NSString stringWithUTF8String:strerror(*v21)];
      v27 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v24 = [NSError errorWithDomain:@"PAErrorDomain" code:7 userInfo:v23];
      (*(v20 + 16))(v20, v24, 0, 0);
    }
  }

  else
  {
    v19 = *(a1 + 48);
    v25 = [NSError errorWithDomain:@"PAErrorDomain" code:2 userInfo:0];
    (*(v19 + 16))(v19);
  }
}

uint64_t sub_100008834(uint64_t a1)
{
  v2 = *(a1 + 48) - 1;
  if (v2 <= 2)
  {
    v3 = [*(a1 + 32) settings];
    [v3 setAccessFilteringPolicy:v2];
  }

  v4 = *(a1 + 56);
  v5 = [*(a1 + 32) settings];
  [v5 setLoggingOptions:v4];

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

id sub_100009164(uint64_t a1)
{
  v2 = [*(a1 + 32) accessorResolver];
  v3 = [v2 applicationMetadataResolver];
  v4 = [*(a1 + 40) accessor];
  v5 = [v3 bundleRecordForApplication:v4];

  v23 = v5;
  IsVisibleApplication = PABundleRecordIsVisibleApplication();
  v24[0] = @"duration";
  v22 = [NSNumber numberWithDouble:*(a1 + 48)];
  v25[0] = v22;
  v24[1] = @"category";
  v21 = [*(a1 + 40) category];
  v25[1] = v21;
  v24[2] = @"identityType";
  v20 = [*(a1 + 40) accessor];
  [v20 identifierType];
  v7 = PAApplicationIdentifierTypeToString();
  v25[2] = v7;
  v24[3] = @"identity";
  v8 = [*(a1 + 40) accessor];
  v9 = [v8 descriptionForIdentifier];
  v10 = v9;
  v11 = &stru_1000193F8;
  if (v9)
  {
    v11 = v9;
  }

  v25[3] = v11;
  v24[4] = @"isInstalled";
  v12 = [NSNumber numberWithBool:v5 != 0];
  v25[4] = v12;
  v24[5] = @"isVisible";
  v13 = [NSNumber numberWithBool:IsVisibleApplication];
  v25[5] = v13;
  v24[6] = @"unknownAssetCount";
  v14 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  v25[6] = v14;
  v24[7] = @"backgroundAssetCount";
  v15 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
  v25[7] = v15;
  v24[8] = @"foregroundAssetCount";
  v16 = [NSNumber numberWithUnsignedInteger:*(a1 + 72)];
  v25[8] = v16;
  v24[9] = @"usingEventCountProxy";
  v17 = [NSNumber numberWithBool:*(a1 + 80)];
  v25[9] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:10];

  return v18;
}

void sub_1000095C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000095DC(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v14 + 1) + 8 * v6) access];
        v8 = [v7 asIntervalEndEventWithTimestampAdjustment:0.0];

        if ((*(a1 + 64) & 1) != 0 && [v8 supportsSameMinuteAccessCountLogging] && !objc_msgSend(v8, "accessCount"))
        {
          [v8 setAccessCount:1];
        }

        [*(a1 + 40) logAccess:v8 error:0];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  if (*(a1 + 72) == 1)
  {
    [*(a1 + 40) removeSession:*(a1 + 48)];
  }

  v9 = [*(a1 + 40) delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [*(a1 + 40) delegate];
    [v11 server:*(a1 + 40) didFinalizeAllAccessIntervalsForSession:*(a1 + 48)];
  }

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

void sub_10000A03C(id a1)
{
  v3[0] = kTCCServiceMediaLibrary;
  v3[1] = kTCCServicePhotos;
  v3[2] = kTCCServiceAddressBook;
  v1 = [NSArray arrayWithObjects:v3 count:3];
  v2 = qword_10001ED58;
  qword_10001ED58 = v1;
}

void sub_10000A0D8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000A2E0(id *a1, NSObject *a2)
{
  v3 = [*a1 storeConfig];
  v4 = [v3 datastorePath];
  v5 = *__error();
  v6 = 138543618;
  v7 = v4;
  v8 = 1024;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to issue sandbox extension token for path %{public}@, error=%{darwin.errno}d", &v6, 0x12u);
}

void sub_10000A41C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  sub_100002E68();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Tracking access interval %{public}@", v5, 0xCu);
}

void sub_10000A4C0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 accessor];
  [v4 identifierType];
  sub_100002E68();
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Unexpected application type: %ld for access %@", v5, 0x16u);
}

void sub_10000ABF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained preflight];
}

int64_t sub_10000B074(id a1, BMStoreEvent *a2, BMStoreEvent *a3)
{
  v4 = a2;
  v5 = a3;
  [(BMStoreEvent *)v4 timestamp];
  v7 = v6;
  [(BMStoreEvent *)v5 timestamp];
  if (v7 <= v8)
  {
    [(BMStoreEvent *)v4 timestamp];
    v11 = v10;
    [(BMStoreEvent *)v5 timestamp];
    if (v11 >= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

void sub_10000B2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10000B310(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000D648(v3, v4);
    }
  }
}

void sub_10000B374(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D6DC();
  }

  v5 = [v3 access];
  v6 = [v5 asIntervalEndEventWithTimestampAdjustment:0.0];

  v7 = *(a1 + 32);
  v12 = 0;
  v8 = [v7 logAccess:v6 error:&v12];
  v9 = v12;
  if (v8)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v10 = [*(a1 + 32) log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000D744();
    }
  }

  [v3 startTime];
  *(*(*(a1 + 48) + 8) + 24) = v11;
}

void sub_10000BF6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[NSMutableArray array];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v4 = WeakRetained[3];
    v5 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v35;
      *&v6 = 138412546;
      v27 = v6;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v34 + 1) + 8 * i);
          v11 = [v10 connection];
          v12 = v11;
          if (v11)
          {
            [v11 auditToken];
          }

          else
          {
            memset(buf, 0, 32);
          }

          v13 = *(a1 + 32);
          if (v13)
          {
            [v13 auditToken];
          }

          else
          {
            v32 = 0u;
            v33 = 0u;
          }

          v17 = *buf != v32 || *&buf[8] != *(&v32 + 1) || *&buf[16] != v33 || *&buf[24] != *(&v33 + 1);

          if (!v17)
          {
            v18 = [WeakRetained log];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = [v10 connection];
              v20 = *(a1 + 32);
              *buf = v27;
              *&buf[4] = v19;
              *&buf[12] = 2112;
              *&buf[14] = v20;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Invalidating connection=%@ for suspended process=%@", buf, 0x16u);
            }

            [v3 addObject:v10];
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v7);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v21 = v3;
    v22 = [v21 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v29;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v28 + 1) + 8 * j) connection];
          [v26 invalidate];
        }

        v23 = [v21 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v23);
    }
  }
}

uint64_t sub_10000C870(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (![*(a1 + 32) cancelled])
  {
    if (![*(a1 + 40) evaluateWithObject:v5])
    {
      v7 = 0;
      goto LABEL_11;
    }

    v8 = [v5 eventBody];
    v9 = [v8 kind];

    if (v9 == 3)
    {
      v13 = *(a1 + 48);
      v11 = [v5 eventBody];
      v12 = [v11 identifier];
      [v13 removeObject:v12];
    }

    else
    {
      if (v9 != 2)
      {
LABEL_10:
        ++*(*(*(a1 + 64) + 8) + 24);
        v7 = 1;
        goto LABEL_11;
      }

      v10 = *(a1 + 48);
      v11 = [v5 eventBody];
      v12 = [v11 identifier];
      [v10 addObject:v12];
    }

    goto LABEL_10;
  }

  v7 = 0;
  *a3 = 1;
  *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_11:
  objc_autoreleasePoolPop(v6);

  return v7;
}

void sub_10000CC2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000D8E8(a1);
    }
  }
}

void sub_10000CEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000CEE4(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) fileDescriptor];
  v3 = _CFWriteStreamCreateFromFileDescriptor();
  v4 = v3;
  if (v3)
  {
    [v3 open];
    v5 = *(a1 + 48);
    v19 = 0;
    v6 = [PAAccessReader exportFromPublisher:v5 toStream:v4 error:&v19];
    v7 = v19;
    [v4 close];
    if (v6)
    {
      (*(*(a1 + 56) + 16))();
      v8 = *(*(a1 + 64) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = 0;
    }

    else
    {
      v18 = [*(a1 + 40) log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10000D95C(v2);
      }

      (*(*(a1 + 56) + 16))(*(a1 + 56), v7);
    }
  }

  else
  {
    v10 = [*(a1 + 40) log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000D9D0(v2, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = *(a1 + 56);
    v7 = [NSError errorWithDomain:NSCocoaErrorDomain code:512 userInfo:0];
    (*(v17 + 16))(v17, v7);
  }
}

void sub_10000D214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D22C(uint64_t a1)
{
  v2 = [PALAnalytics alloc];
  v3 = [*(a1 + 32) settings];
  v4 = [(PALAnalytics *)v2 initWithSettings:v3];

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v16 = 0;
  v7 = [(PALAnalytics *)v4 updateWithPublisher:v5 cancellationToken:v6 error:&v16];
  v8 = v16;
  v9 = [*(a1 + 32) log];
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Gathered daily analytics=%{public}@", buf, 0xCu);
    }

    v15 = v4;
    AnalyticsSendEventLazy();
    v10 = v15;
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10000DA84();
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v7, v11, v12);
  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;
}

void sub_10000D5B4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10000D5D0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Device locked; failed to register for lock state change notifications with code=%u", v2, 8u);
}

void sub_10000D648(void *a1, NSObject *a2)
{
  v3 = [a1 error];
  sub_100002E68();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to finalize incomplete accesses; error= %{public}@", v4, 0xCu);
}

void sub_10000D744()
{
  sub_100002E68();
  sub_10000D5A4();
  sub_100005220(&_mh_execute_header, v0, v1, "Failed to finalize incomplete access; access=%@, error=%{public}@");
}

void sub_10000D8E8(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *(a1 + 40);
  sub_10000D5A4();
  sub_100005220(&_mh_execute_header, v1, v2, "Failed to prune events for uninstalled application %{public}@ with error: %{public}@", v3, DWORD2(v3));
}

void sub_10000D95C(void *a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *a1;
  sub_10000D5A4();
  sub_100005220(&_mh_execute_header, v1, v2, "Failed to export to file=%@ with error=%{public}@", v3, DWORD2(v3));
}

void sub_10000DB08(void *a1)
{
  v1 = a1;
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to initialize temp directory: %{darwin.errno}d", v3, 8u);
}

void sub_10000DE60(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_100002E74();
  sub_100002E14();
  sub_100002E2C(&_mh_execute_header, v4, v5, "Failed to mark XPC activity %{public}@ as continue; current state: %lu", v6, v7, v8, v9, v10);
}

void sub_10000DF48(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  sub_100002E74();
  sub_100002E14();
  sub_100002E2C(&_mh_execute_header, v5, v6, "Failed to defer XPC activity for activity %{public}@; current state: %lu", v7, v8, v9, v10, v11);
}

void sub_10000DFC8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  sub_100002E74();
  sub_100002E14();
  sub_100002E2C(&_mh_execute_header, v5, v6, "Failed to mark XPC activity %{public}@ as done; current state: %lu", v7, v8, v9, v10, v11);
}

void sub_10000E048(_xpc_activity_s **a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = 138543874;
  v7 = v4;
  v8 = 2048;
  v9 = a3;
  v10 = 2048;
  state = xpc_activity_get_state(v4);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to mark XPC activity %{public}@ as %lu; current state: %lu", &v6, 0x20u);
}