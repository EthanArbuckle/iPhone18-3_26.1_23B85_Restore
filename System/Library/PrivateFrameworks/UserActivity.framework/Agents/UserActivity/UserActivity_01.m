uint64_t sub_100064DA0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length] >= 9)
  {
    v3 = *([v2 bytes] + 7);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_100064E08(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length] && (v3 = objc_msgSend(v2, "bytes"), v4 = objc_msgSend(v2, "length"), v4 >= 1))
  {
    v5 = v3 - 1;
    do
    {
      v6 = v5[v4] == 0;
      if (v5[v4])
      {
        v7 = 0;
      }

      else
      {
        v7 = v4 > 1;
      }

      --v4;
    }

    while (v7);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_100067998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10000DF58(&a9);

  _Unwind_Resume(a1);
}

void sub_100067FB8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  [*(a1 + 32) setUserIsCurrent:a2];
  if (v2)
  {
    +[NSDate date];
  }

  else
  {
    [NSDate dateWithTimeIntervalSinceNow:-8.0];
  }
  v4 = ;
  [*(a1 + 32) setLastUserActiveTime:?];
}

void sub_10006863C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1000687D0(_Unwind_Exception *a1)
{
  v7 = v6;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_10006882C(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) setPreventIdleSleepAssertion:0];
  objc_sync_exit(obj);
}

void sub_10006888C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_100068B9C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_10006AFD8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10006B084(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_10006B124(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_10006B4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  objc_sync_exit(v17);

  _Unwind_Resume(a1);
}

void sub_10006B524(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v3 allObjects];
    [v4 addObjectsFromArray:v5];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10006BA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

BOOL sub_10006BA74(void *a1, void *a2, unsigned int a3)
{
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = [v5 productName];
    if ([v7 isEqual:v6])
    {
      v8 = [v5 productBuildVersion];
      v9 = [v8 integerValue] >= a3;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_10006BB44(void *a1)
{
  v13 = a1;
  v1 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"{(");
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = v13;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v7 = [v6 uniqueID];
        v8 = [v6 name];
        v9 = [v6 modelIdentifier];
        v10 = [v6 productBuildVersion];
        [v1 appendFormat:@"%@/%@/%@/%@ ", v7, v8, v9, v10];
      }

      v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  [v1 appendString:@"}"]);
  v11 = [v1 copy];

  return v11;
}

void sub_10006BDE8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10006BFCC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

int64_t sub_10006C740(id a1, UAUserActivityInfo *a2, UAUserActivityInfo *a3)
{
  v4 = a3;
  v5 = [(UAUserActivityInfo *)a2 when];
  v6 = [(UAUserActivityInfo *)v4 when];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_10006C7B0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10006F3A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001A30(@"signposts");
  v5 = v4;
  v6 = *(a1 + 32);
  if (v6 + 1 >= 2 && os_signpost_enabled(v4))
  {
    v13 = 67109120;
    LODWORD(v14) = v3 == 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "handoffFetch", "success=%d enableTelemetry=YES ", &v13, 8u);
  }

  v7 = sub_100001A30(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) uuid];
    v9 = [v8 UUIDString];
    v10 = [*(a1 + 32) uuid];
    v11 = [v10 UUIDString];
    v12 = [*(a1 + 32) logString];
    v13 = 138543875;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    v17 = 2113;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "-- received data from advertiseableItem delegate callback to client, uuid=%{public}@ activity=%{public}@/%{private}@", &v13, 0x20u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10006F9DC(uint64_t a1)
{
  [*(a1 + 32) scheduleAdvertisementUpdate];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) sfActivityAdvertisers];
  v4 = [v3 count];

  if (v4 > 1)
  {
    *(*(a1 + 32) + 65) = 1;
  }

  else
  {
    v5 = sub_100001A30(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) count];
      v7 = sub_10006BB44(*(a1 + 40));
      v8 = [*(a1 + 32) pairedDevices];
      v9 = 134218498;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 2048;
      v14 = [v8 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adopting paired devices, PAIRED DEVICES CHANGED: Now is %ld/%@  (was %ld devices)", &v9, 0x20u);
    }

    [*(a1 + 32) setPairedDevices:*(a1 + 40)];
  }

  objc_sync_exit(v2);
}

