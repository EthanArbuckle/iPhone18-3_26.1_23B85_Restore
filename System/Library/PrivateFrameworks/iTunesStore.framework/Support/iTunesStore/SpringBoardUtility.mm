@interface SpringBoardUtility
+ (id)sharedInstance;
+ (void)_sendUnentitledResponseToMessage:(id)message connection:(id)connection;
+ (void)dequeueAlertWithMessage:(id)message connection:(id)connection;
+ (void)observeXPCServer:(id)server;
+ (void)registerPluginConnectionWithMessage:(id)message connection:(id)connection;
+ (void)restartApplicationWithMessage:(id)message connection:(id)connection;
+ (void)testBadgingWithMessage:(id)message connection:(id)connection;
+ (void)testLockscreenAccountSheetWithMessage:(id)message connection:(id)connection;
+ (void)testPluginAlertWithMessage:(id)message connection:(id)connection;
- (BOOL)_getProcessID:(int *)d forApplicationIdentifier:(id)identifier;
- (BOOL)isScreenLocked;
- (BOOL)launchApplicationWithIdentifier:(id)identifier options:(id)options error:(id *)error;
- (NSString)frontmostClientIdentifier;
- (SpringBoardUtility)init;
- (id)_applicationStateMonitor;
- (id)_getApplicationInfoForIdentifier:(id)identifier key:(id)key;
- (id)copyBundleInfoValueForKey:(id)key PID:(int)d;
- (unsigned)applicationStateForIdentifier:(id)identifier;
- (unsigned)mostElevatedApplicationStateForPID:(int)d;
- (void)_dequeueAlertWithMessage:(id)message connection:(id)connection;
- (void)_disconnectPluginConnection:(id)connection;
- (void)_fireDeferredPluginBlocksWithConnection:(id)connection;
- (void)_registerPluginConnectionWithMessage:(id)message;
- (void)_requestPluginConnectionWithCompletionBlock:(id)block;
- (void)_setApplicationState:(unsigned int)state forClientID:(id)d;
- (void)_setApplicationStatesWithDictionary:(id)dictionary;
- (void)_timeoutPluginConnection;
- (void)activateAlertWithDescription:(id)description options:(id)options completionBlock:(id)block;
- (void)beginGeneratingStateChangeNotificationsForIdentifiers:(id)identifiers;
- (void)beginGeneratingStateChangeNotificationsWithCompletionBlock:(id)block;
- (void)dealloc;
- (void)endGeneratingStateChangeNotifications;
- (void)endGeneratingStateChangeNotificationsForIdentifiers:(id)identifiers;
- (void)removeDefaultPNGSnapshotsForIdentifier:(id)identifier;
- (void)resetEnabledRemoteNotificationTypes;
- (void)sendPluginMessage:(id)message;
- (void)sendPluginMessage:(id)message withReplyBlock:(id)block;
- (void)setBadgeValue:(id)value forIdentifier:(id)identifier;
- (void)wakeAppUsingRequest:(id)request;
@end

@implementation SpringBoardUtility

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B7CD4;
  block[3] = &unk_100327170;
  block[4] = self;
  if (qword_100384068 != -1)
  {
    dispatch_once(&qword_100384068, block);
  }

  v2 = qword_100384060;

  return v2;
}

