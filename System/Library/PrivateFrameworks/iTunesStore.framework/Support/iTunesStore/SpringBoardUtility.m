@interface SpringBoardUtility
+ (id)sharedInstance;
+ (void)_sendUnentitledResponseToMessage:(id)a3 connection:(id)a4;
+ (void)dequeueAlertWithMessage:(id)a3 connection:(id)a4;
+ (void)observeXPCServer:(id)a3;
+ (void)registerPluginConnectionWithMessage:(id)a3 connection:(id)a4;
+ (void)restartApplicationWithMessage:(id)a3 connection:(id)a4;
+ (void)testBadgingWithMessage:(id)a3 connection:(id)a4;
+ (void)testLockscreenAccountSheetWithMessage:(id)a3 connection:(id)a4;
+ (void)testPluginAlertWithMessage:(id)a3 connection:(id)a4;
- (BOOL)_getProcessID:(int *)a3 forApplicationIdentifier:(id)a4;
- (BOOL)isScreenLocked;
- (BOOL)launchApplicationWithIdentifier:(id)a3 options:(id)a4 error:(id *)a5;
- (NSString)frontmostClientIdentifier;
- (SpringBoardUtility)init;
- (id)_applicationStateMonitor;
- (id)_getApplicationInfoForIdentifier:(id)a3 key:(id)a4;
- (id)copyBundleInfoValueForKey:(id)a3 PID:(int)a4;
- (unsigned)applicationStateForIdentifier:(id)a3;
- (unsigned)mostElevatedApplicationStateForPID:(int)a3;
- (void)_dequeueAlertWithMessage:(id)a3 connection:(id)a4;
- (void)_disconnectPluginConnection:(id)a3;
- (void)_fireDeferredPluginBlocksWithConnection:(id)a3;
- (void)_registerPluginConnectionWithMessage:(id)a3;
- (void)_requestPluginConnectionWithCompletionBlock:(id)a3;
- (void)_setApplicationState:(unsigned int)a3 forClientID:(id)a4;
- (void)_setApplicationStatesWithDictionary:(id)a3;
- (void)_timeoutPluginConnection;
- (void)activateAlertWithDescription:(id)a3 options:(id)a4 completionBlock:(id)a5;
- (void)beginGeneratingStateChangeNotificationsForIdentifiers:(id)a3;
- (void)beginGeneratingStateChangeNotificationsWithCompletionBlock:(id)a3;
- (void)dealloc;
- (void)endGeneratingStateChangeNotifications;
- (void)endGeneratingStateChangeNotificationsForIdentifiers:(id)a3;
- (void)removeDefaultPNGSnapshotsForIdentifier:(id)a3;
- (void)resetEnabledRemoteNotificationTypes;
- (void)sendPluginMessage:(id)a3;
- (void)sendPluginMessage:(id)a3 withReplyBlock:(id)a4;
- (void)setBadgeValue:(id)a3 forIdentifier:(id)a4;
- (void)wakeAppUsingRequest:(id)a3;
@end

@implementation SpringBoardUtility

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B7CD4;
  block[3] = &unk_100327170;
  block[4] = a1;
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

- (void)activateAlertWithDescription:(id)a3 options:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001B7E00;
  v15[3] = &unk_10032B1E8;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(dispatchQueue, v15);
}

- (unsigned)applicationStateForIdentifier:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(dispatchQueue, block);
  LODWORD(dispatchQueue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return dispatchQueue;
}

- (void)beginGeneratingStateChangeNotificationsWithCompletionBlock:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B85B0;
  v7[3] = &unk_1003271C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)beginGeneratingStateChangeNotificationsForIdentifiers:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B8938;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (id)copyBundleInfoValueForKey:(id)a3 PID:(int)a4
{
  v6 = a3;
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
  v15 = self;
  v17 = &v19;
  v8 = v6;
  v16 = v8;
  v18 = a4;
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

- (void)endGeneratingStateChangeNotificationsForIdentifiers:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B8FCC;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (BOOL)launchApplicationWithIdentifier:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
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
  [v10 openApplication:v7 options:v8 withResult:&v18];

  v12 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v11, v12);
  v13 = [v25[5] domain];
  v14 = [v13 isEqualToString:FBSOpenApplicationErrorDomain];

  v15 = v25[5];
  if (v14)
  {
    v15 = [v15 code];
  }

  v16 = v15 == 0;
  if (a5 && v15)
  {
    *a5 = v25[5];
  }

  _Block_object_dispose(&v24, 8);
  return v16;
}

