id PTServicesDeveloperModeIsEnabled()
{
  v6 = 8;
  v7 = 0;
  if (sysctlbyname("security.mac.amfi.developer_mode_status", &v7, &v6, 0, 0))
  {
    v0 = sub_1000010E8();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_10000E120();
    }

    v1 = 0;
  }

  else
  {
    v2 = v7;
    v3 = sub_1000010E8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = @"disabled";
      if (v2)
      {
        v4 = @"enabled";
      }

      *buf = 138543362;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Developer mode is %{public}@", buf, 0xCu);
    }

    v1 = [NSNumber numberWithBool:v2 != 0];
  }

  return v1;
}

id sub_1000010E8()
{
  if (qword_10001D760 != -1)
  {
    sub_10000E1A0();
  }

  v1 = qword_10001D758;

  return v1;
}

uint64_t PTServicesDeviceIsInternal()
{
  if (qword_10001D750 != -1)
  {
    sub_10000E1B4();
  }

  return byte_10001D748;
}

uint64_t PTServicesMarkPurgeableMediumUrgency(void *a1)
{
  v9 = 66565;
  v1 = open([a1 UTF8String], 0);
  if (v1 < 0)
  {
    v6 = sub_1000010E8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000E1C8();
    }

    return 0;
  }

  v2 = v1;
  v3 = ffsctl(v1, 0xC0084A44uLL, &v9, 0);
  v4 = sub_1000010E8();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000E248(v3, v5);
    }

    close(v2);
    return 0;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Marked file purgeable", v8, 2u);
  }

  close(v2);
  return 1;
}

