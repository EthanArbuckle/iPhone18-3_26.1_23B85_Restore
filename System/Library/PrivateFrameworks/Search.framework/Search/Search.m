void sub_100002470(id a1)
{
  v1 = +[SPBackupRankingMetadataHandler sharedInstance];
  [v1 backUpFileProtectionClassCheck];
}

void sub_100002544(id a1, SPXPCConnection *a2, SPXPCMessage *a3)
{
  v4 = a3;
  v5 = [(SPXPCConnection *)a2 bundleID];
  v6 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Got apps from %@", &v21, 0xCu);
  }

  if ([(SPXPCMessage *)v5 isEqualToString:@"com.apple.springboard"])
  {
    kdebug_trace();
    v7 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Accepting apps from %@", &v21, 0xCu);
    }

    if (qword_1000A8260 != -1)
    {
      sub_10006235C();
    }

    v8 = [(SPXPCMessage *)v4 rootObjectOfClasses:qword_1000A8258];
    v9 = SPLogForSPLogCategoryDefault();
    v10 = v9;
    if (gSPLogDebugAsDefault)
    {
      v11 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v11 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v9, v11))
    {
      v12 = [v8 count];
      v13 = [v8 objectForKey:@"apps"];
      v14 = [v13 count];
      v15 = [v8 objectForKey:@"apps"];
      v16 = [v8 objectForKey:@"hiddenApps"];
      v21 = 138413314;
      v22 = v4;
      v23 = 2048;
      v24 = v12;
      v25 = 2048;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Received apps: %@ %ld %ld %@ %@", &v21, 0x34u);
    }

    if (v8)
    {
      v17 = [v8 objectForKey:@"apps"];
      v18 = [v8 objectForKey:@"hiddenApps"];
      SPFastApplicationsSet();
    }

    v19 = +[SDAppUninstallMonitor sharedInstance];
    [v19 ready];
  }

  else
  {
    v8 = SPLogForSPLogCategoryDefault();
    v20 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v8, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v8, ((v20 & 1) == 0), "Dropping apps from %@", &v21, 0xCu);
    }
  }
}

void sub_100002898(uint64_t a1, void *a2)
{
  v3 = [a2 allKeys];
  v4 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Apps changed: %@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  tracing_dispatch_async();
}

id sub_1000029D4(uint64_t a1)
{
  [*(a1 + 32) updateApplications:0 appBundleArray:*(a1 + 40) clean:0 activity:0];
  [*(a1 + 32) updateShortcuts:0];

  return +[SDSearchQuery invalidateCacheForSearchContinuation];
}

void sub_100002A30(id a1)
{
  v1 = SPFastApplicationsGet();
  os_unfair_lock_lock(&stru_1000A82F8);
  v2 = [qword_1000A82E8 mutableCopy];
  os_unfair_lock_unlock(&stru_1000A82F8);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [v1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v24 = v1;
    v25 = 0;
    v6 = *v30;
    v7 = &ADClientAddValueForScalarKey_ptr;
    v27 = v3;
    v28 = *v30;
    v26 = v2;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [v2 objectForKey:{v9, v24}];

        if (!v10)
        {
          v11 = [v7[458] applicationProxyForIdentifier:v9];
          v12 = SPLogForSPLogCategoryDefault();
          v13 = v12;
          if (gSPLogDebugAsDefault)
          {
            v14 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v14 = OS_LOG_TYPE_DEBUG;
          }

          if (os_log_type_enabled(v12, v14))
          {
            v15 = [v11 genre];
            [v11 subgenres];
            v17 = v16 = v5;
            [v11 genreID];
            v19 = v18 = v7;
            *buf = 138413058;
            v34 = v9;
            v35 = 2112;
            v36 = v15;
            v37 = 2112;
            v38 = v17;
            v39 = 2112;
            v40 = v19;
            _os_log_impl(&_mh_execute_header, v13, v14, "%@ genre %@, subgenre %@, id %@", buf, 0x2Au);

            v7 = v18;
            v5 = v16;

            v2 = v26;
            v3 = v27;
            v6 = v28;
          }

          v20 = [v11 genre];
          v21 = v20;
          if (v20 && ([v20 isEqual:&stru_100094040] & 1) == 0)
          {
            [v2 setObject:v21 forKey:v9];
            v25 = 1;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v5);

    v1 = v24;
    if (v25)
    {
      v22 = [v2 copy];
      os_unfair_lock_lock(&stru_1000A82F8);
      v23 = qword_1000A82E8;
      qword_1000A82E8 = v22;

      os_unfair_lock_unlock(&stru_1000A82F8);
    }
  }

  else
  {
  }

  byte_1000A82FC = 0;
}

void sub_100002D24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SPLogForSPLogCategoryDefault();
  v8 = v7;
  if (gSPLogDebugAsDefault)
  {
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v9 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v7, v9))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 1024;
    v13 = [v6 isPlaceholder];
    _os_log_impl(&_mh_execute_header, v8, v9, "app %@ isPlaceholder %d", &v10, 0x12u);
  }

  if ([v6 isPlaceholder])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  }
}

uint64_t start()
{
  unsetenv("CFFIXED_USER_HOME");
  v0 = objc_autoreleasePoolPush();
  SPLogInit();
  v1 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109120;
    v10 = getpid();
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "searchd starting, pid:%d", &v9, 8u);
  }

  v2 = objc_alloc_init(SDController);
  objc_autoreleasePoolPop(v0);
  do
  {
    v3 = objc_autoreleasePoolPush();
    v4 = +[NSRunLoop mainRunLoop];
    v5 = +[NSDate distantFuture];
    [v4 runMode:NSDefaultRunLoopMode beforeDate:v5];

    objc_autoreleasePoolPop(v3);
  }

  while ([(SDController *)v2 keepRunning]);
  v6 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = getpid();
    v9 = 67109120;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "searchd shutting down, pid:%d", &v9, 8u);
  }

  return 0;
}

uint64_t sub_1000038E4()
{
  qword_1000A81D0 = objc_alloc_init(SDBundleTracker);

  return _objc_release_x1();
}

void sub_100003E50(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10000469C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak(&location);
  _Block_object_dispose((v37 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004700(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100004718(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logForCSLogCategoryRecs();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10006221C();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

intptr_t sub_100004784(uint64_t a1)
{
  v2 = logForCSLogCategoryRecs();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100062250();
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000047D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained storeCompletedSearch:*(a1 + 32) withSections:&__NSArray0__struct];
}

void sub_10000482C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [WeakRetained storeCompletedSearch:v3 withSections:v4];
}

void sub_1000052F4(id a1)
{
  qword_1000A81E0 = dispatch_queue_create("Music Queue", 0);

  _objc_release_x1();
}

void sub_100005348(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1000055BC()
{
  v0 = strlen(qword_1000A8210);
  write(2, qword_1000A8210, v0);
  signal(6, 0);
  abort();
}

__n128 sub_1000066D4(uint64_t a1)
{
  v2 = si_tracing_current_span();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 28);
  v8 = *(v2 + 32);
  si_tracing_log_span_end();
  result = *a1;
  v10 = *(a1 + 16);
  *(v2 + 32) = *(a1 + 32);
  *v2 = result;
  *(v2 + 16) = v10;
  return result;
}

id sub_100006730(uint64_t a1)
{
  v4 = @"keystrokes";
  v1 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) length] - objc_msgSend(*(a1 + 40), "length"));
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_100006804(uint64_t a1)
{
  v4 = @"keystrokes";
  v1 = [NSNumber numberWithInteger:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

double sub_1000068B8(uint64_t a1)
{
  v2 = si_tracing_current_span();
  v20 = *v2;
  v21 = *(v2 + 16);
  v22 = *(v2 + 32);
  v3 = *v2;
  spanid = si_tracing_calc_next_spanid();
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  *v2 = v3;
  *(v2 + 8) = spanid;
  *(v2 + 16) = v5;
  *(v2 + 28) = 102;
  *(v2 + 32) = "SDClient:  Starting query";
  si_tracing_log_span_begin();
  v7 = [[SFClientTimingFeedback alloc] initWithEvent:@"com.apple.searchd.backend.stores.start" timeInterval:0 queryId:{objc_msgSend(*(a1 + 32), "queryIdent")}];
  v8 = +[SPFeedbackProxy sharedProxy];
  [v8 sendFeedbackType:21 feedback:v7 queryId:objc_msgSend(*(a1 + 32) clientID:{"queryIdent"), *(a1 + 40)}];

  if (*(a1 + 72) > 0.0)
  {
    [*(a1 + 32) setTimeout:?];
  }

  [*(a1 + 48) count];
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  tracing_dispatch_apply();

  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = *(v2 + 28);
  v14 = *(v2 + 32);
  si_tracing_log_span_end();
  result = *&v20;
  *v2 = v20;
  *(v2 + 16) = v21;
  *(v2 + 32) = v22;
  return result;
}

void sub_100006AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

__n128 sub_100006B28(uint64_t a1, uint64_t a2)
{
  v4 = si_tracing_current_span();
  v25 = *v4;
  v26 = *(v4 + 16);
  v27 = *(v4 + 32);
  v5 = *v4;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v4 + 8);
  v8 = *(v4 + 24);
  *v4 = v5;
  *(v4 + 8) = spanid;
  *(v4 + 16) = v7;
  *(v4 + 28) = 102;
  *(v4 + 32) = "SDClient:  Issuing query for store";
  si_tracing_log_span_begin();
  v9 = [*(a1 + 32) objectAtIndex:a2];
  v10 = SPLogForSPLogCategoryDefault();
  v11 = v10;
  if (gSPLogDebugAsDefault)
  {
    v12 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v12 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v10, v12))
  {
    *buf = 138412290;
    v29 = objc_opt_class();
    v13 = v29;
    _os_log_impl(&_mh_execute_header, v11, v12, "#query Issue query for store %@", buf, 0xCu);
  }

  if (([*(a1 + 40) cancelled] & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [v9 performQuery:*(a1 + 40)];
    if (v15)
    {
      pthread_mutex_lock(*(a1 + 64));
      v16 = [*(a1 + 48) containsObject:v9];
      v17 = *(a1 + 40);
      if (v16)
      {
        [v17 addSlowQueryToken:v15];
      }

      else
      {
        [v17 addQueryToken:v15];
      }

      pthread_mutex_unlock(*(a1 + 64));
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *v4;
  v19 = *(v4 + 8);
  v20 = *(v4 + 16);
  v21 = *(v4 + 24);
  v22 = *(v4 + 28);
  v23 = *(v4 + 32);
  si_tracing_log_span_end();
  result = v25;
  *v4 = v25;
  *(v4 + 16) = v26;
  *(v4 + 32) = v27;
  return result;
}

void sub_100006ED8(id a1)
{
  v1 = +[SDController datastores];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 clearInput];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void sub_100007090(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  objc_sync_enter(v2);
  v3 = *(*(a1 + 32) + 8);
  v4 = [NSNumber numberWithUnsignedLong:*(a1 + 40)];
  v5 = [v3 objectForKey:v4];

  objc_sync_exit(v2);
  if (v5)
  {
    [v5 cancel];
    [*(a1 + 32) removeActiveQuery:v5];
  }

  v6 = SPLogForSPLogCategoryDefault();
  v7 = v6;
  if (gSPLogDebugAsDefault)
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v8 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v6, v8))
  {
    v9 = *(a1 + 40);
    v13[0] = 67109120;
    v13[1] = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "Query cancelled %d", v13, 8u);
  }

  v10 = SPLogForSPLogCategoryTelemetry();
  v11 = v10;
  v12 = *(a1 + 40);
  if (v12 && os_signpost_enabled(v10))
  {
    LOWORD(v13[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, v12, "cancelQuery", " enableTelemetry=YES ", v13, 2u);
  }
}

void sub_1000078FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007920(id a1)
{
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  qword_1000A8220 = [NSSet setWithObjects:v1, v2, v3, v4, objc_opt_class(), 0];

  _objc_release_x1();
}

void sub_1000079DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained deactivate];
}

void sub_100007A1C(id a1)
{
  v1 = +[SDMigrationMonitor sharedInstance];
  [v1 suspendMigrationQueue];

  +[SDController activated];
  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    v2 = +[SDController datastores];
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v7 + 1) + 8 * v6) activate];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }

  +[SDSearchQuery prepareCacheForSearchContinuation];
  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    +[PRSRankingItemRanker preheat];
  }
}

void sub_100007BAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[82] = 1;
  }

  v3 = WeakRetained;
  v2 = +[SDMigrationMonitor sharedInstance];
  [v2 resumeMigrationQueue];

  +[SDController deactivated];
}

id sub_100007C24(uint64_t a1)
{
  v4[1] = @"parsec_enabled";
  v5[0] = &off_1000989C0;
  v4[0] = @"activation_count";
  v1 = [NSNumber numberWithBool:*(a1 + 32)];
  v5[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

void sub_100007E30(id a1)
{
  v1 = +[SDController datastores];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) deactivate];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_100007F24(id a1)
{
  v1 = +[SDMigrationMonitor sharedInstance];
  [v1 resumeMigrationQueue];

  +[SDController deactivated];
}

void sub_100007F74(id a1)
{
  +[SSRankingManager fetchDuetValues];

  +[SPCalculationDatastore refreshCurrencyCache];
}

void sub_100008158(id a1, SPXPCConnection *a2, SPXPCMessage *a3)
{
  v4 = a2;
  v65 = a3;
  v5 = si_tracing_current_span();
  v66 = *v5;
  v67 = *(v5 + 16);
  v68 = *(v5 + 32);
  v6 = si_tracing_calc_traceid();
  spanid = si_tracing_calc_next_spanid();
  *v5 = v6;
  *(v5 + 8) = spanid;
  *(v5 + 16) = 0;
  *(v5 + 24) = -1;
  *(v5 + 28) = 102;
  *(v5 + 32) = "kSPMessageOpenQuery";
  si_tracing_log_span_begin();
  v8 = SPLogForSPLogCategoryDefault();
  v9 = v8;
  if (gSPLogDebugAsDefault)
  {
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v10 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v8, v10))
  {
    v11 = dispatch_get_current_queue();
    *buf = 136315138;
    label = dispatch_queue_get_label(v11);
    _os_log_impl(&_mh_execute_header, v9, v10, "queue: %s", buf, 0xCu);
  }

  v12 = SPLogForSPLogCategoryDefault();
  v13 = v12;
  if (gSPLogDebugAsDefault)
  {
    v14 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v14 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v12, v14))
  {
    v15 = qos_class_self();
    *buf = 67109120;
    LODWORD(label) = v15;
    _os_log_impl(&_mh_execute_header, v13, v14, "QOS kSPMessageOpenQuery: %d", buf, 8u);
  }

  v16 = [SDClient clientForConnection:v4];
  [v16 activateForConnection:v4 message:0];
  v17 = [(SPXPCMessage *)v65 info];
  v18 = [SPSearchQueryContext alloc];
  v19 = [v17 objectForKey:@"QS"];
  v20 = [v18 initWithSearchString:v19];

  v21 = [v17 objectForKey:@"WHY"];
  [v20 setWhyQuery:{objc_msgSend(v21, "unsignedIntValue")}];

  v22 = [v17 objectForKey:@"QK"];
  [v20 setQueryKind:{objc_msgSend(v22, "unsignedIntValue")}];

  v23 = [v17 objectForKey:@"QI"];
  [v20 setQueryIdent:{objc_msgSend(v23, "unsignedLongLongValue")}];

  v24 = [v17 objectForKey:@"RPL"];
  [v20 setPromoteLocalResults:{objc_msgSend(v24, "BOOLValue")}];

  v25 = [v17 objectForKey:@"RPP"];
  [v20 setPromoteParsecResults:{objc_msgSend(v25, "BOOLValue")}];

  v26 = [v17 objectForKey:@"KL"];
  [v20 setKeyboardLanguage:v26];

  v27 = [v17 objectForKey:@"SCF"];
  [v27 floatValue];
  [v20 setScaleFactor:v28];

  v29 = [v17 objectForKey:@"KPL"];
  [v20 setKeyboardPrimaryLanguage:v29];

  v30 = [v17 objectForKey:@"DA"];
  [v20 setSearchDomains:v30];

  v31 = [v17 objectForKey:@"DDA"];
  [v20 setDisabledDomains:v31];

  v32 = [v17 objectForKey:@"BA"];
  [v20 setDisabledBundles:v32];

  v33 = [v17 objectForKey:@"AA"];
  [v20 setDisabledApps:v33];

  v34 = [v17 objectForKey:@"QSMRA"];
  [v20 setMarkedTextArray:v34];

  v35 = [v17 objectForKey:@"DAS"];
  [v20 setDeviceAuthenticationState:{objc_msgSend(v35, "unsignedIntValue")}];

  v36 = [v17 objectForKey:@"InternalValidation"];
  [v20 setInternalValidation:{objc_msgSend(v36, "BOOLValue")}];

  v37 = [v17 objectForKey:@"CT"];
  [v37 doubleValue];
  [v20 setCurrentTime:?];

  v38 = [v17 objectForKey:@"DOCR"];
  [v20 setDisableOCR:{objc_msgSend(v38, "BOOLValue")}];

  v39 = [v17 objectForKey:@"FL2S"];
  [v20 setFetchL2Signals:{objc_msgSend(v39, "BOOLValue")}];

  v40 = [v17 objectForKey:@"QU"];
  [v20 setQueryUnderstandingOutput:v40];

  v41 = [(SPXPCConnection *)v4 bundleID];
  [v20 setClientBundleID:v41];

  v42 = [v17 objectForKey:@"EA"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v42 length])
  {
    v43 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v42 error:0];
    v69[0] = objc_opt_class();
    v69[1] = objc_opt_class();
    v44 = [NSArray arrayWithObjects:v69 count:2];
    v45 = [NSSet setWithArray:v44];
    v46 = [v43 decodeObjectOfClasses:v45 forKey:@"entities"];
    [v20 setSearchEntities:v46];
  }

  v47 = [SDSearchQuery alloc];
  v48 = [v17 objectForKey:@"QID"];
  v49 = -[SDSearchQuery initWithQueryContext:externalID:connection:](v47, "initWithQueryContext:externalID:connection:", v20, [v48 unsignedIntValue], v4);

  [(SDSearchQuery *)v49 externalID];
  kdebug_trace();
  v50 = [v17 objectForKey:@"InternalValidation"];
  -[SDSearchQuery setInternalValidation:](v49, "setInternalValidation:", [v50 BOOLValue]);

  v51 = [v17 objectForKey:@"InternalDebug"];
  v52 = [v51 BOOLValue];
  [(SDSearchQuery *)v49 setInternalDebug:(v52 | byte_1000A81F0) & 1];

  v53 = [v17 objectForKey:@"IP"];
  v54 = [v53 BOOLValue];
  [(SDSearchQuery *)v49 setInfinitePatience:(v54 | byte_1000A81F0) & 1];

  v55 = [v17 objectForKey:@"NT"];
  -[SDSearchQuery setNoTokenize:](v49, "setNoTokenize:", [v55 BOOLValue]);

  v56 = [v17 objectForKey:@"FC"];
  -[SDSearchQuery setContentFilters:](v49, "setContentFilters:", [v56 integerValue]);

  v57 = [v17 objectForKey:@"QC"];
  -[SDSearchQuery setMaxCount:](v49, "setMaxCount:", [v57 integerValue]);

  [(SDSearchQuery *)v49 setMessage:v65];
  v58 = [v17 objectForKey:@"WS"];
  -[SDSearchQuery setIsWideScreen:](v49, "setIsWideScreen:", [v58 integerValue] != 0);

  [v16 addAndStartQuery:v49];
  v59 = *v5;
  v60 = *(v5 + 8);
  v61 = *(v5 + 16);
  v62 = *(v5 + 24);
  v63 = *(v5 + 28);
  v64 = *(v5 + 32);
  si_tracing_log_span_end();
  *v5 = v66;
  *(v5 + 16) = v67;
  *(v5 + 32) = v68;
}

void sub_1000089D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_100008A24(id a1, SPXPCConnection *a2, SPXPCMessage *a3)
{
  v17 = a2;
  v4 = a3;
  v5 = si_tracing_current_span();
  v18 = *v5;
  v19 = *(v5 + 16);
  v20 = *(v5 + 32);
  v6 = si_tracing_calc_traceid();
  spanid = si_tracing_calc_next_spanid();
  *v5 = v6;
  *(v5 + 8) = spanid;
  *(v5 + 16) = 0;
  *(v5 + 24) = -1;
  *(v5 + 28) = 102;
  *(v5 + 32) = "kSPMessageCloseQuery";
  si_tracing_log_span_begin();
  v8 = [SDClient clientForConnection:v17];
  [v8 activateForConnection:v17 message:0];
  v9 = [(SPXPCMessage *)v4 info];
  v10 = [v9 objectForKey:@"QID"];
  [v8 cancelQueryWithExternalID:{objc_msgSend(v10, "unsignedIntValue")}];

  [(SPXPCMessage *)v4 sendReply:&__NSDictionary0__struct];
  v11 = *v5;
  v12 = *(v5 + 8);
  v13 = *(v5 + 16);
  v14 = *(v5 + 24);
  v15 = *(v5 + 28);
  v16 = *(v5 + 32);
  si_tracing_log_span_end();
  *v5 = v18;
  *(v5 + 16) = v19;
  *(v5 + 32) = v20;
}

void sub_100008B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_100008BA8(id a1, SPXPCConnection *a2, SPXPCMessage *a3)
{
  v15 = a2;
  v4 = a3;
  v5 = si_tracing_current_span();
  v16 = *v5;
  v17 = *(v5 + 16);
  v18 = *(v5 + 32);
  v6 = si_tracing_calc_traceid();
  spanid = si_tracing_calc_next_spanid();
  *v5 = v6;
  *(v5 + 8) = spanid;
  *(v5 + 16) = 0;
  *(v5 + 24) = -1;
  *(v5 + 28) = 102;
  *(v5 + 32) = "kSPMessageClearInput";
  si_tracing_log_span_begin();
  v8 = [SDClient clientForConnection:v15];
  [v8 activateForConnection:v15 message:0];
  [v8 clearInputForConnection:v15];

  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *(v5 + 28);
  v14 = *(v5 + 32);
  si_tracing_log_span_end();
  *v5 = v16;
  *(v5 + 16) = v17;
  *(v5 + 32) = v18;
}

void sub_100008CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_100008CE4(id a1, SPXPCConnection *a2, SPXPCMessage *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = si_tracing_current_span();
  v17 = *v6;
  v18 = *(v6 + 16);
  v19 = *(v6 + 32);
  v7 = si_tracing_calc_traceid();
  spanid = si_tracing_calc_next_spanid();
  *v6 = v7;
  *(v6 + 8) = spanid;
  *(v6 + 16) = 0;
  *(v6 + 24) = -1;
  *(v6 + 28) = 102;
  *(v6 + 32) = "kSPMessageRequestFirstTimeExperience";
  si_tracing_log_span_begin();
  v9 = +[SDController workQueue];
  v16 = v5;
  tracing_dispatch_async();

  v10 = *v6;
  v11 = *(v6 + 8);
  v12 = *(v6 + 16);
  v13 = *(v6 + 24);
  v14 = *(v6 + 28);
  v15 = *(v6 + 32);
  si_tracing_log_span_end();
  *v6 = v17;
  *(v6 + 16) = v18;
  *(v6 + 32) = v19;
}

void sub_100008E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_100008E54(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [SDController datastoreForDomain:2];
  if (!v3)
  {
    v4 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100062304(v4);
    }
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008F40;
  v5[3] = &unk_1000921A0;
  v6 = *(a1 + 32);
  [v3 getFTEStringsWithReply:v5];

  objc_autoreleasePoolPop(v2);
}

void sub_100008F40(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[SDController workQueue];
  v18 = v9;
  v19 = v10;
  v20 = v12;
  v21 = *(a1 + 32);
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  tracing_dispatch_async();
}

