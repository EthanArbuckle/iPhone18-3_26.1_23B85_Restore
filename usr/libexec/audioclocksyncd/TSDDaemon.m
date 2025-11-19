@interface TSDDaemon
- (TSDDaemon)init;
- (void)start;
@end

@implementation TSDDaemon

- (TSDDaemon)init
{
  v8.receiver = self;
  v8.super_class = TSDDaemon;
  v2 = [(TSDDaemon *)&v8 init];
  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDDaemon waiting for daemon service to become available\n", v7, 2u);
    }

    v3 = objc_alloc_init(DaemonServiceMatcher);
    v4 = [(DaemonServiceMatcher *)v3 waitForService];
    v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v5)
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDDaemon daemon service matched and available\n", v7, 2u);
      }

      [(TSDDaemon *)v2 start];
    }

    else
    {
      sub_10002CDEC(v5, v2);
      v2 = 0;
    }
  }

  return v2;
}

- (void)start
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDDaemon waiting for clock manager to become available\n", buf, 2u);
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001CF08;
  v3[3] = &unk_10004C6A8;
  v3[4] = self;
  [TSDClockManager notifyWhenClockManagerIsAvailable:v3];
}

@end