void sub_100000990(int a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = nullsub_1;
  block[3] = &unk_100004100;
  v2 = a1;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100000A08(id a1)
{
  v1 = dispatch_get_global_queue(0, 0);
  v2 = 0;
  v3 = &unk_100008028;
  do
  {
    v4 = dword_100001028[v2];
    v5 = dispatch_source_create(&_dispatch_source_type_signal, v4, 0, v1);
    v6 = qword_100008068;
    qword_100008068 = v5;

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100000B34;
    handler[3] = &unk_100004100;
    v8 = v4;
    dispatch_source_set_event_handler(qword_100008068, handler);
    objc_storeStrong(v3, qword_100008068);
    dispatch_resume(qword_100008068);
    signal(v4, 1);
    ++v2;
    ++v3;
  }

  while (v2 != 7);
}

uint64_t start()
{
  if (qword_100008060 != -1)
  {
    sub_100000D9C();
  }

  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);
  v3 = dispatch_queue_create("SLDCloudKitSync exterior", v2);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000C70;
  block[3] = &unk_100004190;
  v9 = v3;
  v4 = v3;
  dispatch_async(v4, block);
  v5 = objc_alloc_init(SocialLayerDaemon);
  [v5 setupListeners];

  objc_autoreleasePoolPop(v0);
  v6 = +[NSRunLoop currentRunLoop];
  [v6 run];

  return 0;
}

void sub_100000C70(uint64_t a1)
{
  v2 = +[SLDCloudKitSyncWriter sharedInstance];
  v3 = *(a1 + 32);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100000D1C;
  handler[3] = &unk_100004168;
  v6 = v2;
  v4 = v2;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v3, handler);
}

uint64_t sub_100000D1C(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (!strcmp(string, "com.apple.spotlight.SyndicatedContentDeleted") || (result = strcmp(string, "com.apple.spotlight.SyndicatedContentRefreshed"), !result))
  {
    v5 = *(a1 + 32);

    return [v5 invalidateHighlights];
  }

  return result;
}