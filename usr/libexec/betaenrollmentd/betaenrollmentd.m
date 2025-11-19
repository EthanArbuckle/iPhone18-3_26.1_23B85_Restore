void sub_100000800()
{
  bzero(v10, 0x400uLL);
  pw_dir = getenv("HOME");
  if (!pw_dir)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100000A9C();
    }

    v1 = getuid();
    v2 = getpwuid(v1);
    if (!v2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100000DC0();
      }

LABEL_28:
      exit(1);
    }

    pw_dir = v2->pw_dir;
  }

  v3 = realpath_DARWIN_EXTSN(pw_dir, 0);
  if (!v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000D48();
    }

    goto LABEL_28;
  }

  v4 = v3;
  if (!_set_user_dir_suffix() || !confstr(65537, v10, 0x400uLL))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000CD0();
    }

    goto LABEL_28;
  }

  v5 = realpath_DARWIN_EXTSN(v10, 0);
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000C58();
    }

    goto LABEL_28;
  }

  v6 = v5;
  if (!confstr(65538, v10, 0x400uLL))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000BE0();
    }

    goto LABEL_28;
  }

  v7 = realpath_DARWIN_EXTSN(v10, 0);
  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000B68();
    }

    goto LABEL_28;
  }

  v8 = v7;
  v9[1] = "HOME";
  v9[2] = v4;
  v9[3] = "TMPDIR";
  v9[4] = v6;
  v9[5] = "DARWIN_CACHE_DIR";
  v9[6] = v7;
  v9[7] = 0;
  v9[0] = 0;
  if (sandbox_init_with_parameters())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000AE4(v9);
    }

    goto LABEL_28;
  }

  free(v4);
  free(v6);
  free(v8);
}

void sub_100000A40(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[SDBetaEnrollmentService sharedInstance];
  [v1 start];

  dispatch_main();
}

void sub_100000AE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = 136446210;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to enter sandbox: %{public}s", &v2, 0xCu);
}

void sub_100000B68()
{
  v0 = *__error();
  sub_100000A5C();
  sub_100000A40(&_mh_execute_header, &_os_log_default, v1, "failed to resolve cache directory: %{darwin.errno}d", v2, v3, v4, v5, v6);
}

void sub_100000BE0()
{
  v0 = *__error();
  sub_100000A5C();
  sub_100000A40(&_mh_execute_header, &_os_log_default, v1, "failed to initialize cache directory: %{darwin.errno}d", v2, v3, v4, v5, v6);
}

void sub_100000C58()
{
  v0 = *__error();
  sub_100000A5C();
  sub_100000A40(&_mh_execute_header, &_os_log_default, v1, "failed to resolve temporary directory: %{darwin.errno}d", v2, v3, v4, v5, v6);
}

void sub_100000CD0()
{
  v0 = *__error();
  sub_100000A5C();
  sub_100000A40(&_mh_execute_header, &_os_log_default, v1, "failed to initialize temporary directory: %{darwin.errno}d", v2, v3, v4, v5, v6);
}

void sub_100000D48()
{
  v0 = *__error();
  sub_100000A5C();
  sub_100000A40(&_mh_execute_header, &_os_log_default, v1, "failed to resolve user's home directory: %{darwin.errno}d", v2, v3, v4, v5, v6);
}