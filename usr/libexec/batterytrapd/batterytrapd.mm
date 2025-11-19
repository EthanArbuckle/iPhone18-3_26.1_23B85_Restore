void sub_100001388(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1000013BC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_100002048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002060(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002078(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NSCurrentLocaleDidChangeNotification", v8, 2u);
  }

  [*(a1 + 32) _updateLocaleChange];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:*(*(a1 + 32) + 32)];

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = 0;
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  xpc_set_event_stream_handler("com.apple.iokit.matching", &_dispatch_main_q, &stru_100008298);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_1000082B8);

  objc_autoreleasePoolPop(v0);
  dispatch_main();
}

void sub_1000022A0(id a1, OS_xpc_object *a2)
{
  v2 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    sub_100002938(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = objc_alloc_init(CFDaemon);
  v11 = qword_10000C5C0;
  qword_10000C5C0 = v10;

  byte_10000C5B8 = 1;
}

void sub_1000022F8(id a1, OS_xpc_object *a2)
{
  if (byte_10000C5B8 == 1 && qword_10000C5C0 != 0)
  {
    string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
    if (string)
    {
      v4 = string;
      if (!strcmp("TimezoneNotification", string))
      {
        v13 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
        if (v13)
        {
          sub_1000029EC(v13, v14, v15, v16, v17, v18, v19, v20);
        }

LABEL_13:
        [qword_10000C5C0 _handleTimeZoneChange];
        return;
      }

      if (strcmp("AppleTimePreferencesChangedNotification", v4))
      {
        if (strcmp("SignificantTimeChangeNotification", v4))
        {
          return;
        }

        v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
        if (v5)
        {
          sub_100002974(v5, v6, v7, v8, v9, v10, v11, v12);
        }

        goto LABEL_13;
      }

      v21 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
      if (v21)
      {
        sub_1000029B0(v21, v22, v23, v24, v25, v26, v27, v28);
      }

      [qword_10000C5C0 _handleLocaleChange];
    }
  }
}

void sub_1000023F4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1000024EC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Couldn't sync nvram, error:0x%x", v2, 8u);
}

void sub_1000026EC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 dateFormat];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Time format: %@", &v5, 0xCu);
}