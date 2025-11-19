uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100004070);
  v1 = +[RMSIDSServer server];
  v2 = +[NSRunLoop currentRunLoop];
  [v2 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}