void sub_100000FC8(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  v9 = [v8 getObject:a1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = v10;
    if (a4 == 1)
    {
      if (*a3 == 1000)
      {
        [v10 _handleRefreshConnection];
      }
    }

    else if (a4 >= 5)
    {
      [v10 _handleNotification:*a3 withArgs:a3 + 2 ofCount:a4 - 1];
    }
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1000010A8(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  v9 = [v8 getObject:a1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = v10;
    if (a4 == 1)
    {
      if (*a3 == 1000)
      {
        [v10 _handleRefreshConnection];
      }
    }

    else if (a4 >= 0xD)
    {
      v12 = a3[4] | (*(a3 + 1) << 32);
      v13 = a3[8] | (*(a3 + 3) << 32);
      v14 = a3[12] | (*(a3 + 5) << 32);
      v15 = a3[16] | (*(a3 + 7) << 32);
      v16 = a3[20] | (*(a3 + 9) << 32);
      v17 = a3[24] | (*(a3 + 11) << 32);
      v18 = *a3;
      if ([v10 logNotifyTest] && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110656;
        v20 = v18;
        v21 = 2048;
        v22 = v12;
        v23 = 2048;
        v24 = v13;
        v25 = 2048;
        v26 = v14;
        v27 = 2048;
        v28 = v15;
        v29 = 2048;
        v30 = v16;
        v31 = 2048;
        v32 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDgPTPPort asyncNotificationsCallback notification=%u arg1=%llu arg2=%llu arg3=%llu arg4=%llu arg5=%llu arg6=%llu", buf, 0x44u);
      }

      [v11 _handleNotification:v18 withArg1:v12 arg2:v13 arg3:v14 arg4:v15 arg5:v16 arg6:v17];
    }
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1000012AC(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  v10 = [v9 getObject:a1];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && a4 >= 3)
  {
    [v10 handleNotification:*a3 clientID:a3[2] result:a2 withArgs:a3 + 4 ofCount:a4 - 2];
  }

  objc_autoreleasePoolPop(v8);
}

void sub_100001370(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  v9 = [v8 getObject:a1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = v10;
    if (a4 == 1)
    {
      if (*a3 == 1000)
      {
        [v10 _handleRefreshConnection];
      }
    }

    else if (a4 >= 3)
    {
      [v10 _handleNotification:*a3 withArgs:a3 + 2 ofCount:a4 - 1];
    }
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1000014E8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[TSDgPTPManager sharedgPTPManager];
    [v4 logInterfaceStatisticsWithError:0];

    if ([WeakRetained[3] count] && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "==========================================\n", buf, 2u);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = WeakRetained[3];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [WeakRetained[3] objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * i), v11}];
          [v10 logStatistics];
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    sub_10002942C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10000168C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!qword_1000588D0)
  {
    v3 = +[TSDClockManager sharedClockManager];
    [v3 addgPTPServicesWithError:0];
    v4 = [*(a1 + 32) gPTPManager];
    v5 = qword_1000588D0;
    qword_1000588D0 = v4;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100004B84(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([v5 conformsToIOClassName:@"IOTimeSyncPort"])
  {
    v4 = [TSDgPTPPort gPTPPortWithService:v5];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_1000051CC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!qword_1000588F0)
  {
    v3 = [*(a1 + 32) clockManager];
    v4 = qword_1000588F0;
    qword_1000588F0 = v3;
  }

  objc_autoreleasePoolPop(v2);
}

_OWORD *sub_1000052E4@<X0>(_OWORD *result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = result[1];
  *a3 = *result;
  *(a3 + 1) = v3;
  if (a2)
  {
    v6 = a2 - 128;
    if (v6)
    {
      if (a2 <= 127)
      {
        v7 = sub_100005464(a3, 128 - a2);
        v9 = v8;
        a3[2] = sub_100005418(a3 + 2, a2) | v7;
        a3[3] = v10 | v9;
        result = sub_100005418(a3, a2);
        *a3 = result;
        a3[1] = v11;
        return result;
      }

      result = sub_100005418(a3, v6);
      a3[2] = result;
      a3[3] = v12;
    }

    else
    {
      *(a3 + 1) = *a3;
    }

    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_10000538C(__int128 *a1, unint64_t *a2)
{
  v10 = *a1;
  v11 = 0uLL;
  v3 = 128;
  do
  {
    sub_1000052E4(&v10, 1, &v8);
    v11 = v9;
    result = v8;
    v10 = v8;
    v5 = *a2;
    v6 = a2[1];
    if (*(&v9 + 1) > v6 || (*(&v9 + 1) == v6 ? (v7 = v9 >= v5) : (v7 = 0), v7))
    {
      v11 = v9 - __PAIR128__(v6, v5);
      result = v8 | 1;
      *&v10 = v8 | 1;
    }

    --v3;
  }

  while (v3);
  return result;
}

uint64_t sub_100005418(void *a1, int a2)
{
  v2 = *a1 << a2;
  if (a2 <= 63)
  {
    v3 = (a1[1] << a2) | (*a1 >> 1 >> ~a2);
  }

  else
  {
    v2 = 0;
  }

  if (a2 == 64)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  if (a2 == 64)
  {
    v5 = *a1;
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return *a1;
  }
}

unint64_t sub_100005464(void *a1, int a2)
{
  v2 = a1[1];
  v3 = v2 >> a2;
  if (a2 <= 63)
  {
    v3 = ((2 * v2) << ~a2) | (*a1 >> a2);
  }

  if (a2 == 64)
  {
    v3 = a1[1];
  }

  if (a2)
  {
    return v3;
  }

  else
  {
    return *a1;
  }
}

void start()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 136315394;
    *&v3[4] = "audioclocksyncd";
    v4 = 2080;
    v5 = "1410.2";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s %s\n\n", v3, 0x16u);
  }

  *v3 = 0xFE000100FF0001;
  task_policy_set(mach_task_self_, 9u, v3, 2u);
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(TSDDaemon);
  v2 = qword_1000587E0;
  qword_1000587E0 = v1;

  dispatch_main();
}

void sub_100005EC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 136));
  objc_destroyWeak((v4 - 128));
  _Unwind_Resume(a1);
}

void sub_100005F2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v3 propertyForKey:@"ClockIdentifier"];
      if (v6)
      {
        v7 = v6;
        [WeakRetained addStatisticsWithIdentifier:{objc_msgSend(v6, "unsignedLongLongValue")}];
      }

      else
      {
        sub_100028DFC();
      }
    }

    else
    {
      sub_100028D4C();
    }
  }

  else
  {
    sub_100028EAC();
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100005FE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v3 propertyForKey:@"ClockIdentifier"];
      if (v6)
      {
        v7 = v6;
        [WeakRetained removeStatisticsWithIdentifier:{objc_msgSend(v6, "unsignedLongLongValue")}];
      }

      else
      {
        sub_10002900C();
      }
    }

    else
    {
      sub_100028F5C();
    }
  }

  else
  {
    sub_1000290BC();
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1000060A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [WeakRetained addNetworkPortWithService:v3];
    }

    else
    {
      sub_10002916C();
    }
  }

  else
  {
    sub_10002921C();
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100006134(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [WeakRetained removeNetworkPortWithService:v3];
    }

    else
    {
      sub_1000292CC();
    }
  }

  else
  {
    sub_10002937C();
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1000061C4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 48) primeNotification];
  [*(*(a1 + 32) + 56) primeNotification];
  [*(*(a1 + 32) + 64) primeNotification];
  [*(*(a1 + 32) + 72) primeNotification];

  objc_autoreleasePoolPop(v2);
}