- (id)_applicationStateMonitor
{
  applicationStateMonitor = self->_applicationStateMonitor;
  if (!applicationStateMonitor)
  {
    objc_initWeak(&location, self);
    v4 = [[BKSApplicationStateMonitor alloc] initWithBundleIDs:0 states:0];
    v5 = self->_applicationStateMonitor;
    self->_applicationStateMonitor = v4;

    v6 = self->_applicationStateMonitor;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100002674;
    v8[3] = &unk_10032B3C8;
    objc_copyWeak(&v9, &location);
    [(BKSApplicationStateMonitor *)v6 setHandler:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    applicationStateMonitor = self->_applicationStateMonitor;
  }

  return applicationStateMonitor;
}

- (SpringBoardUtility)init
{
  v12.receiver = self;
  v12.super_class = SpringBoardUtility;
  v2 = [(SpringBoardUtility *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunesstore.SpringBoardUtility", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = dispatch_queue_create("com.apple.itunesstore.SpringBoardUtility.springboard", 0);
    springBoardQueue = v2->_springBoardQueue;
    v2->_springBoardQueue = v5;

    v7 = dispatch_queue_create("com.apple.itunesstore.notifications", 0);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v7;

    v9 = v2->_notificationQueue;
    v10 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v9, v10);
  }

  return v2;
}

- (void)dealloc
{
  [(BKSApplicationStateMonitor *)self->_applicationStateMonitor setHandler:0];
  [(BKSApplicationStateMonitor *)self->_applicationStateMonitor invalidate];
  pluginConnectionTimeout = self->_pluginConnectionTimeout;
  if (pluginConnectionTimeout)
  {
    dispatch_source_cancel(pluginConnectionTimeout);
  }

  [(SSXPCConnection *)self->_pluginConnection setDisconnectBlock:0];
  v4.receiver = self;
  v4.super_class = SpringBoardUtility;
  [(SpringBoardUtility *)&v4 dealloc];
}

- (void)activateAlertWithDescription:(id)description options:(id)options completionBlock:(id)block
{
  descriptionCopy = description;
  optionsCopy = options;
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001B7E00;
  v15[3] = &unk_10032B1E8;
  v15[4] = self;
  v16 = optionsCopy;
  v17 = descriptionCopy;
  v18 = blockCopy;
  v12 = descriptionCopy;
  v13 = optionsCopy;
  v14 = blockCopy;
  dispatch_async(dispatchQueue, v15);
}

- (unsigned)applicationStateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B83B8;
  block[3] = &unk_10032B210;
  block[4] = self;
  v9 = identifierCopy;
  v10 = &v11;
  v6 = identifierCopy;
  dispatch_sync(dispatchQueue, block);
  LODWORD(dispatchQueue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return dispatchQueue;
}

- (void)beginGeneratingStateChangeNotificationsWithCompletionBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B85B0;
  v7[3] = &unk_1003271C0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)beginGeneratingStateChangeNotificationsForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B8938;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_async(dispatchQueue, v7);
}

- (id)copyBundleInfoValueForKey:(id)key PID:(int)d
{
  keyCopy = key;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1001B8CE0;
  v23 = sub_1001B8CF0;
  v24 = 0;
  springBoardQueue = self->_springBoardQueue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1001B8CF8;
  v14 = &unk_10032B288;
  selfCopy = self;
  v17 = &v19;
  v8 = keyCopy;
  v16 = v8;
  dCopy = d;
  dispatch_sync(springBoardQueue, &v11);
  v9 = [v20[5] copy];

  _Block_object_dispose(&v19, 8);
  return v9;
}

- (void)endGeneratingStateChangeNotifications
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B8DDC;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)endGeneratingStateChangeNotificationsForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B8FCC;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_async(dispatchQueue, v7);
}

- (NSString)frontmostClientIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1001B8CE0;
  v10 = sub_1001B8CF0;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B93E0;
  v5[3] = &unk_1003290E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isScreenLocked
{
  SBSSpringBoardServerPort();
  SBGetScreenLockStatus();
  return 0;
}

- (BOOL)launchApplicationWithIdentifier:(id)identifier options:(id)options error:(id *)error
{
  identifierCopy = identifier;
  optionsCopy = options;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1001B8CE0;
  v28 = sub_1001B8CF0;
  v29 = 0;
  v9 = dispatch_semaphore_create(0);
  v10 = +[FBSSystemService sharedService];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1001B96F4;
  v21 = &unk_10032B2D8;
  v23 = &v24;
  v11 = v9;
  v22 = v11;
  [v10 openApplication:identifierCopy options:optionsCopy withResult:&v18];

  v12 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v11, v12);
  domain = [v25[5] domain];
  v14 = [domain isEqualToString:FBSOpenApplicationErrorDomain];

  code = v25[5];
  if (v14)
  {
    code = [code code];
  }

  v16 = code == 0;
  if (error && code)
  {
    *error = v25[5];
  }

  _Block_object_dispose(&v24, 8);
  return v16;
}