void sub_100009078(uint64_t a1)
{
  v13[0] = @"FTE_STRING";
  if ([*(a1 + 32) length])
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = &stru_100094040;
  }

  v14[0] = v2;
  v13[1] = @"FTE_LEARN_MORE_LINK";
  if ([*(a1 + 40) length])
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = &stru_100094040;
  }

  v14[1] = v3;
  v13[2] = @"FTE_CONTINUE_LINK";
  if ([*(a1 + 48) length])
  {
    v4 = *(a1 + 48);
  }

  else
  {
    v4 = &stru_100094040;
  }

  v13[3] = @"FTE_DOMAINS";
  v5 = *(a1 + 56);
  if (!v5)
  {
    v5 = &__NSArray0__struct;
  }

  v14[2] = v4;
  v14[3] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  v7 = SPLogForSPLogCategoryDefault();
  v8 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v7, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, ((v8 & 1) == 0), "[FTE] Received FTE dictionary in client: %@", buf, 0xCu);
  }

  v9 = *(a1 + 64);
  v10 = [NSDictionary dictionaryWithObjectsAndKeys:v6, @"FTE", 0];
  [v9 sendReply:v10];
}

void sub_100009238(id a1, SPXPCConnection *a2, SPXPCMessage *a3)
{
  v15 = a2;
  v4 = a3;
  v5 = si_tracing_current_span();
  v16 = *v5;
  v17 = *(v5 + 16);
  v18 = *(v5 + 32);
  v6 = si_tracing_calc_traceid();
  spanid = si_tracing_calc_next_spanid();
  *v5 = v6;
  *(v5 + 8) = spanid;
  *(v5 + 16) = 0;
  *(v5 + 24) = -1;
  *(v5 + 28) = 102;
  *(v5 + 32) = "kSPMessageActivate";
  si_tracing_log_span_begin();
  v8 = [SDClient clientForConnection:v15];
  [v8 activateForConnection:v15 message:v4];

  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *(v5 + 28);
  v14 = *(v5 + 32);
  si_tracing_log_span_end();
  *v5 = v16;
  *(v5 + 16) = v17;
  *(v5 + 32) = v18;
}

void sub_10000934C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_100009368(id a1, SPXPCConnection *a2, SPXPCMessage *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = si_tracing_current_span();
  v19 = *v6;
  v20 = *(v6 + 16);
  v21 = *(v6 + 32);
  v7 = si_tracing_calc_traceid();
  spanid = si_tracing_calc_next_spanid();
  *v6 = v7;
  *(v6 + 8) = spanid;
  *(v6 + 16) = 0;
  *(v6 + 24) = -1;
  *(v6 + 28) = 102;
  *(v6 + 32) = "kSPMessageDeactivate";
  si_tracing_log_span_begin();
  kdebug_trace();
  v9 = [(SPXPCConnection *)v4 context];
  [v9 deactivate];
  v10 = SPLogForSPLogCategoryDefault();
  v11 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v10, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v12 = [(SPXPCConnection *)v4 bundleID];
    *buf = 138412290;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v10, ((v11 & 1) == 0), "Deactivate from %@", buf, 0xCu);
  }

  v13 = *v6;
  v14 = *(v6 + 8);
  v15 = *(v6 + 16);
  v16 = *(v6 + 24);
  v17 = *(v6 + 28);
  v18 = *(v6 + 32);
  si_tracing_log_span_end();
  *v6 = v19;
  *(v6 + 16) = v20;
  *(v6 + 32) = v21;
}

void sub_100009558(id a1, SPXPCConnection *a2, SPXPCMessage *a3)
{
  v14 = a2;
  v4 = a3;
  v5 = si_tracing_current_span();
  v15 = *v5;
  v16 = *(v5 + 16);
  v17 = *(v5 + 32);
  v6 = si_tracing_calc_traceid();
  spanid = si_tracing_calc_next_spanid();
  *v5 = v6;
  *(v5 + 8) = spanid;
  *(v5 + 16) = 0;
  *(v5 + 24) = -1;
  *(v5 + 28) = 102;
  *(v5 + 32) = "kSPMessagePreheat";
  si_tracing_log_span_begin();
  kdebug_trace();
  if (qword_1000A8230 != -1)
  {
    sub_100062348();
  }

  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v12 = *(v5 + 28);
  v13 = *(v5 + 32);
  si_tracing_log_span_end();
  *v5 = v15;
  *(v5 + 16) = v16;
  *(v5 + 32) = v17;
}

void sub_100009678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_100009690(id a1)
{
  +[SPCoreSpotlightIndexer preheat];
  v1 = +[SDController datastores];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 preheat];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void *sub_100009FA0(void *result)
{
  v1 = result;
  v2 = byte_1000A8240;
  if (byte_1000A8240)
  {
    qword_1000A8248 = result[5];
  }

  else
  {
    v3 = result[4];
    result = [objc_opt_class() handleMemoryPressureWithStatus:v1[5]];
  }

  byte_1000A8241 = v2;
  return result;
}

void sub_10000A24C(id a1)
{
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  qword_1000A8258 = [NSSet setWithObjects:v1, v2, v3, v4, objc_opt_class(), 0];

  _objc_release_x1();
}

void sub_10000A308(id a1, SPXPCConnection *a2, SPXPCMessage *a3)
{
  v13 = a2;
  v4 = a3;
  v5 = [(SPXPCMessage *)v4 feedbackData];
  if (v5)
  {
    v6 = [(SPXPCMessage *)v4 info];
    v7 = [v6 objectForKeyedSubscript:@"FBT"];
    v8 = [v7 integerValue];

    if ((v8 - 1) <= 0x1A)
    {
      v9 = [v6 objectForKeyedSubscript:@"QID"];
      v10 = [v9 unsignedLongLongValue];
      v11 = +[SPFeedbackProxy sharedProxy];
      v12 = [(SPXPCConnection *)v13 bundleID];
      [v11 sendFeedbackType:v8 feedbackData:v5 queryId:v10 clientID:v12];
    }
  }
}

void sub_10000A42C(id a1, SPXPCConnection *a2, SPXPCMessage *a3)
{
  v4 = a3;
  v5 = [(SPXPCConnection *)a2 bundleID];
  v6 = SPLogForSPLogCategoryDefault();
  v7 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v6, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, ((v7 & 1) == 0), "Dropping message from %@", &v11, 0xCu);
  }

  v8 = SPLogForSPLogCategoryDefault();
  v9 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v8, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v10 = [(SPXPCMessage *)v4 name];
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v8, ((v9 & 1) == 0), "Dropping  %@ %@", &v11, 0x16u);
  }
}

void sub_10000A9FC(uint64_t a1)
{
  tracing_dispatch_async();
  v2 = +[NSMutableArray array];
  if (byte_1000A7C90 == 1)
  {
    v3 = +[SPCoreSpotlightDatastore sharedInstance];
    if (v3)
    {
      [v2 addObject:v3];
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"ParsecSplitRequests"];

  if (!v5)
  {
    if (qword_1000A8280)
    {
      v7 = qword_1000A8280;
    }

    else
    {
      v7 = objc_alloc_init(SPParsecDatastore);

      if (!v7)
      {
        v9 = 0;
        goto LABEL_16;
      }
    }

    [v2 addObject:v7];
    v10 = *(a1 + 32);
    [objc_opt_class() setParsecDatastore:v7];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10000AED8;
    v26 = &unk_1000921C8;
    v9 = v7;
    v27 = v9;
    [SPFeedbackSender synchronizedBlock:&v23];

    goto LABEL_16;
  }

  if (qword_1000A8280)
  {
    v6 = qword_1000A8280;
  }

  else
  {
    v6 = objc_alloc_init(SPParsecSuggestionsDatastore);

    if (!v6)
    {
      goto LABEL_12;
    }
  }

  [v2 addObject:v6];
  v8 = *(a1 + 32);
  [objc_opt_class() setParsecDatastore:v6];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000AEC8;
  v28[3] = &unk_1000921C8;
  v6 = v6;
  v29 = v6;
  [SPFeedbackSender synchronizedBlock:v28];

LABEL_12:
  v9 = objc_alloc_init(SPParsecResultsDatastore);

  if (v9)
  {
    [v2 addObject:v9];
  }

LABEL_16:
  v11 = objc_alloc_init(SPDefaultSearchDatastore);

  if (v11)
  {
    [v2 addObject:v11];
  }

  v12 = objc_alloc_init(SPDictionaryDatastore);

  if (v12)
  {
    [v2 addObject:v12];
  }

  v13 = objc_alloc_init(SPCalculationDatastore);

  if (v13)
  {
    [v2 addObject:v13];
  }

  v14 = objc_alloc_init(SPBookmarkDatastore);

  if (v14)
  {
    [v2 addObject:v14];
  }

  if (_os_feature_enabled_impl())
  {
    v15 = objc_alloc_init(SPRecommendationDatastore);

    if (v15)
    {
      [v2 addObject:v15];
      v14 = v15;
    }

    else
    {
      v14 = 0;
    }
  }

  if (_os_feature_enabled_impl())
  {
    v16 = objc_alloc_init(SPWorldClockDatastore);

    if (v16)
    {
      [v2 addObject:v16];
      v14 = v16;
    }

    else
    {
      v14 = 0;
    }
  }

  if (_os_feature_enabled_impl())
  {
    v17 = objc_alloc_init(SPDataDetectorsDataStore);

    if (v17)
    {
      [v2 addObject:v17];
      v14 = v17;
    }

    else
    {
      v14 = 0;
    }
  }

  [*(a1 + 32) setDatastores:{v2, v23, v24, v25, v26}];
  v18 = +[SDLockHandler sharedLockHandler];
  v19 = [v18 unlockedSinceBoot];

  if (v19)
  {
    dispatch_get_global_queue(25, 0);
  }

  else
  {
    +[SDController workQueue];
  }
  v20 = ;
  tracing_dispatch_async();

  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v21 = +[PRSRankingItemRanker englishEmbedding];
      v22 = +[PRSRankingItemRanker preferredEmbedding];
    }

    +[PRSRankingItemRanker languageModel];
  }
}

void sub_10000AEE8(id a1)
{
  v1 = +[SRResourcesManager sharedResourcesManager];
  [v1 loadAllParametersForClient:@"Spotlight"];

  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    +[SSRankingManager reloadRankingParametersFromTrial];
    v2 = +[PRSModelManager sharedModelManager];
  }

  v3 = +[CSFileProviderContainerCache sharedInstance];
  [v3 refreshCache];
}

void sub_10000AFAC(id a1)
{
  v1 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_100062384();
  }

  v2 = +[SPCoreSpotlightDatastore sharedInstance];
  [v2 loadTrialDataOnActivate];
}

void sub_10000B00C(uint64_t a1)
{
  v2 = +[SDLockHandler sharedLockHandler];
  v3 = [v2 unlocked];

  if (v3)
  {
    v4 = *(*(a1 + 32) + 40);

    [v4 moveMailToClassC];
  }
}

void sub_10000B884(id a1, SPXPCConnection *a2)
{
  v3 = a2;
  v2 = v3;
  tracing_dispatch_async();
}

id sub_10000B91C(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault();
  v3 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v2, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v4 = *(a1 + 32);
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, ((v3 & 1) == 0), "%@ Connection Disconnected", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) context];
  [v5 death];

  return [*(a1 + 32) setContext:0];
}

void sub_10000BA00(id a1, SPXPCConnection *a2)
{
  v3 = a2;
  v2 = v3;
  tracing_dispatch_async();
}

void sub_10000BA98(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault();
  v3 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v2, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v2, ((v3 & 1) == 0), "%@ Background Connection Disconnected", &v5, 0xCu);
  }
}

void sub_10000BB58(id a1, SPXPCConnection *a2, SPXPCMessage *a3)
{
  v3 = a3;
  v4 = SPLogForSPLogCategoryDefault();
  v5 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v4, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, ((v5 & 1) == 0), "Background connection got unexpected message %@", &v6, 0xCu);
  }
}

void sub_10000BC1C(id a1, SPXPCConnection *a2, SPXPCMessage *a3)
{
  v3 = a3;
  v4 = SPLogForSPLogCategoryDefault();
  v5 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v4, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, ((v5 & 1) == 0), "Got unexpected message %@", &v6, 0xCu);
  }
}

id sub_10000BCE0(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryIndex();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "### migrationComplete", v4, 2u);
  }

  return [*(*(a1 + 32) + 40) migrateForced:0];
}

void sub_10000BD5C(id a1)
{
  v2 = +[PRSAnonymousPipelineManager sharedManager];
  v1 = +[SPFeedbackProxy sharedProxy];
  [v2 setFeedbackDelegate:v1];
}

uint64_t sub_10000BDCC()
{
  v0 = getpid();

  return killpg(v0, 15);
}

void sub_10000BDF8(id a1)
{
  +[SPBackupRankingMetadataHandler clearDirtyState];

  +[SPBackupRankingMetadataHandler checkForRestoreFile];
}

void sub_10000BE34(id a1)
{
  v1 = dispatch_get_global_queue(17, 0);
  dispatch_async(v1, &stru_100092510);
}

void sub_10000BE84(id a1)
{
  v1 = +[SRResourcesManager resourcePath];
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:v1];

  if ((v3 & 1) != 0 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v4 = objc_claimAutoreleasedReturnValue(), v8 = 0, [v4 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v8], v5 = v8, v4, !v5))
  {
    v5 = +[SRResourcesManager sharedResourcesManager];
    v6 = +[NSLocale preferredLanguages];
    v7 = [NSSet setWithArray:v6];
    [v5 fetchAllParametersForLanguages:v7];
  }

  else
  {
    v6 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000623E0();
    }
  }
}

void sub_10000C2C8(id a1)
{
  v1 = SPLogForSPLogCategoryDefault();
  v2 = v1;
  if (gSPLogDebugAsDefault)
  {
    v3 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v3 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v1, v3))
  {
    v4[0] = 67109120;
    v4[1] = byte_1000A8279;
    _os_log_impl(&_mh_execute_header, v2, v3, "[FEEDBACK-DEBUG] (_userPrefsChanged) _permitParsecFeedback: %d", v4, 8u);
  }

  [qword_1000A8280 setParsecFeedbackAllowed:byte_1000A8279];
}

void sub_10000C6C0(id a1)
{
  v1 = +[SPBackupRankingMetadataHandler sharedInstance];
  v2 = [v1 getBackUpFilePath];
  v3 = qword_1000A82C8;
  qword_1000A82C8 = v2;

  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.searchd"];
  byte_1000A82A8 = [v4 BOOLForKey:@"allowlistedOnly"];
}

void sub_10000C758(id a1)
{
  v1 = dispatch_get_global_queue(9, 0);
  tracing_dispatch_async();
}

void sub_10000C7A8(id a1)
{
  v1 = +[SPBackupRankingMetadataHandler sharedInstance];
  [v1 tryRestoreFromBackUp];
}

void sub_10000CC1C(id a1)
{
  v3 = NSHomeDirectory();
  v1 = [v3 stringByAppendingString:@"/Library/Spotlight/CoreSpotlight"];
  v2 = qword_1000A82B8;
  qword_1000A82B8 = v1;
}

id sub_10000CE44(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) bundleIdentifier];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

void sub_10000D1F4(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v3 = *(a1 + 32);
  tracing_dispatch_async();
}

void sub_10000D288(uint64_t a1)
{
  v1 = objc_alloc_init(CSSearchQueryContext);
  v52 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v2 = [NSArray arrayWithObjects:&v52 count:1];
  [v1 setProtectionClasses:v2];

  [v1 setLowPriority:1];
  v3 = MDItemUniqueIdentifier;
  v4 = MDItemBundleID;
  v51[0] = MDItemUniqueIdentifier;
  v51[1] = MDItemBundleID;
  v51[2] = MDItemEmailAddresses;
  v5 = [NSArray arrayWithObjects:v51 count:3];
  [v1 setFetchAttributes:v5];

  v6 = [v1 fetchAttributes];
  v7 = [v6 count];

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10000D7D8;
  v42[3] = &unk_100092628;
  v44 = v7;
  v8 = objc_alloc_init(NSMutableDictionary);
  v43 = v8;
  v9 = objc_retainBlock(v42);
  v10 = +[SPCoreSpotlightIndexer sharedInstance];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10000DAD8;
  v40[3] = &unk_100091E30;
  v11 = v8;
  v41 = v11;
  v33 = v9;
  v12 = [v10 taskForQueryWithQueryString:@"(_kMDItemBundleID = com.apple.MobileAddressBook) && (kMDItemEmailAddresses=*)" queryContext:v1 eventHandler:0 resultsHandler:v9 completionHandler:v40];

  v13 = +[SPCoreSpotlightIndexer sharedInstance];
  [v13 startQueryTask:v12];

  v14 = objc_alloc_init(CSSearchQueryContext);
  v50 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v15 = [NSArray arrayWithObjects:&v50 count:1];
  [v14 setProtectionClasses:v15];

  [v14 setLowPriority:1];
  v49[0] = v3;
  v49[1] = v4;
  v49[2] = MDItemIncomingCounts;
  v49[3] = MDItemOutgoingCounts;
  v49[4] = MDItemIncomingMailCounts;
  v49[5] = MDItemOutgoingMailCounts;
  v49[6] = MDItemIncomingSMSCounts;
  v49[7] = MDItemOutgoingSMSCounts;
  v49[8] = MDItemIncomingCalendarCounts;
  v49[9] = MDItemOutgoingCalendarCounts;
  v49[10] = MDItemIncomingFileProviderCounts;
  v49[11] = MDItemOutgoingFileProviderCounts;
  v16 = [NSArray arrayWithObjects:v49 count:12];
  [v14 setFetchAttributes:v16];

  v17 = [v14 fetchAttributes];
  v18 = [v17 count];

  v19 = objc_alloc_init(NSMutableDictionary);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10000DBA8;
  v36[3] = &unk_100092678;
  v21 = *(a1 + 32);
  v20 = *(a1 + 40);
  v38 = v18;
  v39 = v20;
  v36[4] = v21;
  v22 = v19;
  v37 = v22;
  v23 = objc_retainBlock(v36);
  v24 = +[SPCoreSpotlightIndexer sharedInstance];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10000EA9C;
  v34[3] = &unk_100091E30;
  v25 = v22;
  v35 = v25;
  v26 = [v24 taskForQueryWithQueryString:@"(_kMDItemBundleID = com.apple.MobileAddressBook) && (_kMDItemIncomingCounts=* || _kMDItemOutgoingCounts=* || _kMDItemIncomingMailCounts=* || _kMDItemOutgoingMailCounts=* || _kMDItemIncomingSMSCounts=* || _kMDItemOutgoingSMSCounts=* || _kMDItemIncomingCalendarCounts=* || _kMDItemOutgoingCalendarCounts=* || _kMDItemIncomingFileProviderCounts=* || _kMDItemOutgoingFileProviderCounts=*)" queryContext:v14 eventHandler:0 resultsHandler:v23 completionHandler:v34];

  v27 = +[SPCoreSpotlightIndexer sharedInstance];
  [v27 startQueryTask:v26];

  v28 = SPLogForSPLogCategoryDefault();
  v29 = v28;
  if (gSPLogDebugAsDefault)
  {
    v30 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v30 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v28, v30))
  {
    v31 = +[SPCoreSpotlightIndexer sharedInstance];
    *buf = 138412546;
    v46 = v12;
    v47 = 2112;
    v48 = v31;
    _os_log_impl(&_mh_execute_header, v29, v30, "Contacts task:%@ indexer:%@", buf, 0x16u);
  }
}

void sub_10000D7D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v11 = v5;
    v12 = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000D878;
    v9[3] = &unk_100092600;
    v8 = *(a1 + 40);
    v10 = *(a1 + 32);
    [a5 enumerateQueryResults:v8 stringCache:0 usingBlock:v9];
  }
}

void sub_10000D878(uint64_t a1, CFNullRef *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = a2[2];
  if (v5 == kCFNull)
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = *a2;
  if (*a2 == kCFNull)
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = SPLogForSPLogCategoryDefault();
  v10 = v9;
  if (gSPLogDebugAsDefault)
  {
    v11 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v11 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v9, v11))
  {
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[2];
    *buf = 138412802;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "result: %@ %@ %@", buf, 0x20u);
  }

  v15 = SPLogForSPLogCategoryDefault();
  v16 = v15;
  if (gSPLogDebugAsDefault)
  {
    v17 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v17 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v15, v17))
  {
    *buf = 138412546;
    v23 = v8;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v16, v17, "contact: %@ %@", buf, 0x16u);
  }

  if (v8)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000DAC8;
    v19[3] = &unk_1000925D8;
    v20 = *(a1 + 32);
    v21 = v8;
    [(__CFNull *)v6 enumerateObjectsUsingBlock:v19];

    v18 = v20;
  }

  else
  {
    v18 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000624D8();
    }
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_10000DAD8(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault();
  v3 = v2;
  if (gSPLogDebugAsDefault)
  {
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v4 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v2, v4))
  {
    v5 = *(a1 + 32);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "contacts: %@", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  return _SISetKnownContactEmailMapping();
}

void sub_10000DBA8(void *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v14 = v5;
    v15 = v6;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000DC54;
    v11[3] = &unk_100092650;
    v8 = a1[6];
    v9 = a1[4];
    v10 = a1[5];
    v13 = a1[7];
    v11[4] = v9;
    v12 = v10;
    [a5 enumerateQueryResults:v8 stringCache:0 usingBlock:v11];
  }
}

