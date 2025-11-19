@interface WLDaemonListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_buddyDidFinish;
- (void)_cancel;
- (void)_run:(id)a3 transaction:(id)a4;
- (void)attemptDirectConnectionToAddress:(id)a3;
- (void)cancel;
- (void)deleteMessages;
- (void)getLocalImportOptions:(id)a3;
- (void)lookupAppDataContainer:(id)a3;
- (void)run:(id)a3;
- (void)server:(id)a3 didChangeState:(int64_t)a4 withContext:(id)a5;
- (void)server:(id)a3 didCreateCode:(id)a4;
- (void)server:(id)a3 didImportWithContext:(id)a4;
- (void)server:(id)a3 didReceiveClient:(id)a4;
- (void)server:(id)a3 didUpdateProgress:(float)a4 remainingTime:(unint64_t)a5 completedOperationCount:(unint64_t)a6 totalOperationCount:(unint64_t)a7;
- (void)serverDidAuthenticateClient:(id)a3;
- (void)serverDidRejectClient:(id)a3;
- (void)serverWillImport:(id)a3;
- (void)setStashDataLocally:(BOOL)a3;
- (void)sourceDeviceWithReply:(id)a3;
- (void)start;
- (void)startMigrationUsingRetryPolicies:(BOOL)a3 delegate:(id)a4 useMigrationKit:(BOOL)a5 replyBlock:(id)a6;
- (void)startWiFiAndDeviceDiscovery:(id)a3;
- (void)stop:(id)a3;
- (void)stopDeviceDiscovery:(id)a3;
- (void)stopWiFiAndDeviceDiscovery:(id)a3;
@end

@implementation WLDaemonListener

- (void)start
{
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000016D0;
  v17 = &unk_100008290;
  objc_copyWeak(&v18, &location);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &v14);

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("XPC Event Queue", v4);
  xpcEventQueue = self->_xpcEventQueue;
  self->_xpcEventQueue = v5;

  v7 = [NSXPCListener alloc];
  v8 = [v7 initWithMachServiceName:{@"com.apple.matd", v14, v15, v16, v17}];
  listener = self->_listener;
  self->_listener = v8;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
  v10 = objc_alloc_init(NSMutableDictionary);
  migrators = self->_migrators;
  self->_migrators = v10;

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.matd.migration.kit.job.queue", v12);
  [(WLDaemonListener *)self setQueue:v13];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)stop:(id)a3
{
  v7 = a3;
  _WLLog();
  [(WLDaemonListener *)self cancel:self];
  v4 = [NSValue valueWithPointer:v7];
  v5 = self->_migrators;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_migrators objectForKey:v4];
  [(NSMutableDictionary *)self->_migrators removeObjectForKey:v4];
  objc_sync_exit(v5);

  [v6 connectionDidEnd];
  [(WLDaemonListener *)self stopWiFiAndDeviceDiscovery:0];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:@"com.apple.matd.client"];
  if (v8 && ([&__kCFBooleanTrue isEqual:v8] & 1) != 0)
  {
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100001A38;
    v14[3] = &unk_1000082B8;
    objc_copyWeak(&v16, &location);
    v9 = v7;
    v15 = v9;
    v10 = objc_retainBlock(v14);
    v11 = WLDaemonExportedInterface();
    [v9 setExportedInterface:v11];

    [v9 setExportedObject:self];
    [v9 setInterruptionHandler:v10];
    [v9 setInvalidationHandler:v10];
    [v9 resume];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    v12 = 1;
  }

  else
  {
    _WLLog();
    v12 = 0;
  }

  return v12;
}

- (void)startWiFiAndDeviceDiscovery:(id)a3
{
  v4 = a3;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100001C54;
  v16[4] = sub_100001C64;
  v17 = os_transaction_create();
  objc_initWeak(&location, self);
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100001C6C;
  v11 = &unk_100008308;
  objc_copyWeak(&v14, &location);
  v5 = v4;
  v12 = v5;
  v13 = v16;
  v6 = objc_retainBlock(&v8);
  v7 = self;
  objc_sync_enter(v7);
  if (v7->_code)
  {
    _WLLog();
    dispatch_async(v7->_xpcEventQueue, v6);
  }

  else
  {
    _WLLog();
    [(WLDaemonListener *)v7 setPairingBlock:v6, v8, v9, v10, v11];
  }

  objc_sync_exit(v7);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(v16, 8);
}