- (unsigned)mostElevatedApplicationStateForPID:(int)d
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  springBoardQueue = self->_springBoardQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B9804;
  block[3] = &unk_10032B300;
  block[4] = self;
  block[5] = &v8;
  dCopy = d;
  dispatch_sync(springBoardQueue, block);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

- (void)removeDefaultPNGSnapshotsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([identifierCopy isEqualToString:@"com.apple.MobileStore"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.AppStore"))
  {
    path = CPSharedResourcesDirectory();
    if (!path)
    {
      goto LABEL_20;
    }

LABEL_6:
    v8 = [[NSArray alloc] initWithObjects:{path, @"Library", @"Caches", @"Snapshots", identifierCopy, 0}];
    v9 = [NSString pathWithComponents:v8];
    if (!v9)
    {
LABEL_19:

      goto LABEL_20;
    }

    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = shouldLog | 2;
    }

    else
    {
      v12 = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v18 = 138412546;
      v19 = objc_opt_class();
      v20 = 2112;
      v21 = v9;
      v14 = v19;
      LODWORD(v17) = 22;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_18:

        v16 = objc_alloc_init(NSFileManager);
        [v16 removeItemAtPath:v9 error:0];

        goto LABEL_19;
      }

      oSLogObject = [NSString stringWithCString:v15 encoding:4, &v18, v17];
      free(v15);
      SSFileLog();
    }

    goto LABEL_18;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [LSApplicationProxy applicationProxyForIdentifier:identifierCopy];
  bundleContainerURL = [v6 bundleContainerURL];
  path = [bundleContainerURL path];

  objc_autoreleasePoolPop(v5);
  if (path)
  {
    goto LABEL_6;
  }

LABEL_20:
}

- (void)resetEnabledRemoteNotificationTypes
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B9B84;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (void)setBadgeValue:(id)value forIdentifier:(id)identifier
{
  valueCopy = value;
  identifierCopy = identifier;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_alloc_init(NSNumberFormatter);
      [v8 setNumberStyle:1];
      v7 = [v8 stringFromNumber:valueCopy];

      goto LABEL_17;
    }

    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      *v18 = 138412802;
      *&v18[4] = objc_opt_class();
      *&v18[12] = 2112;
      *&v18[14] = identifierCopy;
      *&v18[22] = 2112;
      v19 = valueCopy;
      v13 = *&v18[4];
      LODWORD(v17) = 32;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_16:

        v7 = 0;
        goto LABEL_17;
      }

      oSLogObject = [NSString stringWithCString:v14 encoding:4, v18, v17, *v18, *&v18[16], v19];
      free(v14);
      SSFileLog();
    }

    goto LABEL_16;
  }

  v7 = valueCopy;
LABEL_17:
  v15 = objc_alloc_init(ISSetApplicationBadgeOperation);
  [v15 setBadgeValue:v7];
  [v15 setBundleIdentifier:identifierCopy];
  v16 = +[ISOperationQueue mainQueue];
  [v16 addOperation:v15];
}

- (void)wakeAppUsingRequest:(id)request
{
  requestCopy = request;
  v5 = +[Daemon daemon];
  [v5 takeKeepAliveAssertion:@"AppWakeup"];
  springBoardQueue = self->_springBoardQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B9EF0;
  block[3] = &unk_1003281A0;
  v10 = requestCopy;
  selfCopy = self;
  v12 = v5;
  v7 = v5;
  v8 = requestCopy;
  dispatch_async(springBoardQueue, block);
}

- (void)_dequeueAlertWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BA8F8;
  block[3] = &unk_1003281A0;
  v12 = messageCopy;
  selfCopy = self;
  v14 = connectionCopy;
  v9 = connectionCopy;
  v10 = messageCopy;
  dispatch_async(dispatchQueue, block);
}

+ (void)dequeueAlertWithMessage:(id)message connection:(id)connection
{
  original = message;
  connectionCopy = connection;
  if (SSXPCConnectionHasEntitlement())
  {
    reply = [self sharedInstance];
    [reply _dequeueAlertWithMessage:original connection:connectionCopy];
  }

  else
  {
    reply = xpc_dictionary_create_reply(original);
    xpc_connection_send_message(connectionCopy, reply);
  }
}

