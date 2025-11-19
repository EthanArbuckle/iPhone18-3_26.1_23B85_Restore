void sub_100001110()
{
  _set_user_dir_suffix();
  v0 = NSTemporaryDirectory();
  v1 = +[NSFileManager defaultManager];
  v4 = 0;
  v2 = [v1 removeItemAtPath:v0 error:&v4];
  v3 = v4;

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = v0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully cleared temporary directory (%@) contents on startup.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000016B0(v3);
  }
}

void sub_100001274(id a1)
{
  inactive = dispatch_workloop_create_inactive("com.apple.liveactivitiesd.daemon_workloop");
  v2 = qword_100008148;
  qword_100008148 = inactive;

  dispatch_workloop_set_autorelease_frequency(qword_100008148, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_set_qos_class_fallback();
  v3 = qword_100008148;

  dispatch_activate(v3);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001664();
  static OS_os_log.default.getter();
  Logger.init(_:)();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Good morning! 🍎", v10, 2u);
  }

  (*(v4 + 8))(v7, v3);
  sub_100001110();
  nullsub_1();
  type metadata accessor for Daemon();
  v11 = [objc_opt_self() sharedDaemonWorkloop];
  qword_100008158 = Daemon.__allocating_init(workloop:)();
  dispatch thunk of Daemon.start()();
  static NotificationName.daemonStartup.getter();
  v12 = String.utf8CString.getter();

  notify_post((v12 + 32));

  v13 = [objc_opt_self() mainRunLoop];
  [v13 run];

  return 0;
}

unint64_t sub_100001664()
{
  result = qword_100008140;
  if (!qword_100008140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008140);
  }

  return result;
}

void sub_1000016B0(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error clearing temporary directory contents on startup: %@", &v1, 0xCu);
}