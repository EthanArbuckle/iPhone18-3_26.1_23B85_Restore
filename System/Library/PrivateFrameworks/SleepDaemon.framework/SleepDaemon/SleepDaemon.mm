uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v1 = HKSPLogForCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to set user directory suffix", &v11, 2u);
    }
  }

  v2 = NSTemporaryDirectory();
  if (+[_HKBehavior processHasLoadedUIKit])
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v11) = 0;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "**** SLEEPD HAS UIKIT AS A DEPENDENCY ****", &v11, 2u);
    }
  }

  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sleepd initializing...", &v11, 2u);
  }

  v5 = objc_alloc_init(HDSPSleepDaemon);
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sleepd starting...", &v11, 2u);
  }

  [v5 start];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = +[_HKBehavior currentOSBuild];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = &stru_1000040B0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "sleepd started on %{public}@ %{public}@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v0);
  v9 = +[NSRunLoop mainRunLoop];
  [v9 run];

  return 0;
}