void sub_10006FB54(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10006FC88(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10006FF50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_100070BB4(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 appendFormat:@" No AppleID, %@", v5];
  }

  else
  {
    v7 = @"?";
    if (v11)
    {
      v7 = v11;
    }

    v8 = *(a1 + 40);
    if (*(v8 + 66))
    {
      v9 = "";
    }

    else
    {
      v9 = "(no handoff)";
    }

    if (*(v8 + 67))
    {
      v10 = "";
    }

    else
    {
      v10 = "(no pasteboard)";
    }

    [v6 appendFormat:@" AppleID:%@, devices%s%s:", v7, v9, v10];
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_100070CB0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = v2;
    obj = v2;
    v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v5 = *v19;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v18 + 1) + 8 * i);
          if ([v7 validKey])
          {
            v8 = *(a1 + 32);
            v9 = [v7 name];
            v10 = [v7 modelIdentifier];
            v11 = [v7 productName];
            v12 = sub_100070F7C(v11);
            v13 = [v7 productBuildVersion];
            [v8 appendFormat:@"%@/%@-%@-%@:+%ld, ", v9, v10, v12, v13, objc_msgSend(v7, "keyCounter")];
          }

          else
          {
            v14 = *(a1 + 40);
            v9 = [v7 name];
            v10 = [v7 modelIdentifier];
            v11 = [v7 productName];
            v12 = sub_100070F7C(v11);
            v13 = [v7 productBuildVersion];
            [v14 appendFormat:@"[%@/%@-%@-%@], ", v9, v10, v12, v13];
          }
        }

        v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v4);
    }

    v3 = v15;
  }

  dispatch_group_leave(*(a1 + 48));
}

__CFString *sub_100070F7C(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:@"iPhone OS"])
  {
    v2 = @"iOS";
  }

  else if ([v1 isEqual:@"Mac OS X"])
  {
    v2 = @"macOS";
  }

  else if ([v1 isEqual:@"Watch OS"])
  {
    v2 = @"watchOS";
  }

  else if ([v1 isEqual:@"TVOS"])
  {
    v2 = @"tvOS";
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

void sub_100071684(uint64_t a1, void *a2)
{
  v7 = a2;
  os_unfair_lock_lock(&unk_1000E5DE8);
  v3 = qword_1000E5DE0;
  if (v7 && !qword_1000E5DE0)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = qword_1000E5DE0;
    qword_1000E5DE0 = v4;

    v3 = qword_1000E5DE0;
  }

  v6 = [NSNumber numberWithUnsignedInt:a1];
  [v3 setObject:v7 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&unk_1000E5DE8);
}

void sub_100071768(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) commandPort];
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Received message from another simulator on port %ld, so dispatching.", &v6, 0xCu);
  }

  v5 = *(a1 + 40);
  dispatch_mig_server();
  objc_autoreleasePoolPop(v2);
}

void sub_100071868(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) commandPort];
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Tearing down dispatch_source_t for messages from simulator port %ld", &v5, 0xCu);
  }

  [*(a1 + 32) terminate];
  sub_100071684([*(a1 + 32) commandPort], *(a1 + 32));
  objc_autoreleasePoolPop(v2);
}

id sub_100071B94(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Received notification that parent simulator started up, so forcing a reconnect to re-establish state.", v4, 2u);
  }

  return [*(a1 + 32) reconnectToParentSimulator];
}

void sub_100071C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = UASimulator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000721D0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_100072260(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 134217984;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Detected death of parent simulator port %ld.", buf, 0xCu);
  }

  mach_port_mod_refs(mach_task_self_, *(a1 + 48), 0, -1);
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  *(*(a1 + 32) + 48) = 0;
  objc_sync_exit(v4);

  dispatch_source_cancel(*(a1 + 40));
  v5 = dispatch_time(0, 5000000000);
  v6 = [*(a1 + 32) controller];
  v7 = [v6 dispatchQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100072418;
  block[3] = &unk_1000C4D10;
  block[4] = *(a1 + 32);
  dispatch_after(v5, v7, block);
}

id sub_100072418(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SIMULATOR: *** Attempting to reconnect / relaunch parent simulator.", v4, 2u);
  }

  return [*(a1 + 32) reconnectToParentSimulator];
}

void sub_100072490(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Cancelling parent simulator port death source, port %ld", &v4, 0xCu);
  }
}

void sub_1000725A8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100072714(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_100072EA4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_100073038(a1);
  if (v5)
  {
    v6 = [NSKeyedUnarchiver alloc];
    v7 = [NSData dataWithBytes:a2 length:a3];
    v8 = [v6 initForReadingFromData:v7 error:0];

    v9 = [v8 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    if (v9)
    {
      v10 = [v5 dispatchQ];
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_1000730D0;
      v16 = &unk_1000C4DA0;
      v17 = v9;
      v18 = v5;
      dispatch_sync(v10, &v13);
    }

    [v8 finishDecoding];

    v11 = 0;
  }

  else
  {
    v11 = 5;
  }

  return v11;
}

id sub_100073038(uint64_t a1)
{
  os_unfair_lock_lock(&unk_1000E5DE8);
  v2 = qword_1000E5DE0;
  if (qword_1000E5DE0)
  {
    v3 = [NSNumber numberWithUnsignedInt:a1];
    v2 = [v2 objectForKeyedSubscript:v3];
  }

  os_unfair_lock_unlock(&unk_1000E5DE8);

  return v2;
}

id sub_1000730D0(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v5 = 138477827;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "SIMULATOR: Changing peer device info to %{private}@", &v5, 0xCu);
  }

  return [*(a1 + 40) setPeeredDevice:*(a1 + 32)];
}

