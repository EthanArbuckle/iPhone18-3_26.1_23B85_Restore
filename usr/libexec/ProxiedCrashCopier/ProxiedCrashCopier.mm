uint64_t start()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Starting companionLogRelay", v7, 2u);
  }

  v0 = objc_autoreleasePoolPush();
  v1 = [PCCProxyingDevice alloc];
  v2 = objc_alloc_init(PCCIDSEndpoint);
  v3 = [v1 initWithEndpoint:v2];

  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.OSASyncProxy.client"];
  [v4 setDelegate:v3];
  [v4 resume];

  objc_autoreleasePoolPop(v0);
  if (v3)
  {
    v5 = +[NSRunLoop currentRunLoop];
    [v5 run];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100000A00();
  }

  return 1;
}