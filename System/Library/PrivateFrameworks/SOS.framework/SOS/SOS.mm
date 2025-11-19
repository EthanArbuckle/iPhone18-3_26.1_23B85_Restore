uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_10000225C();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "sosd launched", buf, 2u);
  }

  v2 = _set_user_dir_suffix();
  v3 = confstr(65537, buf, 0x40uLL);
  v4 = sub_10000225C();
  v5 = v4;
  if (v2 && v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = buf;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "set sosd temporary directory to %s", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000022E4(v5);
  }

  v6 = objc_alloc_init(SOSDaemon);
  objc_autoreleasePoolPop(v0);
  [(SOSDaemon *)v6 run];

  return 0;
}

id sub_100000FB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  [objc_opt_class() connectToDaemon];
  v3 = *(*(a1 + 32) + 8);

  return [v3 start];
}

void sub_10000124C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000225C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002254;
  block[3] = &unk_1000042F8;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000018C4(uint64_t a1, int a2)
{
  v4 = sub_10000225C();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 24);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully acquired location status bar assertion: %@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100002400(a1, v5);
  }
}

void sub_1000019A0(uint64_t a1)
{
  v2 = sub_10000225C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 24);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Location status bar assertion invalidated: %@", &v4, 0xCu);
  }
}

id sub_10000225C()
{
  if (qword_100008388 != -1)
  {
    sub_1000024A8();
  }

  v1 = qword_100008380;

  return v1;
}

void sub_1000022A0(id a1)
{
  qword_100008380 = os_log_create("com.apple.calls.sos", "default");

  _objc_release_x1();
}

void sub_1000022E4(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "unable to change temporary directory with error %d", v3, 8u);
}

void sub_100002374(int *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 1024;
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Notification token registration failed, status %d token %d", v4, 0xEu);
}

void sub_100002400(uint64_t a1, NSObject *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to acquire location status bar assertion: %@", &v3, 0xCu);
}