uint64_t sub_100073184(uint64_t a1)
{
  sub_100073038(a1);

  return 0;
}

uint64_t sub_1000731A8(uint64_t a1)
{
  sub_100073038(a1);

  return 5;
}

uint64_t sub_1000731CC(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5, void *a6, uint64_t a7, void *a8, _DWORD *a9)
{
  v14 = sub_100073038(a1);
  v15 = v14;
  if (v14)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_100001F50;
    v29 = sub_10007338C;
    v30 = 0;
    v16 = [v14 dispatchQ];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100073394;
    block[3] = &unk_1000C61C0;
    v17 = v15;
    v24 = a3;
    v22 = v17;
    v23 = &v25;
    dispatch_sync(v16, block);

    *a6 = 0;
    sub_100073838(v26[5], a4, a5);
    v18 = [v17 ourDevice];
    sub_100073838(v18, a8, a9);

    _Block_object_dispose(&v25, 8);
    v19 = 0;
  }

  else
  {
    v19 = 5;
  }

  return v19;
}

void sub_10007334C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_100073394(uint64_t a1)
{
  v2 = [*(a1 + 32) advertiser];
  v3 = [v2 advertisingItems];
  v4 = [v3 firstObject];

  v5 = [*(a1 + 32) advertiser];
  v6 = [v5 suspended];

  if (v6)
  {
    v7 = sub_100001A30(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v8 = "SIMULATOR: Because advertising is suspended, returning 'no advertised item' information to paired simulator.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v8, buf, 2u);
    }
  }

  else if (v4)
  {
    if (*(a1 + 48))
    {
      v9 = sub_100001A30(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v4 uuid];
        v11 = [v10 UUIDString];
        *buf = 138543362;
        v26 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "SIMULATOR: Requesting payload for item %{public}@", buf, 0xCu);
      }

      v12 = dispatch_semaphore_create(0);
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_10007370C;
      v22 = &unk_1000C60E0;
      v23 = v4;
      v24 = v12;
      v13 = v12;
      [v23 requestPayloadWithCompletionHandler:&v19];
    }

    v14 = [v4 copy];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    [*(*(*(a1 + 40) + 8) + 40) setActive:1];
    v7 = sub_100001A30(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v17 = [v4 uuid];
      v18 = [v17 UUIDString];
      *buf = 138543362;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SIMULATOR: Sending information on item %{public}@ to paired simulator", buf, 0xCu);
    }
  }

  else
  {
    v7 = sub_100001A30(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v8 = "SIMULATOR: Returning 'no advertised item' information to paired simulator.";
      goto LABEL_13;
    }
  }
}

void sub_100073678(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_10007370C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001A30(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = [v5 UUIDString];
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SIMULATOR: Retrieved payload for item %{public}@, error=%{public}@", &v7, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100073838(void *a1, void *a2, _DWORD *a3)
{
  v5 = a1;
  if (v5)
  {
    v8 = v5;
    v6 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v6 encodeObject:v8 forKey:NSKeyedArchiveRootObjectKey];
    v7 = [v6 encodedData];
    sub_100074BE8(v7, a2, a3);

    v5 = v8;
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
  }
}

uint64_t sub_100073914(uint64_t a1)
{
  v1 = sub_100073038(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 controller];
    v4 = [v3 dispatchQ];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100073A04;
    block[3] = &unk_1000C4D10;
    v8 = v2;
    dispatch_async(v4, block);

    v5 = 0;
  }

  else
  {
    v5 = 5;
  }

  return v5;
}

void sub_100073A04(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "SIMULATOR: Asking receiver to fetch the advertisement.", buf, 2u);
  }

  v3 = [*(a1 + 32) receiver];
  v4 = [v3 fetchAdvertisedItems:0];

  if (v4)
  {
    v5 = sub_100001A30(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SIMULATOR: Telling manager to determine the bestApp again", v12, 2u);
    }

    v6 = [*(a1 + 32) controller];
    v7 = [v6 manager];
    [v7 scheduleBestAppDetermination];

    if ([*(a1 + 32) activitiesShouldCrossover])
    {
      v8 = sub_100001A30(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "SIMULATOR: Also telling advertisers to determine the item to advertise, because activitiesShouldCrossover=YES", v11, 2u);
      }

      v9 = [*(a1 + 32) controller];
      v10 = [v9 manager];
      [v10 scheduleUpdatingAdvertisableItems];
    }
  }
}

uint64_t sub_100073BB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = sub_100073038(a1);
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = sub_10000DA04(v7, a3, a4, 0);
    if (v8)
    {
      v9 = [UASimulatorSuggestedItem alloc];
      v10 = [v6 peeredDevice];
      v11 = [(UASimulatorSuggestedItem *)v9 initWithUserActivityInfo:v8 peerDevice:v10 simulator:v6];

      v12 = sub_100001A30(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [(UASimulatorSuggestedItem *)v11 uuid];
        v14 = [v13 UUIDString];
        *buf = 138543619;
        v24 = v14;
        v25 = 2113;
        v26 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "SIMULATOR: Setting received item to %{public}@/%{private}@", buf, 0x16u);
      }

      v15 = [v6 controller];
      v16 = [v15 dispatchQ];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100073E34;
      v20[3] = &unk_1000C4DA0;
      v21 = v6;
      v22 = v11;
      v17 = v11;
      dispatch_async(v16, v20);

      v18 = 0;
    }

    else
    {
      v18 = 5;
    }
  }

  else
  {
    v18 = 5;
  }

  return v18;
}