void sub_100006A68(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x3Au);
}

void sub_100006A84(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(TSDCallbackRefconMap);
  v3 = qword_1000587E8;
  qword_1000587E8 = v2;

  objc_autoreleasePoolPop(v1);
}

void sub_100006EB8(id a1)
{
  dword_100058808 = getpid();
  dword_100058918 = 0;
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_100058810;
  qword_100058810 = v1;

  v3 = +[TSDDaemonService sharedDaemonService];
  v4 = qword_1000587F8;
  qword_1000587F8 = v3;

  if (![qword_1000587F8 registerProcess:dword_100058808 withCallback:&stru_10004C748 error:0] && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IODConnection registerProcess failed\n", v5, 2u);
  }
}

void sub_100007874(id a1)
{
  v1 = dispatch_queue_create("com.apple.TimeSync.TSIOKServiceMatcherClassNotifier.sharedNotificationsQueue", 0);
  v2 = qword_100058818;
  qword_100058818 = v1;

  v3 = [IOKNotificationPort alloc];
  qword_100058820 = [v3 initOnDispatchQueue:qword_100058818];

  _objc_release_x1();
}

void sub_100007BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007C00(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v8 nextObject];
    if (v5)
    {
      v6 = v5;
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [WeakRetained handleServiceMatched:v6];
        }

        v7 = [v8 nextObject];

        v6 = v7;
      }

      while (v7);
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_100007CD0(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v8 nextObject];
    if (v5)
    {
      v6 = v5;
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [WeakRetained handleServiceTerminated:v6];
        }

        v7 = [v8 nextObject];

        v6 = v7;
      }

      while (v7);
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_100007DA0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 8) primeNotification];
  [*(*(a1 + 32) + 16) primeNotification];

  objc_autoreleasePoolPop(v2);
}

void sub_1000084BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) getMatchedCount];
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v3 < 1)
  {
    if (v4)
    {
      v6 = [*(*(a1 + 32) + 32) UTF8String];
      v11 = 136315394;
      v12 = v6;
      v13 = 1024;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDKextNotifier notifyWhenServiceIsAvailable %s matchedCount %d, saving notification block", &v11, 0x12u);
    }

    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 40);
    v9 = [v7 copy];
    v10 = objc_retainBlock(v9);
    [v8 addObject:v10];
  }

  else
  {
    if (v4)
    {
      v5 = [*(*(a1 + 32) + 32) UTF8String];
      v11 = 136315394;
      v12 = v5;
      v13 = 1024;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDKextNotifier notifyWhenServiceIsAvailable %s matchedCount %d, dispatching notification", &v11, 0x12u);
    }

    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000086F4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) getMatchedCount];
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v4)
    {
      v5 = [*(*(a1 + 32) + 32) UTF8String];
      v11 = 136315394;
      v12 = v5;
      v13 = 1024;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDKextNotifier notifyWhenServiceIsUnavailable %s matchedCount %d, saving notification block", &v11, 0x12u);
    }

    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 48);
    v8 = [v6 copy];
    v9 = objc_retainBlock(v8);
    [v7 addObject:v9];
  }

  else
  {
    if (v4)
    {
      v10 = [*(*(a1 + 32) + 32) UTF8String];
      v11 = 136315394;
      v12 = v10;
      v13 = 1024;
      v14 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDKextNotifier notifyWhenServiceIsUnavailable %s matchedCount %d, dispatching notification", &v11, 0x12u);
    }

    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100008968(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v17 + 1) + 8 * v7) + 16))();
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v13 + 1) + 8 * v12) + 16))(*(*(&v13 + 1) + 8 * v12));
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100009F2C(id a1)
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    v4 = 0;
    MSGController::MSGController(v3, 0, 0);
    if (MSGController::openService(v3, 0) || MSGController::IsMSGSystemReady(v3, &v4, 0x5F5E100uLL) || !v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002A1F8();
      }

      MSGController::~MSGController(v3);
    }

    else
    {
      MSGController::~MSGController(v3);
      v1 = objc_alloc_init(TSDMSGService);
      v2 = qword_100058830;
      qword_100058830 = v1;
    }
  }
}

void sub_10000A018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2 == 1)
  {
    v10 = __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002A158(v10);
    }

    __cxa_end_catch();
    JUMPOUT(0x100009FFCLL);
  }

  _Unwind_Resume(exception_object);
}

id sub_10000AA04(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    __tp.tv_nsec = 0;
    __tp.tv_sec = 0;
    if (clock_gettime(_CLOCK_MONOTONIC, &__tp))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002A23C();
      }

      v3 = 0;
    }

    else
    {
      tv_sec = __tp.tv_sec;
      v6 = [v2 startTime];
      tv_nsec = __tp.tv_nsec;
      [v2 startTime];
      v3 = (tv_nsec + 1000000000 * (tv_sec - v6) - v8) / 0x3E8uLL;
    }

    v34[0] = @"syncId";
    [v2 config];
    v22 = [NSNumber numberWithUnsignedInt:v32];
    v35[0] = v22;
    v34[1] = @"triggerId";
    [v2 config];
    v21 = [NSNumber numberWithUnsignedInt:v31];
    v35[1] = v21;
    v34[2] = @"nominalTriggerRate";
    [v2 config];
    [v2 config];
    v20 = [NSNumber numberWithDouble:v30 / v29];
    v35[2] = v20;
    v34[3] = @"syncMultiplier";
    [v2 config];
    [v2 config];
    v19 = [NSNumber numberWithDouble:v28 / v27];
    v35[3] = v19;
    v34[4] = @"toleranceExternalTriggerMicros";
    [v2 config];
    v18 = [NSNumber numberWithUnsignedLongLong:v26 / 0x3E8];
    v35[4] = v18;
    v34[5] = @"toleranceSyncOutputMicros";
    [v2 config];
    v9 = [NSNumber numberWithUnsignedLongLong:v25 / 0x3E8];
    v35[5] = v9;
    v34[6] = @"timeoutMicros";
    [v2 config];
    v10 = [NSNumber numberWithUnsignedLongLong:v24 / 0x3E8];
    v35[6] = v10;
    v34[7] = @"procName";
    v11 = sub_10000C9E4(v1);
    v35[7] = v11;
    v34[8] = @"sessionRunTimeMicros";
    v12 = [NSNumber numberWithUnsignedLongLong:v3];
    v35[8] = v12;
    v34[9] = @"isSimulation";
    [v2 config];
    v13 = [NSNumber numberWithBool:v23 != 0];
    v35[9] = v13;
    v34[10] = @"timeToLockMicros";
    v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v2 timeToLockNs] / 0x3E8);
    v35[10] = v14;
    v34[11] = @"exitStatus";
    v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 exitStatus]);
    v35[11] = v15;
    v34[12] = @"triggerLostCnt";
    v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v2 triggerLostCnt]);
    v35[12] = v16;
    v4 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:13];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10000B8F4(uint64_t a1)
{
  v2 = [*(a1 + 32) session];
  v3 = *(a1 + 40);
  v4 = v2;
  if (v4)
  {
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    if (clock_gettime(_CLOCK_MONOTONIC, &__tp))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002A2CC();
      }

      v5 = 0;
    }

    else
    {
      tv_sec = __tp.tv_sec;
      v8 = [v4 startTime];
      tv_nsec = __tp.tv_nsec;
      [v4 startTime];
      v5 = (tv_nsec + 1000000000 * (tv_sec - v8) - v10) / 0x3E8uLL;
    }

    v19[0] = @"syncId";
    v11 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 syncId]);
    v20[0] = v11;
    v19[1] = @"procName";
    v12 = sub_10000C9E4(v3);
    v20[1] = v12;
    v19[2] = @"sessionRunTimeMicros";
    v13 = [NSNumber numberWithUnsignedLongLong:v5];
    v20[2] = v13;
    v19[3] = @"threadRestarts";
    v14 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v4 threadRestarts]);
    v20[3] = v14;
    v19[4] = @"nominalSyncRate";
    [v4 nominalSyncDuration];
    v16 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v15 / [v4 nominalSyncDuration]);
    v20[4] = v16;
    v6 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10000C9E4(int a1)
{
  memset(v3, 0, sizeof(v3));
  proc_name(a1, v3, 0x20u);
  v1 = [[NSString alloc] initWithCString:v3 encoding:1];

  return v1;
}

