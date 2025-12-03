@interface BKAlternateSystemAppServer
+ (id)sharedInstance;
- (BKAlternateSystemAppServer)init;
- (BOOL)_queue_listener:(id)_queue_listener shouldAcceptNewConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_handleInterruptedOrInvalidatedConnection;
- (void)blockSystemAppForAlternateSystemApp;
- (void)dealloc;
- (void)openAlternateSystemAppWithBundleID:(id)d;
- (void)terminateAlternateSystemAppWithBundleID:(id)d;
- (void)unblockSystemAppForAlternateSystemApp;
@end

@implementation BKAlternateSystemAppServer

- (void)terminateAlternateSystemAppWithBundleID:(id)d
{
  dCopy = d;
  v5 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Server] Received request to terminate alternate system app %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008C98C;
  v8[3] = &unk_1000FD128;
  v9 = dCopy;
  selfCopy = self;
  v7 = dCopy;
  dispatch_async(queue, v8);
}

- (void)openAlternateSystemAppWithBundleID:(id)d
{
  dCopy = d;
  v5 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Server] Received request to open alternate system app %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008CC20;
  v8[3] = &unk_1000FD128;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, v8);
}

- (void)unblockSystemAppForAlternateSystemApp
{
  v3 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Server] Received request to unblock primary system app for alternate system app", buf, 2u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008D180;
  block[3] = &unk_1000FD150;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)blockSystemAppForAlternateSystemApp
{
  v3 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Server] Received request to block primary system app for alternate system app", buf, 2u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008D350;
  block[3] = &unk_1000FD150;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = listenerCopy;
    *&buf[12] = 2114;
    *&buf[14] = connectionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Server] Got a connection request on listener %{public}@: connection %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v19 = 0;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008D5C8;
  v14[3] = &unk_1000FCBD0;
  v14[4] = self;
  v15 = listenerCopy;
  v16 = connectionCopy;
  v17 = buf;
  v10 = connectionCopy;
  v11 = listenerCopy;
  dispatch_sync(queue, v14);
  v12 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v12;
}

- (BOOL)_queue_listener:(id)_queue_listener shouldAcceptNewConnection:(id)connection
{
  _queue_listenerCopy = _queue_listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    *buf = 0u;
    v23 = 0u;
  }

  v9 = [BSAuditToken tokenFromAuditToken:buf];
  v10 = BKReplaceSystemAppEntitlement;
  if (([v9 hasEntitlement:BKReplaceSystemAppEntitlement] & 1) == 0)
  {
    v11 = BKLogAlternateSystemApp();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Server] Entitlement %{public}@ required to open alternate system app.", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (self->_clientConnection)
  {
    v11 = BKLogAlternateSystemApp();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Server] Rejecting BKAlternateSystemAppServer connection because we already have one", buf, 2u);
    }

LABEL_11:

    v12 = 0;
    goto LABEL_12;
  }

  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BKSAlternateSystemAppClientProtocol];
  [v8 setRemoteObjectInterface:v14];

  v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BKSAlternateSystemAppServerProtocol];
  [v8 setExportedInterface:v15];

  [v8 setExportedObject:self];
  objc_initWeak(buf, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10008D954;
  v20[3] = &unk_1000FCBA8;
  objc_copyWeak(&v21, buf);
  [v8 setInterruptionHandler:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10008D994;
  v18[3] = &unk_1000FCBA8;
  objc_copyWeak(&v19, buf);
  [v8 setInvalidationHandler:v18];
  [v8 resume];
  [(BKAlternateSystemAppServer *)self setClientConnection:v8];
  v16 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[Server] Accepted connection request", v17, 2u);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
  v12 = 1;
LABEL_12:

  return v12;
}

- (void)_handleInterruptedOrInvalidatedConnection
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008DA48;
  block[3] = &unk_1000FD150;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  [(NSXPCListener *)self->_xpcListener invalidate];
  v3.receiver = self;
  v3.super_class = BKAlternateSystemAppServer;
  [(BKAlternateSystemAppServer *)&v3 dealloc];
}

- (BKAlternateSystemAppServer)init
{
  v10.receiver = self;
  v10.super_class = BKAlternateSystemAppServer;
  v2 = [(BKAlternateSystemAppServer *)&v10 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.backboard.altsysapp"];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v3;

    [(NSXPCListener *)v2->_xpcListener setDelegate:v2];
    clientConnection = v2->_clientConnection;
    v2->_clientConnection = 0;

    v6 = +[BKAlternateSystemAppManager sharedInstance];
    [(BKAlternateSystemAppServer *)v2 setAlternateSystemAppManager:v6];

    Serial = BSDispatchQueueCreateSerial();
    queue = v2->_queue;
    v2->_queue = Serial;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1001260D8 != -1)
  {
    dispatch_once(&qword_1001260D8, &stru_1000FCB80);
  }

  v3 = qword_1001260D0;

  return v3;
}

@end