void sub_100073DCC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_100073E34(uint64_t a1)
{
  v4 = [*(a1 + 32) receiver];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [NSArray arrayWithObject:v2];
  }

  else
  {
    v3 = 0;
  }

  [v4 doSetReceivedItems:v3];
  if (v2)
  {
  }
}

uint64_t sub_100073EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 5;
  v42 = sub_100073038(a1);
  if (v42)
  {
    v12 = [[NSUUID alloc] initWithUUIDBytes:a2];
    v53 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v13 = [v42 advertiser];
    v40 = a6;
    v41 = a7;
    v14 = [v13 advertisingItems];

    v15 = [v14 countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v15)
    {
      v16 = *v51;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v51 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v50 + 1) + 8 * i);
          v19 = [v18 uuid];
          v20 = [v12 isEqual:v19];

          if (v20)
          {
            v21 = sub_100001A30(0);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = [v18 uuid];
              v23 = [v22 UUIDString];
              *buf = 138543619;
              v59 = v23;
              v60 = 2113;
              v61 = v18;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "SIMULATOR: Found item to send; %{public}@/%{private}@.  Fetching payload.", buf, 0x16u);
            }

            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_1000744AC;
            v43[3] = &unk_1000C61E8;
            v46 = a4;
            v47 = a5;
            v48 = v40;
            v49 = v41;
            v43[4] = v18;
            v45 = &v54;
            v24 = dispatch_semaphore_create(0);
            v44 = v24;
            [v18 requestPayloadWithCompletionHandler:v43];
            v25 = sub_100001A30(0);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = [v18 uuid];
              v27 = [v26 UUIDString];
              *buf = 138543362;
              v59 = v27;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "SIMULATOR: Waiting for payload fetch to complete for item %{public}@", buf, 0xCu);
            }

            v28 = dispatch_time(0, 15000000000);
            dispatch_semaphore_wait(v24, v28);
            v29 = sub_100001A30(0);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = [v18 uuid];
              v31 = [v30 UUIDString];
              *buf = 138543362;
              v59 = v31;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "SIMULATOR: Finished wait for payload fetch to complete for item %{public}@", buf, 0xCu);
            }

            goto LABEL_18;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v50 objects:v62 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    if (*(v55 + 6))
    {
      v32 = sub_100001A30(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v12 UUIDString];
        v34 = [v42 advertiser];
        v35 = [v34 advertisingItems];
        v36 = [v35 description];
        v37 = sub_100009684(v36);
        *buf = 138543619;
        v59 = v33;
        v60 = 2113;
        v61 = v37;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Failed to find activity matching uuid %{public}@, items=%{private}@", buf, 0x16u);
      }
    }
  }

  v38 = *(v55 + 6);

  _Block_object_dispose(&v54, 8);
  return v38;
}

intptr_t sub_1000744AC(uint64_t a1)
{
  v2 = [*(a1 + 32) webpageURL];
  sub_100073838(v2, *(a1 + 56), *(a1 + 64));

  v3 = UAUserActivityUserInfoPayload;
  v4 = [*(a1 + 32) payloadForIdentifier:UAUserActivityUserInfoPayload];
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = v4;
  v8 = v7;
  if (v7)
  {
    if (!vm_allocate(mach_task_self_, v5, [v7 length], 1))
    {
      *v6 = [v8 length];
      memcpy(*v5, [v8 bytes], objc_msgSend(v8, "length"));
    }
  }

  else
  {
    *v5 = 0;
    *v6 = 0;
  }

  v9 = sub_100001A30(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 32) uuid];
    v11 = [v10 UUIDString];
    v12 = *(a1 + 32);
    v13 = [v12 payloadForIdentifier:v3];
    v14 = sub_1000021AC(v13, 0x20uLL);
    v16 = 138543875;
    v17 = v11;
    v18 = 2113;
    v19 = v12;
    v20 = 2113;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "SIMULATOR: Got payload for item %{public}@/%{private}@.  Returning this info:%{private}@", &v16, 0x20u);
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_1000746F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 5;
  v8 = sub_100073038(a1);
  if (v8)
  {
    v31 = a4;
    v9 = [[NSUUID alloc] initWithUUIDBytes:a2];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v10 = [v8 advertiser];
    v11 = [v10 advertisingItems];

    v12 = [v11 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v12)
    {
      v13 = *v38;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v37 + 1) + 8 * i);
          v16 = [v15 uuid];
          v17 = [v9 isEqual:v16];

          if (v17)
          {
            v18 = sub_100001A30(0);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = [v15 uuid];
              v20 = [v19 UUIDString];
              *buf = 138543619;
              v46 = v20;
              v47 = 2113;
              v48 = v15;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "SIMULATOR: Found item ; %{public}@/%{private}@.  Calling its wasContinued.", buf, 0x16u);
            }

            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_100074B90;
            v32[3] = &unk_1000C6210;
            v35 = v31;
            v36 = a5;
            v34 = &v41;
            v21 = dispatch_semaphore_create(0);
            v33 = v21;
            [v15 wasResumedOnAnotherDeviceWithCompletionHandler:v32];
            v22 = sub_100001A30(0);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = [v15 uuid];
              v24 = [v23 UUIDString];
              *buf = 138543362;
              v46 = v24;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "SIMULATOR: Waiting for payload fetch to complete for item %{public}@", buf, 0xCu);
            }

            v25 = dispatch_time(0, 15000000000);
            dispatch_semaphore_wait(v21, v25);
            v26 = sub_100001A30(0);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v27 = [v15 uuid];
              v28 = [v27 UUIDString];
              *buf = 138543362;
              v46 = v28;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "SIMULATOR: Finished wait for payload fetch to complete for item %{public}@", buf, 0xCu);
            }

            goto LABEL_18;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  v29 = *(v42 + 6);

  _Block_object_dispose(&v41, 8);
  return v29;
}

