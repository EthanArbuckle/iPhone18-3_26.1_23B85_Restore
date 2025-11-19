@interface MobileGestaltHelperListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)needsNewCachePostBoot;
- (BOOL)setCacheSentinel;
- (id)processNameForConnection:(id)a3;
- (id)queryBootUUID;
- (void)getAppleTVMode:(id)a3;
- (void)getServerAnswerForQuestion:(id)a3 reply:(id)a4;
- (void)getSpringboardRegionOverride:(id)a3 reply:(id)a4;
- (void)rebuildCache:(id)a3;
- (void)setCacheSentinel:(id)a3;
@end

@implementation MobileGestaltHelperListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MobileGestaltHelper];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  [v5 resume];

  return 1;
}

- (id)processNameForConnection:(id)a3
{
  v3 = a3;
  v4 = v3;
  buffer = 0u;
  memset(v35, 0, sizeof(v35));
  if (v3)
  {
    [v3 auditToken];
    v5 = v31;
  }

  else
  {
    v5 = 0;
  }

  v6 = [NSString stringWithFormat:@"[unknown caller].%d", v5];
  v7 = proc_pidinfo(v5, 13, 0, &buffer, 64);
  if (v7 == 64)
  {
    v22 = [NSString stringWithFormat:@"%s.%d", v35, v5];

    v6 = v22;
    goto LABEL_17;
  }

  v8 = v7;
  if (v7 != -1)
  {
    v23 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltHelpers/MobileGestaltHelper/MobileGestaltHelper.m", 47);
    if (v23)
    {
      v29 = v23 + 1;
    }

    else
    {
      v29 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltHelpers/MobileGestaltHelper/MobileGestaltHelper.m";
    }

    sub_100000C68(v29, 58, @"proc_pidinfo: wrong size: actual = %d, expected = %lu", v24, v25, v26, v27, v28, v8);
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 67109376;
    LODWORD(v33[0]) = v8;
    WORD2(v33[0]) = 2048;
    *(v33 + 6) = 64;
    v20 = "proc_pidinfo: wrong size: actual = %d, expected = %lu";
    v21 = 18;
    goto LABEL_16;
  }

  v9 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltHelpers/MobileGestaltHelper/MobileGestaltHelper.m";
  v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltHelpers/MobileGestaltHelper/MobileGestaltHelper.m", 47);
  if (v10)
  {
    v9 = v10 + 1;
  }

  v11 = __error();
  v12 = strerror(*v11);
  sub_100000C68(v9, 56, @"proc_pidinfo: %s", v13, v14, v15, v16, v17, v12);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v18 = __error();
    v19 = strerror(*v18);
    *buf = 136315138;
    v33[0] = v19;
    v20 = "proc_pidinfo: %s";
    v21 = 12;
LABEL_16:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
  }

LABEL_17:

  return v6;
}

- (void)getSpringboardRegionOverride:(id)a3 reply:(id)a4
{
  v18 = a3;
  v5 = a4;
  v6 = objc_autoreleasePoolPush();
  if (qword_1000085A8 != -1)
  {
    sub_1000020C4();
  }

  v7 = MGCopyAnswer();
  CFPreferencesSynchronize(kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v8 = CFPreferencesCopyValue(@"AppleLocale", kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = [NSLocale localeWithLocaleIdentifier:v8];
  v10 = [v9 regionCode];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_8:
    v11 = +[NSLocale currentLocale];
    v10 = [v11 regionCode];

    goto LABEL_9;
  }

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_9:

  v12 = 0;
  if (v7 && v10)
  {
    v13 = +[NSFileManager defaultManager];
    v14 = [v13 stringWithFileSystemRepresentation:"/System/Library/CoreServices/RegionalOverrideSoftwareBehaviors.plist" length:68];

    v15 = [NSDictionary dictionaryWithContentsOfFile:v14];
    v16 = [v15 objectForKey:v7];

    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = [v16 objectForKey:v10];
      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = [v17 objectForKey:v18];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  v5[2](v5, v12);

  objc_autoreleasePoolPop(v6);
}

- (void)getServerAnswerForQuestion:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if (qword_1000085A8 != -1)
  {
    sub_1000020C4();
  }

  v9 = +[NSXPCConnection currentConnection];
  v10 = _MGServerCopyAnswerWithError();
  v11 = +[NSMutableDictionary dictionary];
  if (_MGServerQuestionIsPlatform())
  {
    v12 = _MGGetFastPathLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(MobileGestaltHelperListener *)self processNameForConnection:v9];
      *buf = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "platform fast path elided: caller = %@, question = %@", buf, 0x16u);
    }
  }

  if (v10)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    v14 = [(MobileGestaltHelperListener *)self processNameForConnection:v9];
    *buf = 138412802;
    v18 = v14;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22[0] = v10;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "asked question: p = %@, q = %@, a = %@", buf, 0x20u);
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v14 = [(MobileGestaltHelperListener *)self processNameForConnection:v9];
    *buf = 138413058;
    v18 = v14;
    v19 = 2112;
    v20 = v6;
    v21 = 1024;
    LODWORD(v22[0]) = 0;
    WORD2(v22[0]) = 2112;
    *(v22 + 6) = @"no log";
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "asked question: p = %@, q = %@, e = %d [%@]", buf, 0x26u);
  }