BOOL PTServicesSendUserNotification(void *a1, void *a2)
{
  v3 = a1;
  if (sub_100001E1C())
  {
    *v46 = 0;
    v47 = v46;
    v48 = 0x2050000000;
    v4 = qword_10001D770;
    v49 = qword_10001D770;
    if (!qword_10001D770)
    {
      *buf = _NSConcreteStackBlock;
      v41 = 3221225472;
      v42 = sub_100001F60;
      v43 = &unk_1000186C0;
      v44 = v46;
      sub_100001F60(buf);
      v4 = *(v47 + 3);
    }

    v5 = v4;
    _Block_object_dispose(v46, 8);
    v6 = [[v4 alloc] initWithBundleIdentifier:@"com.apple.PerformanceTrace.notifications"];
    *v46 = 0;
    v47 = v46;
    v48 = 0x2050000000;
    v7 = qword_10001D778;
    v49 = qword_10001D778;
    if (!qword_10001D778)
    {
      *buf = _NSConcreteStackBlock;
      v41 = 3221225472;
      v42 = sub_100001FFC;
      v43 = &unk_1000186C0;
      v44 = v46;
      sub_100001FFC(buf);
      v7 = *(v47 + 3);
    }

    v8 = v7;
    _Block_object_dispose(v46, 8);
    v9 = objc_alloc_init(v7);
    [v9 setThreadIdentifier:@"performanceTraceNotifications"];
    [v9 setTitle:@"Performance Trace"];
    if (v3)
    {
      if (qword_10001D750 != -1)
      {
        sub_10000E2C0();
      }

      v10 = @"prefs:root=DEVELOPER_SETTINGS&path=PERFORMANCE_TRACE";
      if ((byte_10001D748 & 1) == 0)
      {
        v11 = PTServicesDeveloperModeIsEnabled();
        v12 = [v11 BOOLValue];

        if (!v12)
        {
          v10 = @"prefs:root=Privacy&path=PROBLEM_REPORTING/DIAGNOSTIC_USAGE_DATA/";
        }
      }

      v13 = [v3 lastPathComponent];
      v14 = [(__CFString *)v10 stringByAppendingPathComponent:v13];

      v15 = [NSURL URLWithString:v14];
      v16 = [v3 lastPathComponent];
      v17 = [NSString stringWithFormat:@"Saved %@.", v16];
      [v9 setBody:v17];

      [v9 setDefaultActionURL:v15];
      *v46 = 0;
      v47 = v46;
      v48 = 0x2050000000;
      v18 = qword_10001D780;
      v49 = qword_10001D780;
      if (!qword_10001D780)
      {
        *buf = _NSConcreteStackBlock;
        v41 = 3221225472;
        v42 = sub_100002054;
        v43 = &unk_1000186C0;
        v44 = v46;
        sub_100002054(buf);
        v18 = *(v47 + 3);
      }

      v19 = v18;
      _Block_object_dispose(v46, 8);
      v20 = [v18 iconWithSystemImageName:@"doc.text.below.ecg"];
      *v46 = 0;
      v47 = v46;
      v48 = 0x2050000000;
      v21 = qword_10001D788;
      v49 = qword_10001D788;
      if (!qword_10001D788)
      {
        *buf = _NSConcreteStackBlock;
        v41 = 3221225472;
        v42 = sub_1000020AC;
        v43 = &unk_1000186C0;
        v44 = v46;
        sub_1000020AC(buf);
        v21 = *(v47 + 3);
      }

      v22 = v21;
      _Block_object_dispose(v46, 8);
      v23 = [v21 actionWithIdentifier:@"viewAction" title:@"View" url:v15 options:0 icon:v20];
      *v46 = 0;
      v47 = v46;
      v48 = 0x2050000000;
      v24 = qword_10001D790;
      v49 = qword_10001D790;
      if (!qword_10001D790)
      {
        *buf = _NSConcreteStackBlock;
        v41 = 3221225472;
        v42 = sub_100002104;
        v43 = &unk_1000186C0;
        v44 = v46;
        sub_100002104(buf);
        v24 = *(v47 + 3);
      }

      v25 = v24;
      _Block_object_dispose(v46, 8);
      v50 = v23;
      v26 = [NSArray arrayWithObjects:&v50 count:1];
      v27 = [v24 categoryWithIdentifier:@"performanceTraceNotifications" actions:v26 intentIdentifiers:&__NSArray0__struct options:0];

      v28 = [NSSet setWithObject:v27];
      [v6 setNotificationCategories:v28];
    }

    else
    {
      [v9 setBody:@"Performance Trace failed to complete."];
    }

    [v9 setCategoryIdentifier:@"performanceTraceNotifications"];
    *v46 = 0;
    v47 = v46;
    v48 = 0x2050000000;
    v31 = qword_10001D798;
    v49 = qword_10001D798;
    if (!qword_10001D798)
    {
      *buf = _NSConcreteStackBlock;
      v41 = 3221225472;
      v42 = sub_10000215C;
      v43 = &unk_1000186C0;
      v44 = v46;
      sub_10000215C(buf);
      v31 = *(v47 + 3);
    }

    v32 = v31;
    _Block_object_dispose(v46, 8);
    v33 = +[NSUUID UUID];
    v34 = [v33 UUIDString];
    v35 = [v31 requestWithIdentifier:v34 content:v9 trigger:0];

    *buf = 0;
    v41 = buf;
    v42 = 0x3032000000;
    v43 = sub_100001AB8;
    v44 = sub_100001AC8;
    v45 = 0;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100001AD0;
    v39[3] = &unk_100018640;
    v39[4] = buf;
    [v6 addNotificationRequest:v35 withCompletionHandler:v39];
    if (a2)
    {
      *a2 = *(v41 + 40);
    }

    v36 = *(v41 + 40);
    v30 = v36 == 0;
    if (!v36)
    {
      v37 = sub_1000010E8();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Performance Trace completion notification sent", v46, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v29 = sub_1000010E8();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "UserNotifications.framework is soft-linked and unavailable; Performance Trace cannot post notifications", buf, 2u);
    }

    if (a2)
    {
      [NSError error:0 description:@"Tried to send a user notification in an unsupported environment"];
      *a2 = v30 = 0;
    }

    else
    {
      v30 = 0;
    }
  }

  return v30;
}

void sub_100001A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001AB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001AD0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v5 = sub_1000010E8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000E2E8(v4, v5);
    }
  }
}

id _fileAttributes()
{
  v2 = NSFilePosixPermissions;
  v3 = &off_10001A598;
  v0 = [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];

  return v0;
}

id PTServicesCreateTraceDirectory(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = _fileAttributes();
  v10 = 0;
  v4 = [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:v3 error:&v10];

  v5 = v10;
  v6 = 0;
  if ((v4 & 1) == 0)
  {
    v7 = [v5 localizedDescription];
    v8 = [NSString stringWithFormat:@"Cannot start tracing as Performance Trace cannot write to the target directory: %@", v7];
    v6 = [NSError error:4 description:v8 underlyingError:v5];
  }

  return v6;
}

id PTServicesSetFilePosixPermissions(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = _fileAttributes();
  v8 = 0;
  v4 = [v2 setAttributes:v3 ofItemAtPath:v1 error:&v8];

  v5 = v8;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    if (!v5)
    {
      v5 = [NSError error:0 description:@"Failed to update POSIX permissions of trace file"];
    }

    v5 = v5;
    v6 = v5;
  }

  return v6;
}

void sub_100001DD8(id a1)
{
  qword_10001D758 = os_log_create("com.apple.PerformanceTrace", "SharedServiceFunctionality");

  _objc_release_x1();
}