void sub_10000D038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000D05C(id a1)
{
  qword_100058840 = dispatch_queue_create("com.apple.TimeSync.TSDgPTPPort.sharedNotificationsQueue", 0);

  _objc_release_x1();
}

void sub_10000D09C(uint64_t a1, void *a2, int a3)
{
  v8 = a2;
  v5 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a3 == -536870608)
    {
      if (WeakRetained[32] == 1)
      {
        [WeakRetained updateProperties];
      }
    }

    else if (a3 == -536870896)
    {
      [WeakRetained serviceTerminated];
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_10000D1FC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) portRole] != *(a1 + 48))
  {
    [*(a1 + 32) setPortRole:?];
  }

  if ([*(a1 + 32) clockIdentifier] != *(a1 + 40))
  {
    [*(a1 + 32) setClockIdentifier:?];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10000E630(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) remoteClockIdentity] != *(a1 + 56))
  {
    [*(a1 + 32) setRemoteClockIdentity:?];
  }

  if ([*(a1 + 32) remotePortNumber] != *(a1 + 124))
  {
    [*(a1 + 32) setRemotePortNumber:?];
  }

  if (*(a1 + 128) != [*(a1 + 32) remoteIsSameDevice])
  {
    [*(a1 + 32) setRemoteIsSameDevice:?];
  }

  if (*(a1 + 129) != [*(a1 + 32) isASCapable])
  {
    [*(a1 + 32) setAsCapable:?];
  }

  if ([*(a1 + 32) propagationDelay] != *(a1 + 72))
  {
    [*(a1 + 32) setPropagationDelay:?];
  }

  if ([*(a1 + 32) maximumPropagationDelay] != *(a1 + 76))
  {
    [*(a1 + 32) setMaximumPropagationDelay:?];
  }

  if ([*(a1 + 32) minimumPropagationDelay] != *(a1 + 80))
  {
    [*(a1 + 32) setMinimumPropagationDelay:?];
  }

  if ([*(a1 + 32) maximumRawDelay] != *(a1 + 84))
  {
    [*(a1 + 32) setMaximumRawDelay:?];
  }

  if ([*(a1 + 32) minimumRawDelay] != *(a1 + 88))
  {
    [*(a1 + 32) setMinimumRawDelay:?];
  }

  if ([*(a1 + 32) localSyncLogMeanInterval] != *(a1 + 130))
  {
    [*(a1 + 32) setLocalSyncLogMeanInterval:?];
  }

  if ([*(a1 + 32) remoteSyncLogMeanInterval] != *(a1 + 131))
  {
    [*(a1 + 32) setRemoteSyncLogMeanInterval:?];
  }

  if ([*(a1 + 32) localAnnounceLogMeanInterval] != *(a1 + 132))
  {
    [*(a1 + 32) setLocalAnnounceLogMeanInterval:?];
  }

  if ([*(a1 + 32) remoteAnnounceLogMeanInterval] != *(a1 + 133))
  {
    [*(a1 + 32) setRemoteAnnounceLogMeanInterval:?];
  }

  if ([*(a1 + 32) localLinkType] != *(a1 + 134))
  {
    [*(a1 + 32) setLocalLinkType:?];
  }

  if ([*(a1 + 32) remoteLinkType] != *(a1 + 135))
  {
    [*(a1 + 32) setRemoteLinkType:?];
  }

  if ([*(a1 + 32) localTimestampingMode] != *(a1 + 136))
  {
    [*(a1 + 32) setLocalTimestampingMode:?];
  }

  if ([*(a1 + 32) remoteTimestampingMode] != *(a1 + 137))
  {
    [*(a1 + 32) setRemoteTimestampingMode:?];
  }

  if ([*(a1 + 32) localOscillatorType] != *(a1 + 138))
  {
    [*(a1 + 32) setLocalOscillatorType:?];
  }

  if ([*(a1 + 32) remoteOscillatorType] != *(a1 + 139))
  {
    [*(a1 + 32) setRemoteOscillatorType:?];
  }

  if (*(a1 + 140) != [*(a1 + 32) hasLocalFrequencyToleranceLower])
  {
    [*(a1 + 32) setHasLocalFrequencyToleranceLower:?];
  }

  if ([*(a1 + 32) localFrequencyToleranceLower] != *(a1 + 92))
  {
    [*(a1 + 32) setLocalFrequencyToleranceLower:?];
  }

  if (*(a1 + 141) != [*(a1 + 32) hasLocalFrequencyToleranceUpper])
  {
    [*(a1 + 32) setHasLocalFrequencyToleranceUpper:?];
  }

  if ([*(a1 + 32) localFrequencyToleranceUpper] != *(a1 + 96))
  {
    [*(a1 + 32) setLocalFrequencyToleranceUpper:?];
  }

  if (*(a1 + 142) != [*(a1 + 32) hasRemoteFrequencyToleranceLower])
  {
    [*(a1 + 32) setHasRemoteFrequencyToleranceLower:?];
  }

  if ([*(a1 + 32) remoteFrequencyToleranceLower] != *(a1 + 100))
  {
    [*(a1 + 32) setRemoteFrequencyToleranceLower:?];
  }

  if (*(a1 + 143) != [*(a1 + 32) hasRemoteFrequencyToleranceUpper])
  {
    [*(a1 + 32) setHasRemoteFrequencyToleranceUpper:?];
  }

  if ([*(a1 + 32) remoteFrequencyToleranceUpper] != *(a1 + 104))
  {
    [*(a1 + 32) setRemoteFrequencyToleranceUpper:?];
  }

  if (*(a1 + 144) != [*(a1 + 32) hasLocalFrequencyStabilityLower])
  {
    [*(a1 + 32) setHasLocalFrequencyStabilityLower:?];
  }

  if ([*(a1 + 32) localFrequencyStabilityLower] != *(a1 + 108))
  {
    [*(a1 + 32) setLocalFrequencyStabilityLower:?];
  }

  if (*(a1 + 145) != [*(a1 + 32) hasLocalFrequencyStabilityUpper])
  {
    [*(a1 + 32) setHasLocalFrequencyStabilityUpper:?];
  }

  if ([*(a1 + 32) localFrequencyStabilityUpper] != *(a1 + 112))
  {
    [*(a1 + 32) setLocalFrequencyStabilityUpper:?];
  }

  if (*(a1 + 146) != [*(a1 + 32) hasRemoteFrequencyStabilityLower])
  {
    [*(a1 + 32) setHasRemoteFrequencyStabilityLower:?];
  }

  if ([*(a1 + 32) remoteFrequencyStabilityLower] != *(a1 + 116))
  {
    [*(a1 + 32) setRemoteFrequencyStabilityLower:?];
  }

  if (*(a1 + 147) != [*(a1 + 32) hasRemoteFrequencyStabilityUpper])
  {
    [*(a1 + 32) setHasRemoteFrequencyStabilityUpper:?];
  }

  if ([*(a1 + 32) remoteFrequencyStabilityUpper] != *(a1 + 120))
  {
    [*(a1 + 32) setRemoteFrequencyStabilityUpper:?];
  }

  v3 = [*(a1 + 32) sourceAddressString];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) setSourceAddressString:*(a1 + 40)];
  }

  v5 = [*(a1 + 32) destinationAddressString];
  v6 = [v5 isEqualToString:*(a1 + 48)];

  if ((v6 & 1) == 0)
  {
    [*(a1 + 32) setDestinationAddressString:*(a1 + 48)];
  }

  if (*(a1 + 148) != [*(a1 + 32) overridenReceiveMatching])
  {
    [*(a1 + 32) setOverridenReceiveMatching:?];
  }

  if ([*(a1 + 32) overridenReceiveClockIdentity] != *(a1 + 64))
  {
    [*(a1 + 32) setOverridenReceiveClockIdentity:?];
  }

  if ([*(a1 + 32) overridenReceivePortNumber] != *(a1 + 126))
  {
    [*(a1 + 32) setOverridenReceivePortNumber:?];
  }

  if (*(a1 + 149) != [*(a1 + 32) enabled])
  {
    [*(a1 + 32) setEnabled:?];
  }

  objc_autoreleasePoolPop(v2);
}