intptr_t sub_100074B90(uint64_t a1, void *a2)
{
  sub_100073838(a2, *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = 0;
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

void sub_100074BE8(void *a1, void *a2, _DWORD *a3)
{
  v5 = a1;
  sub_100074C94(&v8, [v5 length], 0);
  v6 = v8;
  v7 = [v5 bytes];
  memcpy(v6, v7, __n);
  *a2 = v8;
  *a3 = __n;
  sub_10000DF58(&v8);
}

void sub_100074C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10000DF58(&a9);

  _Unwind_Resume(a1);
}

vm_address_t *sub_100074C94(vm_address_t *address, vm_size_t size, char a3)
{
  *address = 0;
  *(address + 2) = size;
  *(address + 12) = a3;
  if (vm_allocate(mach_task_self_, address, size, 1))
  {
    *address = 0;
    *(address + 2) = 0;
  }

  return address;
}

void sub_100074F78(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000751EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

os_state_data_s *__cdecl sub_100075224(id a1, os_state_hints_s *a2)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [ActivityManagerDebuggingManager actionStrs:100 maximumInternal:0 clear:3600.0];
  v4 = [v3 componentsJoinedByString:@"\n"];
  v5 = sub_10003F60C(v4);

  objc_autoreleasePoolPop(v2);
  return v5;
}

void sub_1000754C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_100075A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  v12 = v11;

  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_100077464(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (!*(a1 + 40) || (v4 = [v3 type] == *(a1 + 40), v3 = v7, v4))
  {
    v5 = *(a1 + 32);
    v6 = [v3 uuid];
    [v5 addObject:v6];
  }
}

void sub_100077A24(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 16) statusString];
  (*(v1 + 16))(v1);
}

void sub_100077A98(uint64_t a1)
{
  v1 = +[NSMutableString string];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [*(a1 + 32) manager];
  v3 = [v2 clients];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v18 = *v24;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v7 = [v6 recentEligibleItemsInOrder:99999.0];
        if (v7)
        {
          v8 = [v6 uuid];
          v9 = [v8 UUIDString];
          v10 = [v6 name];
          [v1 appendFormat:@"Client: %@ %@\n", v9, v10];

          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v11 = v7;
          v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v12)
          {
            v13 = *v20;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = [*(*(&v19 + 1) + 8 * j) statusString];
                [v1 appendFormat:@" - %@\n", v15];
              }

              v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v12);
          }
        }
      }

      v3 = obj;
      v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 40) + 16))();
}

id sub_1000787C8(void *a1)
{
  [*(a1[4] + 24) setTitle:a1[5]];
  [*(a1[4] + 24) setPayload:a1[6] identifier:UAUserActivityUserInfoPayload];
  [*(a1[4] + 24) setPayload:0 identifier:UAUserActivityStreamsPayload];
  v2 = [NSURL URLWithString:a1[7]];
  [*(a1[4] + 24) setWebpageURL:v2];

  v3 = *(a1[4] + 24);

  return [v3 setPayloadAvailable:1];
}

void sub_100078884(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [v2 uuid];
    LODWORD(v3) = [v3 isEqual:v4];

    if (v3)
    {
      v5 = sub_100001A30(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [*(*(a1 + 32) + 24) uuid];
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Removing injected fake BTLE item %@", &v10, 0xCu);
      }

      v8 = *(a1 + 32);
      v7 = a1 + 32;
      [*(v8 + 16) setDebugCornerItem:0];
      v9 = *(*v7 + 24);
      *(*v7 + 24) = 0;
    }
  }
}

