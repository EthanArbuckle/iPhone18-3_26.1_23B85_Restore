uint64_t start()
{
  bzero(v4, 0x400uLL);
  if (!_set_user_dir_suffix() || !confstr(65537, v4, 0x400uLL))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100001F04();
    }

LABEL_9:
    exit(1);
  }

  v0 = realpath_DARWIN_EXTSN(v4, 0);
  if (!v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100001E7C();
    }

    goto LABEL_9;
  }

  free(v0);
  v1 = +[NSXPCListener serviceListener];
  v2 = objc_alloc_init(ServiceDelegate);
  [v1 setDelegate:v2];
  [v1 resume];

  return 0;
}

void sub_100001004(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (qword_100008600 != -1)
  {
    sub_100001F8C();
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001184;
  v10[3] = &unk_100004290;
  v10[4] = &v12;
  v11 = a1;
  dispatch_sync(qword_1000085F8, v10);
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *a5 = v13[3];
  *(a5 + 16) = a3;
  *(a5 + 20) = a4;
  _Block_object_dispose(&v12, 8);
}

void sub_1000010FC(id a1)
{
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("create-log-section", v1);

  v3 = qword_1000085F8;
  qword_1000085F8 = v2;
}

uint64_t sub_100001184(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = qword_1000085F0 + 1;
  v1 = *(*(result + 32) + 8);
  v2 = *(v1 + 24);
  if ((*(v1 + 24) & 1) == *(result + 40))
  {
    *(v1 + 24) = v2 + 1;
    v2 = *(*(*(result + 32) + 8) + 24);
  }

  qword_1000085F0 = v2;
  return result;
}

void sub_1000011D4(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      v4 = *(a1 + 16);
      v5 = brc_bread_crumbs();
      v6 = *(a1 + 20);
      v7 = brc_default_log();
      v8 = v7;
      if (v2)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_100001FA0(v5, v2, v8);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 134218242;
        v10 = v2;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] ┗%llx %@", &v9, 0x16u);
      }
    }
  }
}

void sub_100001D88(id a1)
{
  qword_100008610 = dispatch_workloop_create("com.apple.clouddocs.extract-metadata");

  _objc_release_x1();
}

void sub_100001E5C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x34u);
}

void sub_100001E7C()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failed to resolve temporary directory: %{darwin.errno}d", v1, 8u);
}

void sub_100001F04()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failed to initialize temporary directory: %{darwin.errno}d", v1, 8u);
}

void sub_100001FA0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┗%llx %@", &v3, 0x16u);
}

void sub_100002028()
{
  v0 = [NSError brc_errorInvalidParameter:@"bundleID" value:0];
  sub_100001E2C();
  sub_100001E5C(&_mh_execute_header, v1, v2, "[DEBUG] %@: reply(%@, %@, %@)%@", v3, v4, v5, v6, v7);
}

void sub_1000020D0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138413314;
  v4 = a1;
  v5 = 2112;
  v6 = &__NSDictionary0__struct;
  v7 = 2112;
  v8 = 0;
  v9 = 2112;
  v10 = 0;
  v11 = 2112;
  v12 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@, %@, %@)%@", &v3, 0x34u);
}

void sub_100002178()
{
  v0 = [NSError brc_errorInvalidParameter:@"containerID" value:0];
  sub_100001E2C();
  sub_100001E5C(&_mh_execute_header, v1, v2, "[DEBUG] %@: reply(%@, %@, %@)%@", v3, v4, v5, v6, v7);
}