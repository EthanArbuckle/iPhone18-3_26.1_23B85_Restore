uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v1 = scl_framework_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_100000E78(v1);
    }
  }

  v2 = objc_alloc_init(SCLDDaemon);
  v3 = qword_100008190;
  qword_100008190 = v2;

  [qword_100008190 start];
  v4 = +[NSRunLoop mainRunLoop];
  [v4 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_100000DB0(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, "Notification");
  v3 = scl_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = string;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received XPC event %s", &v4, 0xCu);
  }
}