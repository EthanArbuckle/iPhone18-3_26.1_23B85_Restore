int main(int argc, const char **argv, const char **envp)
{
  v3 = _os_activity_create(&_mh_execute_header, "kvs/main", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  SYDEnterSandbox();
  v4 = getenv("SYD_IN_SYNC_BUBBLE");
  if (v4 && atoi(v4) == 1)
  {
    v5 = SYDGetMiscLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    *v12 = 0;
    v6 = "Starting in the sync bubble";
  }

  else
  {
    v5 = SYDGetMiscLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    *v12 = 0;
    v6 = "Starting";
  }

  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, v6, v12, 2u);
LABEL_8:

  v7 = dispatch_get_global_queue(0, 0);
  v8 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v7);
  v9 = qword_100008020;
  qword_100008020 = v8;

  dispatch_source_set_event_handler(qword_100008020, &stru_100004108);
  dispatch_resume(qword_100008020);
  signal(15, 1);
  v10 = [[SYDDaemon alloc] initWithListener:{objc_msgSend([NSXPCListener alloc], "initWithMachServiceName:", @"com.apple.kvsd"}];
  v11 = qword_100008018;
  qword_100008018 = v10;

  [qword_100008018 start];
  notify_post("com.apple.syncdefaultsd.daemon.wake");
  dispatch_main();
}

void sub_100000BDC(id a1)
{
  v1 = SYDGetMiscLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Exiting due to SIGTERM", v2, 2u);
  }

  exit(0);
}