void sub_10000DC54(uint64_t a1, CFNullRef *a2)
{
  v155 = a1;
  v156 = objc_autoreleasePoolPush();
  v3 = a2[2];
  if (v3 == kCFNull)
  {
    v3 = 0;
  }

  v158 = v3;
  v4 = a2[3];
  if (v4 == kCFNull)
  {
    v4 = 0;
  }

  v167 = v4;
  v5 = a2[4];
  if (v5 == kCFNull)
  {
    v5 = 0;
  }

  v165 = v5;
  v6 = a2[5];
  if (v6 == kCFNull)
  {
    v6 = 0;
  }

  v164 = v6;
  v7 = a2[6];
  if (v7 == kCFNull)
  {
    v7 = 0;
  }

  v163 = v7;
  v8 = a2[7];
  if (v8 == kCFNull)
  {
    v8 = 0;
  }

  v162 = v8;
  v9 = a2[8];
  if (v9 == kCFNull)
  {
    v9 = 0;
  }

  v161 = v9;
  v10 = a2[9];
  if (v10 == kCFNull)
  {
    v10 = 0;
  }

  v160 = v10;
  v11 = a2[10];
  if (v11 == kCFNull)
  {
    v11 = 0;
  }

  v159 = v11;
  v12 = a2[11];
  if (v12 == kCFNull)
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = *a2;
  if (*a2 == kCFNull)
  {
    v14 = 0;
  }

  v157 = v14;
  v15 = SPLogForSPLogCategoryDefault();
  v16 = v15;
  if (gSPLogDebugAsDefault)
  {
    v17 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v17 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v15, v17))
  {
    v18 = *a2;
    v19 = a2[1];
    v20 = a2[2];
    v21 = a2[3];
    v22 = a2[4];
    v23 = a2[5];
    v24 = a2[6];
    v25 = a2[7];
    *buf = 138414082;
    v221 = v18;
    v222 = 2112;
    v223 = v19;
    v224 = 2112;
    v225 = v20;
    v226 = 2112;
    v227 = v21;
    v228 = 2112;
    v229 = v22;
    v230 = 2112;
    v231 = v23;
    v232 = 2112;
    v233 = v24;
    v234 = 2112;
    v235 = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "result: %@ %@ %@ %@ %@ %@ %@ %@", buf, 0x52u);
  }

  v26 = SPLogForSPLogCategoryDefault();
  v27 = v26;
  if (gSPLogDebugAsDefault)
  {
    v28 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v28 = OS_LOG_TYPE_DEBUG;
  }

  v30 = v157;
  v29 = v158;
  if (os_log_type_enabled(v26, v28))
  {
    *buf = 138414850;
    v221 = v157;
    v222 = 2112;
    v223 = v158;
    v224 = 2112;
    v225 = v167;
    v226 = 2112;
    v227 = v165;
    v228 = 2112;
    v229 = v164;
    v230 = 2112;
    v231 = v163;
    v232 = 2112;
    v233 = v162;
    v234 = 2112;
    v235 = v161;
    v236 = 2112;
    v237 = v160;
    v238 = 2112;
    v239 = v159;
    v240 = 2112;
    v241 = v13;
    _os_log_impl(&_mh_execute_header, v27, v28, "contact: %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@", buf, 0x70u);
  }

  v31 = v167;
  if (v157)
  {
    v168 = &v153;
    v32 = [(__CFNull *)v158 count:0];
    v166 = v13;
    v154 = &v154;
    if (v32)
    {
      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v207 = 0u;
      v33 = v29;
      v34 = [(__CFNull *)v33 countByEnumeratingWithState:&v206 objects:v219 count:16];
      if (v34)
      {
        v35 = v34;
        v169 = 0;
        v36 = 0;
        v37 = *v207;
        v38 = 1;
        v39 = 4;
        while (2)
        {
          v40 = 0;
          v41 = v39;
          do
          {
            if (*v207 != v37)
            {
              objc_enumerationMutation(v33);
            }

            if (v41 == v40)
            {
              v44 = 0;
              goto LABEL_48;
            }

            v42 = *(*(&v206 + 1) + 8 * v40);
            if (v42 != kCFNull && [*(*(&v206 + 1) + 8 * v40) intValue])
            {
              v43 = v169;
              v168[v38] = v42;
              v169 = (1 << v36) | v43;
              v38 = (v38 + 1);
            }

            ++v36;
            v40 = v40 + 1;
          }

          while (v35 != v40);
          v35 = [(__CFNull *)v33 countByEnumeratingWithState:&v206 objects:v219 count:16];
          v39 = v41 - v40;
          if (v35)
          {
            continue;
          }

          break;
        }

        v44 = v41 - v40;
LABEL_48:
        v13 = v166;
      }

      else
      {
        v169 = 0;
        v36 = 0;
        v44 = 4;
        v38 = 1;
      }

      v45 = v44 + v36;
      v31 = v167;
    }

    else
    {
      v169 = 0;
      v45 = 4;
      v38 = 1;
    }

    if ([(__CFNull *)v31 count])
    {
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v46 = v31;
      v47 = [(__CFNull *)v46 countByEnumeratingWithState:&v202 objects:v218 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v203;
        v50 = 4;
        while (2)
        {
          v51 = 0;
          v52 = v50;
          do
          {
            if (*v203 != v49)
            {
              objc_enumerationMutation(v46);
            }

            if (v52 == v51)
            {
              v55 = 0;
              goto LABEL_66;
            }

            v53 = *(*(&v202 + 1) + 8 * v51);
            if (v53 != kCFNull && [*(*(&v202 + 1) + 8 * v51) intValue])
            {
              v54 = v169;
              v168[v38] = v53;
              v169 = (1 << v45) | v54;
              v38 = (v38 + 1);
            }

            ++v45;
            v51 = v51 + 1;
          }

          while (v48 != v51);
          v48 = [(__CFNull *)v46 countByEnumeratingWithState:&v202 objects:v218 count:16];
          v50 = v52 - v51;
          if (v48)
          {
            continue;
          }

          break;
        }

        v55 = v52 - v51;
LABEL_66:
        v13 = v166;
      }

      else
      {
        v55 = 4;
      }

      v31 = v167;
    }

    else
    {
      v55 = 4;
    }

    v56 = v55 + v45;
    v57 = v165;
    if ([(__CFNull *)v165 count])
    {
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v58 = v57;
      v59 = [(__CFNull *)v58 countByEnumeratingWithState:&v198 objects:v217 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v199;
        v62 = 4;
        while (2)
        {
          v63 = 0;
          v64 = v62;
          do
          {
            if (*v199 != v61)
            {
              objc_enumerationMutation(v58);
            }

            if (v64 == v63)
            {
              v67 = 0;
              goto LABEL_84;
            }

            v65 = *(*(&v198 + 1) + 8 * v63);
            if (v65 != kCFNull && [*(*(&v198 + 1) + 8 * v63) intValue])
            {
              v66 = v169;
              v168[v38] = v65;
              v169 = (1 << v56) | v66;
              v38 = (v38 + 1);
            }

            ++v56;
            v63 = v63 + 1;
          }

          while (v60 != v63);
          v60 = [(__CFNull *)v58 countByEnumeratingWithState:&v198 objects:v217 count:16];
          v62 = v64 - v63;
          if (v60)
          {
            continue;
          }

          break;
        }

        v67 = v64 - v63;
LABEL_84:
        v13 = v166;
      }

      else
      {
        v67 = 4;
      }

      v31 = v167;
    }

    else
    {
      v67 = 4;
    }

    v68 = v67 + v56;
    v69 = v164;
    if ([(__CFNull *)v164 count])
    {
      v196 = 0u;
      v197 = 0u;
      v194 = 0u;
      v195 = 0u;
      v70 = v69;
      v71 = [(__CFNull *)v70 countByEnumeratingWithState:&v194 objects:v216 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = *v195;
        v74 = 4;
        while (2)
        {
          v75 = 0;
          v76 = v74;
          do
          {
            if (*v195 != v73)
            {
              objc_enumerationMutation(v70);
            }

            if (v76 == v75)
            {
              v79 = 0;
              goto LABEL_102;
            }

            v77 = *(*(&v194 + 1) + 8 * v75);
            if (v77 != kCFNull && [*(*(&v194 + 1) + 8 * v75) intValue])
            {
              v78 = v169;
              v168[v38] = v77;
              v169 = (1 << v68) | v78;
              v38 = (v38 + 1);
            }

            ++v68;
            v75 = v75 + 1;
          }

          while (v72 != v75);
          v72 = [(__CFNull *)v70 countByEnumeratingWithState:&v194 objects:v216 count:16];
          v74 = v76 - v75;
          if (v72)
          {
            continue;
          }

          break;
        }

        v79 = v76 - v75;
LABEL_102:
        v13 = v166;
      }

      else
      {
        v79 = 4;
      }

      v31 = v167;
    }

    else
    {
      v79 = 4;
    }

    v80 = v79 + v68;
    v81 = v163;
    if ([(__CFNull *)v163 count])
    {
      v192 = 0u;
      v193 = 0u;
      v190 = 0u;
      v191 = 0u;
      v82 = v81;
      v83 = [(__CFNull *)v82 countByEnumeratingWithState:&v190 objects:v215 count:16];
      if (v83)
      {
        v84 = v83;
        v85 = *v191;
        v86 = 4;
        while (2)
        {
          v87 = 0;
          v88 = v86;
          do
          {
            if (*v191 != v85)
            {
              objc_enumerationMutation(v82);
            }

            if (v88 == v87)
            {
              v91 = 0;
              goto LABEL_120;
            }

            v89 = *(*(&v190 + 1) + 8 * v87);
            if (v89 != kCFNull && [*(*(&v190 + 1) + 8 * v87) intValue])
            {
              v90 = v169;
              v168[v38] = v89;
              v169 = (1 << v80) | v90;
              v38 = (v38 + 1);
            }

            ++v80;
            v87 = v87 + 1;
          }

          while (v84 != v87);
          v84 = [(__CFNull *)v82 countByEnumeratingWithState:&v190 objects:v215 count:16];
          v86 = v88 - v87;
          if (v84)
          {
            continue;
          }

          break;
        }

        v91 = v88 - v87;
LABEL_120:
        v13 = v166;
      }

      else
      {
        v91 = 4;
      }

      v31 = v167;
    }

    else
    {
      v91 = 4;
    }

    v92 = v91 + v80;
    v93 = v162;
    if ([(__CFNull *)v162 count])
    {
      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      v94 = v93;
      v95 = [(__CFNull *)v94 countByEnumeratingWithState:&v186 objects:v214 count:16];
      if (v95)
      {
        v96 = v95;
        v97 = *v187;
        v98 = 4;
        while (2)
        {
          v99 = 0;
          v100 = v98;
          do
          {
            if (*v187 != v97)
            {
              objc_enumerationMutation(v94);
            }

            if (v100 == v99)
            {
              v103 = 0;
              goto LABEL_138;
            }

            v101 = *(*(&v186 + 1) + 8 * v99);
            if (v101 != kCFNull && [*(*(&v186 + 1) + 8 * v99) intValue])
            {
              v102 = v169;
              v168[v38] = v101;
              v169 = (1 << v92) | v102;
              v38 = (v38 + 1);
            }

            ++v92;
            v99 = v99 + 1;
          }

          while (v96 != v99);
          v96 = [(__CFNull *)v94 countByEnumeratingWithState:&v186 objects:v214 count:16];
          v98 = v100 - v99;
          if (v96)
          {
            continue;
          }

          break;
        }

        v103 = v100 - v99;
LABEL_138:
        v13 = v166;
      }

      else
      {
        v103 = 4;
      }

      v31 = v167;
    }

    else
    {
      v103 = 4;
    }

    v104 = v103 + v92;
    v105 = v161;
    if ([(__CFNull *)v161 count])
    {
      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v106 = v105;
      v107 = [(__CFNull *)v106 countByEnumeratingWithState:&v182 objects:v213 count:16];
      if (v107)
      {
        v108 = v107;
        v109 = *v183;
        v110 = 4;
        while (2)
        {
          v111 = 0;
          v112 = v110;
          do
          {
            if (*v183 != v109)
            {
              objc_enumerationMutation(v106);
            }

            if (v112 == v111)
            {
              v115 = 0;
              goto LABEL_156;
            }

            v113 = *(*(&v182 + 1) + 8 * v111);
            if (v113 != kCFNull && [*(*(&v182 + 1) + 8 * v111) intValue])
            {
              v114 = v169;
              v168[v38] = v113;
              v169 = (1 << v104) | v114;
              v38 = (v38 + 1);
            }

            ++v104;
            v111 = v111 + 1;
          }

          while (v108 != v111);
          v108 = [(__CFNull *)v106 countByEnumeratingWithState:&v182 objects:v213 count:16];
          v110 = v112 - v111;
          if (v108)
          {
            continue;
          }

          break;
        }

        v115 = v112 - v111;
LABEL_156:
        v13 = v166;
      }

      else
      {
        v115 = 4;
      }

      v31 = v167;
    }

    else
    {
      v115 = 4;
    }

    v116 = v115 + v104;
    v117 = v160;
    if ([(__CFNull *)v160 count])
    {
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      v118 = v117;
      v119 = [(__CFNull *)v118 countByEnumeratingWithState:&v178 objects:v212 count:16];
      if (v119)
      {
        v120 = v119;
        v121 = *v179;
        v122 = 4;
        while (2)
        {
          v123 = 0;
          v124 = v122;
          do
          {
            if (*v179 != v121)
            {
              objc_enumerationMutation(v118);
            }

            if (v124 == v123)
            {
              v127 = 0;
              goto LABEL_174;
            }

            v125 = *(*(&v178 + 1) + 8 * v123);
            if (v125 != kCFNull && [*(*(&v178 + 1) + 8 * v123) intValue])
            {
              v126 = v169;
              v168[v38] = v125;
              v169 = (1 << v116) | v126;
              v38 = (v38 + 1);
            }

            ++v116;
            v123 = v123 + 1;
          }

          while (v120 != v123);
          v120 = [(__CFNull *)v118 countByEnumeratingWithState:&v178 objects:v212 count:16];
          v122 = v124 - v123;
          if (v120)
          {
            continue;
          }

          break;
        }

        v127 = v124 - v123;
LABEL_174:
        v13 = v166;
      }

      else
      {
        v127 = 4;
      }

      v31 = v167;
    }

    else
    {
      v127 = 4;
    }

    v128 = v127 + v116;
    v129 = v159;
    if ([(__CFNull *)v159 count])
    {
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v130 = v129;
      v131 = [(__CFNull *)v130 countByEnumeratingWithState:&v174 objects:v211 count:16];
      if (v131)
      {
        v132 = v131;
        v133 = *v175;
        v134 = 4;
        while (2)
        {
          v135 = 0;
          v136 = v134;
          do
          {
            if (*v175 != v133)
            {
              objc_enumerationMutation(v130);
            }

            if (v136 == v135)
            {
              v139 = 0;
              goto LABEL_192;
            }

            v137 = *(*(&v174 + 1) + 8 * v135);
            if (v137 != kCFNull && [*(*(&v174 + 1) + 8 * v135) intValue])
            {
              v138 = v169;
              v168[v38] = v137;
              v169 = (1 << v128) | v138;
              v38 = (v38 + 1);
            }

            ++v128;
            v135 = v135 + 1;
          }

          while (v132 != v135);
          v132 = [(__CFNull *)v130 countByEnumeratingWithState:&v174 objects:v211 count:16];
          v134 = v136 - v135;
          if (v132)
          {
            continue;
          }

          break;
        }

        v139 = v136 - v135;
LABEL_192:
        v13 = v166;
      }

      else
      {
        v139 = 4;
      }

      v31 = v167;
    }

    else
    {
      v139 = 4;
    }

    if ([(__CFNull *)v13 count])
    {
      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      v171 = 0u;
      v140 = v13;
      v141 = [(__CFNull *)v140 countByEnumeratingWithState:&v170 objects:v210 count:16];
      if (v141)
      {
        v142 = v141;
        v143 = v139 + v128;
        v144 = *v171;
        v145 = 4;
LABEL_199:
        v146 = 0;
        while (1)
        {
          if (*v171 != v144)
          {
            objc_enumerationMutation(v140);
          }

          if (v145 == v146)
          {
            break;
          }

          v147 = *(*(&v170 + 1) + 8 * v146);
          if (v147 != kCFNull && [*(*(&v170 + 1) + 8 * v146) intValue])
          {
            v148 = v169;
            v168[v38] = v147;
            v169 = (1 << v143) | v148;
            v38 = (v38 + 1);
          }

          ++v143;
          if (v142 == ++v146)
          {
            v142 = [(__CFNull *)v140 countByEnumeratingWithState:&v170 objects:v210 count:16];
            v145 -= v146;
            if (v142)
            {
              goto LABEL_199;
            }

            break;
          }
        }
      }

      v13 = v166;
      v31 = v167;
    }

    v149 = [NSNumber numberWithUnsignedLongLong:v169];
    v150 = v168;
    *v168 = v149;
    v151 = v155;
    if (v38 >= 42)
    {
      sub_10006250C(v155, v38);
    }

    v152 = [[NSArray alloc] initWithObjects:v150 count:v38];
    v30 = v157;
    [*(v151 + 40) setObject:v152 forKey:v157];

    v29 = v158;
  }

  objc_autoreleasePoolPop(v156);
}

uint64_t sub_10000EA9C(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault();
  v3 = v2;
  if (gSPLogDebugAsDefault)
  {
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v4 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v2, v4))
  {
    v5 = *(a1 + 32);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "contacts: %@", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  return _SISetKnownContactCounts();
}

void sub_10000ECBC(uint64_t a1)
{
  v2 = +[SRResourcesManager sharedResourcesManager];
  [v2 loadAllParameters];

  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    +[SSRankingManager reloadRankingParametersFromTrial];
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_group_leave(v3);
  }
}

void sub_10000ED58(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100062580();
  }

  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    v3 = +[SPCoreSpotlightDatastore sharedInstance];
    [v3 loadTrialDataOnActivate];
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_group_leave(v4);
  }
}

void sub_10000EEF4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000F9A8(id a1)
{
  if (byte_1000A82FC)
  {
    return;
  }

  if (!qword_1000A8300)
  {
    v1 = objc_opt_new();
    v2 = qword_1000A8300;
    qword_1000A8300 = v1;
  }

  v3 = SPFastApplicationsGet();
  os_unfair_lock_lock(&stru_1000A82F8);
  v4 = [qword_1000A82E8 mutableCopy];
  v5 = [qword_1000A82E0 mutableCopy];
  os_unfair_lock_unlock(&stru_1000A82F8);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [v3 allKeys];
  v6 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (!v6)
  {
    v29 = obj;
    goto LABEL_48;
  }

  v7 = v6;
  v31 = v3;
  v32 = 0;
  v8 = *v37;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v37 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v36 + 1) + 8 * i);
      if (([v5 containsObject:v10] & 1) == 0 && (objc_msgSend(qword_1000A8300, "containsObject:", v10) & 1) == 0)
      {
        v11 = [LSApplicationRecord alloc];
        v35 = 0;
        v12 = [v11 initWithBundleIdentifier:v10 allowPlaceholder:1 error:&v35];
        v13 = v35;
        if (v13)
        {
          v14 = v13;
          v15 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = v14;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        if (v12)
        {
          v16 = [v12 supportsSpotlightQueryContinuation];
          v17 = [v12 iTunesMetadata];
          v18 = [v17 genre];

          if (v16)
          {
            LODWORD(v32) = 1;
            v19 = v5;
            goto LABEL_20;
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = qword_1000A8300;
LABEL_20:
        [v19 addObject:v10];
        v20 = [v4 objectForKey:v10];

        if (!v20 && v18 && ([v18 isEqual:&stru_100094040] & 1) == 0)
        {
          [v4 setObject:v18 forKey:v10];
          HIDWORD(v32) = 1;
        }
      }

      v21 = [v4 objectForKey:v10];

      if (!v21)
      {
        v22 = [LSApplicationRecord alloc];
        v34 = 0;
        v23 = [v22 initWithBundleIdentifier:v10 allowPlaceholder:1 error:&v34];
        v24 = v34;
        if (v24)
        {
          v25 = v24;
          v26 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = v25;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        v27 = [v23 iTunesMetadata];
        v28 = [v27 genre];

        if (v28 && ([v28 isEqual:&stru_100094040] & 1) == 0)
        {
          [v4 setObject:v28 forKey:v10];
          HIDWORD(v32) = 1;
        }
      }
    }

    v7 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  }

  while (v7);

  v3 = v31;
  if ((v32 | HIDWORD(v32)))
  {
    if ((v32 & 0x100000000) != 0)
    {
      v29 = [v4 copy];
      if ((v32 & 1) == 0)
      {
        v30 = 0;
        goto LABEL_43;
      }

LABEL_42:
      v30 = [v5 copy];
    }

    else
    {
      v29 = 0;
      v30 = 0;
      if (v32)
      {
        goto LABEL_42;
      }
    }

LABEL_43:
    os_unfair_lock_lock(&stru_1000A82F8);
    if (v29)
    {
      objc_storeStrong(&qword_1000A82E8, v29);
    }

    if (v30)
    {
      objc_storeStrong(&qword_1000A82E0, v30);
    }

    os_unfair_lock_unlock(&stru_1000A82F8);

LABEL_48:
  }

  byte_1000A82FC = 1;
}

uint64_t sub_100011F64(void *a1)
{
  v1 = a1;
  if (SSPriorityIndexLimitBundles())
  {
    v2 = [qword_1000A82D8 containsObject:v1];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void sub_100011FB4(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = a1;
  v8 = a3;
  if (a5 != a2)
  {
    v9 = a2;
    handleHiddenResult();
    [v9 removeResults:v10];
  }
}

id sub_100014E9C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v10 = [SFMutableResultSection alloc];
        if (isKindOfClass)
        {
          v11 = [v10 initWithPrototype:v8];
          v12 = [v8 resultSet];
          [v11 setResultSet:v12];
        }

        else
        {
          v11 = [v10 initWithSection:{v8, v14}];
        }

        [v2 addObject:{v11, v14}];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return v2;
}

SFMutableResultSection *__cdecl sub_100015034(id a1, NSString *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  [v3 setDomain:1];
  [v3 setBundleIdentifier:v2];
  [v3 setMaxInitiallyVisibleResults:SPMaxVisibleResultsCountPerSection()];
  v4 = [SDLocUtilities displayNameForBundleIdentifer:v2];

  [v3 setTitle:v4];

  return v3;
}

void sub_1000150F8(id a1)
{
  v1 = objc_alloc_init(CNContactStore);
  v2 = qword_1000A8318;
  qword_1000A8318 = v1;

  v5 = CNContactIdentifierKey;
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  v4 = qword_1000A8328;
  qword_1000A8328 = v3;
}

void sub_100015194(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = v4 * a2;
  v6 = v4 * a2 + v4;
  if (v6 >= *(a1 + 64))
  {
    v6 = *(a1 + 64);
  }

  v7 = [*(a1 + 32) subarrayWithRange:{v5, v6 - v5}];
  v8 = [SPResultSet alloc];
  if (a2)
  {
    v9 = [v8 initWithSections:v7];
  }

  else
  {
    v9 = [v8 initWithSections:v7 stableSections:*(*(a1 + 40) + 136)];
  }

  v10 = v9;
  [*(a1 + 48) setObject:v9 atIndex:a2];
}

id sub_1000156BC(uint64_t a1)
{
  v2 = [*(a1 + 32) message];
  v7 = @"QID";
  v3 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 96)];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v2 sendReply:v4];

  v5 = [SDClient clientForConnection:*(*(a1 + 32) + 88)];
  [v5 removeActiveQuery:*(a1 + 32)];

  [*(a1 + 32) externalID];
  kdebug_trace();
  return [*(a1 + 32) setMessage:0];
}

int64_t sub_100015C9C(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 integerValue];
  if (v6 <= [v5 integerValue])
  {
    v8 = [v4 integerValue];
    if (v8 >= [v5 integerValue])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_100016448(void *a1, const char *a2, uint64_t a3)
{
  v7 = a1;
  clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  os_unfair_lock_lock(&unk_1000A8340);
  empty = [v7 perfDictionary];
  if (!empty)
  {
    empty = xpc_dictionary_create_empty();
  }

  xpc_dictionary_set_string(empty, "label", a2);
  v6 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  xpc_dictionary_set_double(empty, "latency", (v6 - a3) / 1000000000.0);
  analytics_send_event();
  [v7 setPerfDictionary:0];
  os_unfair_lock_unlock(&unk_1000A8340);
}

void sub_100017C28(uint64_t a1)
{
  [*(a1 + 32) addObject:?];
  v1 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] by-pass L3", v2, 2u);
  }
}