LABEL_11:
  v15 = [NSNumber numberWithInt:0, 0];
  [v11 setObject:v15 forKeyedSubscript:@"error"];

  if (v10)
  {
    [v11 setObject:v10 forKeyedSubscript:@"answer"];
  }

  if (cf)
  {
    [v11 setObject:cf forKeyedSubscript:@"logString"];
    CFRelease(cf);
  }

  v7[2](v7, v11);

  objc_autoreleasePoolPop(v8);
}

- (void)getAppleTVMode:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (qword_1000085A8 != -1)
  {
    sub_1000020C4();
  }

  v6 = +[NSXPCConnection currentConnection];
  v7 = +[NSMutableDictionary dictionary];
  if (objc_opt_class())
  {
    v8 = +[CADisplay mainDisplay];
    v9 = [v8 currentMode];

    if (v9)
    {
      v10 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v9 width]);
      [v7 setObject:v10 forKeyedSubscript:@"width"];

      v11 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v9 height]);
      [v7 setObject:v11 forKeyedSubscript:@"height"];
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000020D8(self, v6, v9);
    }
  }

  v4[2](v4, v7);

  objc_autoreleasePoolPop(v5);
}

- (void)rebuildCache:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (qword_1000085A8 != -1)
  {
    sub_1000020C4();
  }

  v6 = +[NSXPCConnection currentConnection];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MobileGestaltHelperListener *)self processNameForConnection:v6];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Requested a cache rebuild: p = %@", &v9, 0xCu);
  }

  v8 = _MGRebuildCache();
  v4[2](v4, v8);

  objc_autoreleasePoolPop(v5);
}

- (void)setCacheSentinel:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (qword_1000085A8 != -1)
  {
    sub_1000020C4();
  }

  v6 = +[NSXPCConnection currentConnection];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MobileGestaltHelperListener *)self processNameForConnection:v6];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Requested a cache sentinel: p = %@", &v8, 0xCu);
  }

  v4[2](v4, [(MobileGestaltHelperListener *)self setCacheSentinel]);

  objc_autoreleasePoolPop(v5);
}

- (id)queryBootUUID
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v11 = 50;
  if (sysctlbyname("kern.bootsessionuuid", v14, &v11, 0, 0) == -1)
  {
    v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltHelpers/MobileGestaltHelper/MobileGestaltHelper.m", 47);
    if (v3)
    {
      v9 = v3 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltHelpers/MobileGestaltHelper/MobileGestaltHelper.m";
    }

    sub_100000C68(v9, 221, @"Could not lookup %s", v4, v5, v6, v7, v8, "kern.bootsessionuuid");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "kern.bootsessionuuid";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not lookup %s", buf, 0xCu);
    }

    v2 = 0;
  }

  else
  {
    v2 = [NSString stringWithUTF8String:v14];
  }

  return v2;
}

- (BOOL)setCacheSentinel
{
  v3 = [(MobileGestaltHelperListener *)self getSentinelPath];
  if (!v3)
  {
LABEL_8:
    v8 = 0;
    v5 = 0;
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v4 = [(MobileGestaltHelperListener *)self queryBootUUID];
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100002240();
    }

    goto LABEL_8;
  }

  v5 = v4;
  v10 = 0;
  v6 = 1;
  v7 = [v4 writeToFile:v3 atomically:1 encoding:4 error:&v10];
  v8 = v10;
  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100002184(v5, v3, v8);
    }

    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

- (BOOL)needsNewCachePostBoot
{
  v3 = [(MobileGestaltHelperListener *)self getSentinelPath];
  v4 = +[NSFileManager defaultManager];
  v5 = v4;
  if (v3 && [v4 fileExistsAtPath:v3])
  {
    v16 = 0;
    v6 = [NSString stringWithContentsOfFile:v3 encoding:4 error:&v16];
    v7 = v16;
    if (v6)
    {
      v8 = [(MobileGestaltHelperListener *)self queryBootUUID];
      v9 = [v6 isEqualToString:v8];
      v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v10)
        {
          *buf = 138412290;
          v18 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Boot UUIDs match %@", buf, 0xCu);
        }

        v11 = v7;
      }

      else
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "New cache needed", buf, 2u);
        }

        v15 = v7;
        v13 = [v5 removeItemAtPath:v3 error:&v15];
        v11 = v15;

        if ((v13 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100002284(v11);
        }
      }

      v12 = v9 ^ 1;

      v7 = v11;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100002318(v7);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end