- (unsigned)mostElevatedApplicationStateForPID:(int)a3
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
  v7 = a3;
  dispatch_sync(springBoardQueue, block);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

- (void)removeDefaultPNGSnapshotsForIdentifier:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"com.apple.MobileStore"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"com.apple.AppStore"))
  {
    v4 = CPSharedResourcesDirectory();
    if (!v4)
    {
      goto LABEL_20;
    }

LABEL_6:
    v8 = [[NSArray alloc] initWithObjects:{v4, @"Library", @"Caches", @"Snapshots", v3, 0}];
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

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
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

      v13 = [NSString stringWithCString:v15 encoding:4, &v18, v17];
      free(v15);
      SSFileLog();
    }

    goto LABEL_18;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [LSApplicationProxy applicationProxyForIdentifier:v3];
  v7 = [v6 bundleContainerURL];
  v4 = [v7 path];

  objc_autoreleasePoolPop(v5);
  if (v4)
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

- (void)setBadgeValue:(id)a3 forIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_alloc_init(NSNumberFormatter);
      [v8 setNumberStyle:1];
      v7 = [v8 stringFromNumber:v5];

      goto LABEL_17;
    }

    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      *v18 = 138412802;
      *&v18[4] = objc_opt_class();
      *&v18[12] = 2112;
      *&v18[14] = v6;
      *&v18[22] = 2112;
      v19 = v5;
      v13 = *&v18[4];
      LODWORD(v17) = 32;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_16:

        v7 = 0;
        goto LABEL_17;
      }

      v12 = [NSString stringWithCString:v14 encoding:4, v18, v17, *v18, *&v18[16], v19];
      free(v14);
      SSFileLog();
    }

    goto LABEL_16;
  }

  v7 = v5;
LABEL_17:
  v15 = objc_alloc_init(ISSetApplicationBadgeOperation);
  [v15 setBadgeValue:v7];
  [v15 setBundleIdentifier:v6];
  v16 = +[ISOperationQueue mainQueue];
  [v16 addOperation:v15];
}

- (void)wakeAppUsingRequest:(id)a3
{
  v4 = a3;
  v5 = +[Daemon daemon];
  [v5 takeKeepAliveAssertion:@"AppWakeup"];
  springBoardQueue = self->_springBoardQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B9EF0;
  block[3] = &unk_1003281A0;
  v10 = v4;
  v11 = self;
  v12 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(springBoardQueue, block);
}

- (void)_dequeueAlertWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BA8F8;
  block[3] = &unk_1003281A0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

+ (void)dequeueAlertWithMessage:(id)a3 connection:(id)a4
{
  original = a3;
  v6 = a4;
  if (SSXPCConnectionHasEntitlement())
  {
    reply = [a1 sharedInstance];
    [reply _dequeueAlertWithMessage:original connection:v6];
  }

  else
  {
    reply = xpc_dictionary_create_reply(original);
    xpc_connection_send_message(v6, reply);
  }
}

+ (void)observeXPCServer:(id)a3
{
  v4 = a3;
  [v4 addObserver:a1 selector:"dequeueAlertWithMessage:connection:" forMessage:142];
  [v4 addObserver:a1 selector:"registerPluginConnectionWithMessage:connection:" forMessage:2000];
  [v4 addObserver:a1 selector:"testBadgingWithMessage:connection:" forMessage:752];
  [v4 addObserver:a1 selector:"testLockscreenAccountSheetWithMessage:connection:" forMessage:750];
  [v4 addObserver:a1 selector:"testPluginAlertWithMessage:connection:" forMessage:751];
  [v4 addObserver:a1 selector:"restartApplicationWithMessage:connection:" forMessage:165];
}

+ (void)restartApplicationWithMessage:(id)a3 connection:(id)a4
{
  original = a3;
  v6 = a4;
  v7 = [[XPCClient alloc] initWithInputConnection:v6];
  if ([a1 _hasEntitlements:v6])
  {
    v8 = [(XPCClient *)v7 clientIdentifier];
    v9 = objc_alloc_init(BKSSystemService);
    [v9 terminateApplication:v8 forReason:5 andReport:0 withDescription:0];
    [v9 openApplication:v8 options:0 withResult:0];
    reply = xpc_dictionary_create_reply(original);
    xpc_connection_send_message(v6, reply);
  }

  else
  {
    [a1 _sendUnentitledResponseToMessage:original connection:v6];
  }
}

