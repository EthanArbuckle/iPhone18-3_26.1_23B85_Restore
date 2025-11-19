id MegaWiFiDELog()
{
  if (qword_10000C358 != -1)
  {
    sub_1000032D0();
  }

  v1 = qword_10000C350;

  return v1;
}

void sub_100000E34(id a1)
{
  qword_10000C350 = os_log_create("com.apple.wifi.WiFiLogCapture.MegaWiFiDiagnosticExtension", "MegaWiFiDE");

  _objc_release_x1();
}

void sub_1000011B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100002C74(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:@"WiFiLogConfigDiagnosticExtension" forKeyedSubscript:@"class"];
  v3 = MGCopyAnswer();
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID())
    {
      [v2 setObject:v4 forKeyedSubscript:@"releaseType"];
    }
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  if (v7 != 0.0)
  {
    v8 = *(v6 + 8);
    if (v8 != 0.0)
    {
      v9 = [NSNumber numberWithDouble:v7 - v8];
      [v2 setObject:v9 forKeyedSubscript:@"setupDuration"];

      v6 = *(a1 + 32);
    }
  }

  v10 = *(v6 + 48);
  if (v10 != 0.0)
  {
    v11 = *(v6 + 40);
    if (v11 != 0.0)
    {
      v12 = [NSNumber numberWithDouble:v10 - v11];
      [v2 setObject:v12 forKeyedSubscript:@"teardownDuration"];

      v6 = *(a1 + 32);
      v10 = *(v6 + 48);
    }
  }

  if (v10 != 0.0)
  {
    v13 = *(v6 + 8);
    if (v13 != 0.0)
    {
      v14 = [NSNumber numberWithDouble:v10 - v13];
      [v2 setObject:v14 forKeyedSubscript:@"overallDuration"];

      v6 = *(a1 + 32);
    }
  }

  v15 = *(v6 + 32);
  if (v15 != 0.0)
  {
    v16 = *(v6 + 24);
    if (v16 != 0.0)
    {
      v17 = [NSNumber numberWithDouble:v15 - v16];
      [v2 setObject:v17 forKeyedSubscript:@"attachmentCollectionDuration"];

      v6 = *(a1 + 32);
    }
  }

  v18 = [NSNumber numberWithUnsignedLongLong:*(v6 + 56)];
  [v2 setObject:v18 forKeyedSubscript:@"attachmentSize"];

  v19 = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 32) + 64)];
  [v2 setObject:v19 forKeyedSubscript:@"attachmentCount"];

  v20 = *(a1 + 40);
  if (v20 && [v20 count])
  {
    v21 = [*(a1 + 40) objectForKey:@"hostAppString"];

    if (v21)
    {
      v22 = [*(a1 + 40) objectForKey:@"hostAppString"];
      if ([v22 isEqualToString:@"Timberlorry"])
      {
        [v2 setObject:@"Timberlorry" forKeyedSubscript:@"hostAppString"];
      }
    }

    v23 = [*(a1 + 40) objectForKey:@"Action"];

    if (v23)
    {
      v24 = [*(a1 + 40) objectForKey:@"Action"];
      if ([v24 isEqualToString:@"Apply"])
      {
        [v2 setObject:@"Apply" forKeyedSubscript:@"Action"];
      }

      if ([v24 isEqualToString:@"Remove"])
      {
        [v2 setObject:@"Remove" forKeyedSubscript:@"Action"];
      }
    }
  }

  return v2;
}

Class sub_100003050(uint64_t a1)
{
  sub_1000030A8();
  result = objc_getClass("W5Client");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000035F4();
  }

  qword_10000C360 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000030A8()
{
  v1[0] = 0;
  if (!qword_10000C368)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_1000031A4;
    v1[4] = &unk_100008298;
    v1[5] = v1;
    v2 = off_100008280;
    v3 = 0;
    qword_10000C368 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_10000C368)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_1000031A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000C368 = result;
  return result;
}

Class sub_100003218(uint64_t a1)
{
  sub_1000030A8();
  result = objc_getClass("W5LogItemRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000361C();
  }

  qword_10000C370 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100003294(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void sub_1000032B0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void sub_1000032E4()
{
  v2 = 136446978;
  sub_100003284();
  sub_100003270();
  sub_1000032B0(&_mh_execute_header, v0, v1, "%{public}s::%d: Error accessing directory: %@, erorr: %@", v2);
}

void sub_100003368()
{
  sub_100003284();
  sub_100003270();
  sub_100003294(&_mh_execute_header, v0, v1, "%{public}s::%d: Not a plist, skipping: %@", v2, v3, v4, v5, 2u);
}

void sub_1000033E4()
{
  v3[0] = 136446978;
  sub_100003284();
  sub_100003270();
  v4 = v0;
  v5 = v1;
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "%{public}s::%d: Error reading plist %@: %@", v3, 0x26u);
}

void sub_100003478()
{
  sub_100003284();
  sub_100003270();
  sub_100003294(&_mh_execute_header, v0, v1, "%{public}s::%d: No filename for plist, skipping: %@", v2, v3, v4, v5, 2u);
}

void sub_1000034F4()
{
  sub_100003284();
  sub_100003270();
  sub_100003294(&_mh_execute_header, v0, v1, "%{public}s::%d: No data in plist, skipping: %@", v2, v3, v4, v5, 2u);
}

void sub_100003570()
{
  v2 = 136446978;
  sub_100003284();
  sub_100003270();
  sub_1000032B0(&_mh_execute_header, v0, v1, "%{public}s::%d: Error accessing directory: %@, erorr: %@", v2);
}