id sub_10000FD6C(uint64_t a1)
{
  **(a1 + 40) = [*(a1 + 32) portRole];
  *(*(a1 + 40) + 4) = [*(a1 + 32) portType];
  *(*(a1 + 40) + 8) = [*(a1 + 32) localLinkType];
  *(*(a1 + 40) + 9) = [*(a1 + 32) remoteLinkType];
  *(*(a1 + 40) + 10) = [*(a1 + 32) localTimestampingMode];
  *(*(a1 + 40) + 11) = [*(a1 + 32) remoteTimestampingMode];
  *(*(a1 + 40) + 16) = [*(a1 + 32) remoteClockIdentity];
  result = [*(a1 + 32) remotePortNumber];
  *(*(a1 + 40) + 24) = result;
  return result;
}

void sub_10000FFCC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) didChangeASCapable:*(a1 + 48) forPort:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_100010518(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) didChangeASCapable:*(a1 + 48) != 0 forPort:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000106BC(uint64_t a1)
{
  result = os_parse_boot_arg_int();
  *(*(a1 + 32) + 33) = 0;
  return result;
}

void sub_100010E2C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  if (([v5 conformsToIOClassName:@"IOEthernetInterface"] & 1) != 0 || objc_msgSend(v5, "conformsToIOClassName:", @"IOTimeSyncInterfaceAdapter"))
  {
    v4 = [v5 iodPropertyForKey:@"BSD Name"];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:@"BSD Name"];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_10001169C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) localPDelayLogMeanInterval] != *(a1 + 48))
  {
    [*(a1 + 32) setLocalPDelayLogMeanInterval:?];
  }

  if ([*(a1 + 32) remotePDelayLogMeanInterval] != *(a1 + 49))
  {
    [*(a1 + 32) setRemotePDelayLogMeanInterval:?];
  }

  if (*(a1 + 50) != [*(a1 + 32) multipleRemotes])
  {
    [*(a1 + 32) setMultipleRemotes:?];
  }

  if (*(a1 + 51) != [*(a1 + 32) measuringPDelay])
  {
    [*(a1 + 32) setMeasuringPDelay:?];
  }

  [*(a1 + 32) setStatistics:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_1000130F0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setStatistics:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_100015440(id a1)
{
  qword_100058858 = objc_alloc_init(TSTimeConverter);

  _objc_release_x1();
}

void sub_100016050(id a1)
{
  v1 = objc_alloc_init(NSISO8601DateFormatter);
  v2 = qword_100058868;
  qword_100058868 = v1;

  v3 = [NSTimeZone timeZoneWithName:@"UTC"];
  [qword_100058868 setTimeZone:v3];

  v4 = qword_100058868;

  [v4 setFormatOptions:3955];
}

void sub_100016E20(id a1)
{
  qword_100058880 = dispatch_queue_create("com.apple.TimeSync.TSDDaemonService.shared", 0);

  _objc_release_x1();
}

void sub_100016E60(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!qword_100058878)
  {
    v3 = [*(a1 + 32) daemonService];
    v4 = qword_100058878;
    qword_100058878 = v3;
  }

  objc_autoreleasePoolPop(v2);
}

_DWORD *sub_100017C24(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 3)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = [objc_opt_class() diagnosticInfoForClockIdentifier:*(a1 + 40)];
  v5 = [NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 length];
    v8 = malloc_type_calloc(1uLL, v7 + 200, 0x1000040BEF03554uLL);
    if (v8)
    {
      v9 = [*(a1 + 32) clockName];
      v10 = [NSString stringWithFormat:@"%@ State:", v9];

      *v8 = 1;
      v8[1] = v7;
      [v10 UTF8String];
      __strlcpy_chk();
      memcpy(v8 + 50, [v6 bytes], v7);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

unint64_t sub_100017D7C(int a1)
{
  if (a1 < 4)
  {
    if (a1 > -7)
    {
      if (a1 < 0)
      {
        return 0x3B9ACA00uLL >> -a1;
      }

      else
      {
        return 1000000000 << a1;
      }
    }

    else
    {
      v1 = 15625000;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10002B9D0();
      }
    }
  }

  else
  {
    v1 = 8000000000;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10002BA4C();
    }
  }

  return v1;
}

void sub_100018AB0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v5 iodPropertyForKey:@"ClockIdentifier"];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_100018F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100018F48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v7 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInterestNotification:a3 withArgument:a4];

  objc_autoreleasePoolPop(v7);
}

