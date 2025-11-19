@interface BKSystemShellServiceListener
- (BKSystemShellServiceListener)initWithSentinel:(id)a3;
- (BOOL)_remoteProcessIsAlreadyConnected:(id)a3;
- (BOOL)_validateConnection:(id)a3 withContext:(id)a4 forListenerLabel:(id)a5;
- (void)_activateConnection:(id)a3 withContext:(id)a4;
- (void)_dataMigrationCheckInListener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)_shellListener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation BKSystemShellServiceListener

- (void)_shellListener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BKSystemShellServiceListener *)self _validateConnection:v7 withContext:v8 forListenerLabel:@"Shell"])
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100014DE4;
    v13 = &unk_1000F9F10;
    v9 = v7;
    v14 = v9;
    v15 = self;
    [v9 configureConnection:&v10];
    [(BKSystemShellServiceListener *)self _activateConnection:v9 withContext:v8, v10, v11, v12, v13];
  }

  else
  {
    [v7 invalidate];
  }
}

- (void)_dataMigrationCheckInListener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v6 = a4;
  v7 = [v6 remoteProcess];
  v8 = [(BKSystemShellServiceListener *)self _remoteProcessIsAlreadyConnected:v7];

  if (v8)
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100015330;
    v15 = &unk_1000F9F10;
    v9 = v6;
    v16 = v9;
    v17 = self;
    [v9 configureConnection:&v12];
    [v9 activate];
  }

  else
  {
    v10 = BKLogSystemShell();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v6 remoteProcess];
      *buf = 138543362;
      v19 = v11;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[DataMigrationCheckIn] unknown system shell:'%{public}@'", buf, 0xCu);
    }

    [v6 invalidate];
  }
}

- (BOOL)_validateConnection:(id)a3 withContext:(id)a4 forListenerLabel:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [v6 remoteProcess];
  v9 = [v8 pid];
  v10 = BKLogSystemShell();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138543874;
    v16 = v7;
    v17 = 2114;
    *v18 = v6;
    *&v18[8] = 1024;
    *&v18[10] = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%{public}@] received connection -- %{public}@ pid:%d", &v15, 0x1Cu);
  }

  if (v9 <= 0)
  {
    v12 = BKLogSystemShell();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543874;
      v16 = v7;
      v17 = 1024;
      *v18 = v9;
      *&v18[4] = 2114;
      *&v18[6] = v6;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{public}@] dropping connection with junk pid (%d) -- %{public}@, ", &v15, 0x1Cu);
    }

    [v6 invalidate];
    goto LABEL_12;
  }

  if (([v8 hasEntitlement:BKBackBoardClientEntitlement] & 1) == 0)
  {
    v13 = BKLogSystemShell();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = v7;
      v17 = 2114;
      *v18 = v8;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}@] '%{public}@' is not a system shell", &v15, 0x16u);
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v11 = 1;
LABEL_13:

  return v11;
}

- (void)_activateConnection:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = BKSSystemShellConnectionContextKeyLaunchJobLabel;
  v8 = a4;
  v9 = [v8 decodeStringForKey:v7];
  v10 = [v8 decodeStringForKey:BKSSystemShellConnectionContextKeyBundlePath];
  v11 = [v8 decodeStringForKey:BKSSystemShellConnectionContextKeyBundleID];
  [v8 decodeDoubleForKey:BKSSystemShellConnectionContextKeyIdleSleepInterval];
  v13 = v12;
  v14 = [v8 decodeInt64ForKey:BKSSystemShellConnectionContextKeyWatchdogType];

  if (!v9)
  {
    v17 = BKLogSystemShell();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v18 = "missing jobLabel";
    goto LABEL_12;
  }

  if (!v10)
  {
    v17 = BKLogSystemShell();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v18 = "missing bundlePath";
    goto LABEL_12;
  }

  if (!v11)
  {
    v17 = BKLogSystemShell();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v18 = "missing bundleIdentifier";
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
LABEL_13:

    if (v14 < 2)
    {
LABEL_17:
      [v6 invalidate];
      goto LABEL_18;
    }

LABEL_14:
    v19 = BKLogSystemShell();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [NSString stringWithFormat:@"<unknown:%lX>", v14];
      *buf = 138543362;
      v29 = v20;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "we don't handle this watchdogType:%{public}@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  if (v14 >= 2)
  {
    goto LABEL_14;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100015B9C;
  v21[3] = &unk_1000F9EC8;
  v22 = v11;
  v23 = v10;
  v24 = v9;
  v26 = v13;
  v27 = v14;
  v15 = v6;
  v25 = v15;
  v16 = [BKSystemShellDescriptor build:v21];
  [(BKSystemShellSentinel *)self->_systemShellSentinel systemShellDidConnect:v16 connection:v15];
  [v15 activate];

LABEL_18:
}

- (BOOL)_remoteProcessIsAlreadyConnected:(id)a3
{
  v4 = [a3 auditToken];
  v5 = v4;
  v8 = 0u;
  v9 = 0u;
  if (v4)
  {
    [v4 realToken];
  }

  v6 = [(BKSystemShellSentinel *)self->_systemShellSentinel auditTokenRepresentsSystemApp:&v8];

  return v6;
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_connectionListener == v15)
  {
    [BKSystemShellServiceListener _shellListener:"_shellListener:didReceiveConnection:withContext:" didReceiveConnection:? withContext:?];
    goto LABEL_5;
  }

  if (self->_dataMigrationCheckInListener == v15)
  {
    [BKSystemShellServiceListener _dataMigrationCheckInListener:"_dataMigrationCheckInListener:didReceiveConnection:withContext:" didReceiveConnection:? withContext:?];
LABEL_5:

    return;
  }

  v11 = [NSString stringWithFormat:@"shouldn't be here"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138544642;
    v17 = v12;
    v18 = 2114;
    v19 = v14;
    v20 = 2048;
    v21 = self;
    v22 = 2114;
    v23 = @"BKSystemShellServiceListener.m";
    v24 = 1024;
    v25 = 81;
    v26 = 2114;
    v27 = v11;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v11 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BKSystemShellServiceListener)initWithSentinel:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = BKSystemShellServiceListener;
  v6 = [(BKSystemShellServiceListener *)&v22 init];
  if (v6)
  {
    v7 = +[BSDispatchQueueAttributes serial];
    v8 = [v7 serviceClass:25];
    v9 = BSDispatchQueueCreate();
    queue = v6->_queue;
    v6->_queue = v9;

    objc_storeStrong(&v6->_systemShellSentinel, a3);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100016038;
    v20[3] = &unk_1000FD288;
    v11 = v6;
    v21 = v11;
    v12 = [BSServiceConnectionListener listenerWithConfigurator:v20];
    connectionListener = v11->_connectionListener;
    v11->_connectionListener = v12;

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000160B0;
    v18[3] = &unk_1000FD288;
    v14 = v11;
    v19 = v14;
    v15 = [BSServiceConnectionListener listenerWithConfigurator:v18];
    dataMigrationCheckInListener = v14->_dataMigrationCheckInListener;
    v14->_dataMigrationCheckInListener = v15;
  }

  return v6;
}

@end