+ (void)observeXPCServer:(id)server
{
  serverCopy = server;
  [serverCopy addObserver:self selector:"dequeueAlertWithMessage:connection:" forMessage:142];
  [serverCopy addObserver:self selector:"registerPluginConnectionWithMessage:connection:" forMessage:2000];
  [serverCopy addObserver:self selector:"testBadgingWithMessage:connection:" forMessage:752];
  [serverCopy addObserver:self selector:"testLockscreenAccountSheetWithMessage:connection:" forMessage:750];
  [serverCopy addObserver:self selector:"testPluginAlertWithMessage:connection:" forMessage:751];
  [serverCopy addObserver:self selector:"restartApplicationWithMessage:connection:" forMessage:165];
}

+ (void)restartApplicationWithMessage:(id)message connection:(id)connection
{
  original = message;
  connectionCopy = connection;
  v7 = [[XPCClient alloc] initWithInputConnection:connectionCopy];
  if ([self _hasEntitlements:connectionCopy])
  {
    clientIdentifier = [(XPCClient *)v7 clientIdentifier];
    v9 = objc_alloc_init(BKSSystemService);
    [v9 terminateApplication:clientIdentifier forReason:5 andReport:0 withDescription:0];
    [v9 openApplication:clientIdentifier options:0 withResult:0];
    reply = xpc_dictionary_create_reply(original);
    xpc_connection_send_message(connectionCopy, reply);
  }

  else
  {
    [self _sendUnentitledResponseToMessage:original connection:connectionCopy];
  }
}

+ (void)registerPluginConnectionWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  sharedInstance = [self sharedInstance];
  [sharedInstance _registerPluginConnectionWithMessage:messageCopy];
}

+ (void)testBadgingWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  objc_opt_class();
  v6 = SSXPCDictionaryCopyObjectWithClass();
  objc_opt_class();
  v7 = SSXPCDictionaryCopyObjectWithClass();

  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [v8 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  *v16 = 138412802;
  *&v16[4] = objc_opt_class();
  *&v16[12] = 2112;
  *&v16[14] = v6;
  *&v16[22] = 2112;
  v17 = v7;
  v12 = *&v16[4];
  LODWORD(v15) = 32;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    oSLogObject = [NSString stringWithCString:v13 encoding:4, v16, v15, *v16, *&v16[16], v17];
    free(v13);
    SSFileLog();
LABEL_11:
  }

  sharedInstance = [self sharedInstance];
  [sharedInstance setBadgeValue:v7 forIdentifier:v6];
}

+ (void)testLockscreenAccountSheetWithMessage:(id)message connection:(id)connection
{
  v6 = SSXPCCreateMessageDictionary();
  sharedInstance = [self sharedInstance];
  [sharedInstance sendPluginMessage:v6];
}

+ (void)testPluginAlertWithMessage:(id)message connection:(id)connection
{
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:@"ServiceTouchIDAlertViewController" forKey:SBSUIRemoteAlertOptionViewControllerClass];
  v5 = objc_alloc_init(SSDialog);
  [v5 setMessage:@"account@example.com"];
  [v5 setTitle:@"Touch ID"];
  v6 = [SSDialogButton buttonWithTitle:@"Use Password"];
  v11[0] = v6;
  v7 = [SSDialogButton buttonWithTitle:@"Cancel"];
  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  [v5 setButtons:v8];

  v9 = +[SpringBoardUtility sharedInstance];
  dialogDictionary = [v5 dialogDictionary];
  [v9 activateAlertWithDescription:v4 options:dialogDictionary completionBlock:0];
}

- (void)sendPluginMessage:(id)message
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001BB290;
  v5[3] = &unk_10032B350;
  messageCopy = message;
  v4 = messageCopy;
  [(SpringBoardUtility *)self _requestPluginConnectionWithCompletionBlock:v5];
}