id sub_100017C98(uint64_t a1, unint64_t a2)
{
  v4 = [[NSMutableOrderedSet alloc] initWithArray:*(a1 + 32)];
  [v4 addObjectsFromArray:*(a1 + 40)];
  v5 = [v4 count];
  if (*(a1 + 32))
  {
    v6 = v5 > a2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [v4 removeObjectsInRange:{a2, &v5[-a2]}];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = *(a1 + 40);
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if (([v4 containsObject:{v12, v16}] & 1) == 0)
          {
            [v4 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    *(*(a1 + 48) + 162) = 0;
  }

  v13 = [v4 array];
  v14 = [v13 mutableCopy];

  return v14;
}

unint64_t sub_100017E38(void *a1, const char *a2, const char *a3, uint64_t a4)
{
  v7 = a1;
  v8 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  key = 0;
  asprintf(&key, "%s_label", a3);
  v12 = 0;
  asprintf(&v12, "%s_latency", a3);
  os_unfair_lock_lock(&unk_1000A8340);
  empty = [v7 perfDictionary];
  if (!empty)
  {
    empty = xpc_dictionary_create_empty();
    [v7 setPerfDictionary:empty];
  }

  v10 = v8 - a4;
  xpc_dictionary_set_string(empty, key, a2);
  xpc_dictionary_set_double(empty, v12, v10 / 1000000000.0);
  os_unfair_lock_unlock(&unk_1000A8340);
  free(key);
  free(v12);

  return v10;
}

uint64_t sub_100017F48(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 preferredBundleIDs];
  v9 = [v7 bundleIdentifier];

  v10 = [v8 indexOfObject:v9];
  v11 = [*(a1 + 32) preferredBundleIDs];
  v12 = [v6 bundleIdentifier];

  v13 = [v11 indexOfObject:v12];
  if (v10 >= v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  if (v10 > v13)
  {
    return 1;
  }

  else
  {
    return v14;
  }
}

int64_t sub_10001A22C(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 rankingItem];
  v6 = [v4 rankingItem];

  if (!v5 || !v6)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if (([v5 isServerAlternativeResult] & 1) != 0 || (objc_msgSend(v6, "isServerAlternativeResult") & 1) == 0)
  {
    if ([v5 isServerAlternativeResult] && !objc_msgSend(v6, "isServerAlternativeResult"))
    {
      v7 = 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = -1;
LABEL_9:

  return v7;
}

void sub_10001BAE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak(&STACK[0x2E0]);
  sub_1000066D4(&STACK[0x2B0]);
  _Unwind_Resume(a1);
}

int64_t sub_10001BC04(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 rankingItem];
  v6 = [v4 rankingItem];

  if (!v5 || !v6)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if (([v5 isServerAlternativeResult] & 1) != 0 || (objc_msgSend(v6, "isServerAlternativeResult") & 1) == 0)
  {
    if ([v5 isServerAlternativeResult] && !objc_msgSend(v6, "isServerAlternativeResult"))
    {
      v7 = 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = -1;
LABEL_9:

  return v7;
}

void sub_10001BCB0(uint64_t a1, char a2)
{
  v4 = si_tracing_current_span();
  v5 = *(v4 + 16);
  v53 = *v4;
  v54 = v5;
  v55 = *(v4 + 32);
  v6 = *(a1 + 64);
  *v4 = *(a1 + 48);
  *(v4 + 16) = v6;
  v44 = v4;
  *(v4 + 32) = *(a1 + 80);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained && ([WeakRetained cancelled] & 1) == 0)
  {
    v9 = *(v44 + 16);
    v50 = *v44;
    v51 = v9;
    v52 = *(v44 + 32);
    v10 = *v44;
    spanid = si_tracing_calc_next_spanid();
    v12 = *(v44 + 8);
    v13 = *(v44 + 24);
    *v44 = v10;
    *(v44 + 8) = spanid;
    *(v44 + 16) = v12;
    *(v44 + 28) = 102;
    *(v44 + 32) = "sendResultsBlock";
    si_tracing_log_span_begin();
    v14 = SPLogForSPLogCategoryQuery();
    v15 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v14, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, ((v15 & 1) == 0), "Show local results while waiting for slow queries", buf, 2u);
    }

    if ((a2 & 1) == 0)
    {
      AnalyticsSendEventLazy();
      v16 = (v8 + 120);
      if (!*(v8 + 15))
      {
        v23 = 0;
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v16 = (v8 + 120);
    if (!*(v8 + 15))
    {
      v23 = 1;
      goto LABEL_22;
    }

    v17 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Timer fired for CoreSpotlight priority path", buf, 2u);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v19 = *(a1 + 32);
    v20 = Current - *(v19 + 104);
    if (v20 >= *(v19 + 112))
    {
      v21 = SPLogForSPLogCategoryDefault();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:

LABEL_20:
        dispatch_source_cancel(*v16);
        dispatch_source_set_event_handler(*v16, 0);
        v23 = 0;
        v24 = *v16;
        *v16 = 0;
LABEL_21:

LABEL_22:
        if (([v8 cancelled] & 1) == 0)
        {
          if ((v23 & 1) == 0 && ![*(v8 + 38) count])
          {
            [v8 sendFinishedDomains:1 reason:1];
            v8[166] = 1;
            v8[171] = 1;
            goto LABEL_27;
          }

          [v8 sendFinishedDomains:4];
        }

        if (v23)
        {
LABEL_39:
          v33 = *v44;
          v34 = *(v44 + 8);
          v35 = *(v44 + 16);
          v36 = *(v44 + 24);
          v37 = *(v44 + 28);
          v38 = *(v44 + 32);
          si_tracing_log_span_end();
          v39 = v51;
          *v44 = v50;
          *(v44 + 16) = v39;
          *(v44 + 32) = v52;
          goto LABEL_40;
        }

LABEL_27:
        v25 = v8;
        objc_sync_enter(v25);
        if ([v25[41] count])
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v26 = v25[41];
          v27 = [v26 countByEnumeratingWithState:&v45 objects:v56 count:16];
          if (v27)
          {
            v28 = *v46;
            do
            {
              for (i = 0; i != v27; i = i + 1)
              {
                v30 = v8;
                if (*v46 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v45 + 1) + 8 * i);
                v32 = [v31 performQuery:v25];
                if (v32)
                {
                  [v25[40] addObject:v32];
                }

                [v25[41] removeObject:v31];

                v8 = v30;
              }

              v27 = [v26 countByEnumeratingWithState:&v45 objects:v56 count:16];
            }

            while (v27);
          }
        }

        objc_sync_exit(v25);

        goto LABEL_39;
      }

      *buf = 0;
      v22 = "Don't reset timer for CoreParsec; past deadline";
    }

    else
    {
      if (![*(v19 + 304) count])
      {
        v41 = *(a1 + 32);
        v42 = *(v41 + 120);
        v43 = dispatch_time(0, ((*(v41 + 112) - v20) * 1000000000.0));
        dispatch_source_set_timer(v42, v43, 0xFFFFFFFFFFFFFFFFLL, 0);
        v24 = SPLogForSPLogCategoryDefault();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Reset timer for CoreParsec", buf, 2u);
        }

        v23 = 1;
        goto LABEL_21;
      }

      v21 = SPLogForSPLogCategoryDefault();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 0;
      v22 = "Don't reset timer for CoreParsec; other waiting stores exist";
    }

    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
    goto LABEL_19;
  }

LABEL_40:

  v40 = v54;
  *v44 = v53;
  *(v44 + 16) = v40;
  *(v44 + 32) = v55;
}

void sub_10001C1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, __int128 a28, uint64_t a29)
{
  sub_1000066D4(&a21);
  v30 = a28;
  *a10 = a27;
  *(a10 + 16) = v30;
  *(a10 + 32) = a29;
  _Unwind_Resume(a1);
}

void sub_10001C308(id a1)
{
  v1 = +[NSLocale preferredLanguages];
  v2 = [v1 firstObject];
  v3 = [v2 lowercaseString];

  if (([v3 hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"zh") & 1) != 0 || objc_msgSend(v3, "hasPrefix:", @"ko"))
  {
    byte_1000A8330 = 1;
  }
}

__uint64_t sub_10001DA2C(uint64_t a1, const char *a2, const char *a3, uint64_t a4)
{
  v7 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - a4;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "label", a2);
  xpc_dictionary_set_string(empty, "datastore", a3);
  v9 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  xpc_dictionary_set_double(empty, "latency", (v9 - a4) / 1000000000.0);
  analytics_send_event();

  return v7;
}

unint64_t sub_10001DAE0(void *a1, const char *a2, const char *a3, uint64_t a4, const char *a5, unint64_t a6, const char *a7, unint64_t a8, const char *a9, unint64_t a10)
{
  v17 = a1;
  v18 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  key = 0;
  asprintf(&key, "%s_label", a3);
  v25 = 0;
  asprintf(&v25, "%s_latency", a3);
  v23 = 0;
  v24 = 0;
  v22 = 0;
  if (a5)
  {
    asprintf(&v24, "%s_%s", a3, a5);
  }

  if (a7)
  {
    asprintf(&v23, "%s_%s", a3, a7);
  }

  if (a9)
  {
    asprintf(&v22, "%s_%s", a3, a9);
  }

  v19 = v18 - a4;
  os_unfair_lock_lock(&unk_1000A8340);
  empty = [v17 perfDictionary];
  if (!empty)
  {
    empty = xpc_dictionary_create_empty();
    [v17 setPerfDictionary:empty];
  }

  xpc_dictionary_set_string(empty, key, a2);
  xpc_dictionary_set_double(empty, v25, v19 / 1000000000.0);
  if (v24)
  {
    xpc_dictionary_set_double(empty, v24, a6 / 1000000000.0);
  }

  if (v23)
  {
    xpc_dictionary_set_double(empty, v23, a8 / 1000000000.0);
  }

  if (v22)
  {
    xpc_dictionary_set_double(empty, v22, a10 / 1000000000.0);
  }

  os_unfair_lock_unlock(&unk_1000A8340);
  free(key);
  free(v25);
  free(v24);
  free(v23);
  free(v22);

  return v19;
}

void sub_10001DD14(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);
  v3 = dispatch_queue_attr_make_with_overcommit();
  v4 = dispatch_queue_attr_make_initially_inactive(v3);
  v5 = dispatch_queue_create("com.apple.searchd.application.updates", v4);
  v6 = qword_1000A8368;
  qword_1000A8368 = v5;

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);
  v9 = dispatch_queue_attr_make_with_overcommit();
  v10 = dispatch_queue_create("com.apple.searchd.application.localization.updates", v9);
  v11 = qword_1000A8370;
  qword_1000A8370 = v10;

  v12 = [CSCustomAttributeKey alloc];
  v13 = [v12 initWithKeyName:off_1000A7DB8[0] searchable:0 searchableByDefault:0 unique:1 multiValued:0];
  v14 = qword_1000A8350;
  qword_1000A8350 = v13;

  v19 = _CFCopySystemVersionDictionary();
  v15 = [v19 objectForKeyedSubscript:_kCFSystemVersionBuildVersionKey];
  v16 = qword_1000A8358;
  qword_1000A8358 = v15;

  qword_1000A8378 = SSExtraApplicationVersion();
  v17 = objc_alloc_init(SPApplicationIndexer);
  v18 = qword_1000A8348;
  qword_1000A8348 = v17;
}

void sub_10001DF34(id a1)
{
  v1 = si_tracing_current_span();
  v13 = *v1;
  v14 = *(v1 + 16);
  v15 = *(v1 + 32);
  v2 = si_tracing_calc_traceid();
  spanid = si_tracing_calc_next_spanid();
  *v1 = v2;
  *(v1 + 8) = spanid;
  *(v1 + 16) = 0;
  *(v1 + 24) = -1;
  *(v1 + 28) = 102;
  *(v1 + 32) = "defaultAppAttributes";
  si_tracing_log_span_begin();
  v4 = _MDBundleUtilsCopyLocalizedDescriptionDictionary();
  if (v4)
  {
    v5 = [[CSLocalizedString alloc] initWithLocalizedStrings:v4];
    v6 = qword_1000A8380;
    qword_1000A8380 = v5;
  }

  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 28);
  v12 = *(v1 + 32);
  si_tracing_log_span_end();
  *v1 = v13;
  *(v1 + 16) = v14;
  *(v1 + 32) = v15;
}

id sub_10001E188(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Apps changed!", v4, 2u);
  }

  [*(a1 + 32) updateApplications:0 appBundleArray:0 clean:0 activity:0];
  [*(a1 + 32) updateShortcuts:0];
  return +[SDSearchQuery invalidateCacheForSearchContinuation];
}

void sub_10001F2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001F2F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001F308(uint64_t a1, const char *a2, uint64_t a3)
{
  strcpy(&a2[a3], "Info.plist");
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001F4F4;
  v3[3] = &unk_100092B60;
  v5 = a2;
  v4 = *(a1 + 32);
  sub_10001F3A4(a2, v3);
}

void sub_10001F3A4(const char *a1, void *a2)
{
  v3 = a2;
  v4 = open(a1, 0);
  if (v4 != -1)
  {
    v5 = v4;
    memset(&v12, 0, sizeof(v12));
    fstat(v4, &v12);
    st_size = v12.st_size;
    v7 = mmap(0, v12.st_size, 1, 1, v5, 0);
    if (v7 != -1)
    {
      v8 = v7;
      v9 = objc_autoreleasePoolPush();
      v10 = [NSData dataWithBytesNoCopy:v8 length:st_size freeWhenDone:0];
      v11 = CFPropertyListCreateWithData(kCFAllocatorDefault, v10, 0, 0, 0);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3[2](v3, v11);
      }

      objc_autoreleasePoolPop(v9);
      munmap(v8, st_size);
    }

    close(v5);
  }
}

void sub_10001F4F4(void *a1, void *a2)
{
  v3 = a2;
  v4 = _kCFBundleDisplayNameKey;
  v5 = [v3 objectForKeyedSubscript:_kCFBundleDisplayNameKey];
  v6 = *(a1[4] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (v5)
  {
    v8 = *(*(a1[4] + 8) + 40);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(a1[4] + 8) + 40);
        v20 = [objc_opt_class() description];
        v21 = v20;
        v22 = *(*(a1[4] + 8) + 40);
        v23 = a1[6];
        if (!v23)
        {
          v23 = "";
        }

        v29 = 138413058;
        v30 = v4;
        v31 = 2112;
        v32 = v20;
        v33 = 2112;
        v34 = v22;
        v35 = 2080;
        v36 = v23;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ invalid type %@ %@ %s", &v29, 0x2Au);
      }

      v10 = *(a1[4] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = 0;
    }
  }

  if (!*(*(a1[5] + 8) + 40))
  {
    v12 = [v3 objectForKeyedSubscript:kCFBundleNameKey];
    v13 = *(a1[5] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    if (v12)
    {
      v15 = *(*(a1[5] + 8) + 40);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = SPLogForSPLogCategoryDefault();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v24 = *(*(a1[5] + 8) + 40);
          v25 = [objc_opt_class() description];
          v26 = v25;
          v27 = a1[6];
          v28 = *(*(a1[5] + 8) + 40);
          if (!v27)
          {
            v27 = "";
          }

          v29 = 138413058;
          v30 = kCFBundleNameKey;
          v31 = 2112;
          v32 = v25;
          v33 = 2112;
          v34 = v28;
          v35 = 2080;
          v36 = v27;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@ invalid type %@ %@ %s", &v29, 0x2Au);
        }

        v17 = *(a1[5] + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = 0;
      }
    }
  }
}

void sub_100020CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Unwind_Resume(a1);
}

void sub_100020D90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 localizedSubtitle];
    [*(a1 + 40) setSubtitle:v5];
    [*(a1 + 32) setSubtitle:v5];

    v6 = [v4 applicationBundleIdentifier];
    [*(a1 + 40) setRelatedAppBundleIdentifier:v6];

    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    v7 = +[CPSWebClipStore sharedStore];
    v8 = *(a1 + 56);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100020EDC;
    v9[3] = &unk_100092BB0;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = 0;
    v13 = *(a1 + 48);
    [v7 getAppClipWithURLHash:v8 completionHandler:v9];
  }
}

void sub_100020EDC(uint64_t a1, void *a2)
{
  v3 = [a2 localizedSubtitle];
  [*(a1 + 40) setSubtitle:v3];
  [*(a1 + 32) setSubtitle:v3];

  v4 = [*(a1 + 48) applicationBundleIdentifier];
  [*(a1 + 40) setRelatedAppBundleIdentifier:v4];

  v5 = *(a1 + 56);

  dispatch_group_leave(v5);
}

void sub_100020F5C(uint64_t a1, const char *a2, uint64_t a3)
{
  strcpy(&a2[a3], "Info.plist");
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100020FF8;
  v3[3] = &unk_100092B60;
  v5 = a2;
  v4 = *(a1 + 32);
  sub_10001F3A4(a2, v3);
}

void sub_100020FF8(void *a1, void *a2)
{
  v3 = a2;
  v4 = _kCFBundleDisplayNameKey;
  v5 = [v3 objectForKeyedSubscript:_kCFBundleDisplayNameKey];
  v6 = *(a1[4] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (v5)
  {
    v8 = *(*(a1[4] + 8) + 40);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(a1[4] + 8) + 40);
        v20 = [objc_opt_class() description];
        v21 = v20;
        v22 = *(*(a1[4] + 8) + 40);
        v23 = a1[6];
        if (!v23)
        {
          v23 = "";
        }

        v29 = 138413058;
        v30 = v4;
        v31 = 2112;
        v32 = v20;
        v33 = 2112;
        v34 = v22;
        v35 = 2080;
        v36 = v23;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ invalid type %@ %@ %s", &v29, 0x2Au);
      }

      v10 = *(a1[4] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = 0;
    }
  }

  if (!*(*(a1[5] + 8) + 40))
  {
    v12 = [v3 objectForKeyedSubscript:kCFBundleNameKey];
    v13 = *(a1[5] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    if (v12)
    {
      v15 = *(*(a1[5] + 8) + 40);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = SPLogForSPLogCategoryDefault();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v24 = *(*(a1[5] + 8) + 40);
          v25 = [objc_opt_class() description];
          v26 = v25;
          v27 = a1[6];
          v28 = *(*(a1[5] + 8) + 40);
          if (!v27)
          {
            v27 = "";
          }

          v29 = 138413058;
          v30 = kCFBundleNameKey;
          v31 = 2112;
          v32 = v25;
          v33 = 2112;
          v34 = v28;
          v35 = 2080;
          v36 = v27;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@ invalid type %@ %@ %s", &v29, 0x2Au);
        }

        v17 = *(a1[5] + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = 0;
      }
    }
  }
}

void sub_1000212C4(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = +[NSCharacterSet whitespaceCharacterSet];
    v4 = [v5 stringByTrimmingCharactersInSet:v3];

    if ([v4 length])
    {
      [*(a1 + 32) addObject:v4];
    }
  }
}

void sub_100021374(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = +[NSCharacterSet whitespaceCharacterSet];
    v4 = [v5 stringByTrimmingCharactersInSet:v3];

    if ([v4 length])
    {
      [*(a1 + 32) addObject:v4];
    }
  }
}

void sub_100021C78(id a1)
{
  v3 = _kCFURLLocalizedNameWithExtensionsHiddenDictionaryKey;
  v1 = [NSArray arrayWithObjects:&v3 count:1];
  v2 = qword_1000A8390;
  qword_1000A8390 = v1;
}

void sub_100021CF8(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault();
  v3 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v2, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, ((v3 & 1) == 0), "Updating applications journal complete", buf, 2u);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  tracing_dispatch_async();
  v4 = SPLogForSPLogCategoryDefault();
  v5 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v4, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v6 = *(a1 + 48);
    *buf = 134217984;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, ((v5 & 1) == 0), "Leaving group %p", buf, 0xCu);
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_100021E80(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(a1 + 40) + 16);
        v8 = [*(*(&v9 + 1) + 8 * v6) uniqueIdentifier];
        [v7 removeObject:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100021F98(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault();
  v3 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v2, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, ((v3 & 1) == 0), "Updating applications journal complete", buf, 2u);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  tracing_dispatch_async();
  v4 = SPLogForSPLogCategoryDefault();
  v5 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v4, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v6 = *(a1 + 48);
    *buf = 134217984;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, ((v5 & 1) == 0), "Leaving group %p", buf, 0xCu);
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_100022120(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(a1 + 40) + 16);
        v8 = [*(*(&v9 + 1) + 8 * v6) uniqueIdentifier];
        [v7 removeObject:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

id sub_100022350(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault();
  v3 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v2, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v4 = objc_retainBlock(*(a1 + 64));
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, ((v3 & 1) == 0), "2 call updateAppMetadata %p", &v6, 0xCu);
  }

  return [*(a1 + 32) _updateAppMetadata:*(a1 + 40) appsRequiringLocalization:*(a1 + 48) activity:*(a1 + 56) completion:*(a1 + 64)];
}

void sub_100023868(id a1)
{
  v3 = _kCFURLLocalizedNameWithExtensionsHiddenDictionaryKey;
  v1 = [NSArray arrayWithObjects:&v3 count:1];
  v2 = qword_1000A83A0;
  qword_1000A83A0 = v1;
}

void sub_1000238E8(uint64_t a1)
{
  v2 = +[SPCoreSpotlightIndexer sharedInstance];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = SPApplicationBundleIdGeneralAppClips;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100023A34;
  v11[3] = &unk_100092CD0;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v14 = *(a1 + 80);
  v10 = *(a1 + 64);
  v8 = *(&v10 + 1);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v13 = v10;
  v12 = v9;
  [v2 indexSearchableItems:v3 deleteSearchableItemsWithIdentifiers:v4 clientState:0 protectionClass:NSFileProtectionCompleteUntilFirstUserAuthentication forBundleID:v5 options:0 completionHandler:v11];
}

id sub_100023A34(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault();
  v3 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v2, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v2, ((v3 & 1) == 0), "Indexing applications journal complete", &v11, 2u);
  }

  if ([*(a1 + 32) count] || objc_msgSend(*(a1 + 40), "count"))
  {
    v4 = SPLogForSPLogCategoryDefault();
    v5 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v4, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v6 = objc_retainBlock(*(a1 + 64));
      v11 = 134217984;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v4, ((v5 & 1) == 0), "2.6 call updateApplicationMetadata completion %p", &v11, 0xCu);
    }

    return [*(a1 + 48) updateApplicationMetadata:*(a1 + 40) appsRequiringLocalization:*(a1 + 32) activity:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    v8 = SPLogForSPLogCategoryDefault();
    v9 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v8, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v10 = objc_retainBlock(*(a1 + 64));
      v11 = 134217984;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, ((v9 & 1) == 0), "2.2 call completion %p", &v11, 0xCu);
    }

    return (*(*(a1 + 64) + 16))();
  }
}

void sub_100024130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_10002416C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 isEqualToString:MDItemRelatedAppBundleIdentifier])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObjectsFromArray:v5];
  }
}

void sub_1000241E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100062668(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10002424C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(*(a1 + 32) + 8) + 40);
        v9 = [*(*(&v10 + 1) + 8 * v7) uniqueIdentifier];
        [v8 addObject:v9];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void sub_100024364(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000626D4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000243D0(uint64_t a1)
{
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  v3 = [v2 countByEnumeratingWithState:&v64 objects:v77 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v65;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v65 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v64 + 1) + 8 * i);
        if ([*(*(*(a1 + 48) + 8) + 40) containsObject:v7])
        {
          [*(*(*(a1 + 40) + 8) + 40) removeObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v64 objects:v77 count:16];
    }

    while (v4);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v8 = [*(*(*(a1 + 48) + 8) + 40) copy];
  v9 = [v8 countByEnumeratingWithState:&v60 objects:v76 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v61;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v61 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v60 + 1) + 8 * j);
        if (([*(*(*(a1 + 40) + 8) + 40) containsObject:v13] & 1) == 0)
        {
          [*(*(*(a1 + 48) + 8) + 40) removeObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v60 objects:v76 count:16];
    }

    while (v10);
  }

  v14 = &ADClientAddValueForScalarKey_ptr;
  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v15 = SPLogForSPLogCategoryDefault();
    v16 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v15, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v17 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v75 = v17;
      _os_log_impl(&_mh_execute_header, v15, ((v16 & 1) == 0), "[TopHitAppShortcuts] updateShortcuts add %@", buf, 0xCu);
    }

    v18 = objc_opt_new();
    v72 = @":EA:_kMDItemHasTopHitAppShortcuts";
    v73 = kCFBooleanTrue;
    v19 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = *(*(*(a1 + 48) + 8) + 40);
    v20 = [obj countByEnumeratingWithState:&v56 objects:v71 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v57;
      v23 = SPApplicationBundleIdGeneralApplication;
      do
      {
        for (k = 0; k != v21; k = k + 1)
        {
          if (*v57 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v56 + 1) + 8 * k);
          v26 = [[CSSearchableItemAttributeSet alloc] initWithAttributes:v19];
          v27 = [[CSSearchableItem alloc] initWithUniqueIdentifier:v25 domainIdentifier:0 attributeSet:v26];
          [v27 setBundleID:v23];
          [v27 setIsUpdate:1];
          [v18 addObject:v27];
        }

        v21 = [obj countByEnumeratingWithState:&v56 objects:v71 count:16];
      }

      while (v21);
    }

    v28 = v18;
    v14 = &ADClientAddValueForScalarKey_ptr;
  }

  else
  {
    v28 = 0;
  }

  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v29 = SPLogForSPLogCategoryDefault();
    v30 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v29, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v31 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412290;
      v75 = v31;
      _os_log_impl(&_mh_execute_header, v29, ((v30 & 1) == 0), "[TopHitAppShortcuts] updateShortcuts delete %@", buf, 0xCu);
    }

    if (!v28)
    {
      v28 = objc_opt_new();
    }

    v69 = MDItemHasTopHitAppShortcuts;
    v70 = kCFNull;
    v32 = [v14[429] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obja = *(*(*(a1 + 40) + 8) + 40);
    v33 = [obja countByEnumeratingWithState:&v52 objects:v68 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v53;
      v36 = SPApplicationBundleIdGeneralApplication;
      do
      {
        for (m = 0; m != v34; m = m + 1)
        {
          if (*v53 != v35)
          {
            objc_enumerationMutation(obja);
          }

          v38 = *(*(&v52 + 1) + 8 * m);
          v39 = [[CSSearchableItemAttributeSet alloc] initWithAttributes:v32];
          v40 = [[CSSearchableItem alloc] initWithUniqueIdentifier:v38 domainIdentifier:0 attributeSet:v39];
          [v40 setBundleID:v36];
          [v40 setIsUpdate:1];
          [v28 addObject:v40];
        }

        v34 = [obja countByEnumeratingWithState:&v52 objects:v68 count:16];
      }

      while (v34);
    }
  }

  if ([v28 count])
  {
    v41 = [v28 count];
    v42 = +[SPCoreSpotlightIndexer sharedInstance];
    v43 = SPApplicationBundleIdGeneralApplication;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100024AB4;
    v49[3] = &unk_100092D48;
    v51 = v41;
    v50 = *(a1 + 32);
    [v42 indexSearchableItems:v28 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:NSFileProtectionCompleteUntilFirstUserAuthentication forBundleID:v43 options:0 completionHandler:v49];
  }

  else
  {
    v44 = SPLogForSPLogCategoryDefault();
    v45 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v44, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v44, ((v45 & 1) == 0), "[TopHitAppShortcuts] updateShortcuts complete (no updates)", buf, 2u);
    }

    v46 = *(a1 + 32);
    if (v46)
    {
      dispatch_group_leave(v46);
    }
  }
}