uint64_t sub_100001E1C()
{
  if (!qword_10001D768)
  {
    qword_10001D768 = _sl_dlopen();
  }

  return qword_10001D768;
}

uint64_t sub_100001EEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10001D768 = result;
  return result;
}

Class sub_100001F60(uint64_t a1)
{
  sub_100001FB8();
  result = objc_getClass("UNUserNotificationCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000E360();
  }

  qword_10001D770 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100001FB8()
{
  v0 = 0;
  if (!sub_100001E1C())
  {
    sub_10000E3DC(&v0);
  }
}

Class sub_100001FFC(uint64_t a1)
{
  sub_100001FB8();
  result = objc_getClass("UNMutableNotificationContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000E45C();
  }

  qword_10001D778 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100002054(uint64_t a1)
{
  sub_100001FB8();
  result = objc_getClass("UNNotificationActionIcon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000E4D8();
  }

  qword_10001D780 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1000020AC(uint64_t a1)
{
  sub_100001FB8();
  result = objc_getClass("UNNotificationAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000E554();
  }

  qword_10001D788 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100002104(uint64_t a1)
{
  sub_100001FB8();
  result = objc_getClass("UNNotificationCategory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000E5D0();
  }

  qword_10001D790 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_10000215C(uint64_t a1)
{
  sub_100001FB8();
  result = objc_getClass("UNNotificationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000E64C();
  }

  qword_10001D798 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000021B4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

id sub_1000022A8()
{
  if (qword_10001D7B0 != -1)
  {
    sub_10000E6C8();
  }

  v1 = qword_10001D7A8;

  return v1;
}

void sub_100003644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void *sub_100003680(void *result, uint64_t a2)
{
  v2 = *(result[4] + 8);
  if (*(v2 + 24) == 1)
  {
    *(v2 + 24) = 0;
  }

  else if (*(a2 + 48) == 117571592)
  {
    ++*(*(result[5] + 8) + 24);
  }

  ++*(*(result[6] + 8) + 24);
  return result;
}

void sub_10000465C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_1000046B0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100004704(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100004758(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_1000047AC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100004800(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100004854(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_1000048A8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_1000048FC(id *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 > 8)
  {
    if (v4 == 9)
    {
      v22 = [a1[4] activeConfig];

      if (v22)
      {
        v23 = [a1[4] activeConfig];
        [v23 setTracingActiveTransaction:0];

        [a1[4] setActiveConfig:0];
        [a1[4] setRecordingConnectionPointer:0];
        [a1[4] _updateRecordingStatus:0];
      }

      if ([a1[4] ktraceRecording])
      {
        [a1[4] ktraceRecording];
        ktrace_recording_destroy();
        kperf_reset();
        [a1[4] setKtraceRecording:0];
      }

      [a1[4] _graphicsSamplingTeardown];
      v7 = [NSString stringWithFormat:@"Received permission error from ktrace_record: %s", *(a2 + 8)];
      v8 = [NSError error:4 description:v7];
      v9 = [a1[5] synchronousRemoteObjectProxyWithErrorHandler:&stru_1000188B8];
      v10 = sub_1000022A8();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v4 != 10)
      {
        goto LABEL_18;
      }

      v11 = [a1[4] activeConfig];

      if (v11)
      {
        v12 = [a1[4] activeConfig];
        [v12 setTracingActiveTransaction:0];

        [a1[4] setActiveConfig:0];
        [a1[4] setRecordingConnectionPointer:0];
        [a1[4] _updateRecordingStatus:0];
      }

      if ([a1[4] ktraceRecording])
      {
        [a1[4] ktraceRecording];
        ktrace_recording_destroy();
        kperf_reset();
        [a1[4] setKtraceRecording:0];
      }

      [a1[4] _graphicsSamplingTeardown];
      v7 = [NSString stringWithFormat:@"Received system error from ktrace_record: %s", *(a2 + 8)];
      v8 = [NSError error:4 description:v7];
      v9 = [a1[5] synchronousRemoteObjectProxyWithErrorHandler:&stru_100018898];
      v10 = sub_1000022A8();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }
    }

LABEL_36:
    sub_10000E9FC(v8);
LABEL_37:

    [v9 performanceTraceDidStart:v8];
LABEL_38:

LABEL_39:
    return;
  }

  if (v4 != 6)
  {
    if (v4 == 8)
    {
      v5 = [a1[4] activeConfig];

      if (v5)
      {
        v6 = [a1[4] activeConfig];
        [v6 setTracingActiveTransaction:0];

        [a1[4] setActiveConfig:0];
        [a1[4] setRecordingConnectionPointer:0];
        [a1[4] _updateRecordingStatus:0];
      }

      if ([a1[4] ktraceRecording])
      {
        [a1[4] ktraceRecording];
        ktrace_recording_destroy();
        kperf_reset();
        [a1[4] setKtraceRecording:0];
      }

      [a1[4] _graphicsSamplingTeardown];
      v7 = [NSString stringWithFormat:@"Received argument error from ktrace_record: %s", *(a2 + 8)];
      v8 = [NSError error:4 description:v7];
      v9 = [a1[5] synchronousRemoteObjectProxyWithErrorHandler:&stru_100018878];
      v10 = sub_1000022A8();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

LABEL_18:
    v7 = sub_1000022A8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = *a2;
      *buf = 67109120;
      LODWORD(v37) = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Received unhandled note from ktrace_record: %d", buf, 8u);
    }

    goto LABEL_39;
  }

  if ([a1[4] ktraceRecording])
  {
    [a1[4] ktraceRecording];
    ktrace_recording_destroy();
    kperf_reset();
    [a1[4] setKtraceRecording:0];
  }

  v14 = sub_1000022A8();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Received trace record finished notification", buf, 2u);
  }

  v15 = [a1[4] activeConfig];
  v16 = a1[6];

  if (v15 == v16)
  {
    v7 = a1[7];
    if ([a1[6] compressWhenFinished])
    {
      v17 = sub_1000022A8();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Compressing Performance Trace", buf, 2u);
      }

      v18 = tailspin_compress_file();
      v19 = v18;
      if (v18)
      {
        v20 = v18;

        v21 = sub_1000022A8();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Done compressing Performance Trace", buf, 2u);
        }
      }

      else
      {
        v21 = sub_1000022A8();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10000EB30();
        }

        v20 = v7;
      }

      v7 = v20;
    }

    PTServicesMarkPurgeableMediumUrgency(v7);
    v8 = PTServicesSetFilePosixPermissions(v7);
    if (v8)
    {
      v24 = sub_1000022A8();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10000EB6C(v8);
      }
    }

    if ([a1[6] skipNotification])
    {
      v25 = a1[5];
      if (v25)
      {
        if ([a1[4] _connectionIsEntitled:v25 toEntitlement:@"com.apple.PerformanceTrace.SkipNotification"])
        {
          v26 = sub_1000022A8();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Skipping notification as requested.", buf, 2u);
          }

          goto LABEL_61;
        }

        v27 = a1[5];
      }

      else
      {
        v27 = 0;
      }

      proc_name([v27 processIdentifier], buf, 0x20u);
      v28 = sub_1000022A8();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10000EBF8();
      }
    }

    [a1[4] _sendNotification:v7];
LABEL_61:
    v29 = a1[4];
    v30 = [NSURL fileURLWithPath:v7];
    v31 = [v29 _generateToken:v30];

    v32 = [a1[4] activeConfig];
    [v32 setTracingActiveTransaction:0];

    [a1[4] setActiveConfig:0];
    [a1[4] setRecordingConnectionPointer:0];
    [a1[4] _updateRecordingStatus:0];
    v33 = [a1[5] synchronousRemoteObjectProxyWithErrorHandler:&stru_1000188D8];
    v34 = [NSURL fileURLWithPath:v7];
    [v33 performanceTraceDidComplete:v34 withToken:v31 withError:0];

    v35 = sub_1000022A8();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = v7;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Trace collected with final path: %{public}@", buf, 0xCu);
    }

    goto LABEL_38;
  }
}