- (void)sendPluginMessage:(id)message withReplyBlock:(id)block
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001BB35C;
  v8[3] = &unk_10032B3A0;
  messageCopy = message;
  blockCopy = block;
  v6 = messageCopy;
  v7 = blockCopy;
  [(SpringBoardUtility *)self _requestPluginConnectionWithCompletionBlock:v8];
}

- (void)_disconnectPluginConnection:(id)connection
{
  connectionCopy = connection;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BB514;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_fireDeferredPluginBlocksWithConnection:(id)connection
{
  connectionCopy = connection;
  pluginConnectionTimeout = self->_pluginConnectionTimeout;
  if (pluginConnectionTimeout)
  {
    dispatch_source_cancel(pluginConnectionTimeout);
    v6 = self->_pluginConnectionTimeout;
    self->_pluginConnectionTimeout = 0;
  }

  v7 = [(NSMutableArray *)self->_pluginDeferredBlocks copy];
  [(NSMutableArray *)self->_pluginDeferredBlocks removeAllObjects];
  notificationQueue = self->_notificationQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001BB7BC;
  v11[3] = &unk_100327238;
  v12 = v7;
  v13 = connectionCopy;
  v9 = connectionCopy;
  v10 = v7;
  dispatch_async(notificationQueue, v11);
}

- (id)_getApplicationInfoForIdentifier:(id)identifier key:(id)key
{
  identifierCopy = identifier;
  keyCopy = key;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1001B8CE0;
  v23 = sub_1001B8CF0;
  v24 = 0;
  _applicationStateMonitor = [(SpringBoardUtility *)self _applicationStateMonitor];
  v9 = dispatch_semaphore_create(0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001BBA60;
  v15[3] = &unk_10032B3F0;
  v18 = &v19;
  v10 = keyCopy;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  [_applicationStateMonitor applicationInfoForApplication:identifierCopy completion:v15];
  v12 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v11, v12);
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v13;
}

- (BOOL)_getProcessID:(int *)d forApplicationIdentifier:(id)identifier
{
  v5 = [(SpringBoardUtility *)self _getApplicationInfoForIdentifier:identifier key:BKSApplicationStateProcessIDKey];
  v6 = objc_opt_respondsToSelector();
  v7 = v6;
  if (d && (v6 & 1) != 0)
  {
    *d = [v5 intValue];
  }

  return v7 & 1;
}

- (void)_registerPluginConnectionWithMessage:(id)message
{
  messageCopy = message;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BBC0C;
  v7[3] = &unk_100327238;
  v8 = messageCopy;
  selfCopy = self;
  v6 = messageCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_requestPluginConnectionWithCompletionBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BC024;
  v7[3] = &unk_1003271C0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(dispatchQueue, v7);
}

+ (void)_sendUnentitledResponseToMessage:(id)message connection:(id)connection
{
  connectionCopy = connection;
  messageCopy = message;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  LODWORD(v16) = 138412290;
  *(&v16 + 4) = objc_opt_class();
  v11 = *(&v16 + 4);
  LODWORD(v15) = 12;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4, &v16, v15, v16];
    free(v12);
    SSFileLog();
LABEL_11:
  }

  reply = xpc_dictionary_create_reply(messageCopy);
  v14 = SSError();
  SSXPCDictionarySetCFObject();
  SSXPCDictionarySetCFObject();
  xpc_connection_send_message(connectionCopy, reply);
}

- (void)_setApplicationState:(unsigned int)state forClientID:(id)d
{
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BC6B0;
  block[3] = &unk_10032B418;
  stateCopy = state;
  block[4] = self;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_setApplicationStatesWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BC8CC;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_timeoutPluginConnection
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = objc_opt_class();
  pluginConnection = self->_pluginConnection;
  *v12 = 138412546;
  *&v12[4] = v7;
  *&v12[12] = 2112;
  *&v12[14] = pluginConnection;
  v9 = v7;
  LODWORD(v11) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    oSLogObject = [NSString stringWithCString:v10 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v10);
    SSFileLog();
LABEL_11:
  }

  [(SpringBoardUtility *)self _fireDeferredPluginBlocksWithConnection:self->_pluginConnection];
}

@end