void sub_100024AB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SPLogForSPLogCategoryDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100062740(v3, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else
  {
    v12 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v4, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v13 = *(a1 + 40);
      v15 = 134217984;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v5, ((v12 & 1) == 0), "[TopHitAppShortcuts] updateShortcuts complete (%lu updates)", &v15, 0xCu);
    }
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    dispatch_group_leave(v14);
  }
}

void sub_100025348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Unwind_Resume(a1);
}

void sub_1000253E8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a6;
  if (a2 == 1)
  {
    v19 = SPLogForSPLogCategoryDefault();
    v20 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v19, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v21 = *(a1 + 64);
      *buf = 134217984;
      *v44 = v21;
      _os_log_impl(&_mh_execute_header, v19, ((v20 & 1) == 0), "2 query finished %p", buf, 0xCu);
    }

    v22 = SPLogForSPLogCategoryDefault();
    v23 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v22, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v24 = [*(*(*(a1 + 88) + 8) + 40) count];
      *buf = 67109120;
      *v44 = v24;
      _os_log_impl(&_mh_execute_header, v22, ((v23 & 1) == 0), "Found %d existing applications", buf, 8u);
    }

    v27 = *(a1 + 64);
    v32 = *(a1 + 88);
    v33 = *(a1 + 112);
    v28 = *(a1 + 48);
    v29 = *(a1 + 72);
    v34 = *(a1 + 96);
    v30 = *(a1 + 40);
    v35 = *(a1 + 136);
    v31 = *(a1 + 80);
    tracing_dispatch_async();

    v18 = v27;
  }

  else if (a2)
  {
    v18 = SPLogForSPLogCategoryDefault();
    v25 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v18, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v26 = *(a1 + 64);
      *buf = 67109376;
      *v44 = a2;
      *&v44[4] = 2048;
      *&v44[6] = v26;
      _os_log_impl(&_mh_execute_header, v18, ((v25 & 1) == 0), "2 Unexpected message %d %p", buf, 0x12u);
    }
  }

  else
  {
    v10 = *(a1 + 120);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100025754;
    v36[3] = &unk_100092D98;
    v39 = *(a1 + 88);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v40 = *(a1 + 104);
    v14 = *(a1 + 56);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    *&v16 = v11;
    *(&v16 + 1) = v12;
    v37 = v16;
    v38 = v15;
    v17 = *(a1 + 128);
    v41 = *(a1 + 112);
    v42 = v17;
    [a5 enumerateQueryResults:v10 stringCache:0 usingBlock:v36];

    v18 = v37;
  }
}

void sub_100025754(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a2 + 8);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_45:

      goto LABEL_46;
    }

    v60 = v5;
    [*(*(*(a1 + 64) + 8) + 40) setValue:v5 forKey:v4];
    v6 = *(*(*(a1 + 72) + 8) + 40);
    if (v6)
    {
      [v6 removeObject:v4];
    }

    v7 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v8 = [v7 objectAtIndexedSubscript:0];
    [v8 doubleValue];
    v61 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

    v9 = [v7 objectAtIndexedSubscript:1];
    [v9 doubleValue];
    v11 = v10;

    [*(a2 + 48) doubleValue];
    v13 = v12;
    v14 = [v7 objectAtIndexedSubscript:2];
    [v14 doubleValue];
    v16 = v15;

    [*(a2 + 56) doubleValue];
    v18 = v17;
    v19 = [v7 objectAtIndexedSubscript:3];
    [v19 doubleValue];
    v21 = v20;

    [*(a2 + 64) doubleValue];
    v23 = v22;
    v24 = [v7 objectAtIndexedSubscript:4];
    [v24 doubleValue];
    v26 = v25;

    [*(a2 + 72) doubleValue];
    v28 = v27;
    v62 = a1;
    if ([v7 count])
    {
      v58 = *(a1 + 40);
      v29 = [v7 objectAtIndexedSubscript:1];
      v68[0] = v29;
      v30 = [v7 objectAtIndexedSubscript:2];
      v68[1] = v30;
      v31 = [v7 objectAtIndexedSubscript:3];
      v68[2] = v31;
      v32 = [v7 objectAtIndexedSubscript:4];
      v68[3] = v32;
      v33 = [v7 objectAtIndexedSubscript:0];
      v68[4] = v33;
      v34 = [NSArray arrayWithObjects:v68 count:5];
      [v58 setObject:v34 forKey:v4];

      a1 = v62;
    }

    if ([v7 count] && (!objc_msgSend(v61, "isEqualToDate:", *(a2 + 80)) || vabdd_f64(v11, v13) > 0.001 || vabdd_f64(v16, v18) > 0.001 || vabdd_f64(v21, v23) > 0.001 || vabdd_f64(v26, v28) > 0.001))
    {
      v35 = [v7 objectAtIndexedSubscript:{1, *(a1 + 48)}];
      v67[0] = v35;
      v36 = [v7 objectAtIndexedSubscript:2];
      v67[1] = v36;
      v37 = [v7 objectAtIndexedSubscript:3];
      v67[2] = v37;
      v38 = [v7 objectAtIndexedSubscript:4];
      v67[3] = v38;
      v39 = [v7 objectAtIndexedSubscript:0];
      v67[4] = v39;
      v40 = [NSArray arrayWithObjects:v67 count:5];
      [v59 setObject:v40 forKey:v4];

      a1 = v62;
    }

    v41 = *(a2 + 32);
    v42 = +[SPCorrectionHandler sharedHandler];
    v43 = [v42 versionForLanguage:*(*(*(a1 + 80) + 8) + 40)];

    if (v43)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v43 isEqualToString:v41])
      {
        v47 = 1;
        goto LABEL_28;
      }
    }

    v44 = *(a2 + 96);
    v45 = v44;
    if (v44)
    {
      v46 = [v44 BOOLValue];
      if (v46 == [*(a1 + 56) containsObject:v4])
      {
        v47 = 0;
LABEL_27:

LABEL_28:
        v51 = *(a2 + 40);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ((v47 | [*(a2 + 40) isEqualToString:*(*(*(a1 + 80) + 8) + 40)] ^ 1))
          {
            goto LABEL_43;
          }
        }

        else if (v47)
        {
          goto LABEL_43;
        }

        v52 = *(a2 + 16);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v54 = &off_100098A98;
        if (isKindOfClass)
        {
          v54 = v52;
        }

        v55 = v54;

        if ([&off_100098A80 compare:v55] <= 0)
        {
          v56 = *(a2 + 24);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v56 length])
          {
            if (!qword_1000A8358 || ([v4 hasPrefix:@"com.apple."] & 1) == 0)
            {

              a1 = v62;
              goto LABEL_48;
            }

            v57 = [v56 isEqualToString:qword_1000A8358];

            a1 = v62;
            if (v57)
            {
LABEL_48:
              if ([*(a2 + 88) integerValue] == *(a1 + 96))
              {
                goto LABEL_44;
              }
            }

LABEL_43:
            [*(*(*(a1 + 88) + 8) + 40) addObject:v4];
LABEL_44:

            v5 = v60;
            goto LABEL_45;
          }

          a1 = v62;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v46 = 0;
      v47 = 0;
      if (([*(a1 + 56) containsObject:v4] & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v48 = SPLogForSPLogCategoryDefault();
    v49 = gSPLogInfoAsDefault;
    v47 = 1;
    if (os_log_type_enabled(v48, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v50 = &stru_100094040;
      if (v46)
      {
        v50 = @"non-";
      }

      *buf = 138412546;
      v64 = v4;
      v65 = 2112;
      v66 = v50;
      _os_log_impl(&_mh_execute_header, v48, ((v49 & 1) == 0), "Updating %@ to %@placeholder", buf, 0x16u);
    }

    a1 = v62;
    goto LABEL_27;
  }

LABEL_46:
}

void sub_100025E20(uint64_t a1)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100025FF8;
  v10[3] = &unk_1000921C8;
  v11 = *(a1 + 32);
  v2 = objc_retainBlock(v10);
  v3 = SPLogForSPLogCategoryDefault();
  v4 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v3, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v5 = *(a1 + 32);
    v6 = objc_retainBlock(v2);
    v7 = [*(*(*(a1 + 72) + 8) + 40) count];
    v8 = [*(*(*(a1 + 80) + 8) + 40) count];
    v9 = [*(a1 + 40) count];
    *buf = 134219008;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    v18 = 2048;
    v19 = v8;
    v20 = 2048;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v3, ((v4 & 1) == 0), "2 call updateApplicationInformationForExistingItems %p -> completion %p (%ld %ld %ld)", buf, 0x34u);
  }

  [*(a1 + 48) updateApplicationInformationForExistingItems:*(*(*(a1 + 72) + 8) + 40) reimportItems:*(*(*(a1 + 80) + 8) + 40) newItems:*(*(*(a1 + 88) + 8) + 40) countItems:*(a1 + 56) updateCountItems:*(a1 + 40) clean:*(a1 + 96) activity:*(a1 + 64) completion:v2];
}

void sub_100025FF8(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault();
  v3 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v2, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v4 = *(a1 + 32);
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, ((v3 & 1) == 0), "2 Leave group %p", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_group_leave(v5);
  }
}

void sub_1000260EC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100026108(id a1)
{
  qword_1000A83B0 = objc_opt_new();

  _objc_release_x1();
}

void sub_100026340(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  if (xpc_activity_get_state(v2) == 2)
  {
    if (xpc_activity_should_defer(v2))
    {
      v4 = xpc_activity_set_state(v2, 3);
      v5 = SPLogForSPLogCategoryDefault();
      v6 = v5;
      if (v4)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v12 = "com.apple.searchd.updateRanking";
          v13 = 2048;
          v14 = 2;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deferring XPC activity:%s, state:%ld", buf, 0x16u);
        }

LABEL_12:

        goto LABEL_13;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000627C0();
      }
    }

    v7 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "com.apple.searchd.updateRanking";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Performing XPC activity:%s", buf, 0xCu);
    }

    xpc_activity_set_state(v2, 4);
    v8 = +[SPApplicationMetadataUpdater sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002654C;
    v9[3] = &unk_1000921C8;
    v10 = v2;
    [v8 updateWithCompletionHandler:v9 clean:0 activity:v10];

    v6 = v10;
    goto LABEL_12;
  }

LABEL_13:
  objc_autoreleasePoolPop(v3);
}

void sub_10002654C(uint64_t a1)
{
  xpc_activity_set_state(*(a1 + 32), 5);
  v1 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "com.apple.searchd.updateRanking";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Marked XPC activity:%s as done", &v2, 0xCu);
  }
}

void sub_100026B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100026BAC(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (([v7 isEqualToString:@"lastUpdated"] & 1) == 0)
  {
    v9 = a1[6] + *(*(a1[4] + 8) + 24);
    v10 = [v8 objectForKeyedSubscript:@"counts"];
    if ([v10 count])
    {
      for (i = 0; i < [v10 count]; ++i)
      {
        v12 = [v10 objectAtIndexedSubscript:i];
        [v12 doubleValue];
        v14 = v13;

        if (i > 2)
        {
          if ((i - 4) >= 2)
          {
            if (i != 3)
            {
              goto LABEL_13;
            }

            *(v9 + 24) = v14;
          }

          else
          {
            *(v9 + 32) = v14 + *(v9 + 32);
          }
        }

        else if (i)
        {
          if (i == 1)
          {
            *v9 = v14;
            continue;
          }

          if (i != 2)
          {
LABEL_13:
            *(v9 - 16 + 8 * i) = v14;
            continue;
          }

          *(v9 + 16) = v14;
        }
      }
    }

    v15 = [v7 UTF8String];
    v16 = strlen(v15);
    if (v16 - 32766 >= 0xFFFFFFFFFFFF8003)
    {
      v17 = v16;
      v18 = v16 + 1;
      *(v9 + 144) = v16 + 1;
      strcpy((v9 + 146), v15);
      *(*(a1[4] + 8) + 24) += v17 + 147;
      if (*(*(a1[4] + 8) + 24) <= a1[7])
      {
LABEL_22:

        goto LABEL_23;
      }

      v19 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *(*(a1[4] + 8) + 24);
        v21 = a1[7];
        v22 = 134218496;
        v23 = v20;
        v24 = 1024;
        v25 = v18;
        v26 = 2048;
        v27 = v21;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "encountered bad app data off:%zu size:%hd estimate:%lu", &v22, 0x1Cu);
      }
    }

    *(*(a1[5] + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_22;
  }

LABEL_23:
}

void sub_100027414(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) lookupDict];
  v7 = [v6 objectForKeyedSubscript:v25];

  if (v7)
  {
    v8 = [*(a1 + 40) mutableBytes];
    v9 = 0;
    v10 = [v7 longLongValue] + v8;
  }

  else
  {
    v11 = [v25 UTF8String];
    v12 = strlen(v11);
    if (v12 - 1 > 0x7FFC)
    {
      goto LABEL_9;
    }

    v13 = v12 + 1;
    v9 = v12 + 147;
    v10 = malloc_type_calloc(1uLL, v12 + 147, 0x19346A34uLL);
    strcpy(v10 + 146, v11);
    *(v10 + 72) = v13;
  }

  v14 = [v5 objectAtIndexedSubscript:0];
  [v14 doubleValue];
  v16 = v15;

  *(v10 + 2) = v16;
  v17 = [v5 objectAtIndexedSubscript:1];
  [v17 doubleValue];
  v19 = v18;

  if (v19 > 0.0)
  {
    *(v10 + 3) = v19;
  }

  v20 = [v5 objectAtIndexedSubscript:2];
  [v20 doubleValue];
  v22 = v21;

  *v10 = v22;
  if (v9)
  {
    v23 = *(a1 + 48);
    v24 = [[NSData alloc] initWithBytesNoCopy:v10 length:v9 freeWhenDone:1];
    [v23 appendData:v24];
  }

LABEL_9:
}

void sub_100027C50(id a1)
{
  v1 = objc_alloc_init(SPBackupRankingMetadataHandler);
  v2 = qword_1000A8400;
  qword_1000A8400 = v1;

  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.searchd"];
  v4 = qword_1000A83C0;
  qword_1000A83C0 = v3;

  v5 = NSHomeDirectory();
  v6 = [v5 stringByAppendingPathComponent:@"/Library/Spotlight/Backup/"];

  v39 = 0;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:v6 isDirectory:&v39];

  if ((v8 & 1) == 0)
  {
    v9 = +[NSFileManager defaultManager];
    [v9 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v10 = NSHomeDirectory();
  v11 = [v10 stringByAppendingPathComponent:@"/Library/Spotlight/Backup/encrypted_ranking_metadata.temp"];
  v12 = qword_1000A83C8;
  qword_1000A83C8 = v11;

  v13 = NSHomeDirectory();
  v14 = [v13 stringByAppendingPathComponent:@"/Library/Spotlight/Backup/encrypted_ranking_metadata.dat"];
  v15 = qword_1000A83D0;
  qword_1000A83D0 = v14;

  v16 = NSHomeDirectory();
  v17 = [v16 stringByAppendingPathComponent:@"/Library/Spotlight/Backup/DO_NOT_RESTORE_IF_THIS_EXISTS"];
  v18 = qword_1000A83D8;
  qword_1000A83D8 = v17;

  v19 = NSHomeDirectory();
  v20 = [v19 stringByAppendingPathComponent:@"/Library/Spotlight/Backup/restore_encrypted_ranking_metadata.dat"];
  v21 = qword_1000A83E0;
  qword_1000A83E0 = v20;

  v42[0] = @"_kMDItemExternalID";
  v42[1] = @"_kMDItemLaunchString";
  v22 = MDItemIncomingCounts;
  v23 = MDItemOutgoingCounts;
  v42[2] = MDItemIncomingCounts;
  v42[3] = MDItemOutgoingCounts;
  v37 = MDItemIncomingVideoCallDates;
  v38 = v6;
  v24 = MDItemOutgoingVideoCallDates;
  v42[4] = MDItemIncomingVideoCallDates;
  v42[5] = MDItemOutgoingVideoCallDates;
  v25 = MDItemIncomingAudioCallDates;
  v26 = MDItemOutgoingAudioCallDates;
  v42[6] = MDItemIncomingAudioCallDates;
  v42[7] = MDItemOutgoingAudioCallDates;
  v42[8] = @"kMDItemUsedDates";
  v42[9] = @"kMDItemLastUsedDate_Ranking";
  v27 = MDItemEmailAddresses;
  v42[10] = @"_kMDItemShortcutLastUsedDate";
  v42[11] = MDItemEmailAddresses;
  v28 = MDItemDisplayName;
  v29 = MDItemPhoneNumbers;
  v42[12] = MDItemDisplayName;
  v42[13] = MDItemPhoneNumbers;
  v30 = MDItemInstantMessageAddresses;
  v42[14] = MDItemInstantMessageAddresses;
  v31 = [NSArray arrayWithObjects:v42 count:15];
  v32 = qword_1000A83E8;
  qword_1000A83E8 = v31;

  v41[0] = @"_kMDItemExternalID";
  v41[1] = @"_kMDItemLaunchString";
  v41[2] = v22;
  v41[3] = v23;
  v41[4] = MDItemIncomingMailCounts;
  v41[5] = MDItemOutgoingMailCounts;
  v41[6] = MDItemIncomingSMSCounts;
  v41[7] = MDItemOutgoingSMSCounts;
  v41[8] = v37;
  v41[9] = v24;
  v41[10] = v25;
  v41[11] = v26;
  v41[12] = @"kMDItemUsedDates";
  v41[13] = @"kMDItemLastUsedDate_Ranking";
  v41[14] = @"_kMDItemShortcutLastUsedDate";
  v41[15] = v27;
  v41[16] = v28;
  v41[17] = v29;
  v41[18] = v30;
  v33 = [NSArray arrayWithObjects:v41 count:19];
  v34 = qword_1000A83F0;
  qword_1000A83F0 = v33;

  v40[0] = MDItemIncomingCalendarCounts;
  v40[1] = MDItemOutgoingCalendarCounts;
  v40[2] = MDItemIncomingFileProviderCounts;
  v40[3] = MDItemOutgoingFileProviderCounts;
  v35 = [NSArray arrayWithObjects:v40 count:4];
  v36 = qword_1000A83F8;
  qword_1000A83F8 = v35;
}

void sub_100028064(id a1, OS_xpc_object *a2)
{
  activity = a2;
  v2 = objc_autoreleasePoolPush();
  v3 = xpc_activity_copy_criteria(activity);
  if (v3 && (xpc_activity_get_state(activity) & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    xpc_activity_set_state(activity, 5);
    xpc_activity_unregister("com.apple.searchd.restoreBackup");
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100028384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000283B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (xpc_activity_get_state(v3) == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v6 = SPLogForSPLogCategoryDefault();
      v7 = v6;
      if (gSPLogDebugAsDefault)
      {
        v8 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v8 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v6, v8))
      {
        *buf = 136315138;
        v14 = "com.apple.searchd.createEncryptedRankingBackup";
        _os_log_impl(&_mh_execute_header, v7, v8, "Performing XPC activity:%s", buf, 0xCu);
      }

      xpc_activity_set_state(v3, 4);
      v9 = dispatch_group_create();
      [WeakRetained extractAndWriteEncryptedBackupMetadata:v9];
      v10 = dispatch_get_global_queue(9, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100028574;
      block[3] = &unk_1000921C8;
      v12 = v3;
      dispatch_group_notify(v9, v10, block);
    }

    else
    {
      xpc_activity_set_state(v3, 5);
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100028574(uint64_t a1)
{
  xpc_activity_set_state(*(a1 + 32), 5);
  v1 = SPLogForSPLogCategoryDefault();
  v2 = v1;
  if (gSPLogDebugAsDefault)
  {
    v3 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v3 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v1, v3))
  {
    v4 = 136315138;
    v5 = "com.apple.searchd.createEncryptedRankingBackup";
    _os_log_impl(&_mh_execute_header, v2, v3, "Marked XPC activity:%s as done", &v4, 0xCu);
  }
}

uint64_t sub_100028EB8(off_t a1, uint64_t a2)
{
  v14[0] = 0x300000002;
  v14[1] = 0;
  v14[2] = a1;
  v14[3] = 0;
  v4 = NSHomeDirectory();
  v5 = [NSString stringWithFormat:@"/Library/Spotlight/Backup/temp_%lu.dat", a2];
  v6 = [v4 stringByAppendingPathComponent:v5];

  v7 = open([v6 UTF8String], 514, 384);
  if ((v7 & 0x80000000) != 0)
  {
    v12 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100062CF8();
    }

    goto LABEL_13;
  }

  v8 = v7;
  if (fcntl(v7, 42, v14) == -1)
  {
    v9 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *__error();
      *buf = 67109120;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "*warn* preallocated temporary file failed. %d\n", buf, 8u);
    }
  }

  if (ftruncate(v8, a1) == -1)
  {
    v11 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100062C78();
    }

    close(v8);
LABEL_13:
    v8 = 0xFFFFFFFFLL;
  }

  return v8;
}

void *sub_100029084(int a1, size_t a2, void *a3, size_t a4)
{
  munmap(a3, a4);
  if (ftruncate(a1, a2) == -1)
  {
    v7 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100062D60();
    }
  }

  else
  {
    result = mmap(0, a2, 1, 1, a1, 0);
    if (result != -1)
    {
      return result;
    }

    v7 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100062D2C();
    }
  }

  return 0;
}

uint64_t sub_10002913C(int a1)
{
  bzero(v3, 0x400uLL);
  result = fcntl(a1, 50, v3);
  if ((result & 0x80000000) == 0)
  {
    if (v3[0])
    {
      return unlink(v3);
    }
  }

  return result;
}

size_t sub_1000291CC(const uint8_t *a1, size_t a2, uint8_t **a3, compression_algorithm a4)
{
  v8 = malloc_type_malloc(a2 + 4096, 0xEDD39B8uLL);
  *a3 = v8;

  return compression_encode_buffer(v8, a2 + 4096, a1, a2, 0, a4);
}

size_t sub_100029238(const uint8_t *a1, size_t a2, size_t a3, uint8_t **a4, compression_algorithm a5, int *a6)
{
  *a6 = -1;
  v12 = sub_100028EB8(a3, 2);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = v12;
    v14 = mmap(0, a3, 3, 1, v12, 0);
    *a4 = v14;
    if (v14 != -1)
    {
      result = compression_decode_buffer(v14, a3, a1, a2, 0, a5);
      if (result)
      {
        *a6 = v13;
        return result;
      }
    }

    close(v13);
  }

  return 0;
}