void sub_1000050C4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100005118(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_10000516C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_1000051C0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100005214(uint64_t a1)
{
  v2 = sub_1000022A8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Sucessfully started Performance Trace", v4, 2u);
  }

  v3 = [*(a1 + 32) synchronousRemoteObjectProxyWithErrorHandler:&stru_100018920];
  [v3 performanceTraceDidStart:0];
}

void sub_1000052A4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_1000052F8(uint64_t a1)
{
  v2 = sub_1000022A8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EC98();
  }

  [*(a1 + 32) ktraceRecording];
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);
  v5 = ktrace_record();
  if (v5)
  {
    v6 = [NSString stringWithFormat:@"Failed to start trace session with error: %d", v5];
    v7 = [NSError error:4 description:v6];

    v8 = [*(a1 + 32) activeConfig];

    if (v8)
    {
      v9 = [*(a1 + 32) activeConfig];
      [v9 setTracingActiveTransaction:0];

      [*(a1 + 32) setActiveConfig:0];
      [*(a1 + 32) setRecordingConnectionPointer:0];
      [*(a1 + 32) _updateRecordingStatus:0];
    }

    if ([*(a1 + 32) ktraceRecording])
    {
      [*(a1 + 32) ktraceRecording];
      ktrace_recording_destroy();
      kperf_reset();
      [*(a1 + 32) setKtraceRecording:0];
    }

    [*(a1 + 32) _graphicsSamplingTeardown];
    v10 = [*(a1 + 40) synchronousRemoteObjectProxyWithErrorHandler:&stru_100018968];
    v11 = sub_1000022A8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000E9FC(v7);
    }

    [v10 performanceTraceDidStart:v7];
  }
}