void sub_10001A280(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3 != [*(a1 + 32) lockState])
  {
    [*(a1 + 32) setLockState:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001AAE0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3 != [*(a1 + 32) lockState])
  {
    [*(a1 + 32) setLockState:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001B4D8(id a1)
{
  v1 = +[TSDDaemonService sharedDaemonService];
  v2 = qword_100058898;
  qword_100058898 = v1;

  v3 = +[TSDMSGService sharedMSGService];
  v4 = qword_1000588A0;
  qword_1000588A0 = v3;

  qword_100058890 = os_log_create("TimeSync", "iokit_get_property_proxy_server");

  _objc_release_x1();
}

void sub_10001B76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001B790(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained[1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001B84C;
  v4[3] = &unk_10004CFE8;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v6);
}

void sub_10001B84C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [qword_1000588A0 handleProcessDisconnect:{objc_msgSend(*(a1 + 32), "processIdentifier")}];
    v4 = *(a1 + 32);
    v5 = WeakRetained[3];
    v6 = v4;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (*(v11 + 8) == v6)
          {
            v12 = *(v11 + 16);
            *(v11 + 16) = 0;

            v13 = *(v11 + 8);
            *(v11 + 8) = 0;

            [v5 removeObject:v11];
            goto LABEL_12;
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    [qword_100058898 deregisterProcess:objc_msgSend(*(a1 + 32) error:{"processIdentifier"), 0}];
    if (![WeakRetained[3] count])
    {
      v14 = WeakRetained[4];
      WeakRetained[4] = 0;
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001BA08(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = *(a1 + 40);
  v4 = v2;
  v5 = objc_alloc_init(ConnectionData);
  clientConnection = v5->clientConnection;
  v5->clientConnection = v3;
  v7 = v3;

  v8 = +[BarrierBlockTimout create];
  barrierBlockTimout = v5->barrierBlockTimout;
  v5->barrierBlockTimout = v8;

  [v4 addObject:v5];
  v10 = qword_100058898;
  if (qword_100058898)
  {
    v11 = [*(a1 + 40) processIdentifier];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10001BC2C;
    v19[3] = &unk_10004D010;
    objc_copyWeak(&v21, (a1 + 48));
    v20 = *(a1 + 40);
    v12 = [v10 registerProcess:v11 withCallback:v19 error:0];
    if (v12)
    {
      [*(a1 + 40) resume];
      v13 = [*(a1 + 40) remoteObjectProxy];
      v14 = v13;
      if (v12 == 2)
      {
        [v13 daemonClientRefresh];
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v18[0] = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDDaemonServiceServer registerProcess failed\n", v18, 2u);
      }

      [qword_100058898 deregisterProcess:objc_msgSend(*(a1 + 40) error:{"processIdentifier"), 0}];
    }

    objc_destroyWeak(&v21);
  }

  if ([*(*(a1 + 32) + 24) count] == 1)
  {
    v15 = os_transaction_create();
    v16 = *(a1 + 32);
    v17 = *(v16 + 32);
    *(v16 + 32) = v15;
  }
}

void sub_10001BC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained dispatchDaemonServiceCallbackForProcess:objc_msgSend(*(a1 + 32) clientID:"processIdentifier") ioResult:a2 args:a3 numArgs:{a4, a5}];
  }

  objc_autoreleasePoolPop(v10);
}

void sub_10001BD44(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v3)
  {
    v4 = *v21;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        if ([v6[1] processIdentifier] == *(a1 + 48) && *(a1 + 40) && *(a1 + 52) <= 0x10u)
        {
          v7 = [v6[1] remoteObjectProxy];
          v19 = 0;
          memset(v18, 0, sizeof(v18));
          v8 = *(a1 + 52);
          v9 = *(a1 + 40);
          __memmove_chk();
          LODWORD(v19) = *(a1 + 52);
          if ([v6[2] armAndTestIfExpired])
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v10 = *(a1 + 48);
              v11 = *(a1 + 56);
              v12 = *(a1 + 40);
              if (v12)
              {
                if (*(a1 + 52))
                {
                  v12 = *v12;
                }

                else
                {
                  v12 = 0;
                }
              }

              LODWORD(location) = 67109632;
              HIDWORD(location) = v10;
              v25 = 1024;
              v26 = v11;
              v27 = 2048;
              v28 = v12;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "dispatchDaemonServiceCallbackForProcess process %u appears suspended, dropping message to client %u arg0 %llu\n", &location, 0x18u);
            }
          }

          else
          {
            [v7 daemonClientNotification:*(a1 + 56) ioResult:*(a1 + 60) arguments:v18];
            objc_initWeak(&location, v6);
            v13 = v6[1];
            v14[0] = _NSConcreteStackBlock;
            v14[1] = 3221225472;
            v14[2] = sub_10001C01C;
            v14[3] = &unk_10004D060;
            objc_copyWeak(&v16, &location);
            v17 = *(a1 + 48);
            v15 = v7;
            [v13 scheduleSendBarrierBlock:v14];

            objc_destroyWeak(&v16);
            objc_destroyWeak(&location);
          }

          goto LABEL_21;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v20 objects:v29 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
}

void sub_10001BFF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 224));
  _Unwind_Resume(a1);
}

void sub_10001C01C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained[2] disarmAndTestIfWasExpired])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDDaemonServiceServer process %d resumed\n", v5, 8u);
    }

    [*(a1 + 32) daemonClientRefresh];
  }
}

void sub_10001C7FC(uint64_t a1, __int16 a2, uint64_t a3)
{
  v6 = [*(a1 + 32) object];
  v7 = v6[1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C8BC;
  block[3] = &unk_10004D0B0;
  v8 = *(a1 + 40);
  v12 = a2;
  v10 = v8;
  v11 = a3;
  dispatch_sync(v7, block);
}

void sub_10001C8BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 remoteObjectProxy];
    [v4 msgServiceNotification:*(a1 + 48) arguments:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001CF08(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDDaemon clock manager is available\n", buf, 2u);
  }

  v3 = +[TSDClockManager sharedClockManager];
  [v3 addgPTPServicesWithError:0];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDDaemon waiting for gPTP manager to become available\n", buf, 2u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001D044;
  v4[3] = &unk_10004C6A8;
  v4[4] = *(a1 + 32);
  [TSDgPTPManager notifyWhengPTPManagerIsAvailable:v4];
  objc_autoreleasePoolPop(v2);
}

void sub_10001D044(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDDaemon gPTP manager is available\n", v9, 2u);
  }

  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(TSDClockDiagnosticsManager);
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;

  if (!*(*(a1 + 32) + 16))
  {
    v6 = objc_alloc_init(TSDDaemonServiceServer);
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001D734(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002CFD4(v2);
    }

    __cxa_end_catch();
    JUMPOUT(0x10001D710);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001D960(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10001D988(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained runClockSessionThread];
}

void sub_10001E95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint8_t buf)
{
  MSGController::~MSGController(&buf);
  if (a2 == 1)
  {
    v55 = __cxa_begin_catch(a1);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v56 = (*(*v55 + 16))(v55);
      sub_10002DC44(v56, &buf, [v49 syncId]);
    }

    __cxa_end_catch();
    JUMPOUT(0x10001E18CLL);
  }

  _Unwind_Resume(a1);
}

void sub_10001EB84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained runClockSessionThread];
}

uint64_t sub_10001ECC0(uint64_t result, int a2, int a3, float a4)
{
  *result = a4;
  *(result + 4) = a2;
  *(result + 8) = 1024;
  *(result + 10) = a3;
  return result;
}

void sub_10001ECF0()
{
  *v1 = -536870199;
  *v0 = 0;
  v3 = *(v2 - 24);
}