void sub_100029424(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[SPCoreSpotlightIndexer sharedInstance];
  v4 = objc_opt_new();
  [v4 setInternal:1];
  [v4 setLowPriority:0];
  v45 = @"com.apple.MobileAddressBook";
  v5 = [NSArray arrayWithObjects:&v45 count:1];
  [v4 setBundleIDs:v5];

  [v4 setRankingQueries:&off_100098FE8];
  [v4 setMaxCount:400];
  v6 = [NSMutableArray alloc];
  v7 = [v6 initWithArray:qword_1000A83F0];
  [v7 addObjectsFromArray:qword_1000A83F8];
  [v4 setFetchAttributes:v7];
  v44[0] = NSFileProtectionComplete;
  v44[1] = NSFileProtectionCompleteUnlessOpen;
  v44[2] = NSFileProtectionCompleteWhenUserInactive;
  v44[3] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v8 = [NSArray arrayWithObjects:v44 count:4];
  [v4 setProtectionClasses:v8];

  v9 = [*(a1 + 32) fetchKeyFromKeychain];
  v10 = v9;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  if (v9)
  {
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v38 = -1;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v28[3] = 0;
    iv = xmmword_100072A70;
    v11 = v9;
    v12 = [v10 bytes];
    v13 = CCCryptorCreate(0, 0, 1u, v12, 0x10uLL, &iv, v30 + 3);
    *(v34 + 6) = v13;
    v14 = dispatch_group_create();
    dispatch_group_enter(v14);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100029874;
    v21[3] = &unk_100092F78;
    v24 = v28;
    v25 = &v33;
    v26 = &v29;
    v15 = *(a1 + 32);
    v23 = v37;
    v21[4] = v15;
    v16 = v14;
    v22 = v16;
    v27 = &v39;
    v17 = [v3 startQuery:@"kMDItemLastUsedDate_Ranking == *" withContext:v4 handler:v21];
    if (!v17)
    {
      dispatch_group_leave(v16);
    }

    dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(v37, 8);
    if (v40[3])
    {
      v18 = +[NSFileManager defaultManager];
      v19 = [v18 createFileAtPath:qword_1000A83D8 contents:0 attributes:0];

      if ((v19 & 1) == 0)
      {
        v20 = SPLogForSPLogCategoryDefault();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100062DE0();
        }
      }

      [qword_1000A83C0 setBool:1 forKey:@"didCreateLocalBackup"];
    }
  }

  _Block_object_dispose(&v39, 8);

  objc_autoreleasePoolPop(v2);
}

void sub_100029874(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a6;
  if (a2 == 1)
  {
    if (*(*(*(a1 + 48) + 8) + 24) != -1)
    {
      *buf = 0;
      ByteVectorCount = _MDPlistBytesGetByteVectorCount();
      v19 = malloc_type_calloc(1uLL, 0x10uLL, 0xFDC4B3E0uLL);
      *v19 = *(*(*(a1 + 56) + 8) + 24);
      *(*(*(a1 + 64) + 8) + 24) = CCCryptorUpdate(*(*(*(a1 + 72) + 8) + 24), (*(*(a1 + 56) + 8) + 24), 8uLL, v19, 0x10uLL, buf);
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        v20 = SPLogForSPLogCategoryDefault();
        v21 = v20;
        if (gSPLogDebugAsDefault)
        {
          v22 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v22 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v20, v22))
        {
          LOWORD(dataOutMoved.st_dev) = 0;
          _os_log_impl(&_mh_execute_header, v21, v22, "Couldn't encrypt data", &dataOutMoved, 2u);
        }
      }

      else
      {
        write(*(*(*(a1 + 48) + 8) + 24), v19, *buf);
      }

      *buf = 0;
      __memset_chk();
      *(*(*(a1 + 64) + 8) + 24) = CCCryptorFinal(*(*(*(a1 + 72) + 8) + 24), v19, (ByteVectorCount + 16), buf);
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        v23 = SPLogForSPLogCategoryDefault();
        v24 = v23;
        if (gSPLogDebugAsDefault)
        {
          v25 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v25 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v23, v25))
        {
          LOWORD(dataOutMoved.st_dev) = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "Couldn't encrypt data", &dataOutMoved, 2u);
        }
      }

      else
      {
        write(*(*(*(a1 + 48) + 8) + 24), v19, *buf);
      }

      [*(a1 + 32) backUpFileProtectionClassCheckWithFd:*(*(*(a1 + 48) + 8) + 24)];
      memset(&dataOutMoved, 0, sizeof(dataOutMoved));
      fstat(*(*(*(a1 + 48) + 8) + 24), &dataOutMoved);
      close(*(*(*(a1 + 48) + 8) + 24));
      free(v19);
      *(*(*(a1 + 48) + 8) + 24) = -1;
      v26 = *(*(*(a1 + 72) + 8) + 24);
      if (v26)
      {
        CCCryptorRelease(v26);
        *(*(*(a1 + 72) + 8) + 24) = 0;
      }

      if (dataOutMoved.st_size > 0x40000uLL)
      {
        unlink([qword_1000A83C8 UTF8String]);
      }

      else
      {
        if (([qword_1000A83C0 BOOLForKey:@"didCreateLocalBackup"] & 1) == 0)
        {
          v27 = *(a1 + 32);
          [objc_opt_class() checkForRestoreFile];
        }

        v28 = [qword_1000A83C8 UTF8String];
        v29 = [qword_1000A83D0 UTF8String];
        rename(v28, v29, v30);
        *(*(*(a1 + 80) + 8) + 24) = 1;
      }
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else if (!a2)
  {
    if (*(*(*(a1 + 48) + 8) + 24) != -1 || (*(*(*(a1 + 48) + 8) + 24) = open([qword_1000A83C8 UTF8String], 1537, 384), write(*(*(*(a1 + 48) + 8) + 24), "SPOTLIGHT_RANKING_BACKUP_VERSION_00002", 0x26uLL), *(*(*(a1 + 48) + 8) + 24) != -1))
    {
      *&dataOutMoved.st_dev = 0;
      v9 = _MDPlistBytesGetByteVectorCount();
      v10 = v9 + 16;
      v11 = malloc_type_calloc(1uLL, v10, 0x4E4AC763uLL);
      ByteVector = _MDPlistBytesGetByteVector();
      v13 = malloc_type_malloc(v9 + 4096, 0xEDD39B8uLL);
      v14 = compression_encode_buffer(v13, v9 + 4096, ByteVector, v9, 0, COMPRESSION_LZFSE);
      *(*(*(a1 + 56) + 8) + 24) += v9;
      *(*(*(a1 + 64) + 8) + 24) = CCCryptorUpdate(*(*(*(a1 + 72) + 8) + 24), v13, v14, v11, v10, &dataOutMoved);
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        v15 = SPLogForSPLogCategoryDefault();
        v16 = v15;
        if (gSPLogDebugAsDefault)
        {
          v17 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v17 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v15, v17))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "Couldn't encrypt data", buf, 2u);
        }
      }

      else
      {
        write(*(*(*(a1 + 48) + 8) + 24), v11, *&dataOutMoved.st_dev);
      }

      free(v11);
      free(v13);
    }
  }
}

void sub_10002A058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, char a18)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a18, 8);
  objc_sync_exit(v18);
  _Unwind_Resume(a1);
}

void sub_10002A0A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = xpc_activity_copy_criteria(v3);
  state = xpc_activity_get_state(v3);
  if (v5 || (v5 = *(a1 + 32), xpc_activity_set_criteria(v3, v5), state == 2))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      if ((state & 0xFFFFFFFFFFFFFFFBLL) != 0)
      {
        byte_1000A8410 = 1;
        xpc_activity_set_state(v3, 4);
        v8 = dispatch_group_create();
        [WeakRetained restoreRankingSignalsFromEncryptedFile:v8];
        v9 = dispatch_get_global_queue(9, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10002A268;
        block[3] = &unk_1000921C8;
        v11 = v3;
        dispatch_group_notify(v8, v9, block);

        [qword_1000A83C0 setInteger:*(*(*(a1 + 40) + 8) + 24) + 1 forKey:@"backupRestoreAttemptCount"];
        [qword_1000A83C0 setDouble:@"lastBackupRestoreAttemptTime" forKey:CFAbsoluteTimeGetCurrent()];
      }
    }

    else
    {
      xpc_activity_set_state(v3, 5);
      byte_1000A8410 = 0;
      byte_1000A8411 = 0;
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10002A268(uint64_t a1)
{
  byte_1000A8410 = 0;
  byte_1000A8411 = 0;
  xpc_activity_set_state(*(a1 + 32), 5);
  xpc_activity_unregister("com.apple.searchd.restoreBackup");
  v1 = SPLogForSPLogCategoryDefault();
  v2 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v1, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, ((v2 & 1) == 0), "Marked XPC activity: restore from backup as done", v3, 2u);
  }
}

void sub_10002A5B4(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v101 = [*(a1 + 32) fetchKeyFromKeychain];
  if (v101)
  {
    v152 = 0;
    v153 = &v152;
    v154 = 0x2020000000;
    v155 = [*(a1 + 32) getBackupVersion:38];
    v93 = +[SPCoreSpotlightIndexer sharedInstance];
    v2 = [NSMutableArray alloc];
    v97 = [v2 initWithArray:qword_1000A83F0];
    if (v153[6] >= 2)
    {
      [v97 addObjectsFromArray:qword_1000A83F8];
    }

    v3 = [NSMutableArray alloc];
    v4 = [v3 initWithArray:qword_1000A83F0];
    [v4 addObjectsFromArray:qword_1000A83F8];
    [v4 addObject:@"_kMDItemDidUpdateFromRestoredValues"];
    v92 = v4;
    v5 = objc_opt_new();
    [v5 setInternal:1];
    [v5 setLowPriority:0];
    v162 = @"com.apple.MobileAddressBook";
    v6 = [NSArray arrayWithObjects:&v162 count:1];
    [v5 setBundleIDs:v6];
    v98 = v5;

    v161[0] = NSFileProtectionComplete;
    v161[1] = NSFileProtectionCompleteUnlessOpen;
    v161[2] = NSFileProtectionCompleteWhenUserInactive;
    v161[3] = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v7 = [NSArray arrayWithObjects:v161 count:4];
    [v5 setProtectionClasses:v7];

    [v5 setFetchAttributes:v97];
    v8 = [v5 fetchAttributes];
    v9 = [v8 count];

    v10 = [NSData alloc];
    v151 = 0;
    v95 = [v10 initWithContentsOfFile:qword_1000A83D0 options:8 error:&v151];
    v11 = v151;
    if (v11)
    {
      v12 = v11;
      v13 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100062EF4();
      }

      goto LABEL_92;
    }

    dataOutAvailable = [v95 length];
    v15 = v95;
    v16 = [v95 bytes];
    v17 = [v95 length];
    v18 = v153[6];
    if (v18 == 1)
    {
      v19 = v17;
    }

    else
    {
      v19 = v17 - 38;
    }

    if (v18 == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = 38;
    }

    if (v18 != 1)
    {
      dataOutAvailable -= 38;
    }

    v150 = -1;
    dataOut = [*(a1 + 32) getDataOutWithSize:dataOutAvailable withFlag:1 fd:&v150];
    if (!dataOut)
    {
      v24 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100062F90();
      }

      goto LABEL_91;
    }

    v149 = 0;
    iv = xmmword_100072A70;
    v22 = v101;
    if (CCCrypt(1u, 0, 1u, [v101 bytes], 0x10uLL, &iv, &v16[v20], v19, dataOut, dataOutAvailable, &v149))
    {
      v23 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100062F28();
      }

      munmap(dataOut, dataOutAvailable);
      close(v150);
      goto LABEL_91;
    }

    v148 = -1;
    v25 = v149 - 8;
    v26 = *&dataOut[v149 - 8];
    v27 = sub_100029084(v150, v149 - 8, dataOut, dataOutAvailable);
    v28 = v27;
    if ((v27 + 1) <= 1)
    {
      close(v150);
LABEL_91:

LABEL_92:
      _Block_object_dispose(&v152, 8);
      goto LABEL_93;
    }

    v147 = -1;
    v29 = sub_100029238(v27, v25, v26, &v148, COMPRESSION_LZFSE, &v147);
    v144[0] = _NSConcreteStackBlock;
    v144[1] = 3221225472;
    v144[2] = sub_10002B614;
    v144[3] = &unk_100092FC0;
    v144[4] = v28;
    v144[5] = v25;
    v144[6] = v148;
    v144[7] = v29;
    v145 = v150;
    v146 = v147;
    v84 = objc_retainBlock(v144);
    if (!v29)
    {
      (v84[2])();
      v73 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_100062F5C();
      }

LABEL_90:
      goto LABEL_91;
    }

    v30 = _MDPlistBytesCreate();
    v138 = 0;
    v139 = &v138;
    v140 = 0x3032000000;
    v141 = sub_10002B690;
    v142 = sub_10002B6A0;
    v143 = objc_opt_new();
    if (v153[6] == 1)
    {
      v31 = 0;
      do
      {
        v137[0] = _NSConcreteStackBlock;
        v137[1] = 3221225472;
        v137[2] = sub_10002B6A8;
        v137[3] = &unk_100092FE8;
        v137[4] = &v152;
        v32 = [v30 enumerateQueryResults:v31++ attributeSize:v9 stringCache:0 usingBlock:v137];
      }

      while ((v32 & 1) != 0);
      if (!v153[6])
      {
        [v98 setFetchAttributes:qword_1000A83E8];
        v33 = [v98 fetchAttributes];
        v9 = [v33 count];
      }
    }

    v34 = 0;
    do
    {
      v136[0] = _NSConcreteStackBlock;
      v136[1] = 3221225472;
      v136[2] = sub_10002BAEC;
      v136[3] = &unk_100093010;
      v136[4] = &v152;
      v136[5] = &v138;
      v35 = [v30 enumerateQueryResults:v34++ attributeSize:v9 stringCache:0 usingBlock:v136];
    }

    while ((v35 & 1) != 0);
    (v84[2])();
    v36 = dispatch_group_create();
    dispatch_group_enter(v36);
    v37 = objc_opt_new();
    [v98 setFetchAttributes:&off_100099000];
    v38 = [v98 fetchAttributes];
    v39 = [v38 count];

    v131[0] = _NSConcreteStackBlock;
    v131[1] = 3221225472;
    v131[2] = sub_10002C14C;
    v131[3] = &unk_100093060;
    v135 = v39;
    v134 = &v138;
    v88 = v37;
    v132 = v88;
    v40 = v36;
    v133 = v40;
    v82 = [v93 startQuery:@"*==*" withContext:v98 handler:v131];
    if (!v82)
    {
      dispatch_group_leave(v40);
    }

    group = v40;
    dispatch_group_wait(v40, 0xFFFFFFFFFFFFFFFFLL);
    v41 = [CNContactStore alloc];
    v42 = objc_opt_new();
    v100 = [v41 initWithConfiguration:v42];

    v159 = CNContactIdentifierKey;
    v99 = [NSArray arrayWithObjects:&v159 count:1];
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v43 = [v139[5] allKeys];
    v44 = [v43 countByEnumeratingWithState:&v127 objects:v158 count:16];
    obj = v43;
    if (!v44)
    {
      v45 = 0;
      goto LABEL_87;
    }

    v45 = 0;
    v86 = *v128;
    v87 = v44;
LABEL_38:
    v94 = 0;
    while (1)
    {
      if (*v128 != v86)
      {
        objc_enumerationMutation(obj);
      }

      v90 = *(*(&v127 + 1) + 8 * v94);
      if (([v88 containsObject:?] & 1) == 0)
      {
        break;
      }

LABEL_78:
      if (++v94 == v87)
      {
        v72 = [obj countByEnumeratingWithState:&v127 objects:v158 count:16];
        v87 = v72;
        if (!v72)
        {
LABEL_87:

          [v98 setFetchAttributes:v92];
          v74 = [v98 fetchAttributes];
          v75 = [v74 count];

          v110 = 0;
          v111 = &v110;
          v112 = 0x3032000000;
          v113 = sub_10002B690;
          v114 = sub_10002B6A0;
          v115 = objc_opt_new();
          dispatch_group_enter(group);
          v105[0] = _NSConcreteStackBlock;
          v105[1] = 3221225472;
          v105[2] = sub_10002C2EC;
          v105[3] = &unk_100093088;
          v108 = &v110;
          v109 = v75;
          v107 = &v138;
          v76 = group;
          v106 = v76;
          v77 = [v93 startQuery:@"*==*" withContext:v98 handler:v105];
          dispatch_group_wait(v76, 0xFFFFFFFFFFFFFFFFLL);
          dispatch_group_enter(v76);
          v78 = v111[5];
          v103[0] = _NSConcreteStackBlock;
          v103[1] = 3221225472;
          v103[2] = sub_10002CB8C;
          v103[3] = &unk_100091E30;
          v79 = v76;
          v104 = v79;
          [v93 indexSearchableItems:v78 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:0 forBundleID:@"com.apple.MobileAddressBook" options:0 completionHandler:v103];
          dispatch_group_wait(v79, 0xFFFFFFFFFFFFFFFFLL);
          v80 = SPLogForSPLogCategoryDefault();
          v81 = gSPLogInfoAsDefault;
          if (os_log_type_enabled(v80, ((gSPLogInfoAsDefault & 1) == 0)))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v80, ((v81 & 1) == 0), "Completed restoration of contacts metadata", buf, 2u);
          }

          _Block_object_dispose(&v110, 8);
          _Block_object_dispose(&v138, 8);

          goto LABEL_90;
        }

        goto LABEL_38;
      }
    }

    v91 = [v139[5] objectForKey:v90];
    v46 = [v91 objectForKey:off_1000A7E90];
    v89 = v46;
    if (v46)
    {
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v47 = v46;
      v48 = 0;
      v49 = [v47 countByEnumeratingWithState:&v123 objects:v157 count:16];
      if (v49)
      {
        v50 = *v124;
        v51 = v45;
LABEL_45:
        v52 = 0;
        v53 = v48;
        while (1)
        {
          if (*v124 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v54 = [CNPhoneNumber phoneNumberWithStringValue:*(*(&v123 + 1) + 8 * v52)];
          v55 = [CNContact predicateForContactsMatchingPhoneNumber:v54];
          v122 = v51;
          v48 = [v100 unifiedContactsMatchingPredicate:v55 keysToFetch:v99 error:&v122];
          v45 = v122;

          if (v45)
          {
            v56 = 0;
            goto LABEL_56;
          }

          if ([v48 count] == 1)
          {
            break;
          }

          v51 = 0;
          v52 = v52 + 1;
          v53 = v48;
          if (v49 == v52)
          {
            v49 = [v47 countByEnumeratingWithState:&v123 objects:v157 count:16];
            v51 = 0;
            v45 = 0;
            if (v49)
            {
              goto LABEL_45;
            }

            goto LABEL_52;
          }
        }

        v56 = [v48 objectAtIndexedSubscript:0];
LABEL_56:

        if (v56)
        {
          goto LABEL_70;
        }
      }

      else
      {
LABEL_52:
      }
    }

    else
    {
      v48 = 0;
    }

    v57 = [v91 objectForKey:off_1000A7E78];
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v58 = v57;
    v59 = [v58 countByEnumeratingWithState:&v118 objects:v156 count:16];
    if (v59)
    {
      v60 = *v119;
      v61 = v45;
LABEL_59:
      v62 = 0;
      v63 = v48;
      while (1)
      {
        if (*v119 != v60)
        {
          objc_enumerationMutation(v58);
        }

        v64 = [CNContact predicateForContactsMatchingEmailAddress:*(*(&v118 + 1) + 8 * v62)];
        v117 = v61;
        v48 = [v100 unifiedContactsMatchingPredicate:v64 keysToFetch:v99 error:&v117];
        v45 = v117;

        if (v45)
        {
          v56 = 0;
          goto LABEL_69;
        }

        if ([v48 count] == 1)
        {
          break;
        }

        v61 = 0;
        v62 = v62 + 1;
        v63 = v48;
        if (v59 == v62)
        {
          v59 = [v58 countByEnumeratingWithState:&v118 objects:v156 count:16];
          v61 = 0;
          v45 = 0;
          if (v59)
          {
            goto LABEL_59;
          }

          goto LABEL_66;
        }
      }

      v56 = [v48 objectAtIndexedSubscript:0];
LABEL_69:

      if (!v56)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }

LABEL_66:

LABEL_71:
    v69 = [v91 objectForKey:off_1000A7E80];
    v70 = [CNContact predicateForContactsMatchingName:v69 options:1];
    v116 = v45;
    v68 = [v100 unifiedContactsMatchingPredicate:v70 keysToFetch:v99 error:&v116];
    v71 = v116;

    v67 = v71 == 0;
    v45 = v71;
    if (!v71)
    {
      if ([v68 count] == 1)
      {
        v56 = [v68 objectAtIndexedSubscript:0];

        v45 = 0;
        if (v56)
        {
          v48 = v68;
LABEL_70:
          v65 = v139[5];
          v66 = [v56 identifier];
          [v65 setObject:v91 forKey:v66];

          [v139[5] removeObjectForKey:v90];
          v67 = 1;
          v68 = v48;
          goto LABEL_77;
        }

        v67 = 1;
        v56 = 0;
LABEL_77:

        if (!v67)
        {
          goto LABEL_87;
        }

        goto LABEL_78;
      }

      v45 = 0;
    }

    v56 = 0;
    goto LABEL_77;
  }

LABEL_93:

  objc_autoreleasePoolPop(context);
}