void sub_100078CB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001A30(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) UUIDString];
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Finished call prepareToResumeActivityWithUUID for activityUUID %{public}@, error=%{public}@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100079084(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) UUIDString];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Finished call didResumeUserActivityWithUUID for activityUUID %{public}@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1000793DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1000799B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id sub_10007A3A8(void *a1)
{
  v1 = a1;
  v2 = [NSMutableString stringWithString:@"{"];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v9 + 1) + 8 * i) UUIDString];
        [v2 appendFormat:@"%@ ", v7];
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [v2 appendString:@"}"];

  return v2;
}

id sub_10007A554(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"(");
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v9 + 1) + 8 * i) UUIDString];
        [v2 appendFormat:@"%@ ", v7];
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [v2 appendString:@""]);

  return v2;
}

void sub_10007A700(id a1)
{
  v1 = +[NSMutableArray array];
  qword_1000E5DF8 = v1;

  _objc_release_x1(v1);
}

uint64_t sub_10007A890(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 16777472;
  v7 = a3;
  v8 = NDR_record;
  v9 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_10008FA20;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
}

uint64_t sub_10007A91C(int a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v9 = a2;
  v10 = 16777472;
  v11 = a3;
  v12 = a4;
  v13 = 16777472;
  v14 = a5;
  v15 = NDR_record;
  v16 = a3;
  v17 = a5;
  v6 = 2147483667;
  v7 = a1;
  v8 = xmmword_10008FA30;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v6);
  }

  return mach_msg(&v6, 1, 0x4Cu, 0, 0, 0, 0);
}