void sub_100005490(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100006B9C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100006BF0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100006C44(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100006C98(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100006CEC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100006D40(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100006D94(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100006DE8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100006E3C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100006E90(id *a1)
{
  if ([a1[4] ktraceSession])
  {
    [a1[4] ktraceSession];
    ktrace_session_destroy();
    kperf_reset();
    [a1[4] setKtraceSession:0];
  }

  [a1[4] _graphicsSamplingTeardown];
  v2 = a1[4];
  v3 = [NSURL fileURLWithPath:a1[5]];
  v26 = 0;
  v4 = [v2 _postProcessKtraceFile:v3 withError:&v26];
  v5 = v26;

  if (v5 || (v4 & 1) == 0)
  {
    v6 = sub_1000022A8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000ED54(v5);
    }
  }

  v7 = a1[5];
  if ([a1[6] compressWhenFinished])
  {
    v8 = sub_1000022A8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Compressing Performance Trace", buf, 2u);
    }

    v9 = a1[5];
    v10 = tailspin_compress_file();
    v11 = v10;
    if (v10)
    {
      v12 = v10;

      v13 = sub_1000022A8();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Done compressing Performance Trace", buf, 2u);
      }
    }

    else
    {
      v13 = sub_1000022A8();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10000EB30();
      }

      v12 = v7;
    }

    v7 = v12;
  }

  PTServicesMarkPurgeableMediumUrgency(v7);
  v14 = PTServicesSetFilePosixPermissions(v7);
  if (v14)
  {
    v15 = sub_1000022A8();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000EB6C(v14);
    }
  }

  if (![a1[6] skipNotification])
  {
    goto LABEL_33;
  }

  v16 = a1[7];
  if (!v16)
  {
    v18 = 0;
LABEL_30:
    proc_name([v18 processIdentifier], buf, 0x20u);
    v19 = sub_1000022A8();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000EBF8();
    }

LABEL_33:
    [a1[4] _sendNotification:v7];
    goto LABEL_34;
  }

  if (([a1[4] _connectionIsEntitled:v16 toEntitlement:@"com.apple.PerformanceTrace.SkipNotification"] & 1) == 0)
  {
    v18 = a1[7];
    goto LABEL_30;
  }

  v17 = sub_1000022A8();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Skipping notification as requested.", buf, 2u);
  }

LABEL_34:
  v20 = a1[4];
  v21 = [NSURL fileURLWithPath:v7];
  v22 = [v20 _generateToken:v21];

  [a1[4] setActiveConfig:0];
  [a1[4] setRecordingConnectionPointer:0];
  [a1[4] _updateRecordingStatus:0];
  v23 = [a1[7] synchronousRemoteObjectProxyWithErrorHandler:&stru_100018AD0];
  v24 = [NSURL fileURLWithPath:v7];
  [v23 performanceTraceDidComplete:v24 withToken:v22 withError:v5];

  v25 = sub_1000022A8();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "(Legacy) Trace collected with final path: %{public}@", buf, 0xCu);
  }
}

void sub_1000072A8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_1000072FC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100007350(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_1000073A4(uint64_t a1)
{
  v2 = [*(a1 + 32) ktraceSession];
  v3 = sub_1000022A8();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stopping Performance Trace due to timeout", buf, 2u);
    }

    [*(a1 + 32) ktraceSession];
    ktrace_end();
  }

  else
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Timeout occurred but skipping killing Performance Trace due to no current session", v5, 2u);
    }
  }
}