uint64_t sub_10002B614(uint64_t a1)
{
  munmap(*(a1 + 32), *(a1 + 40));
  munmap(*(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 64);
  if (v2 != -1)
  {
    sub_10002913C(v2);
    close(*(a1 + 64));
  }

  result = *(a1 + 68);
  if (result != -1)
  {
    sub_10002913C(result);
    v4 = *(a1 + 68);

    return close(v4);
  }

  return result;
}

uint64_t sub_10002B690(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002B6A8(uint64_t a1, CFNullRef *a2, _BYTE *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *a2;
  if (*a2 == kCFNull)
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (v8)
  {
    v10 = v8 == kCFNull;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = a2[4];
    if (v11 == kCFNull)
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = a2[5];
    if (v13 == kCFNull)
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = a2[6];
    if (v15 == kCFNull)
    {
      v15 = 0;
    }

    v40 = v15;
    v16 = a2[7];
    if (v16 == kCFNull)
    {
      v16 = 0;
    }

    v39 = v16;
    v17 = a2[8];
    if (v17 == kCFNull)
    {
      v17 = 0;
    }

    v38 = v17;
    v18 = a2[9];
    if (v18 == kCFNull)
    {
      v18 = 0;
    }

    v37 = v18;
    v19 = a2[10];
    if (v19 == kCFNull)
    {
      v19 = 0;
    }

    v36 = v19;
    v20 = a2[11];
    if (v20 == kCFNull)
    {
      v20 = 0;
    }

    v35 = v20;
    v21 = a2[12];
    if (v21 == kCFNull)
    {
      v21 = 0;
    }

    v34 = v21;
    v22 = a2[13];
    if (v22 == kCFNull)
    {
      v22 = 0;
    }

    v33 = v22;
    v23 = a2[14];
    if (v23 == kCFNull)
    {
      v23 = 0;
    }

    v32 = v23;
    v24 = a2[15];
    if (v24 == kCFNull)
    {
      v24 = 0;
    }

    v31 = v24;
    v25 = a2[16];
    if (v25 == kCFNull)
    {
      v25 = 0;
    }

    v26 = v25;
    v27 = a2[17];
    if (v27 == kCFNull)
    {
      v27 = 0;
    }

    v28 = v27;
    v29 = a2[18];
    if (v29 == kCFNull)
    {
      v29 = 0;
    }

    v30 = v29;
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (v40)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (v39)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (v38)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (v37)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (v36)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (v35)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
LABEL_67:
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a3 = 1;
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_10002BAEC(uint64_t a1, CFNullRef *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *a2;
  if (*a2 == kCFNull)
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    v8 = v6 == kCFNull;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = a2[1];
    if (v9 == kCFNull)
    {
      v9 = 0;
    }

    v70 = v9;
    v10 = a2[2];
    if (v10 == kCFNull)
    {
      v10 = 0;
    }

    v69 = v10;
    v11 = a2[3];
    if (v11 == kCFNull)
    {
      v11 = 0;
    }

    v68 = v11;
    v12 = *(*(*(a1 + 32) + 8) + 24);
    v57 = v4;
    v58 = a1;
    if (v12)
    {
      if (v12 < 1)
      {
        v41 = 0;
        v39 = 0;
        v37 = 0;
        v35 = 0;
        v59 = 0;
        v32 = 0;
        v62 = 0;
        v29 = 0;
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v45 = 0;
        v44 = 0;
        v43 = 0;
        v42 = 0;
LABEL_49:
        v61 = v32;
        v64 = v29;
        v72 = v45;
        v74 = v44;
        v76 = v43;
        v78 = v42;
        if (*(*(*(a1 + 32) + 8) + 24) <= 1)
        {
          v47 = 0;
          v49 = 0;
          v51 = 0;
          v53 = 0;
        }

        else
        {
          v46 = a2[19];
          if (v46 == kCFNull)
          {
            v46 = 0;
          }

          v47 = v46;
          v48 = a2[20];
          if (v48 == kCFNull)
          {
            v48 = 0;
          }

          v49 = v48;
          v50 = a2[21];
          if (v50 == kCFNull)
          {
            v50 = 0;
          }

          v51 = v50;
          v52 = a2[22];
          if (v52 == kCFNull)
          {
            v52 = 0;
          }

          v53 = v52;
        }

        v54 = objc_opt_new();
        v55 = v54;
        if (v70)
        {
          [v54 setObject:v70 forKey:off_1000A7DF8];
        }

        if (v65)
        {
          [v55 setObject:v65 forKey:off_1000A7E00];
        }

        if (v64)
        {
          [v55 setObject:v64 forKey:off_1000A7E08];
        }

        if (v67)
        {
          [v55 setObject:v67 forKey:off_1000A7E10];
        }

        if (v66)
        {
          [v55 setObject:v66 forKey:off_1000A7E18];
        }

        if (v62)
        {
          [v55 setObject:v62 forKey:off_1000A7E20];
        }

        if (v69)
        {
          [v55 setObject:v69 forKey:off_1000A7E28];
        }

        if (v68)
        {
          [v55 setObject:v68 forKey:off_1000A7E30];
        }

        if (v78)
        {
          [v55 setObject:v78 forKey:off_1000A7E38];
        }

        if (v76)
        {
          [v55 setObject:v76 forKey:off_1000A7E40];
        }

        if (v74)
        {
          [v55 setObject:v74 forKey:off_1000A7E48];
        }

        if (v72)
        {
          [v55 setObject:v72 forKey:off_1000A7E50];
        }

        if (v47)
        {
          [v55 setObject:v47 forKey:off_1000A7E58];
        }

        if (v49)
        {
          [v55 setObject:v49 forKey:off_1000A7E60];
        }

        if (v51)
        {
          [v55 setObject:v51 forKey:off_1000A7E68];
        }

        if (v53)
        {
          [v55 setObject:v53 forKey:off_1000A7E70];
        }

        if (v59)
        {
          [v55 setObject:v59 forKey:off_1000A7E88];
        }

        if (v35)
        {
          [v55 setObject:v35 forKey:off_1000A7E78];
        }

        if (v37)
        {
          [v55 setObject:v37 forKey:off_1000A7E80];
        }

        if (v39)
        {
          [v55 setObject:v39 forKey:off_1000A7E90];
        }

        if (v41)
        {
          [v55 setObject:v41 forKey:off_1000A7E98];
        }

        if (v61)
        {
          [v55 setObject:v61 forKey:off_1000A7EA0];
        }

        if ([v55 count])
        {
          [*(*(*(v58 + 40) + 8) + 40) setObject:v55 forKey:v7];
        }

        v4 = v57;
        goto LABEL_107;
      }

      v13 = a2[4];
      if (v13 == kCFNull)
      {
        v13 = 0;
      }

      v77 = v13;
      v14 = a2[5];
      if (v14 == kCFNull)
      {
        v14 = 0;
      }

      v75 = v14;
      v15 = a2[6];
      if (v15 == kCFNull)
      {
        v15 = 0;
      }

      v73 = v15;
      v16 = a2[7];
      if (v16 == kCFNull)
      {
        v16 = 0;
      }

      v71 = v16;
      v63 = 18;
      v60 = 17;
      v56 = 16;
      v17 = 15;
      v18 = 14;
      v19 = 13;
      v20 = 12;
      v21 = 11;
      v22 = 10;
      v23 = 9;
      v24 = 8;
    }

    else
    {
      v71 = 0;
      v73 = 0;
      v75 = 0;
      v77 = 0;
      v63 = 14;
      v60 = 13;
      v56 = 12;
      v17 = 11;
      v18 = 10;
      v19 = 9;
      v20 = 8;
      v21 = 7;
      v22 = 6;
      v23 = 5;
      v24 = 4;
    }

    v25 = a2[v24];
    if (v25 == kCFNull)
    {
      v25 = 0;
    }

    v67 = v25;
    v26 = a2[v23];
    if (v26 == kCFNull)
    {
      v26 = 0;
    }

    v66 = v26;
    v27 = a2[v22];
    if (v27 == kCFNull)
    {
      v27 = 0;
    }

    v65 = v27;
    v28 = a2[v21];
    if (v28 == kCFNull)
    {
      v28 = 0;
    }

    v29 = v28;
    v30 = a2[v20];
    if (v30 == kCFNull)
    {
      v30 = 0;
    }

    v62 = v30;
    v31 = a2[v19];
    if (v31 == kCFNull)
    {
      v31 = 0;
    }

    v32 = v31;
    v33 = a2[v18];
    if (v33 == kCFNull)
    {
      v33 = 0;
    }

    v59 = v33;
    v34 = a2[v17];
    if (v34 == kCFNull)
    {
      v34 = 0;
    }

    v35 = v34;
    v36 = a2[v56];
    if (v36 == kCFNull)
    {
      v36 = 0;
    }

    v37 = v36;
    v38 = a2[v60];
    if (v38 == kCFNull)
    {
      v38 = 0;
    }

    v39 = v38;
    v40 = a2[v63];
    if (v40 == kCFNull)
    {
      v40 = 0;
    }

    v41 = v40;
    v43 = v75;
    v42 = v77;
    a1 = v58;
    v44 = v73;
    v45 = v71;
    goto LABEL_49;
  }

LABEL_107:

  objc_autoreleasePoolPop(v4);
}

void sub_10002C14C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = *(a1 + 40);

    dispatch_group_leave(v7);
  }

  else
  {
    v13 = v5;
    v14 = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002C200;
    v10[3] = &unk_100093038;
    v9 = *(a1 + 56);
    v12 = *(a1 + 48);
    v11 = *(a1 + 32);
    [a5 enumerateQueryResults:v9 stringCache:0 usingBlock:v10];
  }
}

void sub_10002C200(uint64_t a1, CFNullRef *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *a2;
  if (*a2 == kCFNull)
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = a2[1];
  if (v7 == kCFNull)
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [*(*(*(a1 + 40) + 8) + 40) objectForKey:v6];
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    [*(a1 + 32) addObject:v6];
  }

  if ([(__CFNull *)v8 integerValue])
  {
    v11 = v6 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    [*(*(*(a1 + 40) + 8) + 40) removeObjectForKey:v6];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10002C2EC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v6 = *(a1 + 32);

    dispatch_group_leave(v6);
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      v10 = *(a1 + 56);
      v11 = [a5 enumerateQueryResults:_NSConcreteStackBlock attributeSize:3221225472 stringCache:sub_10002C3DC usingBlock:{&unk_100093010, *(a1 + 40)}];
      v8 = v9;
    }

    while ((v11 & 1) != 0);
  }
}

void sub_10002C3DC(uint64_t a1, CFNullRef *a2)
{
  context = objc_autoreleasePoolPush();
  v3 = *a2;
  if (*a2 == kCFNull)
  {
    v3 = 0;
  }

  v73 = v3;
  v4 = a2[1];
  if (v4 == kCFNull)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2[1];
  }

  v6 = v5;
  v7 = a2[2];
  if (v7 == kCFNull)
  {
    v7 = 0;
  }

  v70 = v7;
  v8 = a2[3];
  if (v8 == kCFNull)
  {
    v8 = 0;
  }

  v69 = v8;
  v9 = a2[4];
  if (v9 == kCFNull)
  {
    v9 = 0;
  }

  v68 = v9;
  v10 = a2[5];
  if (v10 == kCFNull)
  {
    v10 = 0;
  }

  v67 = v10;
  v11 = a2[6];
  if (v11 == kCFNull)
  {
    v11 = 0;
  }

  v66 = v11;
  v12 = a2[7];
  if (v12 == kCFNull)
  {
    v12 = 0;
  }

  v65 = v12;
  v13 = a2[8];
  if (v13 == kCFNull)
  {
    v13 = 0;
  }

  v72 = v13;
  v14 = a2[9];
  if (v14 == kCFNull)
  {
    v14 = 0;
  }

  v76 = v14;
  v15 = a2[10];
  if (v15 == kCFNull)
  {
    v15 = 0;
  }

  v75 = v15;
  v16 = a2[11];
  if (v16 == kCFNull)
  {
    v16 = 0;
  }

  v74 = v16;
  v17 = a2[12];
  if (v17 == kCFNull)
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = a2[13];
  if (v19 == kCFNull)
  {
    v20 = 0;
  }

  else
  {
    v20 = a2[13];
  }

  v21 = v20;
  v22 = a2[14];
  if (v22 == kCFNull)
  {
    v23 = 0;
  }

  else
  {
    v23 = a2[14];
  }

  v61 = v23;
  v24 = a2[19];
  if (v24 == kCFNull)
  {
    v24 = 0;
  }

  v25 = v24;
  v26 = a2[20];
  if (v26 == kCFNull)
  {
    v26 = 0;
  }

  v71 = v26;
  v27 = a2[21];
  if (v27 == kCFNull)
  {
    v27 = 0;
  }

  v64 = v27;
  v28 = a2[22];
  if (v28 == kCFNull)
  {
    v28 = 0;
  }

  v63 = v28;
  v29 = a2[23];
  if (v29 == kCFNull)
  {
    v29 = 0;
  }

  v30 = v29;
  v31 = v30;
  if (v30 && [(__CFNull *)v30 integerValue])
  {
    v32 = v25;
    v33 = v18;
    v35 = v68;
    v34 = v69;
    v36 = v67;
    v37 = v61;
    goto LABEL_110;
  }

  v59 = v31;
  v38 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v73];
  v39 = v38;
  if (v38)
  {
    v40 = [v38 objectForKey:off_1000A7E10];
    v58 = v40;
    if (v40)
    {
      if (v72)
      {
        v41 = [v40 arrayByAddingObjectsFromArray:v72];

        v72 = v41;
      }

      else
      {
        v72 = v40;
      }
    }

    v42 = [v39 objectForKey:off_1000A7E00];
    v57 = v42;
    if (v42)
    {
      if (v75)
      {
        v43 = [v42 arrayByAddingObjectsFromArray:v75];

        v75 = v43;
      }

      else
      {
        v75 = v42;
      }
    }

    v44 = [v39 objectForKey:off_1000A7E18];
    v56 = v44;
    if (v44)
    {
      if (v76)
      {
        v45 = [v44 arrayByAddingObjectsFromArray:v76];

        v76 = v45;
      }

      else
      {
        v76 = v44;
      }
    }

    v46 = [v39 objectForKey:off_1000A7E08];
    v55 = v46;
    if (v46)
    {
      if (v74)
      {
        v47 = [v46 arrayByAddingObjectsFromArray:v74];

        v74 = v47;
      }

      else
      {
        v74 = v46;
      }
    }

    v48 = [v39 objectForKey:off_1000A7E20];
    v53 = v48;
    if (v48)
    {
      if (!v18)
      {
        v18 = v48;
        if (v6)
        {
LABEL_70:
          if (v61)
          {
            if (v21)
            {
LABEL_72:
              v50 = objc_alloc_init(CSSearchableItemAttributeSet);
              v51 = v50;
              if (v4)
              {
                [v50 setAttribute:v4 forKey:@"_kMDItemLaunchString"];
              }

              if (v22)
              {
                [v51 setAttribute:v22 forKey:@"_kMDItemShortcutLastUsedDate"];
              }

              if (v19)
              {
                [v51 setAttribute:v19 forKey:@"kMDItemLastUsedDate_Ranking"];
              }

              if ([(__CFNull *)v72 count])
              {
                [v51 setAttribute:v72 forKey:MDItemIncomingVideoCallDates];
              }

              if ([(__CFNull *)v76 count])
              {
                [v51 setAttribute:v76 forKey:MDItemOutgoingVideoCallDates];
              }

              if ([(__CFNull *)v75 count])
              {
                [v51 setAttribute:v75 forKey:MDItemIncomingAudioCallDates];
              }

              if ([(__CFNull *)v74 count])
              {
                [v51 setAttribute:v74 forKey:MDItemOutgoingAudioCallDates];
              }

              if (v70)
              {
                [v51 setAttribute:v70 forKey:MDItemIncomingCounts];
              }

              if (v69)
              {
                [v51 setAttribute:v69 forKey:MDItemOutgoingCounts];
              }

              if (v68)
              {
                [v51 setAttribute:v68 forKey:MDItemIncomingMailCounts];
              }

              if (v67)
              {
                [v51 setAttribute:v67 forKey:MDItemOutgoingMailCounts];
              }

              v21 = v19;
              if (v66)
              {
                [v51 setAttribute:v66 forKey:MDItemIncomingSMSCounts];
              }

              if (v65)
              {
                [v51 setAttribute:v65 forKey:MDItemOutgoingSMSCounts];
              }

              if (v25)
              {
                [v51 setAttribute:v25 forKey:MDItemIncomingCalendarCounts];
              }

              if (v71)
              {
                [v51 setAttribute:v71 forKey:MDItemOutgoingCalendarCounts];
              }

              if (v64)
              {
                [v51 setAttribute:v64 forKey:MDItemIncomingFileProviderCounts];
              }

              v32 = v25;
              if (v63)
              {
                [v51 setAttribute:v63 forKey:MDItemOutgoingFileProviderCounts];
              }

              v37 = v22;
              if ([(__CFNull *)v18 count])
              {
                [v51 setAttribute:v18 forKey:@"kMDItemUsedDates"];
              }

              v33 = v18;
              [v51 setAttribute:&__kCFBooleanTrue forKey:@"_kMDItemDidUpdateFromRestoredValues"];
              v52 = objc_alloc_init(CSSearchableItem);
              [v52 setUniqueIdentifier:v73];
              [v52 setIsUpdate:1];
              [v52 setAttributeSet:v51];
              [*(*(*(a1 + 40) + 8) + 40) addObject:v52];

              v6 = v4;
              v35 = v68;
              v34 = v69;
              v36 = v67;
              goto LABEL_109;
            }
          }

          else
          {
            v22 = [v39 objectForKey:off_1000A7E88];
            if (v21)
            {
              goto LABEL_72;
            }
          }

          v19 = [v39 objectForKey:{off_1000A7EA0, v53}];
          goto LABEL_72;
        }

LABEL_69:
        v4 = [v39 objectForKey:{off_1000A7DF8, v53}];
        goto LABEL_70;
      }

      v49 = [v48 arrayByAddingObjectsFromArray:{v18, v48, v55, v56, v57, v58}];

      v18 = v49;
    }

    if (v6)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  v32 = v25;
  v33 = v18;
  v35 = v68;
  v34 = v69;
  v36 = v67;
  v37 = v61;
LABEL_109:

  v31 = v59;
LABEL_110:

  objc_autoreleasePoolPop(context);
}

void sub_10002CC20(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_10002D4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 48));
  objc_destroyWeak(&location);
  sub_1000066D4(v35 - 192);
  _Unwind_Resume(a1);
}

void sub_10002D540(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained storeCompletedSearch:*(a1 + 32) withSections:&__NSArray0__struct];
}

void sub_10002D598(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained storeCompletedSearch:*(a1 + 32) withSections:&__NSArray0__struct];
}

void sub_10002D5F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [WeakRetained storeCompletedSearch:v3 withSections:v4];
}

void sub_10002D8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_10002E180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose((v53 - 176), 8);
  sub_1000066D4(&a53);
  _Unwind_Resume(a1);
}

uint64_t sub_10002E1F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002E208(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v62 = a3;
  v6 = si_tracing_current_span();
  v66 = *v6;
  v67 = *(v6 + 16);
  v68 = *(v6 + 32);
  v7 = *(a1 + 80);
  *v6 = *(a1 + 64);
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a1 + 96);
  v63 = *(a1 + 64);
  v64 = *(a1 + 80);
  v65 = *(a1 + 96);
  v8 = *v6;
  spanid = si_tracing_calc_next_spanid();
  v10 = *(v6 + 8);
  v11 = *(v6 + 24);
  *v6 = v8;
  *(v6 + 8) = spanid;
  *(v6 + 16) = v10;
  *(v6 + 28) = 102;
  *(v6 + 32) = "SPCalculationDatastore replyBlock";
  si_tracing_log_span_begin();
  v12 = objc_alloc_init(NSNumberFormatter);
  v13 = +[NSLocale systemLocale];
  [v12 setLocale:v13];

  [v12 setNumberStyle:1];
  [v12 setMaximumFractionDigits:10];
  v14 = [v5 formattedResult];
  v15 = [v12 numberFromString:v14];

  v16 = [v12 numberFromString:*(a1 + 32)];
  v17 = [v5 formattedResult];
  if ([v17 isEqualToString:*(a1 + 32)] & 1) != 0 || (objc_msgSend(v15, "isEqual:", v16))
  {

    goto LABEL_4;
  }

  v24 = [*(a1 + 32) length];

  if (v24 < 2)
  {
    goto LABEL_4;
  }

  v25 = [v5 formattedResult];

  if (v25)
  {
    v26 = SPLogForSPLogCategoryDefault();
    v27 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v26, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v60 = *(a1 + 32);
      v28 = [v5 formattedResult];
      *buf = 138412546;
      v72 = v60;
      v73 = 2112;
      v74 = v28;
      _os_log_impl(&_mh_execute_header, v26, ((v27 & 1) == 0), "CalcSearch results for %@: %@", buf, 0x16u);
    }
  }

  v29 = [v5 unitType];
  if (v5)
  {
    v30 = [v5 inputValueAndUnit];
    v58 = v30 == 0;
  }

  else
  {
    v58 = 0;
  }

  v61 = [v5 formattedResult];
  if (![v61 length])
  {
    goto LABEL_28;
  }

  v31 = [v5 isTrivial];

  if ((v31 & 1) == 0)
  {
    if (!v58)
    {
      v32 = objc_opt_new();
      [v32 setNumberStyle:1];
      [v32 setUsesGroupingSeparator:1];
      [v32 setMaximumFractionDigits:2];
      [v5 setNumberFormatter:v32];
    }

    v61 = objc_opt_new();
    [v61 beginDictionary];
    v33 = [v5 formattedExpression];
    [v61 encodeObject:v33 withKey:@"SSAttributeCalculatorInput"];

    v34 = [v5 formattedResult];
    [v61 encodeObject:v34 withKey:@"SSAttributeCalculatorOutput"];

    if (v58)
    {
      v35 = [NSNumber numberWithBool:1];
      [v61 encodeObject:v35 withKey:@"SSAttributeIsCalculation"];
    }

    if (v29 == 16)
    {
      v36 = [NSNumber numberWithBool:1];
      [v61 encodeObject:v36 withKey:@"SSAttributeIsCurrencyConversion"];
    }

    [v61 endDictionary];
    v59 = objc_alloc_init(SFSearchResult_Compatibility);
    v37 = [*(a1 + 48) queryContext];
    v38 = [v37 getTrimmedSearchString];
    v39 = [@"calculation-" stringByAppendingString:v38];
    [v59 setIdentifier:v39];

    [v59 setQueryId:*(a1 + 104)];
    [v59 setUserInput:*(a1 + 32)];
    [v59 setPlacement:3];
    [v59 setScore:{9, 0}];
    v40 = [v61 data];
    v41 = [v40 copy];
    [v59 setAttributeData:v41];

    [v59 setSectionBundleIdentifier:PRSRankingCalculatorBundleString];
    v42 = [NSBundle bundleForClass:objc_opt_class()];
    if (v58)
    {
      [v42 localizedStringForKey:@"CALCULATION_SECTION_TITLE" value:&stru_100094040 table:@"SpotlightServices"];
    }

    else
    {
      [v42 localizedStringForKey:@"CONVERSION_SECTION_TITLE" value:&stru_100094040 table:@"SpotlightServices"];
    }
    v43 = ;
    [v59 setSectionHeader:v43];

    [v59 setTopHit:SSSetTopHitWithReasonString()];
    v44 = objc_alloc_init(SFMutableResultSection);
    v45 = v44;
    if (v58)
    {
      v46 = @"com.apple.calculation";
    }

    else
    {
      v46 = @"com.apple.conversion";
    }

    [v44 setBundleIdentifier:v46];
    v47 = [v59 sectionHeader];
    [v45 setTitle:v47];

    v70 = v59;
    v48 = [NSArray arrayWithObjects:&v70 count:1];
    [v45 setResults:v48];

    v69 = v45;
    v49 = [NSArray arrayWithObjects:&v69 count:1];
    v50 = *(*(a1 + 56) + 8);
    v51 = *(v50 + 40);
    *(v50 + 40) = v49;

LABEL_28:
  }

  v52 = SPLogForSPLogCategoryDefault();
  v53 = v52;
  if (gSPLogDebugAsDefault)
  {
    v54 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v54 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v52, v54))
  {
    v55 = @"unit converter";
    if (v58)
    {
      v55 = @"calculator";
    }

    *buf = 138412290;
    v72 = v55;
    _os_log_impl(&_mh_execute_header, v53, v54, "#query calculation finish %@", buf, 0xCu);
  }

  v56 = SPLogForSPLogCategoryTelemetry();
  v57 = [*(a1 + 48) externalID];
  if (v57 && os_signpost_enabled(v56))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, OS_SIGNPOST_INTERVAL_END, v57, "calculationSpotlightLatency", " enableTelemetry=YES ", buf, 2u);
  }

LABEL_4:
  dispatch_group_leave(*(a1 + 40));

  v18 = *v6;
  v19 = *(v6 + 8);
  v20 = *(v6 + 16);
  v21 = *(v6 + 24);
  v22 = *(v6 + 28);
  v23 = *(v6 + 32);
  si_tracing_log_span_end();
  *v6 = v66;
  *(v6 + 16) = v67;
  *(v6 + 32) = v68;
}

void sub_10002E9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21)
{
  sub_1000066D4(&a13);
  v23 = a20;
  *v21 = a19;
  *(v21 + 16) = v23;
  *(v21 + 32) = a21;
  _Unwind_Resume(a1);
}

__n128 sub_10002EA38(uint64_t a1)
{
  v2 = si_tracing_current_span();
  v36 = *v2;
  v37 = *(v2 + 16);
  v38 = *(v2 + 32);
  v3 = *(a1 + 96);
  *v2 = *(a1 + 80);
  *(v2 + 16) = v3;
  *(v2 + 32) = *(a1 + 112);
  v33 = *(a1 + 80);
  v34 = *(a1 + 96);
  v35 = *(a1 + 112);
  v4 = *v2;
  spanid = si_tracing_calc_next_spanid();
  v6 = *(v2 + 8);
  v7 = *(v2 + 24);
  *v2 = v4;
  *(v2 + 8) = spanid;
  *(v2 + 16) = v6;
  *(v2 + 28) = 102;
  *(v2 + 32) = "SPCalculationDatastore completion";
  si_tracing_log_span_begin();
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v9 = sub_100017E38(WeakRetained, "finished", "calculation", *(a1 + 120));
  v10 = SPLogForSPLogCategoryDefault();
  v11 = v10;
  if (gSPLogDebugAsDefault)
  {
    v12 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v12 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v10, v12))
  {
    v13 = *(a1 + 32);
    v14 = objc_opt_class();
    *buf = 138412546;
    v40 = v14;
    v41 = 1024;
    LODWORD(v42) = qos_class_self();
    _os_log_impl(&_mh_execute_header, v11, v12, "QOS %@ storeCompletedSearch: %d", buf, 0x12u);
  }

  [WeakRetained storeCompletedSearch:*(a1 + 32) withSections:{*(*(*(a1 + 64) + 8) + 40), v33, v34, v35}];
  v15 = SPLogForSPLogCategoryDefault();
  v16 = v15;
  if (gSPLogDebugAsDefault)
  {
    v17 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v17 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v15, v17))
  {
    v18 = *(a1 + 40);
    v19 = objc_opt_class();
    *buf = 138412546;
    v40 = v19;
    v41 = 2048;
    v42 = v9 / 1000000000.0;
    v20 = v19;
    _os_log_impl(&_mh_execute_header, v16, v17, "- Datastore %@ time %g canceled", buf, 0x16u);
  }

  ADClientAddValueForScalarKey();
  [WeakRetained externalID];
  kdebug_trace();
  v21 = [[SFEndLocalSearchFeedback alloc] initWithStartSearch:*(a1 + 48)];
  v22 = +[SPFeedbackProxy sharedProxy];
  v23 = [*(a1 + 56) queryIdent];
  v24 = [*(a1 + 56) connection];
  v25 = [v24 bundleID];
  [v22 sendFeedbackType:6 feedback:v21 queryId:v23 clientID:v25];

  v26 = *v2;
  v27 = *(v2 + 8);
  v28 = *(v2 + 16);
  v29 = *(v2 + 24);
  v30 = *(v2 + 28);
  v31 = *(v2 + 32);
  si_tracing_log_span_end();
  result = v36;
  *v2 = v36;
  *(v2 + 16) = v37;
  *(v2 + 32) = v38;
  return result;
}