- (void)stopDeviceDiscovery:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_100001C54;
  v10[4] = sub_100001C64;
  v11 = os_transaction_create();
  xpcEventQueue = self->_xpcEventQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001F58;
  v7[3] = &unk_100008358;
  v8 = v4;
  v9 = v10;
  v6 = v4;
  dispatch_async(xpcEventQueue, v7);

  _Block_object_dispose(v10, 8);
}

- (void)stopWiFiAndDeviceDiscovery:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_100001C54;
  v10[4] = sub_100001C64;
  v11 = os_transaction_create();
  xpcEventQueue = self->_xpcEventQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002158;
  v7[3] = &unk_100008358;
  v8 = v4;
  v9 = v10;
  v6 = v4;
  dispatch_async(xpcEventQueue, v7);

  _Block_object_dispose(v10, 8);
}

- (void)sourceDeviceWithReply:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_100001C54;
  v10[4] = sub_100001C64;
  v11 = os_transaction_create();
  xpcEventQueue = self->_xpcEventQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002358;
  v7[3] = &unk_100008358;
  v8 = v4;
  v9 = v10;
  v6 = v4;
  dispatch_async(xpcEventQueue, v7);

  _Block_object_dispose(v10, 8);
}

- (void)getLocalImportOptions:(id)a3
{
  v4 = a3;
  xpcEventQueue = self->_xpcEventQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000247C;
  block[3] = &unk_100008380;
  v8 = v4;
  v6 = v4;
  dispatch_async(xpcEventQueue, block);
}

- (void)setStashDataLocally:(BOOL)a3
{
  xpcEventQueue = self->_xpcEventQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000025D8;
  block[3] = &unk_1000083E0;
  v5 = a3;
  dispatch_async(xpcEventQueue, block);
}

- (void)attemptDirectConnectionToAddress:(id)a3
{
  v4 = a3;
  xpcEventQueue = self->_xpcEventQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002684;
  block[3] = &unk_100008408;
  v8 = v4;
  v6 = v4;
  dispatch_async(xpcEventQueue, block);
}

- (void)startMigrationUsingRetryPolicies:(BOOL)a3 delegate:(id)a4 useMigrationKit:(BOOL)a5 replyBlock:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  if (v7)
  {
    [(WLDaemonListener *)self run:v10];
    if (v11)
    {
      (*(v11 + 2))(v11, 0, 0);
    }
  }

  else
  {
    v12 = +[NSXPCConnection currentConnection];
    v13 = [NSValue valueWithPointer:v12];
    v14 = +[WLDeviceDiscoveryController sharedInstance];
    v15 = [v14 sourceDevice];

    v16 = objc_alloc_init(WLMigrator);
    v17 = self->_migrators;
    objc_sync_enter(v17);
    [(NSMutableDictionary *)self->_migrators setObject:v16 forKey:v13];
    objc_sync_exit(v17);

    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = sub_100001C54;
    v27[4] = sub_100001C64;
    v28 = os_transaction_create();
    xpcEventQueue = self->_xpcEventQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002948;
    block[3] = &unk_100008458;
    v19 = v16;
    v22 = v19;
    v20 = v15;
    v23 = v20;
    v26 = a3;
    v24 = v10;
    v25 = v27;
    dispatch_async(xpcEventQueue, block);
    if (v11)
    {
      (*(v11 + 2))(v11, v19, 0);
    }

    _Block_object_dispose(v27, 8);
  }
}

- (void)_buddyDidFinish
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_100001C54;
  v6[4] = sub_100001C64;
  v7 = os_transaction_create();
  v3 = dispatch_time(0, 2000000000);
  xpcEventQueue = self->_xpcEventQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002B24;
  block[3] = &unk_100008430;
  block[4] = v6;
  dispatch_after(v3, xpcEventQueue, block);
  _Block_object_dispose(v6, 8);
}

- (void)deleteMessages
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = sub_100001C54;
  v5[4] = sub_100001C64;
  v6 = os_transaction_create();
  xpcEventQueue = self->_xpcEventQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CF8;
  block[3] = &unk_100008430;
  block[4] = v5;
  dispatch_async(xpcEventQueue, block);
  _Block_object_dispose(v5, 8);
}

