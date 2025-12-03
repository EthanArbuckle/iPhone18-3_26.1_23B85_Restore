@interface BKSystemShellServiceListener
- (BKSystemShellServiceListener)initWithSentinel:(id)sentinel;
- (BOOL)_remoteProcessIsAlreadyConnected:(id)connected;
- (BOOL)_validateConnection:(id)connection withContext:(id)context forListenerLabel:(id)label;
- (void)_activateConnection:(id)connection withContext:(id)context;
- (void)_dataMigrationCheckInListener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)_shellListener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation BKSystemShellServiceListener

- (void)_shellListener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  contextCopy = context;
  if ([(BKSystemShellServiceListener *)self _validateConnection:connectionCopy withContext:contextCopy forListenerLabel:@"Shell"])
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100014DE4;
    v13 = &unk_1000F9F10;
    v9 = connectionCopy;
    v14 = v9;
    selfCopy = self;
    [v9 configureConnection:&v10];
    [(BKSystemShellServiceListener *)self _activateConnection:v9 withContext:contextCopy, v10, v11, v12, v13];
  }

  else
  {
    [connectionCopy invalidate];
  }
}

- (void)_dataMigrationCheckInListener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  remoteProcess = [connectionCopy remoteProcess];
  v8 = [(BKSystemShellServiceListener *)self _remoteProcessIsAlreadyConnected:remoteProcess];

  if (v8)
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100015330;
    v15 = &unk_1000F9F10;
    v9 = connectionCopy;
    v16 = v9;
    selfCopy = self;
    [v9 configureConnection:&v12];
    [v9 activate];
  }

  else
  {
    v10 = BKLogSystemShell();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      remoteProcess2 = [connectionCopy remoteProcess];
      *buf = 138543362;
      v19 = remoteProcess2;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[DataMigrationCheckIn] unknown system shell:'%{public}@'", buf, 0xCu);
    }

    [connectionCopy invalidate];
  }
}

- (BOOL)_validateConnection:(id)connection withContext:(id)context forListenerLabel:(id)label
{
  connectionCopy = connection;
  labelCopy = label;
  remoteProcess = [connectionCopy remoteProcess];
  v9 = [remoteProcess pid];
  v10 = BKLogSystemShell();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138543874;
    v16 = labelCopy;
    v17 = 2114;
    *v18 = connectionCopy;
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
      v16 = labelCopy;
      v17 = 1024;
      *v18 = v9;
      *&v18[4] = 2114;
      *&v18[6] = connectionCopy;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{public}@] dropping connection with junk pid (%d) -- %{public}@, ", &v15, 0x1Cu);
    }

    [connectionCopy invalidate];
    goto LABEL_12;
  }

  if (([remoteProcess hasEntitlement:BKBackBoardClientEntitlement] & 1) == 0)
  {
    v13 = BKLogSystemShell();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = labelCopy;
      v17 = 2114;
      *v18 = remoteProcess;
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

- (void)_activateConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  v7 = BKSSystemShellConnectionContextKeyLaunchJobLabel;
  contextCopy = context;
  v9 = [contextCopy decodeStringForKey:v7];
  v10 = [contextCopy decodeStringForKey:BKSSystemShellConnectionContextKeyBundlePath];
  v11 = [contextCopy decodeStringForKey:BKSSystemShellConnectionContextKeyBundleID];
  [contextCopy decodeDoubleForKey:BKSSystemShellConnectionContextKeyIdleSleepInterval];
  v13 = v12;
  v14 = [contextCopy decodeInt64ForKey:BKSSystemShellConnectionContextKeyWatchdogType];

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
      [connectionCopy invalidate];
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
  v15 = connectionCopy;
  v25 = v15;
  v16 = [BKSystemShellDescriptor build:v21];
  [(BKSystemShellSentinel *)self->_systemShellSentinel systemShellDidConnect:v16 connection:v15];
  [v15 activate];

LABEL_18:
}

- (BOOL)_remoteProcessIsAlreadyConnected:(id)connected
{
  auditToken = [connected auditToken];
  v5 = auditToken;
  v8 = 0u;
  v9 = 0u;
  if (auditToken)
  {
    [auditToken realToken];
  }

  v6 = [(BKSystemShellSentinel *)self->_systemShellSentinel auditTokenRepresentsSystemApp:&v8];

  return v6;
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  contextCopy = context;
  if (self->_connectionListener == listenerCopy)
  {
    [BKSystemShellServiceListener _shellListener:"_shellListener:didReceiveConnection:withContext:" didReceiveConnection:? withContext:?];
    goto LABEL_5;
  }

  if (self->_dataMigrationCheckInListener == listenerCopy)
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
    selfCopy = self;
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

- (BKSystemShellServiceListener)initWithSentinel:(id)sentinel
{
  sentinelCopy = sentinel;
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

    objc_storeStrong(&v6->_systemShellSentinel, sentinel);
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