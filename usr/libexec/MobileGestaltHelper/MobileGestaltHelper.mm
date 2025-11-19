void sub_100000C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"libMobileGestalt %s:%d: %@", a1, a2, a3, 0);
  v10 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, v9, &a9);
  Length = CFStringGetLength(v10);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v13 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (v13)
  {
    if (CFStringGetCString(v10, v13, MaximumSizeForEncoding + 1, 0x8000100u) == 1 && off_100008598 != 0)
    {
      off_100008598(v13);
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  free(v13);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  _MGSetServer();
  +[NSXPCListener enableTransactions];
  v1 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mobilegestalt.xpc"];
  v2 = objc_alloc_init(MobileGestaltHelperListener);
  v3 = os_transaction_create();
  v4 = qword_1000085A0;
  qword_1000085A0 = v3;

  v5 = dispatch_time(0, 5000000000);
  v6 = dispatch_get_global_queue(0, 0);
  dispatch_after(v5, v6, &stru_100004298);

  [v1 setDelegate:v2];
  [v1 resume];
  v7 = os_transaction_create();
  v8 = dispatch_time(0, 1000000000);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100001FDC;
  v12[3] = &unk_1000042C0;
  v9 = v2;
  v13 = v9;
  v14 = v7;
  v10 = v7;
  dispatch_after(v8, v6, v12);

  objc_autoreleasePoolPop(v0);
  CFRunLoopRun();

  return 0;
}

void sub_100001FB0(id a1)
{
  if (qword_1000085A8 != -1)
  {
    sub_1000020C4();
  }
}

id sub_100001FDC(uint64_t a1)
{
  v2 = _MGCacheValid();
  result = [*(a1 + 32) needsNewCachePostBoot];
  if (v2)
  {
    if (result)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Rebuild MGCache on boot was requested. Rebuilding cache.", v4, 2u);
      }

      return _MGRebuildCache();
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MGCache was not valid. Writing new cache.", buf, 2u);
    }

    return _MGWriteCache();
  }

  return result;
}

void sub_1000020A8(id a1)
{
  v1 = qword_1000085A0;
  qword_1000085A0 = 0;
}

void sub_1000020D8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 processNameForConnection:a2];
  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = a3;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "asked question: p = %@, q = AppleTVMode, a = %@", &v5, 0x16u);
}

void sub_100002184(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = [a3 localizedDescription];
  sub_1000020B8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100002284(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_1000020B8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100002318(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_1000020B8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}