+ (void)registerPluginConnectionWithMessage:(id)a3 connection:(id)a4
{
  v5 = a3;
  v6 = [a1 sharedInstance];
  [v6 _registerPluginConnectionWithMessage:v5];
}

+ (void)testBadgingWithMessage:(id)a3 connection:(id)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = SSXPCDictionaryCopyObjectWithClass();
  objc_opt_class();
  v7 = SSXPCDictionaryCopyObjectWithClass();

  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
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
    v11 = [NSString stringWithCString:v13 encoding:4, v16, v15, *v16, *&v16[16], v17];
    free(v13);
    SSFileLog();
LABEL_11:
  }

  v14 = [a1 sharedInstance];
  [v14 setBadgeValue:v7 forIdentifier:v6];
}

+ (void)testLockscreenAccountSheetWithMessage:(id)a3 connection:(id)a4
{
  v6 = SSXPCCreateMessageDictionary();
  v5 = [a1 sharedInstance];
  [v5 sendPluginMessage:v6];
}

+ (void)testPluginAlertWithMessage:(id)a3 connection:(id)a4
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
  v10 = [v5 dialogDictionary];
  [v9 activateAlertWithDescription:v4 options:v10 completionBlock:0];
}

- (void)sendPluginMessage:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001BB290;
  v5[3] = &unk_10032B350;
  v6 = a3;
  v4 = v6;
  [(SpringBoardUtility *)self _requestPluginConnectionWithCompletionBlock:v5];
}

- (void)sendPluginMessage:(id)a3 withReplyBlock:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001BB35C;
  v8[3] = &unk_10032B3A0;
  v9 = a3;
  v10 = a4;
  v6 = v9;
  v7 = v10;
  [(SpringBoardUtility *)self _requestPluginConnectionWithCompletionBlock:v8];
}

- (void)_disconnectPluginConnection:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BB514;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_fireDeferredPluginBlocksWithConnection:(id)a3
{
  v4 = a3;
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
  v13 = v4;
  v9 = v4;
  v10 = v7;
  dispatch_async(notificationQueue, v11);
}

- (id)_getApplicationInfoForIdentifier:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1001B8CE0;
  v23 = sub_1001B8CF0;
  v24 = 0;
  v8 = [(SpringBoardUtility *)self _applicationStateMonitor];
  v9 = dispatch_semaphore_create(0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001BBA60;
  v15[3] = &unk_10032B3F0;
  v18 = &v19;
  v10 = v7;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  [v8 applicationInfoForApplication:v6 completion:v15];
  v12 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v11, v12);
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v13;
}

- (BOOL)_getProcessID:(int *)a3 forApplicationIdentifier:(id)a4
{
  v5 = [(SpringBoardUtility *)self _getApplicationInfoForIdentifier:a4 key:BKSApplicationStateProcessIDKey];
  v6 = objc_opt_respondsToSelector();
  v7 = v6;
  if (a3 && (v6 & 1) != 0)
  {
    *a3 = [v5 intValue];
  }

  return v7 & 1;
}

- (void)_registerPluginConnectionWithMessage:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BBC0C;
  v7[3] = &unk_100327238;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_requestPluginConnectionWithCompletionBlock:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BC024;
  v7[3] = &unk_1003271C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

+ (void)_sendUnentitledResponseToMessage:(id)a3 connection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
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
    v10 = [NSString stringWithCString:v12 encoding:4, &v16, v15, v16];
    free(v12);
    SSFileLog();
LABEL_11:
  }

  reply = xpc_dictionary_create_reply(v6);
  v14 = SSError();
  SSXPCDictionarySetCFObject();
  SSXPCDictionarySetCFObject();
  xpc_connection_send_message(v5, reply);
}

- (void)_setApplicationState:(unsigned int)a3 forClientID:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BC6B0;
  block[3] = &unk_10032B418;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_setApplicationStatesWithDictionary:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BC8CC;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_timeoutPluginConnection
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
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
    v6 = [NSString stringWithCString:v10 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v10);
    SSFileLog();
LABEL_11:
  }

  [(SpringBoardUtility *)self _fireDeferredPluginBlocksWithConnection:self->_pluginConnection];
}

@end