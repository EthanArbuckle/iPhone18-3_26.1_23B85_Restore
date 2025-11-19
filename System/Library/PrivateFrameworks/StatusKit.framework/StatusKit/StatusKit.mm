id _StatusKitAgentMainLog()
{
  if (_StatusKitAgentMainLog_onceToken != -1)
  {
    _StatusKitAgentMainLog_cold_1();
  }

  v1 = _StatusKitAgentMainLog__logger;

  return v1;
}

void _HandleSignal(int a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___HandleSignal_block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v2 = a1;
  dispatch_async(&_dispatch_main_q, block);
}

int main(int argc, const char **argv, const char **envp)
{
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v14 = _StatusKitAgentMainLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      main_cold_1(v14);
    }

    exit(1);
  }

  _InitSandbox();
  v3 = objc_autoreleasePoolPush();
  v4 = NSTemporaryDirectory();
  if (_SetupSignalHandler_onceToken != -1)
  {
    main_cold_2();
  }

  v5 = _StatusKitAgentMainLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "StatusKitAgent launched", v15, 2u);
  }

  NSLog(@"Hello, World!");
  v6 = objc_autoreleasePoolPush();
  v7 = +[SKAStatusServer sharedInstance];
  if (_os_feature_enabled_impl())
  {
    v8 = [[SKALocalStatusServerObjC alloc] initWithIDSDeviceProvider:v7];
    v9 = gLocalStatusServer;
    gLocalStatusServer = v8;
  }

  else
  {
    NSLog(@"LocalStatusKit not enabled");
  }

  objc_autoreleasePoolPop(v6);
  objc_autoreleasePoolPop(v3);
  if (v7 | gLocalStatusServer)
  {
    v10 = +[NSRunLoop currentRunLoop];
    [v10 run];
  }

  v11 = objc_opt_self();
  v12 = gLocalStatusServer;
  gLocalStatusServer = 0;

  return 0;
}

void main_cold_1(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "Failed to set user dir suffix: %{darwin.errno}d", v3, 8u);
}

void main_cold_3(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = _StatusKitAgentMainLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "StatusKitAgent exception caught on main thread: %@", &v3, 0xCu);
  }

  objc_end_catch();
}