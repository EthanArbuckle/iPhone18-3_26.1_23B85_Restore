uint64_t start()
{
  signal(15, 1);
  v0 = dispatch_get_global_queue(2, 0);
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v0);

  dispatch_source_set_event_handler(v1, &stru_100004120);
  dispatch_resume(v1);
  SULogInfo();
  v2 = objc_autoreleasePoolPush();
  [SUUtility setIsDaemon:1];
  v3 = +[SUManagerServer sharedInstance];
  objc_autoreleasePoolPop(v2);
  v4 = +[SUCoreDevice sharedDevice];
  v5 = [v4 isBootedOSSecureInternal];

  if (v5)
  {
    SULogInfo();
    v6 = +[SUCoreSimulate sharedSimulator];
    [v6 clearAllEventAlterations];

    v7 = +[SUCoreSimulate sharedSimulator];
    [v7 adoptAllEventAlterations:@"/var/MobileSoftwareUpdate/Controller/SoftwareUpdateCore/SUServices.simulations"];

    v8 = +[SUCoreSimulate sharedSimulator];
    [v8 dumpAllEventAlterations];
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100004160);
  v9 = +[SUCoreConfigServer sharedServerSettings];
  [v3 runUntilIdleExit];
  SULogInfo();

  return 0;
}

void sub_100000E58(id a1, OS_xpc_object *a2)
{
  v2 = [NSString stringWithUTF8String:xpc_dictionary_get_string(a2, _xpc_event_key_name)];
  SULogInfo();
  v3 = +[SUUtility mainWorkQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000F3C;
  block[3] = &unk_100004188;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void sub_100000F3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  SULogInfo();
  v3 = +[SUScheduler sharedInstance];
  [v3 handleXPCEvent:*(a1 + 32)];
}