void sub_10002ED58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17)
{
  sub_1000066D4(&a9);
  v19 = a16;
  *v17 = a15;
  *(v17 + 16) = v19;
  *(v17 + 32) = a17;
  _Unwind_Resume(a1);
}

void sub_10002F188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

__n128 sub_10002F1A4(uint64_t a1)
{
  v2 = si_tracing_current_span();
  v34 = *v2;
  v35 = *(v2 + 16);
  v36 = *(v2 + 32);
  v3 = *v2;
  spanid = si_tracing_calc_next_spanid();
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  *v2 = v3;
  *(v2 + 8) = spanid;
  *(v2 + 16) = v5;
  *(v2 + 28) = 102;
  *(v2 + 32) = "SPCoreSpotlightQueryTask do cancel";
  si_tracing_log_span_begin();
  v7 = *(a1 + 32);
  if ((*(v7 + 26) & 1) == 0 && (*(v7 + 24) & 1) == 0)
  {
    if (*(v7 + 27) == 1)
    {
      v8 = [v7 timeoutTimer];
      v9 = v8;
      if (v8)
      {
        dispatch_source_cancel(v8);
        [*(a1 + 32) setTimeoutTimer:0];
      }

      v7 = *(a1 + 32);
    }

    WeakRetained = objc_loadWeakRetained((v7 + 56));
    v43 = @"queryID";
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [WeakRetained queryID]);
    v44 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    SSQueryParserCancelWithReferenceDict();

    v13 = [WeakRetained queryContext];
    LOBYTE(v12) = [v13 isSearchToolClient];

    if ((v12 & 1) == 0)
    {
      v14 = +[SPFeedbackProxy sharedProxy];
      v15 = *(a1 + 40);
      v16 = [WeakRetained queryIdent];
      v17 = [WeakRetained connection];
      v18 = [v17 bundleID];
      [v14 sendFeedbackType:6 feedback:v15 queryId:v16 clientID:v18];
    }

    *(*(a1 + 32) + 26) = 1;
    v19 = SPLogForSPLogCategoryDefault();
    v20 = v19;
    if (gSPLogDebugAsDefault)
    {
      v21 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v21 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v19, v21))
    {
      v22 = qos_class_self();
      v23 = [*(*(a1 + 32) + 32) queryID];
      [*(*(a1 + 32) + 32) queryID];
      *buf = 67109632;
      v38 = v22;
      v39 = 2048;
      v40 = v23;
      v41 = 2048;
      v42 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "Cancelling querytask at QoS:%d for job id:(%ld,%ld)", buf, 0x1Cu);
    }

    v25 = SPLogForSPLogCategoryTelemetry();
    v26 = [*(*(a1 + 32) + 32) queryID];
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, v26, "coreSpotlightCancel", " enableTelemetry=YES ", buf, 2u);
    }

    [*(*(a1 + 32) + 32) cancel];
    objc_storeWeak((*(a1 + 32) + 56), 0);
    if ((*(*(a1 + 32) + 24) & 1) == 0)
    {
      atomic_fetch_add(&dword_1000A8420, 0xFFFFFFFF);
    }
  }

  v27 = *v2;
  v28 = *(v2 + 8);
  v29 = *(v2 + 16);
  v30 = *(v2 + 24);
  v31 = *(v2 + 28);
  v32 = *(v2 + 32);
  si_tracing_log_span_end();
  result = v34;
  *v2 = v34;
  *(v2 + 16) = v35;
  *(v2 + 32) = v36;
  return result;
}

void sub_10002F8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_10002F8D0(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  v6 = +[SPFeedbackProxy sharedProxy];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) queryIdent];
  v4 = [*(a1 + 48) connection];
  v5 = [v4 bundleID];
  [v6 sendFeedbackType:5 feedback:v2 queryId:v3 clientID:v5];
}

void sub_10002FBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

__n128 sub_10002FBDC(uint64_t a1)
{
  v2 = si_tracing_current_span();
  v18 = *v2;
  v19 = *(v2 + 16);
  v20 = *(v2 + 32);
  v3 = *v2;
  spanid = si_tracing_calc_next_spanid();
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  *v2 = v3;
  *(v2 + 8) = spanid;
  *(v2 + 16) = v5;
  *(v2 + 28) = 102;
  *(v2 + 32) = "SPCoreSpotlightDatastore send completions";
  si_tracing_log_span_begin();
  v7 = SPLogForSPLogCategoryDefault();
  v8 = v7;
  if (gSPLogDebugAsDefault)
  {
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v9 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v7, v9))
  {
    v10 = *(a1 + 32);
    *buf = 138412290;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v8, v9, "Sending completions on %@.", buf, 0xCu);
  }

  [*(a1 + 32) sendCompletions:*(a1 + 40)];
  v11 = *v2;
  v12 = *(v2 + 8);
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  v15 = *(v2 + 28);
  v16 = *(v2 + 32);
  si_tracing_log_span_end();
  result = v18;
  *v2 = v18;
  *(v2 + 16) = v19;
  *(v2 + 32) = v20;
  return result;
}

void sub_10002FFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_1000303B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_1000303EC(uint64_t a1)
{
  v2 = +[SPFeedbackProxy sharedProxy];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) queryIdent];
  v5 = [*(a1 + 40) connection];
  v6 = [v5 bundleID];
  [v2 sendFeedbackType:6 feedback:v3 queryId:v4 clientID:v6];

  v7 = *(a1 + 48);
  v8 = *(v7 + 8);
  *(v7 + 8) = 0;
}

double sub_100030498(uint64_t a1)
{
  v2 = si_tracing_current_span();
  v3 = *(v2 + 16);
  v23 = *v2;
  v24 = v3;
  v25 = *(v2 + 32);
  v4 = *v2;
  spanid = si_tracing_calc_next_spanid();
  v6 = *(v2 + 8);
  v7 = *(v2 + 24);
  *v2 = v4;
  *(v2 + 8) = spanid;
  *(v2 + 16) = v6;
  *(v2 + 28) = 102;
  *(v2 + 32) = "SPCoreSpotlightDatastore finish query";
  si_tracing_log_span_begin();
  [*(a1 + 32) storeCompletedSearch:*(a1 + 40) withSections:*(a1 + 48) suggestionResults:*(a1 + 56)];
  [*(a1 + 32) externalID];
  kdebug_trace();
  v8 = SPLogForSPLogCategoryTelemetry();
  v9 = [*(a1 + 32) externalID];
  if (v9 && os_signpost_enabled(v8))
  {
    *v22 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "coreSpotlightLatency", " enableTelemetry=YES ", v22, 2u);
  }

  v10 = SPLogForSPLogCategoryRanking();
  v11 = [*(a1 + 32) externalID];
  if (v11 && os_signpost_enabled(v10))
  {
    *v22 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "coreSpotlightRankingLatency", &unk_100079B12, v22, 2u);
  }

  v12 = SPLogForSPLogCategoryTelemetry();
  v13 = [*(a1 + 32) externalID];
  if (v13 && os_signpost_enabled(v12))
  {
    *v22 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, v13, "coreSpotlightFinish", " enableTelemetry=YES ", v22, 2u);
  }

  v14 = *v2;
  v15 = *(v2 + 8);
  v16 = *(v2 + 16);
  v17 = *(v2 + 24);
  v18 = *(v2 + 28);
  v19 = *(v2 + 32);
  si_tracing_log_span_end();
  result = *&v23;
  v21 = v24;
  *v2 = v23;
  *(v2 + 16) = v21;
  *(v2 + 32) = v25;
  return result;
}

void sub_1000306A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

int64_t sub_100030E3C(id a1, SPTopHitResult *a2, SPTopHitResult *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(SPTopHitResult *)v4 bundleID];
  v7 = [(SPTopHitResult *)v5 bundleID];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [(SPTopHitResult *)v4 dataclass];
    v10 = [(SPTopHitResult *)v5 dataclass];
    v8 = [v9 compare:v10];
  }

  return v8;
}

uint64_t sub_100031188(double *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 score];
  v9 = v8;
  v10 = [v6 score];
  v12 = *(a1 + 4);
  v13 = *(a1 + 5);
  if (v12 & v7 | v13 & v9)
  {
    v9 &= *(a1 + 7);
    v7 &= *(a1 + 6);
  }

  if (v12 & v10 | v13 & v11)
  {
    v11 &= *(a1 + 7);
    v10 &= *(a1 + 6);
  }

  if (__PAIR128__(v11, v10) < __PAIR128__(v9, v7))
  {
    goto LABEL_6;
  }

  if (__PAIR128__(v9, v7) < __PAIR128__(v11, v10))
  {
LABEL_8:
    v14 = 1;
    goto LABEL_9;
  }

  v16 = a1[8];
  v17 = [v5 interestingDate];
  [v17 timeIntervalSinceReferenceDate];
  v19 = vabdd_f64(v16, v18);

  v20 = a1[8];
  v21 = [v6 interestingDate];
  [v21 timeIntervalSinceReferenceDate];
  v23 = vabdd_f64(v20, v22);

  if (v19 >= v23)
  {
    if (v19 <= v23)
    {
      v14 = 0;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_6:
  v14 = -1;
LABEL_9:

  return v14;
}

uint64_t sub_1000319D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 rankingItem];
  v8 = [v6 rankingItem];
  v9 = [v7 compare:v8 currentTime:*(a1 + 32)];

  if (!v9)
  {
    v10 = [v5 score];
    v12 = v11;
    v13 = [v6 score];
    if (__PAIR128__(v14, v13) < __PAIR128__(v12, v10))
    {
LABEL_3:
      v9 = 1;
      goto LABEL_6;
    }

    if (__PAIR128__(v12, v10) >= __PAIR128__(v14, v13))
    {
      v16 = *(a1 + 40);
      v17 = [v5 interestingDate];
      [v17 timeIntervalSinceReferenceDate];
      v19 = vabdd_f64(v16, v18);

      v20 = *(a1 + 40);
      v21 = [v6 interestingDate];
      [v21 timeIntervalSinceReferenceDate];
      v23 = vabdd_f64(v20, v22);

      if (v19 < v23)
      {
        goto LABEL_3;
      }

      if (v19 <= v23)
      {
        v9 = 0;
        goto LABEL_6;
      }
    }

    v9 = -1;
  }

LABEL_6:

  return -v9;
}

id sub_10003250C(_BYTE *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1[40] == 1)
  {
    v7 = [SSPommesRanker MailL1Compare:v5 to:v6];
  }

  else if (a1[41] == 1)
  {
    v7 = [SSPommesPhotosRanker PhotosL1Compare:v5 to:v6];
  }

  else if (a1[42] == 1)
  {
    v7 = [SSPommesRanker BaseL1Compare:v5 to:v6];
  }

  else
  {
    v7 = SSSpotlightL1Compare();
  }

  v8 = v7;

  return v8;
}

uint64_t sub_1000325D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 embeddingSimilarity];
  v8 = v7;
  [v6 embeddingSimilarity];
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

uint64_t sub_100032670(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 pommesL1Score];
  v8 = v7;
  v9 = denseScoreWeight;
  [v5 embeddingSimilarity];
  v11 = v8 + (v9 * v10);
  [v6 pommesL1Score];
  v13 = v12;
  [v6 embeddingSimilarity];
  v15 = v13 + (v9 * v14);
  if (v11 <= v15)
  {
    if (v11 < v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v16 = -1;
  }

  return v16;
}

uint64_t sub_10003273C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"item"];
  v7 = [v5 objectForKeyedSubscript:@"item"];

  v8 = (*(v4 + 16))(v4, v6, v7);
  return v8;
}

uint64_t sub_1000327CC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"item"];
  v7 = [v5 objectForKeyedSubscript:@"item"];

  v8 = (*(v4 + 16))(v4, v6, v7);
  return v8;
}

uint64_t sub_10003285C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"item"];
  v7 = [v5 objectForKeyedSubscript:@"item"];

  v8 = (*(v4 + 16))(v4, v6, v7);
  return v8;
}

void sub_1000328EC(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"index"];
  v4 = [v3 unsignedIntValue];

  v5 = [*(a1 + 32) objectAtIndexedSubscript:v4];
  [*(a1 + 40) addObject:v5];
}

void sub_100032974(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"index"];
  v4 = [v3 unsignedIntValue];

  v5 = [*(a1 + 32) objectAtIndexedSubscript:v4];
  [*(a1 + 40) addObject:v5];
}

void sub_1000329FC(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"index"];
  v4 = [v3 unsignedIntValue];

  v5 = [*(a1 + 32) objectAtIndexedSubscript:v4];
  [*(a1 + 40) addObject:v5];
}

void sub_100032E14(id a1)
{
  qword_1000A8440 = objc_alloc_init(SPCoreSpotlightDatastore);

  _objc_release_x1();
}

void sub_100033300(uint64_t a1)
{
  v2 = +[SDController getMeContactIdentifier];
  v3 = +[SDController getMeEmailAddresses];
  if (v2)
  {
    if (([qword_1000A8428 isEqualToString:v2] & 1) == 0)
    {
      objc_storeStrong(&qword_1000A8428, v2);
      v4 = [NSArray arrayWithArray:v3];
      v5 = qword_1000A8430;
      qword_1000A8430 = v4;

      [qword_1000A8480 setObject:qword_1000A8428 forKey:@"meContactIdentifier"];
      [qword_1000A8480 setObject:qword_1000A8430 forKey:@"meEmailAddresses"];
    }

    v6 = 0;
  }

  else
  {
    v7 = [CNContactStore alloc];
    v8 = objc_opt_new();
    v6 = [v7 initWithConfiguration:v8];

    v33[0] = CNContactIdentifierKey;
    v33[1] = CNContactGivenNameKey;
    v33[2] = CNContactMiddleNameKey;
    v33[3] = CNContactFamilyNameKey;
    v33[4] = CNContactEmailAddressesKey;
    v33[5] = CNContactPhoneNumbersKey;
    v9 = [NSArray arrayWithObjects:v33 count:6];
    v32 = 0;
    v10 = [v6 _ios_meContactWithKeysToFetch:v9 error:&v32];
    v11 = v32;

    if (v11)
    {
      v12 = SPLogForSPLogCategoryQuery();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100062FD8(v11);
      }
    }

    else
    {
      v13 = objc_opt_new();
      v14 = [v10 emailAddresses];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000336F0;
      v30[3] = &unk_1000932D8;
      v12 = v13;
      v31 = v12;
      [v14 enumerateObjectsUsingBlock:v30];

      v15 = [v10 identifier];
      v16 = [v15 isEqualToString:qword_1000A8428];

      if ((v16 & 1) == 0)
      {
        v17 = [v10 identifier];
        v18 = qword_1000A8428;
        qword_1000A8428 = v17;

        v19 = [v12 copy];
        v20 = qword_1000A8430;
        qword_1000A8430 = v19;

        [qword_1000A8480 setObject:qword_1000A8428 forKey:@"meContactIdentifier"];
        [qword_1000A8480 setObject:qword_1000A8430 forKey:@"meEmailAddresses"];
      }
    }
  }

  if (qword_1000A8428)
  {
    v21 = 1;
  }

  else
  {
    v21 = -1;
  }

  [qword_1000A8480 setInteger:v21 forKey:@"meContactExists"];
  v22 = *(a1 + 32);
  [objc_opt_class() updatePhoneFavorites];
  if (!qword_1000A84A0)
  {
    v23 = [qword_1000A8480 objectForKey:@"mailVips"];
    v24 = qword_1000A84A0;
    qword_1000A84A0 = v23;
  }

  v25 = [STConversation alloc];
  v26 = PRSRankingMessagesBundleString;
  v27 = v6;
  if (!v6)
  {
    v27 = objc_opt_new();
  }

  v28 = [v25 initWithBundleIdentifier:v26 contactStore:v27];
  v29 = qword_1000A84A8;
  qword_1000A84A8 = v28;

  if (!v6)
  {
  }
}

void sub_1000336F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  [v2 addObject:v3];
}

void sub_1000338C8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [objc_opt_class() _handleRemoteProxyError:v3];
}

void sub_10003391C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000630DC();
    }
  }

  else
  {
    if ([v5 count] >= 0x65)
    {
      v8 = [v5 subarrayWithRange:{0, 100}];

      v5 = v8;
    }

    os_unfair_lock_lock(&unk_1000A84B8);
    objc_storeStrong(&qword_1000A84A0, v5);
    os_unfair_lock_unlock(&unk_1000A84B8);
    v9 = SPLogForSPLogCategoryDefault();
    v7 = v9;
    if (gSPLogDebugAsDefault)
    {
      v10 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v10 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v9, v10))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v10, "Finish Fetching VIPs", v13, 2u);
    }
  }

  [qword_1000A8480 setObject:v5 forKey:@"mailVips"];
  v11 = *(a1 + 32);
  v12 = objc_opt_self();
}

void sub_100033D7C(id a1)
{
  v1 = si_tracing_current_span();
  v15 = *v1;
  v17 = *(v1 + 16);
  v19 = *(v1 + 32);
  v2 = *v1;
  spanid = si_tracing_calc_next_spanid();
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  *v1 = v2;
  *(v1 + 8) = spanid;
  *(v1 + 16) = v4;
  *(v1 + 28) = 102;
  *(v1 + 32) = "SPCoreSpotlightDatastore do preheat";
  si_tracing_log_span_begin();
  v22 = @"ExtendedDeviceLockState";
  v23 = kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  if (MKBGetDeviceLockState() - 1 > 1)
  {
    v7 = 0;
  }

  else
  {
    v21 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v7 = [NSArray arrayWithObjects:&v21 count:1];
  }

  v8 = [SSRankingFeedbackHandler sharedInstance:v15];
  [v8 fetchBundleRenderAndEngagementInfo:v7];

  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + 28);
  v14 = *(v1 + 32);
  si_tracing_log_span_end();
  *v1 = v16;
  *(v1 + 16) = v18;
  *(v1 + 32) = v20;
}

void sub_1000343A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_1000343E4(id a1)
{
  v1 = +[SRResourcesManager sharedResourcesManager];
  [v1 loadAllParameters];

  +[SSRankingManager reloadRankingParametersFromTrial];
}

void sub_100034434(uint64_t a1)
{
  v2 = objc_opt_new();
  v6 = 0;
  v3 = [v2 loadDockAppListWithError:&v6];
  v4 = v6;
  if (v3)
  {
    [PRSRankingItemRanker setDockApps:v3];
  }

  if (v4)
  {
    v5 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100063148();
    }
  }

  if (_os_feature_enabled_impl())
  {
    *(*(a1 + 32) + 56) = 1;
  }
}

void sub_100034C74(id a1)
{
  v4[0] = PRSRankingSafariBundleString;
  v4[1] = PRSRankingAppsBundleString;
  v4[2] = PRSRankingContactsBundleString;
  v4[3] = PRSRankingSettingsBundleString;
  v4[4] = PRSRankingNotesBundleString;
  v4[5] = PRSRankingFilesBundleString;
  v4[6] = PRSRankingLocalFilesBundleString;
  v4[7] = PRSRankingDocumentsAppBundleString;
  v4[8] = PRSRankingMailBundleString;
  v4[9] = PRSRankingCalendarBundleString;
  v4[10] = PRSRankingRemindersBundleString;
  v4[11] = PRSRankingShortcutsBundleString;
  v4[12] = PRSRankingDictionaryBundleString;
  v4[13] = PRSRankingTipsBundleString;
  v4[14] = PRSRankingBooksBundleString;
  v4[15] = PRSRankingMusicBundleString;
  v4[16] = PRSRankingPodcastsBundleString;
  v4[17] = PRSRankingPeoplePurchaseRequestBundleString;
  v4[18] = PRSRankingPeopleScreenTimeRequestBundleString;
  v4[19] = PRSRankingEventsBundleString;
  v1 = [NSArray arrayWithObjects:v4 count:20];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1000A84E0;
  qword_1000A84E0 = v2;
}

void *__cdecl sub_100035C6C(id a1, void *a2, __CFString *a3)
{
  v4 = a3;
  if (([(__CFString *)v4 isEqualToString:@"_ModifiedHostName_"]& 1) != 0 || [(__CFString *)v4 isEqualToString:@"kMDItemDisplayName"])
  {
    v5 = CFRetain(a2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000373B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000387C8(uint64_t a1)
{
  v1 = qword_1000A84F0;
  if (*(a1 + 32) == 1)
  {
    qword_1000A84F0 = &off_100099030;

    v2 = qword_1000A84F0;
  }

  else
  {
    qword_1000A84F0 = &off_100099048;

    v2 = &off_100099060;
  }

  qword_1000A84F8 = v2;

  return _objc_release_x1();
}

uint64_t _checkMatch(char a1, void *a2, void *a3, void *a4, void *a5, int a6, id *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if ((a1 & 1) == 0 && (([v13 isEqualToString:PRSRankingMessagesBundleString] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", PRSRankingMailBundleString)) && objc_msgSend(v14, "hasPrefix:", @"en"))
  {
    v17 = [v15 lowercaseString];
    v18 = +[NSCharacterSet whitespaceCharacterSet];
    v19 = [v17 stringByTrimmingCharactersInSet:v18];

    v43 = v19;
    if (![v19 hasPrefix:@"from "] || (v20 = objc_msgSend(v17, "rangeOfString:", @"from "), v20 == 0x7FFFFFFFFFFFFFFFLL) || (v22 = &v20[v21], &v20[v21] >= objc_msgSend(v15, "length")))
    {
      v29 = 0;
      v28 = @"false";
    }

    else
    {
      v23 = [v15 substringFromIndex:v22];
      v39 = [v23 componentsSeparatedByString:@" "];
      v24 = [v39 lastObject];
      v41 = v17;
      if ([v24 length] <= 1)
      {
        v25 = &stru_100094040;
      }

      else
      {
        v25 = @"*";
      }

      if (a6)
      {
        v26 = @"(kMDItemAuthors=%@*cwdtf070 || kMDItemUserSharedReceivedSender=%@*cwdtf070) || kMDItemAuthorEmailAddresses=%@*cwdtf070");
      }

      else
      {
        v26 = @"(kMDItemAuthors=%@*cwd || kMDItemUserSharedReceivedSender=%@*cwd) || kMDItemAuthorEmailAddresses=%@*cwd");
      }

      if (a6)
      {
        v27 = @"(kMDItemAuthors=%@*cwdtf070 || kMDItemUserSharedReceivedSender=%@*cwdtf070 || kMDItemAuthorEmailAddresses=%@*cwdtf070 || kMDItemSubject=%@*cwdtf070 || kMDItemTextContent=%@%@cwdtf070)";
      }

      else
      {
        v27 = @"(kMDItemAuthors=%@*cwd || kMDItemUserSharedReceivedSender=%@*cwd || kMDItemAuthorEmailAddresses=%@*cwd || kMDItemSubject=%@*cwd || kMDItemTextContent=%@%@cwd)";
      }

      v28 = [NSString stringWithFormat:v26, v23, v23, v23];
      v38 = v25;
      v17 = v41;
      v29 = [NSString stringWithFormat:v27, v23, v23, v23, v15, v15, v38];
    }

    v32 = [(__CFString *)v28 isEqualToString:@"false"];
    if ((v32 & 1) == 0)
    {
      v40 = [NSString stringWithFormat:@"(%@ || %@)", v16, v28];
      v42 = v17;
      v33 = *a7;
      v46 = v29;
      v34 = [NSArray arrayWithObjects:&v46 count:1];
      [v33 setObject:v34 forKey:@"queryTerms"];

      v35 = *a7;
      v44 = v29;
      v45 = &off_100098AE0;
      v36 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v37 = v35;
      v17 = v42;
      [v37 setObject:v36 forKey:@"rankTerms"];

      [*a7 setObject:&__kCFBooleanTrue forKey:@"isNLQuery"];
      [*a7 setObject:&off_100098F68 forKey:@"rankCategories"];
      [*a7 setObject:v40 forKey:@"query"];
    }

    v30 = v32 ^ 1;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}