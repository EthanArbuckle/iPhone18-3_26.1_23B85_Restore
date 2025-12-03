@interface WLDaemonListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_buddyDidFinish;
- (void)_cancel;
- (void)_run:(id)_run transaction:(id)transaction;
- (void)attemptDirectConnectionToAddress:(id)address;
- (void)cancel;
- (void)deleteMessages;
- (void)getLocalImportOptions:(id)options;
- (void)lookupAppDataContainer:(id)container;
- (void)run:(id)run;
- (void)server:(id)server didChangeState:(int64_t)state withContext:(id)context;
- (void)server:(id)server didCreateCode:(id)code;
- (void)server:(id)server didImportWithContext:(id)context;
- (void)server:(id)server didReceiveClient:(id)client;
- (void)server:(id)server didUpdateProgress:(float)progress remainingTime:(unint64_t)time completedOperationCount:(unint64_t)count totalOperationCount:(unint64_t)operationCount;
- (void)serverDidAuthenticateClient:(id)client;
- (void)serverDidRejectClient:(id)client;
- (void)serverWillImport:(id)import;
- (void)setStashDataLocally:(BOOL)locally;
- (void)sourceDeviceWithReply:(id)reply;
- (void)start;
- (void)startMigrationUsingRetryPolicies:(BOOL)policies delegate:(id)delegate useMigrationKit:(BOOL)kit replyBlock:(id)block;
- (void)startWiFiAndDeviceDiscovery:(id)discovery;
- (void)stop:(id)stop;
- (void)stopDeviceDiscovery:(id)discovery;
- (void)stopWiFiAndDeviceDiscovery:(id)discovery;
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

- (void)stop:(id)stop
{
  stopCopy = stop;
  _WLLog();
  [(WLDaemonListener *)self cancel:self];
  v4 = [NSValue valueWithPointer:stopCopy];
  v5 = self->_migrators;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_migrators objectForKey:v4];
  [(NSMutableDictionary *)self->_migrators removeObjectForKey:v4];
  objc_sync_exit(v5);

  [v6 connectionDidEnd];
  [(WLDaemonListener *)self stopWiFiAndDeviceDiscovery:0];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.matd.client"];
  if (v8 && ([&__kCFBooleanTrue isEqual:v8] & 1) != 0)
  {
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100001A38;
    v14[3] = &unk_1000082B8;
    objc_copyWeak(&v16, &location);
    v9 = connectionCopy;
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

- (void)startWiFiAndDeviceDiscovery:(id)discovery
{
  discoveryCopy = discovery;
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
  v5 = discoveryCopy;
  v12 = v5;
  v13 = v16;
  v6 = objc_retainBlock(&v8);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_code)
  {
    _WLLog();
    dispatch_async(selfCopy->_xpcEventQueue, v6);
  }

  else
  {
    _WLLog();
    [(WLDaemonListener *)selfCopy setPairingBlock:v6, v8, v9, v10, v11];
  }

  objc_sync_exit(selfCopy);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(v16, 8);
}

- (void)stopDeviceDiscovery:(id)discovery
{
  discoveryCopy = discovery;
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
  v8 = discoveryCopy;
  v9 = v10;
  v6 = discoveryCopy;
  dispatch_async(xpcEventQueue, v7);

  _Block_object_dispose(v10, 8);
}

- (void)stopWiFiAndDeviceDiscovery:(id)discovery
{
  discoveryCopy = discovery;
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
  v8 = discoveryCopy;
  v9 = v10;
  v6 = discoveryCopy;
  dispatch_async(xpcEventQueue, v7);

  _Block_object_dispose(v10, 8);
}

- (void)sourceDeviceWithReply:(id)reply
{
  replyCopy = reply;
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
  v8 = replyCopy;
  v9 = v10;
  v6 = replyCopy;
  dispatch_async(xpcEventQueue, v7);

  _Block_object_dispose(v10, 8);
}

- (void)getLocalImportOptions:(id)options
{
  optionsCopy = options;
  xpcEventQueue = self->_xpcEventQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000247C;
  block[3] = &unk_100008380;
  v8 = optionsCopy;
  v6 = optionsCopy;
  dispatch_async(xpcEventQueue, block);
}

- (void)setStashDataLocally:(BOOL)locally
{
  xpcEventQueue = self->_xpcEventQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000025D8;
  block[3] = &unk_1000083E0;
  locallyCopy = locally;
  dispatch_async(xpcEventQueue, block);
}

- (void)attemptDirectConnectionToAddress:(id)address
{
  addressCopy = address;
  xpcEventQueue = self->_xpcEventQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002684;
  block[3] = &unk_100008408;
  v8 = addressCopy;
  v6 = addressCopy;
  dispatch_async(xpcEventQueue, block);
}