void sub_10000746C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_1000078C0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100007914(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100007968(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_1000085D4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100008628(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_10000867C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_1000086D0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100008724(uint64_t a1)
{
  ktrace_reset_existing();
  kperf_reset();
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    ktrace_session_destroy();
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  [*(a1 + 32) _graphicsSamplingTeardown];
  v2 = *(a1 + 32);
  v3 = [NSURL fileURLWithPath:*(a1 + 40)];
  v33 = 0;
  v4 = [v2 _postProcessKtraceFile:v3 withError:&v33];
  v5 = v33;

  if (v5 || (v4 & 1) == 0)
  {
    v6 = sub_1000022A8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000ED54(v5);
    }
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) activeConfig];
  v9 = [v8 compressWhenFinished];

  if (v9)
  {
    v10 = sub_1000022A8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Compressing Performance Trace", buf, 2u);
    }

    v11 = *(a1 + 40);
    v12 = tailspin_compress_file();
    v13 = v12;
    if (v12)
    {
      v14 = v12;

      v15 = sub_1000022A8();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Done compressing Performance Trace", buf, 2u);
      }
    }

    else
    {
      v15 = sub_1000022A8();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10000EB30();
      }

      v14 = v7;
    }

    v7 = v14;
  }

  PTServicesMarkPurgeableMediumUrgency(v7);
  v16 = +[NSFileManager defaultManager];
  v17 = *(a1 + 48);
  v32 = 0;
  [v16 setAttributes:v17 ofItemAtPath:v7 error:&v32];
  v18 = v32;

  if (v18)
  {
    v19 = sub_1000022A8();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000EB6C(v18);
    }
  }

  v20 = [*(a1 + 32) activeConfig];
  v21 = [v20 skipNotification];

  if (!v21)
  {
    goto LABEL_33;
  }

  v22 = *(a1 + 56);
  if (!v22)
  {
    v24 = 0;
LABEL_30:
    proc_name([v24 processIdentifier], buf, 0x20u);
    v25 = sub_1000022A8();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10000EBF8();
    }

LABEL_33:
    [*(a1 + 32) _sendNotification:v7];
    goto LABEL_34;
  }

  if (([*(a1 + 32) _connectionIsEntitled:v22 toEntitlement:@"com.apple.PerformanceTrace.SkipNotification"] & 1) == 0)
  {
    v24 = *(a1 + 56);
    goto LABEL_30;
  }

  v23 = sub_1000022A8();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Skipping notification as requested.", buf, 2u);
  }

LABEL_34:
  v26 = *(a1 + 32);
  v27 = [NSURL fileURLWithPath:v7];
  v28 = [v26 _generateToken:v27];

  [*(a1 + 32) setActiveConfig:0];
  [*(a1 + 32) setRecordingConnectionPointer:0];
  [*(a1 + 32) _updateRecordingStatus:0];
  v29 = [*(a1 + 56) synchronousRemoteObjectProxyWithErrorHandler:&stru_100018C58];
  v30 = [NSURL fileURLWithPath:v7];
  [v29 performanceTraceDidComplete:v30 withToken:v28 withError:v5];

  v31 = sub_1000022A8();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v7;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "(Legacy) Trace collected with final path: %{public}@", buf, 0xCu);
  }
}

void sub_100008B8C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100008BE0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100008C34(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EAC8();
  }
}

void sub_100008F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100008F9C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009E98(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000F274();
  }
}

void sub_10000A1E0(uint64_t a1)
{
  v2 = sub_1000022A8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v9 = 138543618;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "XPC connection invalidated to %{public}@ [%d]", &v9, 0x12u);
  }

  v5 = [*(a1 + 40) recordingConnectionPointer];
  v6 = v5;
  if (v5 == *(a1 + 48))
  {
    v7 = [*(a1 + 40) activeConfig];

    if (v7)
    {
      [*(a1 + 40) stopPerformanceTrace];
      v8 = [*(a1 + 40) activeConfig];
      [v8 setTracingActiveTransaction:0];

      [*(a1 + 40) setActiveConfig:0];
      [*(a1 + 40) setRecordingConnectionPointer:0];
    }
  }

  else
  {
  }
}

void sub_10000A31C(uint64_t a1)
{
  v2 = sub_1000022A8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10000F360(a1);
  }

  v3 = [*(a1 + 40) recordingConnectionPointer];
  v4 = v3;
  if (v3 == *(a1 + 48))
  {
    v5 = [*(a1 + 40) activeConfig];

    if (v5)
    {
      [*(a1 + 40) stopPerformanceTrace];
      v6 = [*(a1 + 40) activeConfig];
      [v6 setTracingActiveTransaction:0];

      [*(a1 + 40) setActiveConfig:0];
      [*(a1 + 40) setRecordingConnectionPointer:0];
    }
  }

  else
  {
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting PerformanceTraceService.", v7, 2u);
  }

  v4 = objc_alloc_init(PTService);
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  [v5 resume];

  return 0;
}

void sub_10000A588(id a1)
{
  qword_10001D7A8 = os_log_create("com.apple.PerformanceTrace", "PerformanceTraceService");

  _objc_release_x1();
}