uint64_t sub_10007A9B0(mach_port_t a1, int a2, void *a3, _DWORD *a4, void *a5, void *a6, void *a7, _DWORD *a8)
{
  memset(v27, 0, sizeof(v27));
  v26 = 0u;
  v25 = 0u;
  msg.msgh_size = 0;
  *v24 = NDR_record;
  *&v24[8] = a2;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x3EB00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v17 = mach_msg(&msg, 3, 0x24u, 0x64u, msgh_local_port, 0, 0);
  v18 = v17;
  if ((v17 - 268435458) <= 0xE && ((1 << (v17 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v17)
    {
      if (msg.msgh_id == 71)
      {
        v18 = 4294966988;
      }

      else if (msg.msgh_id == 1103)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v18 = 4294966996;
          if (*v24 == 2 && msg.msgh_size == 92 && !msg.msgh_remote_port && BYTE3(v25) == 1 && BYTE3(v26) == 1)
          {
            v19 = DWORD1(v25);
            if (DWORD1(v25) == LODWORD(v27[0]))
            {
              v20 = DWORD1(v26);
              if (DWORD1(v26) == DWORD1(v27[1]))
              {
                v18 = 0;
                *a3 = *&v24[4];
                *a4 = v19;
                v21 = *(v27 + 12);
                *a5 = *(v27 + 4);
                *a6 = v21;
                *a7 = *(&v25 + 1);
                *a8 = v20;
                return v18;
              }
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v18 = 4294966996;
          if (*&v24[8])
          {
            if (msg.msgh_remote_port)
            {
              v18 = 4294966996;
            }

            else
            {
              v18 = *&v24[8];
            }
          }
        }

        else
        {
          v18 = 4294966996;
        }
      }

      else
      {
        v18 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v18;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v18;
}

uint64_t sub_10007ABEC(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x3EC00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
}

uint64_t sub_10007AC58(int a1, _OWORD *a2, mach_msg_timeout_t a3, void *a4, _DWORD *a5, void *a6, _DWORD *a7)
{
  memset(&msg_4[16], 0, 32);
  v23 = 0u;
  v22 = 0u;
  *msg_4 = 0u;
  *&msg_4[20] = NDR_record;
  *&msg_4[28] = *a2;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x3ED00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    v14 = *&msg_4[8];
  }

  else
  {
    v14 = reply_port;
  }

  v15 = mach_msg(&msg, 275, 0x30u, 0x54u, v14, a3, 0);
  v16 = v15;
  if ((v15 - 268435458) <= 0xE && ((1 << (v15 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg_4[8]);
  }

  else
  {
    if (!v15)
    {
      if (*&msg_4[16] == 71)
      {
        v16 = 4294966988;
      }

      else if (*&msg_4[16] == 1105)
      {
        if (msg < 0)
        {
          v16 = 4294966996;
          if (*&msg_4[20] == 2 && *msg_4 == 76 && !*&msg_4[4] && msg_4[35] == 1 && BYTE3(v22) == 1)
          {
            v17 = *&msg_4[36];
            if (*&msg_4[36] == v23)
            {
              v18 = DWORD1(v22);
              if (DWORD1(v22) == DWORD1(v23))
              {
                v16 = 0;
                *a4 = *&msg_4[24];
                *a5 = v17;
                *a6 = *&msg_4[40];
                *a7 = v18;
                return v16;
              }
            }
          }
        }

        else if (*msg_4 == 36)
        {
          v16 = 4294966996;
          if (*&msg_4[28])
          {
            if (*&msg_4[4])
            {
              v16 = 4294966996;
            }

            else
            {
              v16 = *&msg_4[28];
            }
          }
        }

        else
        {
          v16 = 4294966996;
        }
      }

      else
      {
        v16 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v16;
    }

    mig_dealloc_reply_port(*&msg_4[8]);
  }

  return v16;
}

uint64_t sub_10007AE78(int a1, _OWORD *a2, mach_msg_timeout_t a3, void *a4, _DWORD *a5)
{
  memset(&msg_4[16], 0, 44);
  *msg_4 = 0u;
  *&msg_4[20] = NDR_record;
  *&msg_4[28] = *a2;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x3EE00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    v10 = *&msg_4[8];
  }

  else
  {
    v10 = reply_port;
  }

  v11 = mach_msg(&msg, 275, 0x30u, 0x40u, v10, a3, 0);
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg_4[8]);
  }

  else
  {
    if (!v11)
    {
      if (*&msg_4[16] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&msg_4[16] == 1106)
      {
        if (msg < 0)
        {
          v12 = 4294966996;
          if (*&msg_4[20] == 1 && *msg_4 == 56 && !*&msg_4[4] && msg_4[35] == 1)
          {
            v13 = *&msg_4[36];
            if (*&msg_4[36] == *&msg_4[48])
            {
              v12 = 0;
              *a4 = *&msg_4[24];
              *a5 = v13;
              return v12;
            }
          }
        }

        else if (*msg_4 == 36)
        {
          v12 = 4294966996;
          if (*&msg_4[28])
          {
            if (*&msg_4[4])
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = *&msg_4[28];
            }
          }
        }

        else
        {
          v12 = 4294966996;
        }
      }

      else
      {
        v12 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v12;
    }

    mig_dealloc_reply_port(*&msg_4[8]);
  }

  return v12;
}

uint64_t sub_10007B05C(int a1, mach_msg_timeout_t a2, void *a3, _DWORD *a4)
{
  memset(&msg_16[4], 0, 44);
  msg_4 = 0;
  reply_port = mig_get_reply_port();
  msg_8 = a1;
  msg_12 = reply_port;
  msg = 5395;
  *msg_16 = 0x3EF00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    v9 = msg_12;
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(&msg, 275, 0x18u, 0x40u, v9, a2, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg_12);
  }

  else
  {
    if (!v10)
    {
      if (*&msg_16[4] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg_16[4] == 1107)
      {
        if (msg < 0)
        {
          v11 = 4294966996;
          if (*&msg_16[8] == 1 && msg_4 == 56 && !msg_8 && msg_16[23] == 1)
          {
            v12 = *&msg_16[24];
            if (*&msg_16[24] == *&msg_16[36])
            {
              v11 = 0;
              *a3 = *&msg_16[12];
              *a4 = v12;
              return v11;
            }
          }
        }

        else if (msg_4 == 36)
        {
          v11 = 4294966996;
          if (*&msg_16[16])
          {
            if (msg_8)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg_16[16];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v11;
    }

    mig_dealloc_reply_port(msg_12);
  }

  return v11;
}

uint64_t sub_10007B228(int a1, __int128 *a2, int a3, uint64_t a4, int a5, uint64_t a6, _DWORD *a7, void *a8, _DWORD *a9, void *a10)
{
  memset(&msg[4], 0, 32);
  *&msg[24] = 2;
  *&msg[28] = a3;
  v20 = 1310720;
  v21 = a4;
  v22 = 16777472;
  v23 = a5;
  v24 = NDR_record;
  v25 = *a2;
  v26 = a5;
  v27 = a6;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x3F000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
    v14 = *&msg[12];
  }

  else
  {
    v14 = reply_port;
  }

  v15 = mach_msg(msg, 3, 0x5Cu, 0x54u, v14, 0, 0);
  v16 = v15;
  if ((v15 - 268435458) <= 0xE && ((1 << (v15 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v15)
    {
      if (*&msg[20] == 71)
      {
        v16 = 4294966988;
      }

      else if (*&msg[20] == 1108)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v16 = 4294966996;
          if (*&msg[24] == 2 && *&msg[4] == 76 && !*&msg[8] && HIWORD(v20) << 16 == 1114112 && HIBYTE(v22) == 1)
          {
            v17 = v23;
            if (v23 == v25)
            {
              v16 = 0;
              *a7 = *&msg[28];
              *a8 = v21;
              *a9 = v17;
              *a10 = *(&v25 + 4);
              return v16;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v16 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v16 = 4294966996;
            }

            else
            {
              v16 = *&msg[32];
            }
          }
        }

        else
        {
          v16 = 4294966996;
        }
      }

      else
      {
        v16 = 4294966995;
      }

      mach_msg_destroy(msg);
      return v16;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  return v16;
}

uint64_t (*sub_10007B448(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 1009) >= 0xFFFFFFF7)
  {
    return off_1000C6348[5 * (v1 - 1000) + 5];
  }

  else
  {
    return 0;
  }
}

void sub_10007B47C(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v3 = *(a1 + 40), v3 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v5 = *(a1 + 76);
        v6 = *(a1 + 92);
        *(a2 + 32) = sub_100072EA4(*(a1 + 12), *(a1 + 28), v3);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v4 = -309;
    }

    else
    {
      v4 = -300;
    }
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
}

void sub_10007B55C(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 76)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && (v3 = *(a1 + 40), v3 == *(a1 + 68)) && *(a1 + 56) == *(a1 + 72))
    {
      if (!*(a1 + 76) && *(a1 + 80) > 0x1Fu)
      {
        v5 = *(a1 + 12);
        v6 = *(a1 + 28);
        v7 = *(a1 + 44);
        v8 = *(a1 + 112);
        v9[0] = *(a1 + 96);
        v9[1] = v8;
        *(a2 + 32) = sub_100073BB4(v5, v9, v6, v3);
        mig_deallocate(*(a1 + 44), *(a1 + 56));
        *(a1 + 44) = 0;
        *(a1 + 56) = 0;
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v4 = -309;
    }

    else
    {
      v4 = -300;
    }
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
}

uint64_t sub_10007B670(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 68) = 0;
  *(a2 + 36) = 16777472;
  *(a2 + 52) = 16777472;
  *(a2 + 88) = 0;
  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v6;
  result = sub_1000731CC(v4, v7, v5, (a2 + 28), (a2 + 68), (a2 + 72), a2 + 80, (a2 + 44), (a2 + 88));
  if (!result)
  {
    *(a2 + 40) = *(a2 + 68);
    *(a2 + 56) = *(a2 + 88);
    *(a2 + 60) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 92;
    *(a2 + 24) = 2;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10007B77C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 24) && *(result + 28) > 0x1Fu)
    {
      v4 = *(result + 44);
      v5 = *(result + 60);
      result = sub_100073914(*(result + 12));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10007B810(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 48) || *(result + 52) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 68) = 0;
  *(a2 + 36) = 16777472;
  *(a2 + 72) = 0;
  *(a2 + 52) = 16777472;
  v4 = *(result + 12);
  v5 = *(result + 84);
  v7[0] = *(result + 68);
  v7[1] = v5;
  result = sub_100073EE8(v4, result + 32, v7, a2 + 28, a2 + 68, a2 + 44, a2 + 72);
  if (!result)
  {
    v6 = *(a2 + 72);
    *(a2 + 40) = *(a2 + 68);
    *(a2 + 56) = v6;
    *(a2 + 60) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 76;
    *(a2 + 24) = 2;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10007B90C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 48) || *(result + 52) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 52) = 0;
  *(a2 + 36) = 16777472;
  v4 = *(result + 12);
  v5 = *(result + 84);
  v6[0] = *(result + 68);
  v6[1] = v5;
  result = sub_1000746F4(v4, result + 32, v6, a2 + 28, a2 + 52);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_10007B9F4(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    goto LABEL_8;
  }

  *(a2 + 52) = 0;
  *(a2 + 36) = 16777472;
  v5 = result[3];
  v6 = *(v3 + 5);
  v7 = *(v3 + 9);
  result = sub_100074BE0();
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_10007BAD4(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 2 || *(a1 + 4) != 92)
  {
    v4 = -304;
    goto LABEL_11;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 51) != 1 || *(a1 + 52) != *(a1 + 80))
  {
    v4 = -300;
    goto LABEL_11;
  }

  if (*(a1 + 92) || *(a1 + 96) <= 0x1Fu)
  {
    v4 = -309;
LABEL_11:
    *(a2 + 32) = v4;
    goto LABEL_12;
  }

  *(a2 + 64) = 0;
  *(a2 + 32) = 0x14000000000000;
  *(a2 + 48) = 16777472;
  v5 = *(a1 + 12);
  v6 = *(a1 + 28);
  v7 = *(a1 + 40);
  v8 = *(a1 + 52);
  v9 = *(a1 + 84);
  v10 = *(a1 + 128);
  v12[0] = *(a1 + 112);
  v12[1] = v10;
  v11 = sub_10003D2A0(v5, a1 + 64, v6, v7, v8, v9, v12, (a2 + 28), (a2 + 40), (a2 + 64), (a2 + 68));
  mig_deallocate(*(a1 + 40), *(a1 + 52));
  *(a1 + 40) = 0;
  *(a1 + 52) = 0;
  if (!v11)
  {
    *(a2 + 52) = *(a2 + 64);
    *(a2 + 56) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 76;
    *(a2 + 24) = 2;
    return;
  }

  *(a2 + 32) = v11;
LABEL_12:
  *(a2 + 24) = NDR_record;
}

uint64_t sub_10007BC48(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 1009) >= 0xFFFFFFF7 && (v5 = off_1000C6348[5 * (v4 - 1000) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

void operator new()
{
    ;
  }
}