- (void)startMigrationUsingRetryPolicies:(BOOL)policies delegate:(id)delegate useMigrationKit:(BOOL)kit replyBlock:(id)block
{
  kitCopy = kit;
  delegateCopy = delegate;
  blockCopy = block;
  if (kitCopy)
  {
    [(WLDaemonListener *)self run:delegateCopy];
    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0, 0);
    }
  }

  else
  {
    v12 = +[NSXPCConnection currentConnection];
    v13 = [NSValue valueWithPointer:v12];
    v14 = +[WLDeviceDiscoveryController sharedInstance];
    sourceDevice = [v14 sourceDevice];

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
    v20 = sourceDevice;
    v23 = v20;
    policiesCopy = policies;
    v24 = delegateCopy;
    v25 = v27;
    dispatch_async(xpcEventQueue, block);
    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, v19, 0);
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

- (void)run:(id)run
{
  runCopy = run;
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
  v8 = runCopy;
  v9 = v12;
  v6 = runCopy;
  dispatch_async(queue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  _Block_object_dispose(v12, 8);
}

- (void)_run:(id)_run transaction:(id)transaction
{
  transactionCopy = transaction;
  _runCopy = _run;
  _WLLog();
  [(MKAPIServerDaemon *)self->_server setDelegate:0, self];
  [(MKAPIServerDaemon *)self->_server cancel];
  [(WLDaemonListener *)self setDelegate:_runCopy];

  v8 = objc_alloc_init(MKAPIServerDaemon);
  [(WLDaemonListener *)self setServer:v8];

  [(MKAPIServerDaemon *)self->_server setDelegate:self];
  [(MKAPIServerDaemon *)self->_server setTransaction:transactionCopy];

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(WLDaemonListener *)selfCopy setCode:0, self];
  [(WLDaemonListener *)selfCopy setPairingBlock:0];
  objc_sync_exit(selfCopy);

  server = selfCopy->_server;

  [(MKAPIServerDaemon *)server cancel];
}

- (void)lookupAppDataContainer:(id)container
{
  if (container)
  {
    containerCopy = container;
    initWithTestBundleIdentifier = [[MKPlaceholder alloc] initWithTestBundleIdentifier];
    container = [initWithTestBundleIdentifier container];
    containerCopy[2](containerCopy, container);
  }
}

- (void)server:(id)server didCreateCode:(id)code
{
  serverCopy = server;
  codeCopy = code;
  _WLLog();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(WLDaemonListener *)selfCopy setCode:codeCopy, self, codeCopy];
  if (selfCopy->_pairingBlock)
  {
    _WLLog();
    dispatch_async(selfCopy->_xpcEventQueue, selfCopy->_pairingBlock);
  }

  objc_sync_exit(selfCopy);

  [(WLDataMigrationDelegate *)selfCopy->_delegate daemon:0 didCreateCode:codeCopy];
}

- (void)server:(id)server didReceiveClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  _WLLog();
  delegate = self->_delegate;
  hostname = [clientCopy hostname];
  brand = [clientCopy brand];
  model = [clientCopy model];
  name = [clientCopy name];

  [(WLDataMigrationDelegate *)delegate daemon:0 didReceiveClient:hostname brand:brand model:model name:name];
}

- (void)serverDidAuthenticateClient:(id)client
{
  _WLLog();
  delegate = self->_delegate;

  [(WLDataMigrationDelegate *)delegate daemonDidAuthenticateClient:0];
}

- (void)serverDidRejectClient:(id)client
{
  _WLLog();
  delegate = self->_delegate;

  [(WLDataMigrationDelegate *)delegate daemonDidRejectClient:0];
}

- (void)server:(id)server didUpdateProgress:(float)progress remainingTime:(unint64_t)time completedOperationCount:(unint64_t)count totalOperationCount:(unint64_t)operationCount
{
  _WLLog();
  delegate = self->_delegate;
  *&v13 = progress;

  [(WLDataMigrationDelegate *)delegate daemon:0 didUpdateProgress:time remainingTime:count completedOperationCount:operationCount totalOperationCount:v13];
}

- (void)serverWillImport:(id)import
{
  _WLLog();
  delegate = self->_delegate;

  [(WLDataMigrationDelegate *)delegate daemonWillImport:0];
}

- (void)server:(id)server didImportWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  _WLLog();
  delegate = self->_delegate;
  contextCopy = [WLDaemonContext context:contextCopy, selfCopy, contextCopy];

  [(WLDataMigrationDelegate *)delegate daemon:0 didImportWithContext:contextCopy];
}

- (void)server:(id)server didChangeState:(int64_t)state withContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  _WLLog();
  delegate = self->_delegate;
  state = [WLDaemonContext context:contextCopy, selfCopy, state];

  [(WLDataMigrationDelegate *)delegate daemon:0 didChangeState:state withContext:state];
}

@end