- (void)run:(id)a3
{
  v4 = a3;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_100001C54;
  v12[4] = sub_100001C64;
  v13 = os_transaction_create();
  objc_initWeak(&location, self);
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002EA8;
  v7[3] = &unk_100008480;
  objc_copyWeak(&v10, &location);
  v8 = v4;
  v9 = v12;
  v6 = v4;
  dispatch_async(queue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  _Block_object_dispose(v12, 8);
}

- (void)_run:(id)a3 transaction:(id)a4
{
  v6 = a4;
  v7 = a3;
  _WLLog();
  [(MKAPIServerDaemon *)self->_server setDelegate:0, self];
  [(MKAPIServerDaemon *)self->_server cancel];
  [(WLDaemonListener *)self setDelegate:v7];

  v8 = objc_alloc_init(MKAPIServerDaemon);
  [(WLDaemonListener *)self setServer:v8];

  [(MKAPIServerDaemon *)self->_server setDelegate:self];
  [(MKAPIServerDaemon *)self->_server setTransaction:v6];

  server = self->_server;

  [(MKAPIServerDaemon *)server run];
}

- (void)cancel
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000307C;
  v4[3] = &unk_1000084A8;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_cancel
{
  _WLLog();
  v3 = self;
  objc_sync_enter(v3);
  [(WLDaemonListener *)v3 setCode:0, self];
  [(WLDaemonListener *)v3 setPairingBlock:0];
  objc_sync_exit(v3);

  server = v3->_server;

  [(MKAPIServerDaemon *)server cancel];
}

- (void)lookupAppDataContainer:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v5 = [[MKPlaceholder alloc] initWithTestBundleIdentifier];
    v4 = [v5 container];
    v3[2](v3, v4);
  }
}

- (void)server:(id)a3 didCreateCode:(id)a4
{
  v8 = a3;
  v6 = a4;
  _WLLog();
  v7 = self;
  objc_sync_enter(v7);
  [(WLDaemonListener *)v7 setCode:v6, self, v6];
  if (v7->_pairingBlock)
  {
    _WLLog();
    dispatch_async(v7->_xpcEventQueue, v7->_pairingBlock);
  }

  objc_sync_exit(v7);

  [(WLDataMigrationDelegate *)v7->_delegate daemon:0 didCreateCode:v6];
}

- (void)server:(id)a3 didReceiveClient:(id)a4
{
  v5 = a4;
  v10 = self;
  _WLLog();
  delegate = self->_delegate;
  v11 = [v5 hostname];
  v7 = [v5 brand];
  v8 = [v5 model];
  v9 = [v5 name];

  [(WLDataMigrationDelegate *)delegate daemon:0 didReceiveClient:v11 brand:v7 model:v8 name:v9];
}

- (void)serverDidAuthenticateClient:(id)a3
{
  _WLLog();
  delegate = self->_delegate;

  [(WLDataMigrationDelegate *)delegate daemonDidAuthenticateClient:0];
}

- (void)serverDidRejectClient:(id)a3
{
  _WLLog();
  delegate = self->_delegate;

  [(WLDataMigrationDelegate *)delegate daemonDidRejectClient:0];
}

- (void)server:(id)a3 didUpdateProgress:(float)a4 remainingTime:(unint64_t)a5 completedOperationCount:(unint64_t)a6 totalOperationCount:(unint64_t)a7
{
  _WLLog();
  delegate = self->_delegate;
  *&v13 = a4;

  [(WLDataMigrationDelegate *)delegate daemon:0 didUpdateProgress:a5 remainingTime:a6 completedOperationCount:a7 totalOperationCount:v13];
}

- (void)serverWillImport:(id)a3
{
  _WLLog();
  delegate = self->_delegate;

  [(WLDataMigrationDelegate *)delegate daemonWillImport:0];
}

- (void)server:(id)a3 didImportWithContext:(id)a4
{
  v5 = a4;
  v7 = self;
  _WLLog();
  delegate = self->_delegate;
  v8 = [WLDaemonContext context:v5, v7, v5];

  [(WLDataMigrationDelegate *)delegate daemon:0 didImportWithContext:v8];
}

- (void)server:(id)a3 didChangeState:(int64_t)a4 withContext:(id)a5
{
  v7 = a5;
  v9 = self;
  _WLLog();
  delegate = self->_delegate;
  v10 = [WLDaemonContext context:v7, v9, a4];

  [(WLDataMigrationDelegate *)delegate daemon:0 didChangeState:a4 withContext:v10];
}

@end