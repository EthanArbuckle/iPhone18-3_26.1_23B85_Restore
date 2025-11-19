@interface BKSystemShellControlServiceListener
- (BKSystemShellControlServiceListener)initWithSentinel:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation BKSystemShellControlServiceListener

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v6 = a4;
  v7 = [v6 remoteProcess];
  v8 = [v7 pid];
  v9 = BKLogSystemShell();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    *v16 = v6;
    *&v16[8] = 1024;
    *&v16[10] = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "shell control connection -- %{public}@ pid:%d", buf, 0x12u);
  }

  if (v8 <= 0)
  {
    v10 = BKLogSystemShell();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      [v6 invalidate];
      goto LABEL_10;
    }

    *buf = 67109378;
    *v16 = v8;
    *&v16[4] = 2114;
    *&v16[6] = v6;
    v11 = "dropping connection with junk pid (%d) -- %{public}@, ";
    v12 = v10;
    v13 = 18;
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    goto LABEL_9;
  }

  if (![v7 hasEntitlement:BKReplaceSystemAppEntitlement])
  {
    v10 = BKLogSystemShell();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 138543362;
    *v16 = v7;
    v11 = "'%{public}@' is not appropriately entitled";
    v12 = v10;
    v13 = 12;
    goto LABEL_12;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009EDD0;
  v14[3] = &unk_1000FD310;
  v14[4] = self;
  [v6 configureConnection:v14];
  [v6 activate];
LABEL_10:
}

- (BKSystemShellControlServiceListener)initWithSentinel:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = BKSystemShellControlServiceListener;
  v6 = [(BKSystemShellControlServiceListener *)&v17 init];
  if (v6)
  {
    v7 = +[BSDispatchQueueAttributes serial];
    v8 = [v7 serviceClass:25];
    v9 = BSDispatchQueueCreate();
    queue = v6->_queue;
    v6->_queue = v9;

    objc_storeStrong(&v6->_systemShellSentinel, a3);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009F060;
    v15[3] = &unk_1000FD288;
    v11 = v6;
    v16 = v11;
    v12 = [BSServiceConnectionListener listenerWithConfigurator:v15];
    connectionListener = v11->_connectionListener;
    v11->_connectionListener = v12;
  }

  return v6;
}

@end