void sub_10000A5E8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000A61C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t sub_10000A660@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 40);
  return result;
}

uint64_t sub_10000A670(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

BOOL PTServicesPostStateDidChangeNotification()
{
  v0 = notify_post("com.apple.performancetrace.global_state_did_change");
  v1 = sub_10000A738();
  v2 = v1;
  if (v0)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10000F3E4(v0, v2);
    }
  }

  else if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Posted global state change notification", v4, 2u);
  }

  return v0 == 0;
}

id sub_10000A738()
{
  if (qword_10001D7C0 != -1)
  {
    sub_10000F45C();
  }

  v1 = qword_10001D7B8;

  return v1;
}

void sub_10000A77C(id a1)
{
  qword_10001D7B8 = os_log_create("com.apple.PerformanceTrace", "StateChangeNotification");

  _objc_release_x1();
}

uint64_t traceConfigTemplateForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PTTraceConfigTraceTemplateDefault"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"PTTraceConfigTraceTemplateFull"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"PTTraceConfigTraceTemplateProfile"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t traceTypeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PTTraceConfigTraceTypeContinuouslyWriteToDisk"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"PTTraceConfigTraceTypeRingBuffer"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t traceGroupForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PTTraceConfigTraceGroupFullTracePoints"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"PTTraceConfigTraceGroupProfileTracePoints"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"PTTraceConfigTraceGroupCallstackSamples"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"PTTraceConfigTraceGroupSystemCallSamples"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"PTTraceConfigTraceGroupVMFaultSamples"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"PTTraceConfigTraceGroupGPU"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"PTTraceConfigTraceGroupASP"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10000AF70()
{
  if (qword_10001D7D0 != -1)
  {
    sub_10000F4A4();
  }

  v1 = qword_10001D7C8;

  return v1;
}

void sub_10000C740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000C758(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000C770(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 || !v5)
  {
    v10 = sub_10000AF70();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000F4B8();
    }

    v11 = [*(a1 + 40) configWithTemplate:1];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v7 = [v5 copy];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(*(*(a1 + 32) + 8) + 40) setSource:{objc_msgSend(v6, "source")}];
  }
}

void sub_10000C974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C98C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AF70();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000F4EC();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Successfully reset config.", v6, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_10000CB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000CB94(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_10000AF70();
  v7 = v6;
  if (a3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000F520();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = @"Not Recording";
      if (a2)
      {
        v8 = @"Recording";
      }

      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Got recording state: %{public}@", &v9, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = a2;
  }
}

void sub_10000CDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000CDDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10000AF70();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000F554(v3, v4);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_10000CF30(id a1)
{
  v1 = sub_10000AF70();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "XPC connection invalidated.", v2, 2u);
  }
}

void sub_10000CF98(id a1)
{
  v1 = sub_10000AF70();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_10000F5CC();
  }
}

void sub_10000D030(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10000AF70();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000F600(v2, v3);
  }
}

id PTDefaultTraceDirectoryAvailableTraceFileURLs(void *a1)
{
  v2 = +[NSFileManager defaultManager];
  v21 = 0;
  if ([v2 fileExistsAtPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/" isDirectory:&v21])
  {
    if (v21)
    {
      v3 = [[NSURL alloc] initFileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/"];
      v4 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:0 error:a1];
      if ([v4 count])
      {
        v15 = v3;
        v16 = v2;
        v5 = objc_alloc_init(NSMutableArray);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v14 = v4;
        v6 = v4;
        v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v18;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v18 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v17 + 1) + 8 * i);
              if (([v11 hasDirectoryPath] & 1) == 0)
              {
                v12 = [v11 pathExtension];
                if (([v12 isEqualToString:@"aar"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"atrc") & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"tgz"))
                {
                  [v5 addObject:v11];
                }
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
          }

          while (v8);
        }

        v3 = v15;
        v2 = v16;
        v4 = v14;
      }

      else
      {
        v5 = 0;
      }
    }

    else if (a1)
    {
      [NSError error:0 description:@"Trace directory is not a directory"];
      *a1 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

void sub_10000E0C0(id a1)
{
  qword_10001D7C8 = os_log_create("com.apple.PerformanceTrace", "Client");

  _objc_release_x1();
}

void sub_10000E104(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000E248(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to mark file purgeable: %{errno}d", v2, 8u);
}

void sub_10000E2E8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Notification added with error: %{public}@", &v2, 0xCu);
}

void sub_10000E360()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getUNUserNotificationCenterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"UserNotifications_SoftLinking.h" lineNumber:31 description:{@"Unable to find class %s", "UNUserNotificationCenter"}];

  __break(1u);
}

