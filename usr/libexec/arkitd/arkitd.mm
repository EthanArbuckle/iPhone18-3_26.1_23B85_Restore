uint64_t start()
{
  v0 = objc_opt_new();
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_100000F40;
  v33[4] = sub_100000F50;
  v34 = 0;
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [NSString stringWithFormat:@"%@:init", v4];

  v6 = v5;
  [v5 UTF8String];
  v7 = os_transaction_create();
  v8 = sub_100000F58();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Spawned", buf, 2u);
  }

  if ([v0 supportsWatchdog])
  {
    v9 = objc_opt_new();
  }

  else
  {
    v9 = 0;
  }

  v10 = &_dispatch_main_q;
  [v9 addQueue:&_dispatch_main_q hangPolicy:1];

  v11 = ARCreateFixedPriorityDispatchQueue();
  [v9 addQueue:v11 hangPolicy:0];
  *buf = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100000F9C;
  v28 = &unk_100004260;
  v12 = v9;
  v29 = v12;
  v13 = v0;
  v30 = v13;
  v32 = v33;
  v14 = v2;
  v31 = v14;
  dispatch_async_and_wait(v11, buf);
  v15 = sub_100000F58();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    description = os_transaction_get_description();
    *v35 = 136446210;
    v36 = description;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Releasing %{public}s transaction", v35, 0xCu);
  }

  objc_autoreleasePoolPop(v1);
  v17 = +[NSRunLoop mainRunLoop];
  [v17 run];

  if (qword_100008238 != -1)
  {
    sub_1000018F8();
  }

  v18 = byte_100008230;
  v19 = sub_100000F58();
  v20 = v19;
  if (v18 == 1)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v35 = 0;
      v21 = "Exiting unexpectedly";
      v22 = v20;
      v23 = OS_LOG_TYPE_ERROR;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v22, v23, v21, v35, 2u);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *v35 = 0;
    v21 = "Error: Exiting unexpectedly";
    v22 = v20;
    v23 = OS_LOG_TYPE_INFO;
    goto LABEL_15;
  }

  _Block_object_dispose(v33, 8);
  return 1;
}

void sub_100000F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100000F40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100000F58()
{
  if (qword_1000081F8 != -1)
  {
    sub_100001920();
  }

  v1 = qword_1000081F0;

  return v1;
}

void sub_100000F9C(uint64_t a1)
{
  [*(a1 + 32) updateStatus:1];
  v2 = *(a1 + 40);
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];

  [v4 UTF8String];
  if (_set_user_dir_suffix())
  {
    v5 = NSTemporaryDirectory();
    v6 = sub_100000F58();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138477827;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sandbox temporary directory: %{private}@", &buf, 0xCu);
    }

    goto LABEL_17;
  }

  if (qword_100008238 != -1)
  {
    sub_100001934();
  }

  v7 = byte_100008230;
  v8 = sub_1000016C8();
  v9 = v8;
  if (v7 == 1)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    LOWORD(buf) = 0;
    v10 = "Failed to setup sandbox temporary directory!";
    v11 = v9;
    v12 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    LOWORD(buf) = 0;
    v10 = "Error: Failed to setup sandbox temporary directory!";
    v11 = v9;
    v12 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&_mh_execute_header, v11, v12, v10, &buf, 2u);
LABEL_13:

  if (qword_100008218 != -1)
  {
    sub_100001948();
  }

  if ((byte_100008210 & 1) == 0)
  {
    v13 = [NSString stringWithFormat:@"Failed to setup sandbox temporary directory!"];
    v5 = [NSString stringWithFormat:@"ARCrashCustomerVisible: %@", v13];

    v14 = v5;
    qword_1000080B0 = strdup([v5 UTF8String]);
    ARAbortWithError();
LABEL_17:
  }

  if (![v2 hasLibraryDirectoryReadWriteAccess])
  {
    goto LABEL_37;
  }

  v15 = ARLibraryDirectory();
  v16 = +[NSFileManager defaultManager];
  location = 0;
  v17 = [v16 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&location];
  v18 = location;

  if (v17)
  {
    v19 = sub_100000F58();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138477827;
      *(&buf + 4) = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sandbox library directory: %{private}@", &buf, 0xCu);
    }

    goto LABEL_35;
  }

  if (qword_100008238 != -1)
  {
    sub_1000018F8();
  }

  v20 = byte_100008230;
  v21 = sub_1000016C8();
  v22 = v21;
  if (v20 == 1)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v18;
      v23 = "Failed to setup sandbox library directory with error: %@";
      v24 = v22;
      v25 = OS_LOG_TYPE_ERROR;
LABEL_29:
      _os_log_impl(&_mh_execute_header, v24, v25, v23, &buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v18;
    v23 = "Error: Failed to setup sandbox library directory with error: %@";
    v24 = v22;
    v25 = OS_LOG_TYPE_INFO;
    goto LABEL_29;
  }

  if (qword_100008218 != -1)
  {
    sub_100001948();
  }

  if (byte_100008210)
  {
    goto LABEL_36;
  }

  v26 = [NSString stringWithFormat:@"Failed to setup sandbox library directory with error: %@", v18];
  v19 = [NSString stringWithFormat:@"ARCrash: %@", v26];

  v27 = v19;
  qword_1000080B0 = strdup([v19 UTF8String]);
  if (!ARInternalOSBuild())
  {
    abort();
  }

  ARAbortWithError();
LABEL_35:

LABEL_36:
LABEL_37:

  v28 = [[ARDaemon alloc] initWithConfiguration:*(a1 + 40) spawnTime:*(a1 + 48) watchdogMonitor:*(a1 + 32)];
  v29 = *(*(a1 + 56) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;

  objc_initWeak(&location, *(*(*(a1 + 56) + 8) + 40));
  v31 = &_dispatch_main_q;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100001560;
  v33[3] = &unk_100004238;
  objc_copyWeak(&v34, &location);
  v32 = v33;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v37 = sub_100001784;
  v38 = &unk_100004330;
  v39 = &off_100004498;
  v40 = &_dispatch_main_q;
  v41 = v32;
  if (qword_100008228 != -1)
  {
    dispatch_once(&qword_100008228, &buf);
  }

  [*(*(*(a1 + 56) + 8) + 40) startup];
  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

void sub_10000153C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001560(uint64_t a1, int a2)
{
  v4 = sub_100000F58();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSString stringWithUTF8String:sys_signame[a2]];
    v6 = [v5 uppercaseString];

    v8 = 138543618;
    v9 = v6;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Signal received: %{public}@ (%i)", &v8, 0x12u);
  }

  if (a2 != 29)
  {
    if (a2 != 15)
    {
      return;
    }

    quick_exit();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained printInfo];
}

void sub_100001684(id a1)
{
  qword_1000081F0 = os_log_create("com.apple.ARKit", "Daemon");

  _objc_release_x1();
}

id sub_1000016C8()
{
  if (qword_100008208 != -1)
  {
    sub_100001970();
  }

  v1 = qword_100008200;

  return v1;
}

void sub_10000170C(id a1)
{
  qword_100008200 = os_log_create("com.apple.ARKit", "General");

  _objc_release_x1();
}

void sub_100001784(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = qword_100008220;
  qword_100008220 = v2;

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001840;
  v5[3] = &unk_100004308;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v4 enumerateObjectsUsingBlock:v5];
}

void sub_100001840(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 intValue];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  object = ARCreateDispatchSourceForSignalWithHandler();
  [qword_100008220 setObject:object forKeyedSubscript:v3];

  dispatch_resume(object);
  signal(v4, 1);
}