void sub_10001ED08(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xEu);
}

void sub_10001EEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSDMSGExtSyncSession;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10001F2D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v6 = NSStringFromClass(v2);
  v3 = [NSString stringWithFormat:@"com.apple.private.timesync.%@.syncsession", v6];
  v4 = dispatch_queue_create([v3 UTF8String], &_dispatch_queue_attr_concurrent);
  v5 = qword_1000588B8;
  qword_1000588B8 = v4;
}

void sub_10001F398(timespec *__tp, uint64_t a2, uint64_t a3)
{
  if (clock_gettime(_CLOCK_REALTIME, __tp))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002DF2C();
    }
  }

  else
  {
    v6 = __tp->tv_sec + a2;
    v7 = __tp->tv_nsec + a3;
    __tp->tv_sec = v6;
    __tp->tv_nsec = v7;
    if (v7 > 0x3B9AC9FF)
    {
      __tp->tv_sec = v6 + v7 / 0x3B9ACA00;
      __tp->tv_nsec = v7 % 0x3B9ACA00;
    }
  }
}

void sub_10001FA4C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a12)
  {
    sub_100020860(a12);
  }

  MSGController::~MSGController(&a31);
  MSGController::~MSGController(&STACK[0x670]);
  if (SLOBYTE(STACK[0xC47]) < 0)
  {
    operator delete(STACK[0xC30]);
  }

  if (a2 == 1)
  {
    v34 = __cxa_begin_catch(a1);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002DFB4(v34);
    }

    __cxa_end_catch();
    JUMPOUT(0x10001F730);
  }

  _Unwind_Resume(a1);
}

void sub_100020018(uint64_t a1)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 config];
    v3 = DWORD1(v5);
    v2 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
    v9 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  v10[1] = [v2 syncSessionLocked];
  LODWORD(v18) = 2;
  v4 = [*(a1 + 32) callback];
  (v4)[2](v4, *(a1 + 32), 1, v10);
}

void sub_1000200E0(uint64_t a1)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 config];
    v3 = DWORD1(v5);
    v2 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
    v9 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  v10[1] = [v2 triggerPresent];
  LODWORD(v18) = 2;
  v4 = [*(a1 + 32) callback];
  (v4)[2](v4, *(a1 + 32), 3, v10);
}

void sub_1000201A8(uint64_t a1)
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 config];
    v3 = v6;
    v2 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  v7[0] = v3;
  v7[1] = v4;
  LODWORD(v15) = 2;
  v5 = [v2 callback];
  (v5)[2](v5, *(a1 + 32), 0, v7);
}

void sub_100020258(uint64_t a1)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 config];
    v3 = DWORD1(v5);
    v2 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
    v9 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  v10[1] = [v2 exitStatus];
  LODWORD(v18) = 2;
  v4 = [*(a1 + 32) callback];
  (v4)[2](v4, *(a1 + 32), 2, v10);
}

void *sub_1000204C8(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100020500(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    sub_100020860(v4);
  }
}

std::string *sub_100020594(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_100020650(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_100020594(a1, __s, v4);
}

void sub_1000206B0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10002070C(exception, a1);
}

