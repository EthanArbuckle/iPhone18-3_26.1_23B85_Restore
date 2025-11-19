uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MGCopyAnswer();
  v2 = MGCopyAnswer();
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v20 = getpid();
    v21 = 2114;
    v22 = v2;
    v23 = 2114;
    v24 = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ATC starting up. PID:%d, deviceModel=%{public}@, buildVersion=%{public}@", buf, 0x1Cu);
  }

  NSSetUncaughtExceptionHandler(sub_100000FB8);
  v4 = +[ATDeviceService sharedInstance];
  v5 = [[MSVXPCTransaction alloc] initWithName:@"com.apple.atc.startup"];
  [v5 beginTransaction];
  [ATSession setSessionHost:1];
  v6 = dispatch_get_global_queue(0, 0);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100000EB0;
  v16 = &unk_100004108;
  v7 = v4;
  v17 = v7;
  v18 = v5;
  v8 = v5;
  dispatch_async(v6, &v13);

  objc_autoreleasePoolPop(v0);
  v9 = [NSRunLoop mainRunLoop:v13];
  [v9 run];

  v10 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = getpid();
    *buf = 67109120;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ATC shutting down, PID:%d", buf, 8u);
  }

  [v7 stop];
  return 0;
}

void sub_100000EB0(uint64_t a1)
{
  v2 = +[NSDate date];
  ATWaitForSpringBoard();
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:v2];
  v5 = v4;

  v6 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "---Waited for SB: %.1fs---", &v7, 0xCu);
  }

  [*(a1 + 32) run];
  [*(a1 + 40) endTransaction];
}

void sub_100000FB8(void *a1)
{
  v1 = a1;
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = [v1 callStackSymbols];
    v4 = 138543618;
    v5 = v1;
    v6 = 2114;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Uncaught exception in ATC, crashing: %{public}@, %{public}@", &v4, 0x16u);
  }
}