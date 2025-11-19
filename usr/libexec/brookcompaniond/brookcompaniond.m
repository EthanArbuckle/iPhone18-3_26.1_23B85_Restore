void sub_100001858(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BRKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      v8 = "fetchLocationsOfInterestOfType failed with %@";
      v9 = v7;
      v10 = 12;
LABEL_4:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
    }
  }

  else
  {
    if (![v5 count])
    {
      v7 = BRKLoggingObjectForDomain();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      LOWORD(v13) = 0;
      v8 = "fetchLocationsOfInterestOfType count == 0";
      v9 = v7;
      v10 = 2;
      goto LABEL_4;
    }

    v11 = [v5 sortedArrayUsingComparator:&stru_100008270];
    v7 = [v11 lastObject];

    v12 = BRKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[BRKCompanionContextManager fetchLocationOfInterest]_block_invoke";
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s mostVisitedHome %@", &v13, 0x16u);
    }

    if (v7)
    {
      [*(a1 + 32) monitorLocationOfInterest:v7];
    }
  }

LABEL_12:
}

int64_t sub_100001A28(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 visits];
  v6 = [v4 visits];

  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count]);
  v9 = [v7 compare:v8];

  return v9;
}

void sub_100001E4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[BRKCompanionContextManager locationManager:didEnter:completion:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s sent IDS message %@ w/ error: %@", &v6, 0x20u);
  }
}

void sub_100002084(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[BRKCompanionContextManager locationManager:didExitRegion:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s sent IDS message %@ w/ error: %@", &v6, 0x20u);
  }
}

void sub_1000021BC()
{
  if (_set_user_dir_suffix())
  {
    v0 = NSTemporaryDirectory();
  }

  else
  {
    v1 = BRKLoggingObjectForDomain();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_100002D54(v1);
    }
  }
}

uint64_t start()
{
  v0 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "void waitForFirstUnlockIfNecessary()";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  v1 = MKBGetDeviceLockState() == 3 || MKBDeviceUnlockedSinceBoot() == 1;
  v2 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Protected data available: %d", &buf, 8u);
  }

  if (!v1)
  {
    v3 = dispatch_semaphore_create(0);
    out_token = 0;
    v4 = dispatch_get_global_queue(0, 0);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v23 = sub_1000025A0;
    v24 = &unk_1000082E8;
    v5 = v3;
    v25 = v5;
    v6 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v4, &buf);

    v7 = BRKLoggingObjectForDomain();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to register for first unlock notification; continuing anyway", v19, 2u);
      }
    }

    else
    {
      if (v8)
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "brook waiting for first unlock", v19, 2u);
      }

      dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
      v9 = BRKLoggingObjectForDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "brook got first unlock notification", v19, 2u);
      }

      notify_cancel(out_token);
    }
  }

  v10 = objc_autoreleasePoolPush();
  sub_1000021BC();
  v11 = +[BRKIDSService sharedInstance];
  v12 = [[BRKCompanionContextManager alloc] initWithBRKIDSService:v11];
  v13 = [[BRKCompanionDataCollectionLogger alloc] initWithIDSService:v11];
  v14 = objc_alloc_init(BRKTipsSignalDonation);
  v21[0] = v12;
  v21[1] = v13;
  v21[2] = v14;
  v15 = [NSArray arrayWithObjects:v21 count:3];
  v16 = qword_10000CF38;
  qword_10000CF38 = v15;

  objc_autoreleasePoolPop(v10);
  v17 = +[NSRunLoop currentRunLoop];
  [v17 run];

  return 0;
}

void sub_1000027B4(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) lastPathComponent];
  v3 = [NSString stringWithFormat:@"%@/%@.ips", @"/var/mobile/Library/Logs/CrashReporter/", v2];

  v4 = [NSURL fileURLWithPath:v3];
  v5 = +[NSFileManager defaultManager];
  [v5 copyItemAtURL:*v1 toURL:v4 error:0];

  v6 = *v1;
  v12 = 0;
  v7 = [NSData dataWithContentsOfURL:v6 options:1 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = BRKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100002D98(v1, v8, v9);
    }
  }

  else
  {
    v9 = [[SFCustomFeedback alloc] initWithType:15 data:v7];
    v10 = +[PARSession sharedSession];
    [v10 sendCustomFeedback:v9];
  }

  v11 = +[NSFileManager defaultManager];
  [v11 removeItemAtURL:*v1 error:0];
}

void sub_100002A6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 code] == 8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100002E4C(v7);
    }

    [*(a1 + 32) fetchLocationsOfInterestOfType:*(a1 + 48) withHandler:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100002D98(uint64_t *a1, void *a2, NSObject *a3)
{
  v4 = *a1;
  v5 = [a2 localizedDescription];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Skipping upload with error reading data from: %@, error: %@", &v6, 0x16u);
}

void sub_100002E4C(uint64_t a1)
{
  v1 = 136315394;
  v2 = "+[BRKRoutineManager fetchLocationsOfInterestWithSingleRetryOfType:routineManager:withHandler:]_block_invoke";
  v3 = 2114;
  v4 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Retrying once %{public}@", &v1, 0x16u);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}