std::logic_error *sub_10002070C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void *sub_100020740(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100020698();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_100020804(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10004D180;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100020860(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_1000208CC(atomic_ullong *a1, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v8 = a1;
    return sub_10002093C(&v8, &v7, v2);
  }

  else
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = *a1;
      do
      {
        atomic_compare_exchange_strong_explicit(a1, &v6, v5 - 1, memory_order_acquire, memory_order_acquire);
        v3 = v6 == v5;
        if (v6 == v5)
        {
          break;
        }

        v5 = v6;
      }

      while (v6);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_10002093C(atomic_ullong **a1, uint64_t a2, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep a3)
{
  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v7 = 0;
  while (1)
  {
    v8 = *a1;
    v9 = **a1;
    if (v9)
    {
      break;
    }

LABEL_6:
    if (v7 <= 0x3F)
    {
      ++v7;
    }

    else
    {
      v11.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ - v6.__d_.__rep_;
      if (a3 && v11.__d_.__rep_ > a3 || sub_1000209E8(a2, v11.__d_.__rep_))
      {
        return 0;
      }
    }
  }

  v10 = **a1;
  while (1)
  {
    atomic_compare_exchange_strong_explicit(v8, &v10, v9 - 1, memory_order_acquire, memory_order_acquire);
    if (v10 == v9)
    {
      return 1;
    }

    v9 = v10;
    if (!v10)
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_1000209E8(uint64_t a1, uint64_t a2)
{
  if (a2 < 128000001)
  {
    if (a2 < 64001)
    {
      if (a2 >= 4001)
      {
        sched_yield();
      }
    }

    else
    {
      *&v3 = 0;
      *(&v3 + 1) = a2 >> 1;
        ;
      }
    }
  }

  else
  {
    v3 = xmmword_10003A310;
      ;
    }
  }

  return 0;
}

void sub_100021094(id a1)
{
  v1 = dispatch_queue_create("com.apple.TimeSync.TSDgPTPManager.shared", 0);
  v2 = qword_1000588D8;
  qword_1000588D8 = v1;

  v3 = +[TSDClockManager sharedClockManager];
  [v3 addgPTPServicesWithError:0];
}

uint64_t sub_1000214C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000214E0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = -[TSDKernelClock initWithClockIdentifier:]([TSDgPTPClock alloc], "initWithClockIdentifier:", [*(a1 + 32) systemDomainClockIdentifier]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

void sub_1000220E4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([v5 conformsToIOClassName:@"IOTimeSyncDomain"])
  {
    v4 = [TSDgPTPClock diagnosticInfoForService:v5];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_10002261C(id a1)
{
  qword_1000588F8 = dispatch_queue_create("com.apple.TimeSync.TSDClockManager.shared", 0);

  _objc_release_x1();
}

void sub_100022884(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_100022A50(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100023E0C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000241BC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v5 iodPropertyForKey:@"ClockIdentifier"];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_100025B2C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3 != [*(a1 + 32) grandmasterIdentity])
  {
    [*(a1 + 32) setGrandmasterIdentity:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100025B88(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) gptpPath];
  LOBYTE(v3) = [v3 isEqual:v4];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 40) setGptpPath:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100025E78(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 48);
  if (v3 != [*(a1 + 32) grandmasterIdentity])
  {
    [*(a1 + 32) setGrandmasterIdentity:*(a1 + 48)];
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) gptpPath];
  LOBYTE(v4) = [v4 isEqual:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) setGptpPath:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100027650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100027668(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100027680(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([v9 conformsToIOClassName:@"IOTimeSyncPort"])
  {
    v4 = [v9 iodPropertyForKey:@"PortNumber"];
    v5 = v4;
    if (v4 && [v4 unsignedShortValue] == *(a1 + 40))
    {
      v6 = [TSDgPTPPort gPTPPortWithService:v9];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_100027958(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([v8 conformsToIOClassName:@"IOTimeSyncEthernetPort"])
  {
    v4 = v8;
    v5 = off_10004C4B8;
  }

  else if ([v8 conformsToIOClassName:@"IOTimeSyncUnicastLinkLayerPtPPort"])
  {
    v4 = v8;
    v5 = off_10004C4E0;
  }

  else if ([v8 conformsToIOClassName:@"IOTimeSyncUnicastLinkLayerEtEPort"])
  {
    v4 = v8;
    v5 = off_10004C4D8;
  }

  else if ([v8 conformsToIOClassName:@"IOTimeSyncUnicastUDPv4PtPPort"])
  {
    v4 = v8;
    v5 = off_10004C4F0;
  }

  else if ([v8 conformsToIOClassName:@"IOTimeSyncUnicastUDPv6PtPPort"])
  {
    v4 = v8;
    v5 = &off_10004C500;
  }

  else if ([v8 conformsToIOClassName:@"IOTimeSyncUnicastUDPv4EtEPort"])
  {
    v4 = v8;
    v5 = off_10004C4E8;
  }

  else if ([v8 conformsToIOClassName:@"IOTimeSyncUnicastUDPv6EtEPort"])
  {
    v4 = v8;
    v5 = off_10004C4F8;
  }

  else if ([v8 conformsToIOClassName:@"IOTimeSyncLocalClockPort"])
  {
    v4 = v8;
    v5 = off_10004C4C0;
  }

  else
  {
    if (![v8 conformsToIOClassName:@"IOTimeSyncPort"])
    {
      goto LABEL_20;
    }

    v4 = v8;
    v5 = off_10004C4D0;
  }

  v6 = *(a1 + 32);
  v7 = [(__objc2_class *)*v5 diagnosticInfoForService:v4];
  [v6 addObject:v7];

LABEL_20:
  objc_autoreleasePoolPop(v3);
}

__n128 sub_1000283A4@<Q0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = HIDWORD(v4);
  v9 = v4;
  v10 = HIDWORD(v6);
  v11 = v6 * HIDWORD(v4);
  v12 = HIDWORD(v6) * v4;
  v13 = __CFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    v15 = &_mh_execute_header;
  }

  else
  {
    v15 = 0;
  }

  v16 = __PAIR128__(v15, v6 * v4) + __PAIR128__(HIDWORD(v14) + HIDWORD(v6) * HIDWORD(v4), v14 << 32);
  v17 = HIDWORD(v5);
  v18 = v5;
  v19 = HIDWORD(v7);
  v20 = *a2;
  v21 = v7 * HIDWORD(v5);
  v22 = HIDWORD(v7) * v5;
  v13 = __CFADD__(v21, v22);
  v23 = v21 + v22;
  if (v13)
  {
    v24 = &_mh_execute_header;
  }

  else
  {
    v24 = 0;
  }

  v25 = __PAIR128__(v24, v7 * v5) + __PAIR128__(HIDWORD(v23) + HIDWORD(v7) * HIDWORD(v5), v23 << 32);
  v26 = v7 * v4;
  v27 = v7 * v8;
  v28 = v19 * v9;
  v13 = __CFADD__(v27, v28);
  v29 = v27 + v28;
  if (v13)
  {
    v30 = &_mh_execute_header;
  }

  else
  {
    v30 = 0;
  }

  v31 = __PAIR128__(v30, v26) + __PAIR128__(HIDWORD(v29) + v19 * v8, v29 << 32);
  v32 = v6 * v5;
  v33 = a2[1] * v17;
  v34 = v10 * v18;
  v13 = __CFADD__(v33, v34);
  v35 = v33 + v34;
  if (v13)
  {
    v36 = &_mh_execute_header;
  }

  else
  {
    v36 = 0;
  }

  v45 = v31;
  v46 = 0uLL;
  v43 = __PAIR128__(v36, v32) + __PAIR128__(HIDWORD(v35) + v10 * v17, v35 << 32);
  v44 = 0uLL;
  sub_100028510(&v45, &v43, v47);
  v46 = v16;
  v45 = 0uLL;
  sub_1000052E4(v47, 64, &v41);
  v43 = v41;
  v44 = v42;
  v42 = 0uLL;
  v41 = v25;
  sub_100028510(&v45, &v43, &v39);
  v37 = v40;
  *a3 = v39;
  a3[1] = v37;
  sub_100028510(a3, &v41, &v39);
  result = v40;
  *a3 = v39;
  a3[1] = result;
  return result;
}

uint64_t sub_100028510@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16) + *(result + 16);
  v5 = *result;
  v4 = *(result + 8);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *a2 + *result;
  *a3 = v8;
  *(a3 + 16) = v3;
  if (v6 > *(&v8 + 1) || (v7 > v8 ? (v9 = v6 == *(&v8 + 1)) : (v9 = 0), !v9 ? (v10 = 0) : (v10 = 1), v4 == *(&v8 + 1) ? (v11 = v8 >= v5) : (v11 = 1), v11 ? (v12 = v4 > *(&v8 + 1)) : (v12 = 1), !v12 ? (v13 = v10 == 0) : (v13 = 0), !v13))
  {
    *(a3 + 16) = v3 + 1;
    if (v3 == -1)
    {
      *(a3 + 24) = *(&v3 + 1) + 1;
    }
  }

  return result;
}

double sub_100028578@<D0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4[0] = a2;
  v4[1] = 0;
  *&result = sub_1000283A4(a1, v4, a3).n128_u64[0];
  return result;
}

double sub_1000285A0@<D0>(unint64_t a1@<X0>, unint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v4[0] = a1;
  v4[1] = 0;
  *&result = sub_1000283A4(v4, a2, a3).n128_u64[0];
  return result;
}

void sub_10002860C(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(TSDClockSyncManager);
  v3 = qword_100058910;
  qword_100058910 = v2;

  objc_autoreleasePoolPop(v1);
}

void sub_100028978(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_100028A3C(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_100028B00(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_100028BC4(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_100028C88(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_100028D4C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_100028DFC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_100028EAC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_100028F5C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002900C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_1000290BC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002916C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002921C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_1000292CC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002937C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002942C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_1000294DC(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_1000295EC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002969C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002974C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_1000297FC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_1000298AC(id *a1, id *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v4, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v5, v6, v7, v8, 2u);
  }

  objc_destroyWeak(a1);
  objc_destroyWeak(a2);
}

void sub_100029980()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_100029A30()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_100029AE0()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_100029B90()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_100029C40(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_100029D00(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_100029DC0(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_100029E80()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_100029F30()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_100029FE0(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v7 releaseRefcon:*a1];
}

void sub_10002A158(uint64_t a1)
{
  (*(*a1 + 16))(a1);
  sub_10000CA68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002A280(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to deregister stale clock session for pid: %i\n", buf, 8u);
}

void sub_10002A310()
{
  sub_10000CA74();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10002A388()
{
  sub_10000CA74();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10002A400()
{
  sub_10000CA74();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10002A478()
{
  sub_10000CA74();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10002A4F0()
{
  sub_10000CA74();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10002A60C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002A6BC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002A76C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002A81C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002A8CC(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_10002A98C(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_10002AA4C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002AAFC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002ABAC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002AC5C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002AD0C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002ADBC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002AEBC(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_10002AF7C(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_10002B03C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002B0EC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002B19C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_100017AB0();
}

void sub_10002B258()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002B308(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_10002B3C8()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_100017AB0();
}

void sub_10002B484()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_100017AB0();
}

void sub_10002B540()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_100017AB0();
}

void sub_10002B5FC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002B6AC(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v7 releaseRefcon:*a1];
}

void sub_10002B788()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002B838(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 136316418;
    sub_100006A30();
    v3 = "";
    sub_100006A54();
    v4 = 110;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v2, 0x3Au);
  }
}

void sub_10002B904(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 136316418;
    sub_100006A30();
    v3 = "";
    sub_100006A54();
    v4 = 103;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v2, 0x3Au);
  }
}

void sub_10002BAC8(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_10002BB8C(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_10002BC50(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_10002BD14(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_10002BDD8(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_10002BE9C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002BF4C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002BFFC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_10001B378();
}

void sub_10002C0B8()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_10001B378();
}

void sub_10002C174()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002C224()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002C2D4(_DWORD *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_10002C394(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  *a1 = 0x3FF0000000000000;
}

void sub_10002C458()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002C508()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002C5B8()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002C668()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_10001B378();
}

void sub_10002C724()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_10001B378();
}

void sub_10002C7E0()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002C890()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002C940()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002C9F0()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002CAA0()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002CB50(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v7 releaseRefcon:*a1];
}

void sub_10002CC54(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 136316418;
    sub_100006A30();
    v3 = "";
    sub_100006A54();
    v4 = 391;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v2, 0x3Au);
  }

  *a1 = 0;
}

void sub_10002CD20(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 136316418;
    sub_100006A30();
    v3 = "";
    sub_100006A54();
    v4 = 406;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v2, 0x3Au);
  }

  *a1 = 0;
}

void sub_10002CDEC(char a1, void *a2)
{
  if (a1)
  {
    v3 = 136316418;
    v4 = "serviceIsAvailable";
    v5 = 2048;
    v6 = 0;
    v7 = 2048;
    v8 = 0;
    v9 = 2080;
    v10 = "";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/TimeSync_exec/clocksyncd/TSDDaemon.m";
    v13 = 1024;
    v14 = 47;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", &v3, 0x3Au);
  }
}

void sub_10002CF18()
{
  sub_10000CA74();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10002CFD4(uint64_t a1)
{
  (*(*a1 + 16))(a1);
  sub_10000CA68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002D074()
{
  sub_10000CA74();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10002D130()
{
  sub_10000CA74();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10002D230()
{
  sub_10000CA74();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10002D2A8(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v7, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v8, v9, v10, v11, 2u);
  }

  *a4 = a2;
  *a3 = 0;
}

void sub_10002D39C(int a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5, void *a6)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v12, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v13, v14, v15, v16, 2u);
  }

  *a6 = a3;
  *a5 = a2;
  *a4 = a1;
}

void sub_10002D488()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_10001ECF0();
}

BOOL sub_10002D548(char a1, uint64_t a2)
{
  if (a1)
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v3, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v4, v5, v6, v7, 2u);
  }

  return a2 == 0;
}

void sub_10002D5FC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_10001ECF0();
}

void sub_10002D6BC()
{
  sub_10000CA74();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10002D734()
{
  sub_10000CA74();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10002D7EC()
{
  sub_10000CA74();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10002D8A4()
{
  sub_10000CA74();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10002D95C(uint8_t *buf, uint64_t a2, uint64_t a3, int a4)
{
  *buf = 134218496;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  *(buf + 11) = 1024;
  *(buf + 6) = a4;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unexpected frame detected after sleep. detected: %llu, desired: %llu, syncId: %u\n", buf, 0x1Cu);
}

void sub_10002D9C0(uint64_t *a1)
{
  v6 = *a1;
  sub_10000CA68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002DA40(uint8_t *buf, int a2)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to add MSG clock cross-timestamp for syncId: %u\n", buf, 8u);
}

void sub_10002DB08()
{
  sub_10001ECD8();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10002DC44(uint64_t a1, uint8_t *buf, int a3)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Exception thrown while running MSG clock thread: %s, syncId: %u", buf, 0x12u);
}

void sub_10002DC9C(void *a1, int a2, uint8_t *buf)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to get persistent clock id from user id: %@, error: 0x%x\n", buf, 0x12u);
}

void sub_10002DD04()
{
  sub_10001ECD8();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002DD7C()
{
  sub_10001ECD8();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002DDF4()
{
  sub_10000CA74();
  sub_10000CA68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10002DFB4(uint64_t a1)
{
  (*(*a1 + 16))(a1);
  sub_10000CA68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002E16C(void *a1)
{
  [a1 syncSessionThreadState];
  sub_10000CA68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_10002E208()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002E2B8()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002E368()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002E418()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002E4DC(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_10002E59C(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_10002E65C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002E70C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002E7BC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002E86C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002E91C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002E9CC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002EA7C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002EB2C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002EBDC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002EC8C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002ED3C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002EDEC(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_10002EEAC(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_10002EF6C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002F01C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002F0CC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002F17C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002F240(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_10002F304(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_10002F3C8()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002F478()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002F528()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002F5D8()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002F688()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002F738()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002F7E8()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002F898()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002F948()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002F9F8()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002FAA8()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_1000240B8();
}

void sub_10002FB64()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002FC14()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002FCC4()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002FD74()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002FE24()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002FED4()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10002FF84()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_1000240B8();
}

void sub_100030040()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_1000240B8();
}

void sub_1000300FC(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v3, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v4, v5, v6, v7, 2u);
  }

  *a2 = 0;
  sub_1000240B8();
}

void sub_1000301C0()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_1000240B8();
}

void sub_10003027C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10003032C(_BYTE *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_1000303EC(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_1000304AC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_10003055C(uint64_t a1, void *a2, void *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v6, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v7, v8, v9, v10, 2u);
  }

  *a3 = a1;
  *a2 = a1;
}

void sub_100030630()
{
  sub_100028380();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_10002838C();
}

void sub_1000306EC()
{
  sub_100028380();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_10002838C();
}

void sub_1000307A8()
{
  sub_100028380();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_10002838C();
}

void sub_100030864()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_100030914()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_1000309C4(_BYTE *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100030A84(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100030B44()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_100030BF4(uint64_t a1, void *a2, void *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v6, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v7, v8, v9, v10, 2u);
  }

  *a3 = a1;
  *a2 = a1;
}

void sub_100030CC8()
{
  sub_100028380();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_10002838C();
}

void sub_100030D84()
{
  sub_100028380();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_10002838C();
}

void sub_100030E40()
{
  sub_100028380();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  sub_10002838C();
}

void sub_100030EFC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

BOOL sub_100030FAC(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  return a1 == 0;
}

void sub_100031070()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

BOOL sub_100031120(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  return a1 == 0;
}

void sub_1000311E4()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

BOOL sub_100031294(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  return a1 == 0;
}

void sub_100031358()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

BOOL sub_100031408(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  return a1 == 0;
}

void sub_1000314CC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

BOOL sub_10003157C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  return a1 == 0;
}

void sub_100031640()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

BOOL sub_1000316F0(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  return a1 == 0;
}

void sub_1000317B4()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

BOOL sub_100031864(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  return a1 == 0;
}

void sub_100031928()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_1000319D8()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_100031A88()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void sub_100031B38()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006A30();
    sub_100006A54();
    sub_100006A68(&_mh_execute_header, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}