void sub_10000E3DC(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *UserNotificationsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"UserNotifications_SoftLinking.h" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

void sub_10000E45C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getUNMutableNotificationContentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"UserNotifications_SoftLinking.h" lineNumber:35 description:{@"Unable to find class %s", "UNMutableNotificationContent"}];

  __break(1u);
}

void sub_10000E4D8()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getUNNotificationActionIconClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"UserNotifications_SoftLinking.h" lineNumber:33 description:{@"Unable to find class %s", "UNNotificationActionIcon"}];

  __break(1u);
}

void sub_10000E554()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getUNNotificationActionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"UserNotifications_SoftLinking.h" lineNumber:32 description:{@"Unable to find class %s", "UNNotificationAction"}];

  __break(1u);
}

void sub_10000E5D0()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getUNNotificationCategoryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"UserNotifications_SoftLinking.h" lineNumber:34 description:{@"Unable to find class %s", "UNNotificationCategory"}];

  __break(1u);
}

void sub_10000E64C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getUNNotificationRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"UserNotifications_SoftLinking.h" lineNumber:36 description:{@"Unable to find class %s", "UNNotificationRequest"}];

  __break(1u);
}

void sub_10000E6DC()
{
  sub_10000A634();
  sub_10000A604();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000E74C()
{
  sub_10000A634();
  sub_10000A604();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000E7BC()
{
  sub_10000A634();
  sub_10000A604();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000E82C()
{
  sub_10000A610();
  sub_10000A604();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000E868()
{
  sub_10000A634();
  sub_10000A604();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000E8D8()
{
  sub_10000A634();
  sub_10000A604();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000E948()
{
  sub_10000A610();
  sub_10000A604();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000E984()
{
  sub_10000A610();
  sub_10000A604();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000E9C0()
{
  sub_10000A610();
  sub_10000A604();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000E9FC(void *a1)
{
  v1 = [a1 description];
  sub_10000A5DC();
  sub_10000A5CC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10000EB30()
{
  sub_10000A610();
  sub_10000A604();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000EB6C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000A5DC();
  sub_10000A5CC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10000EBF8()
{
  sub_10000A650();
  v0 = [NSString stringWithUTF8String:?];
  sub_10000A5DC();
  sub_10000A640();
  sub_10000A5CC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10000ED54(void *a1)
{
  v1 = [a1 description];
  sub_10000A5DC();
  sub_10000A5CC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10000EE20()
{
  sub_10000A634();
  sub_10000A604();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000EE90()
{
  sub_10000A610();
  sub_10000A604();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000EECC(void *a1)
{
  v1 = [a1 description];
  sub_10000A5DC();
  sub_10000A5CC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10000EF58()
{
  sub_10000A610();
  sub_10000A604();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000EF94()
{
  sub_10000A67C();
  sub_10000A670(v1, v2, 5.8381e-34);
  sub_10000A61C(&_mh_execute_header, v3, v3, "Performance Trace Failed To Stop/Complete: %{public}@", v4);
}

void sub_10000EFDC(void *a1)
{
  v1 = [a1 description];
  sub_10000A5DC();
  sub_10000A5CC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10000F06C(uint64_t a1)
{
  sub_10000A660(a1, __stack_chk_guard);
  sub_10000A688();
  sub_10000A5E8(&_mh_execute_header, v1, v2, "An error occurred getting the current configuration (Switching to default): %{public}@", v3, v4, v5, v6, v7);
}

void sub_10000F0D4(uint64_t a1)
{
  sub_10000A660(a1, __stack_chk_guard);
  sub_10000A688();
  sub_10000A5E8(&_mh_execute_header, v1, v2, "Failed to unpack config: %{public}@", v3, v4, v5, v6, v7);
}

void sub_10000F13C(uint64_t a1)
{
  sub_10000A660(a1, __stack_chk_guard);
  sub_10000A688();
  sub_10000A5E8(&_mh_execute_header, v1, v2, "Failed to read config archive: %{public}@", v3, v4, v5, v6, v7);
}

void sub_10000F2DC()
{
  sub_10000A5DC();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Client %{public}@ [%d] is not entitled to use Performance Trace.", v2, 0x12u);
}

void sub_10000F360(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  sub_10000A688();
  sub_10000A604();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10000F3E4(int a1, NSObject *a2)
{
  v2[0] = 67240192;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to post notification for new global state change. Status: %{public}#x", v2, 8u);
}

void sub_10000F554(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "An error occurred storing config: %{public}@", &v2, 0xCu);
}

void sub_10000F600(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to connect to the service protocol: %{public}@", &v2, 0xCu);
}