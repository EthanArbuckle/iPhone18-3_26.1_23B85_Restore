@interface Daemon
+ (id)daemon;
- (AMSBagValue)changeLanguageURL;
- (AMSBagValue)trustedDomains;
- (Daemon)init;
- (id)addObserverForBackgroundTaskWithIdentifierPrefix:(id)a3 withBlock:(id)a4;
- (id)cachedObjectForKey:(id)a3;
- (void)_expireCachedObjectForKey:(id)a3;
- (void)_finishProtectionClassCMigrationIfNeeded;
- (void)_getShowingDialogWithMessage:(id)a3 connection:(id)a4;
- (void)_handleWakeWithName:(const char *)a3 job:(id)a4;
- (void)_initBackgroundTaskAgent;
- (void)_networkUsageStateChangeNotification:(id)a3;
- (void)_observeNotifications;
- (void)_operationCountChanged:(id)a3;
- (void)_reloadOperationKeepAliveTransaction;
- (void)_reloadWiFiManager;
- (void)_setGlobalState;
- (void)addBackgroundTaskWithRequest:(id)a3;
- (void)addKeepAliveOperationQueue:(id)a3;
- (void)batterySaverWatcherDidChangeState:(id)a3;
- (void)beginShowingDialog;
- (void)cacheObject:(id)a3 withKey:(id)a4 expirationInterval:(double)a5;
- (void)cancelBackgroundTaskWithIdentifier:(id)a3;
- (void)dealloc;
- (void)endShowingDialog;
- (void)keepAliveWithAssertion:(id)a3 block:(id)a4;
- (void)releaseKeepAliveAssertion:(id)a3;
- (void)removeBackgroundTaskObserver:(id)a3;
- (void)removeCachedObjectForKey:(id)a3;
- (void)removeKeepAliveOperationQueue:(id)a3;
- (void)start;
- (void)takeKeepAliveAssertion:(id)a3;
@end

@implementation Daemon

+ (id)daemon
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CD9F8;
  block[3] = &unk_100327378;
  block[4] = a1;
  if (qword_100384088 != -1)
  {
    dispatch_once(&qword_100384088, block);
  }

  return qword_100384080;
}

- (void)_reloadOperationKeepAliveTransaction
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  keepAliveOperationQueues = self->_keepAliveOperationQueues;
  v4 = [(NSMutableSet *)keepAliveOperationQueues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(keepAliveOperationQueues);
        }

        if ([*(*(&v8 + 1) + 8 * i) operationCount] > 0)
        {
          if (!self->_aliveForOperationQueues)
          {
            self->_aliveForOperationQueues = 1;
            [(Daemon *)self takeKeepAliveAssertion:@"com.apple.itunesstored.keepQueuesAlive"];
          }

          return;
        }
      }

      v5 = [(NSMutableSet *)keepAliveOperationQueues countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if (self->_aliveForOperationQueues)
  {
    self->_aliveForOperationQueues = 0;
    [(Daemon *)self releaseKeepAliveAssertion:@"com.apple.itunesstored.keepQueuesAlive"];
  }
}

- (void)_reloadWiFiManager
{
  if ([+[ISNetworkObserver isUsingNetwork] sharedInstance]
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = +[WiFiManager sharedWiFiManager];

  [v3 setClientType:v2];
}

- (Daemon)init
{
  v22.receiver = self;
  v22.super_class = Daemon;
  v2 = [(Daemon *)&v22 init];
  v3 = v2;
  if (v2)
  {
    [(Daemon *)v2 _warmUpSharedURLCache];
    v3->_backgroundTaskObservers = objc_alloc_init(NSMutableDictionary);
    v3->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.Daemon", 0);
    v3->_keepAliveTransactions = objc_alloc_init(NSCountedSet);
    v3->_keepAliveTransactionStore = objc_opt_new();
    v3->_satisfiedWakeRequests = xpc_dictionary_create(0, 0, 0);
    v4 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v4 addObserver:v3 selector:"_networkUsageStateChangeNotification:" name:ISNetworkUsageStateChangedNotification object:0];
    v5 = +[ISOperationQueue mainQueue];
    [(NSNotificationCenter *)v4 addObserver:v3 selector:"_operationCountChanged:" name:ISOperationQueueOperationCountChangedNotification object:v5];
    v3->_keepAliveOperationQueues = [[NSMutableSet alloc] initWithObjects:{v5, 0}];
    dispatchQueue = v3->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001CD760;
    block[3] = &unk_100327378;
    block[4] = v3;
    dispatch_async(dispatchQueue, block);
    v7 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v3->_dispatchQueue);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1001CD768;
    handler[3] = &unk_100327378;
    handler[4] = v3;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(v7);
    v8 = +[NSFileManager defaultManager];
    v25[0] = CPSharedResourcesDirectory();
    v25[1] = @"Library";
    v25[2] = @"Caches";
    v25[3] = @"com.apple.storeServices.watchAnalytics";
    v9 = [NSString pathWithComponents:[NSArray arrayWithObjects:v25 count:4]];
    if ([(NSFileManager *)v8 fileExistsAtPath:v9])
    {
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

      if (os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 2;
      }

      if (v13)
      {
        v23 = 138543362;
        v24 = v9;
        LODWORD(v19) = 12;
        v18 = &v23;
        v14 = _os_log_send_and_compose_impl();
        if (v14)
        {
          v15 = v14;
          v16 = [NSString stringWithCString:v14 encoding:4, &v23, v19];
          free(v15);
          v18 = v16;
          SSFileLog();
        }
      }

      [(NSFileManager *)v8 removeItemAtPath:v9 error:0, v18];
    }
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:self name:SSAccountStoreChangedNotification object:0];
  [(NSNotificationCenter *)v3 removeObserver:self name:ISNetworkUsageStateChangedNotification object:0];
  [(NSNotificationCenter *)v3 removeObserver:self name:ISOperationQueueOperationCountChangedNotification object:0];
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  satisfiedWakeRequests = self->_satisfiedWakeRequests;
  if (satisfiedWakeRequests)
  {
    xpc_release(satisfiedWakeRequests);
  }

  jetsamSource = self->_jetsamSource;
  if (jetsamSource)
  {
    dispatch_source_cancel(jetsamSource);
    dispatch_release(self->_jetsamSource);
  }

  sigTermSource = self->_sigTermSource;
  if (sigTermSource)
  {
    dispatch_source_cancel(sigTermSource);
    dispatch_release(self->_sigTermSource);
  }

  v8.receiver = self;
  v8.super_class = Daemon;
  [(Daemon *)&v8 dealloc];
}

- (void)addBackgroundTaskWithRequest:(id)a3
{
  v5 = [a3 requestIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 UTF8String];
    v8 = [a3 copyBackgroundTaskAgentJob];
    if (v8)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1001CDC6C;
      handler[3] = &unk_10032BA20;
      handler[4] = self;
      handler[5] = v6;
      handler[6] = v8;
      xpc_activity_register(v7, v8, handler);
      v9 = +[SSLogConfig sharedConfig];
      v10 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = v10 | 2;
      }

      else
      {
        v11 = v10;
      }

      if (os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 2;
      }

      if (v12)
      {
        v21 = 138543362;
        v22 = v6;
        LODWORD(v19) = 12;
        goto LABEL_19;
      }
    }

    else
    {
      v13 = +[SSLogConfig sharedConfig];
      v14 = [v13 shouldLog];
      if ([v13 shouldLogToDisk])
      {
        v15 = v14 | 2;
      }

      else
      {
        v15 = v14;
      }

      if (os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 2;
      }

      if (v16)
      {
        v21 = 138543362;
        v22 = v6;
        LODWORD(v19) = 12;
LABEL_19:
        v17 = _os_log_send_and_compose_impl();
        if (v17)
        {
          v18 = v17;
          [NSString stringWithCString:v17 encoding:4, &v21, v19];
          free(v18);
          SSFileLog();
        }
      }
    }
  }
}

- (void)addKeepAliveOperationQueue:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001CDD5C;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (id)addObserverForBackgroundTaskWithIdentifierPrefix:(id)a3 withBlock:(id)a4
{
  v6 = [a4 copy];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CDE80;
  block[3] = &unk_10032AF90;
  block[4] = self;
  block[5] = a3;
  block[6] = v6;
  dispatch_sync(dispatchQueue, block);
  return v6;
}

- (void)beginShowingDialog
{
  notify_post([kITunesDaemonWillDisplayDialog UTF8String]);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CE1CC;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)cachedObjectForKey:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_1001CE2D4;
  v11 = sub_1001CE2E4;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CE2F0;
  block[3] = &unk_10032AF40;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)cacheObject:(id)a3 withKey:(id)a4 expirationInterval:(double)a5
{
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001CE3AC;
  v6[3] = &unk_10032BA98;
  v6[4] = a3;
  v6[5] = self;
  v6[6] = a4;
  *&v6[7] = a5;
  dispatch_async(dispatchQueue, v6);
}

- (void)cancelBackgroundTaskWithIdentifier:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001CE5FC;
  v4[3] = &unk_100327350;
  v4[4] = a3;
  v4[5] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)endShowingDialog
{
  notify_post([kITunesDaemonDidDismissDialog UTF8String]);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CE7EC;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)keepAliveWithAssertion:(id)a3 block:(id)a4
{
  [(Daemon *)self takeKeepAliveAssertion:?];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CE8A0;
  block[3] = &unk_100327408;
  block[5] = a3;
  block[6] = a4;
  block[4] = self;
  dispatch_async(global_queue, block);
}

- (void)takeKeepAliveAssertion:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001CE988;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)releaseKeepAliveAssertion:(id)a3
{
  v5 = dispatch_time(0, 15000000000);
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001CEAB8;
  v7[3] = &unk_100327350;
  v7[4] = self;
  v7[5] = a3;
  dispatch_after(v5, dispatchQueue, v7);
}

- (void)removeBackgroundTaskObserver:(id)a3
{
  if (a3)
  {
    dispatchQueue = self->_dispatchQueue;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1001CEBA8;
    v4[3] = &unk_100327350;
    v4[4] = self;
    v4[5] = a3;
    dispatch_async(dispatchQueue, v4);
  }
}

- (void)removeCachedObjectForKey:(id)a3
{
  if (a3)
  {
    dispatchQueue = self->_dispatchQueue;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1001CED24;
    v4[3] = &unk_100327350;
    v4[4] = self;
    v4[5] = a3;
    dispatch_async(dispatchQueue, v4);
  }
}

- (void)removeKeepAliveOperationQueue:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001CEDA4;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)start
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

  if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v43 = 138412802;
    v44 = objc_opt_class();
    v45 = 2080;
    v46 = "Oct 22 2025";
    v47 = 2080;
    v48 = "21:33:20";
    LODWORD(v36) = 32;
    v34 = &v43;
    v6 = _os_log_send_and_compose_impl();
    if (v6)
    {
      v7 = v6;
      v8 = [NSString stringWithCString:v6 encoding:4, &v43, v36];
      free(v7);
      v34 = v8;
      SSFileLog();
    }
  }

  xpc_track_activity();
  [(Daemon *)self _finishProtectionClassCMigrationIfNeeded];
  [(Daemon *)self _setGlobalState];
  [(Daemon *)self _initBackgroundTaskAgent];
  [(Daemon *)self _observeNotifications];
  +[UserNotificationManager sharedManager];
  v9 = +[SSXPCServer mainServer];
  v10 = +[DownloadController controller];
  [v10 observeXPCServer:v9];
  v11 = +[MicroPaymentQueue paymentQueue];
  [v11 observeXPCServer:v9];
  [AccountPasswordSettingsController observeXPCServer:v9];
  [AppReceiptController observeXPCServer:v9];
  [DaemonBiometricKeychain observeXPCServer:v9];
  [DaemonBiometricStore observeXPCServer:v9];
  [DirectUploadController observeXPCServer:v9];
  [DistributedNotificationCenter observeXPCServer:v9];
  [ErrorHandlerManager observeXPCServer:v9];
  [EventDispatcher observeXPCServer:v9];
  [KeyValueStore observeXPCServer:v9];
  [IPodLibrary observeXPCServer:v9];
  [+[MetricsController sharedInstance](MetricsController observeXPCServer:"observeXPCServer:", v9];
  [PurchaseController observeXPCServer:v9];
  [PurchaseManifest observeXPCServer:v9];
  [+[PushNotificationController sharedInstance](PushNotificationController observeXPCServer:"observeXPCServer:", v9];
  [SoftwareUpdatesStore observeXPCServer:v9];
  [SpringBoardUtility observeXPCServer:v9];
  [StoreDownloadQueue observeXPCServer:v9];
  [StorePreorderQueue observeXPCServer:v9];
  [+[StoreServicesRequestQueue sharedInstance](StoreServicesRequestQueue observeXPCServer:"observeXPCServer:", v9];
  [NetworkRequestQueue observeXPCServer:v9];
  [v9 addObserver:self selector:"_getShowingDialogWithMessage:connection:" forMessage:131];
  v12 = +[SSLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  v13 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v14 &= 2u;
  }

  if (v14)
  {
    v15 = objc_opt_class();
    v43 = 138412290;
    v44 = v15;
    LODWORD(v36) = 12;
    v35 = &v43;
    v16 = _os_log_send_and_compose_impl();
    if (v16)
    {
      v17 = v16;
      v18 = [NSString stringWithCString:v16 encoding:4, &v43, v36];
      free(v17);
      v35 = v18;
      SSFileLog();
    }
  }

  [v9 start];
  [(Daemon *)self takeKeepAliveAssertion:@"com.apple.itunesstored.launch"];
  v19 = dispatch_time(0, 10000000000);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CF548;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_after(v19, dispatchQueue, block);
  [v10 start];
  [v11 start];
  [+[PurchaseController sharedController](PurchaseController "sharedController")];
  [+[AppReceiptController sharedController](AppReceiptController "sharedController")];
  [+[DirectUploadController sharedController](DirectUploadController "sharedController")];
  [+[CacheDeleteCoordinator sharedInstance](CacheDeleteCoordinator updatePurgeableStorage];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  bagTimers = self->_bagTimers;
  v22 = [(NSMutableArray *)bagTimers countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v38;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(bagTimers);
        }

        [*(*(&v37 + 1) + 8 * i) start];
      }

      v23 = [(NSMutableArray *)bagTimers countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v23);
  }

  +[ExplicitPreferenceManager sharedManager];
  v26 = [[BatterySaverWatcher alloc] initWithDelegate:self];
  self->_batterySaverWatcher = v26;
  [(Daemon *)self batterySaverWatcherDidChangeState:v26];
  +[PurchaseActionsManager registerInstallAttributionDatabaseCleanTask];
  +[PurchaseActionsManager registerInstallAttributionPingbackRetryTask];
  -[NSUserDefaults registerDefaults:](+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), "registerDefaults:", +[NSDictionary dictionaryWithContentsOfURL:](NSDictionary, "dictionaryWithContentsOfURL:", [+[NSBundle mainBundle](NSBundle URLForResource:"URLForResource:withExtension:" withExtension:@"Defaults", @"plist"]));
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kSSDaemonLaunchedNotification, 0, 0, 1u);
  v28 = +[SSLogConfig sharedDaemonConfig];
  if (!v28)
  {
    v28 = +[SSLogConfig sharedConfig];
  }

  v29 = [v28 shouldLog];
  if ([v28 shouldLogToDisk])
  {
    v30 = v29 | 2;
  }

  else
  {
    v30 = v29;
  }

  if (!os_log_type_enabled([v28 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v30 &= 2u;
  }

  if (v30)
  {
    v31 = objc_opt_class();
    v43 = 138412290;
    v44 = v31;
    LODWORD(v36) = 12;
    v32 = _os_log_send_and_compose_impl();
    if (v32)
    {
      v33 = v32;
      [NSString stringWithCString:v32 encoding:4, &v43, v36];
      free(v33);
      SSFileLog();
    }
  }
}

- (AMSBagValue)changeLanguageURL
{
  v2 = objc_alloc_init(ISLoadURLBagOperation);
  v3 = objc_alloc_init(AMSBinaryPromise);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001CF7D8;
  v17[3] = &unk_100327378;
  v17[4] = v3;
  [v2 setCompletionBlock:v17];
  v4 = +[ISOperationQueue mainQueue];
  v22 = v2;
  [v4 addOperations:+[NSArray arrayWithObjects:count:](NSArray waitUntilFinished:{"arrayWithObjects:count:", &v22, 1), 1}];
  v16 = 0;
  if ([v3 resultWithTimeout:&v16 error:60.0])
  {
    return +[AMSBagValue frozenBagValueWithKey:value:valueType:](AMSBagValue, "frozenBagValueWithKey:value:valueType:", @"change-language", [objc_msgSend(v2 "URLBag")], 5);
  }

  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = AMSLogableError();
    v18 = 138543618;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    LODWORD(v15) = 22;
    v14 = &v18;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      v13 = [NSString stringWithCString:v11 encoding:4, &v18, v15];
      free(v12);
      v14 = v13;
      SSFileLog();
    }
  }

  return [AMSBagValue failingBagValueWithKey:@"change-language" valueType:5 error:v16, v14];
}

- (AMSBagValue)trustedDomains
{
  v2 = objc_alloc_init(ISLoadURLBagOperation);
  v3 = objc_alloc_init(AMSBinaryPromise);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001CFA60;
  v17[3] = &unk_100327378;
  v17[4] = v3;
  [v2 setCompletionBlock:v17];
  v4 = +[ISOperationQueue mainQueue];
  v22 = v2;
  [v4 addOperations:+[NSArray arrayWithObjects:count:](NSArray waitUntilFinished:{"arrayWithObjects:count:", &v22, 1), 1}];
  v16 = 0;
  if ([v3 resultWithTimeout:&v16 error:60.0])
  {
    return +[AMSBagValue frozenBagValueWithKey:value:valueType:](AMSBagValue, "frozenBagValueWithKey:value:valueType:", @"trustedDomains", [objc_msgSend(v2 "URLBag")], 0);
  }

  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = AMSLogableError();
    v18 = 138543618;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    LODWORD(v15) = 22;
    v14 = &v18;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      v13 = [NSString stringWithCString:v11 encoding:4, &v18, v15];
      free(v12);
      v14 = v13;
      SSFileLog();
    }
  }

  return [AMSBagValue failingBagValueWithKey:@"trustedDomains" valueType:0 error:v16, v14];
}

- (void)batterySaverWatcherDidChangeState:(id)a3
{
  v3 = [a3 batterySaverEnabled];
  v4 = +[SSLogConfig sharedDaemonConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v18 = 138412290;
      v19 = objc_opt_class();
      LODWORD(v17) = 12;
      v16 = &v18;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [NSString stringWithCString:v8 encoding:4, &v18, v17];
        free(v9);
        v16 = v10;
        SSFileLog();
      }
    }

    [+[StoreDownloadQueue sharedDownloadQueue](StoreDownloadQueue sharedDownloadQueue];
  }

  else
  {
    if (!v4)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v11 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v18 = 138412290;
      v19 = objc_opt_class();
      LODWORD(v17) = 12;
      v16 = &v18;
      v13 = _os_log_send_and_compose_impl();
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4, &v18, v17];
        free(v14);
        v16 = v15;
        SSFileLog();
      }
    }

    [+[StoreDownloadQueue sharedDownloadQueue](StoreDownloadQueue sharedDownloadQueue];
  }
}

- (void)_getShowingDialogWithMessage:(id)a3 connection:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CFD58;
  block[3] = &unk_1003273E0;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  dispatch_async(dispatchQueue, block);
}

- (void)_networkUsageStateChangeNotification:(id)a3
{
  if ([+[ISNetworkObserver isUsingNetwork:a3]])
  {

    [(Daemon *)self _reloadWiFiManager];
  }

  else
  {
    v4 = dispatch_time(0, 5000000000);
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001CFE88;
    block[3] = &unk_100327378;
    block[4] = self;
    dispatch_after(v4, dispatchQueue, block);
  }
}

- (void)_operationCountChanged:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CFF04;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_expireCachedObjectForKey:(id)a3
{
  v5 = [(NSMutableDictionary *)self->_cachedObjects objectForKey:?];
  if (v5)
  {
    [v5 setExpirationTimer:0];
    cachedObjects = self->_cachedObjects;

    [(NSMutableDictionary *)cachedObjects removeObjectForKey:a3];
  }
}

- (void)_handleWakeWithName:(const char *)a3 job:(id)a4
{
  v7 = [[NSString alloc] initWithUTF8String:a3];
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

  if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v30 = 138412546;
    v31 = objc_opt_class();
    v32 = 2080;
    v33 = a3;
    LODWORD(v22) = 22;
    v21 = &v30;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      v13 = [NSString stringWithCString:v11 encoding:4, &v30, v22];
      free(v12);
      v21 = v13;
      SSFileLog();
    }
  }

  v14 = objc_alloc_init(NSMutableSet);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  backgroundTaskObservers = self->_backgroundTaskObservers;
  v16 = [(NSMutableDictionary *)backgroundTaskObservers countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(backgroundTaskObservers);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        if ([v7 hasPrefix:{v20, v21}])
        {
          [v14 unionSet:{-[NSMutableDictionary objectForKey:](self->_backgroundTaskObservers, "objectForKey:", v20)}];
        }
      }

      v17 = [(NSMutableDictionary *)backgroundTaskObservers countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  if ([v14 count])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D023C;
    block[3] = &unk_10032AE90;
    block[4] = v14;
    block[5] = v7;
    block[6] = a4;
    v24 = dispatch_queue_create("com.apple.itunesstored.Daemon.observers", 0);
    dispatch_async(v24, block);
  }

  xpc_dictionary_set_value(self->_satisfiedWakeRequests, a3, a4);
}

- (void)_initBackgroundTaskAgent
{
  self->_bagTimers = objc_alloc_init(NSMutableArray);
  v3 = +[URLBagTimer subscriptionRenewTimer];
  [v3 setEventBlock:&stru_10032BAB8];
  [v3 setPreconditionsBlock:&stru_10032BAF8];
  bagTimers = self->_bagTimers;

  [(NSMutableArray *)bagTimers addObject:v3];
}

- (void)_finishProtectionClassCMigrationIfNeeded
{
  if (!+[ISFileProtectionClassMigrator isMigrationNeeded])
  {
    return;
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    goto LABEL_3;
  }

  out_token = -1;
  dispatchQueue = self->_dispatchQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001D091C;
  handler[3] = &unk_10032BB40;
  v18 = -1;
  v8 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, dispatchQueue, handler);
  if (!v8)
  {
    if (MKBDeviceUnlockedSinceBoot() != 1)
    {
      return;
    }

LABEL_3:
    if ((+[ISFileProtectionClassMigrator migrate]& 1) == 0)
    {
      v3 = +[SSLogConfig sharedDaemonConfig];
      if (!v3)
      {
        v3 = +[SSLogConfig sharedConfig];
      }

      v4 = [v3 shouldLog];
      v5 = [v3 shouldLogToDisk] ? v4 | 2 : v4;
      if (os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_ERROR) ? v5 : v5 & 2)
      {
        LOWORD(v20[0]) = 0;
        LODWORD(v16) = 2;
        goto LABEL_25;
      }
    }

    return;
  }

  v9 = v8;
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

  if (os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 & 2;
  }

  if (v13)
  {
    v20[0] = 67109120;
    v20[1] = v9;
    LODWORD(v16) = 8;
LABEL_25:
    v14 = _os_log_send_and_compose_impl();
    if (v14)
    {
      v15 = v14;
      [NSString stringWithCString:v14 encoding:4, v20, v16];
      free(v15);
      SSFileLog();
    }
  }
}

- (void)_observeNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = off_100383668();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1001D0BF4, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v5 addObserverForName:SSDeviceStoreFrontChangedNotification object:0 queue:0 usingBlock:&stru_10032BB80];
  [(NSNotificationCenter *)v5 addObserverForName:SSAccountStoreChangedNotification object:0 queue:0 usingBlock:&stru_10032BBA0];
  v6 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 2uLL, 0);
  self->_jetsamSource = v6;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001D15B8;
  handler[3] = &unk_100327378;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  dispatch_resume(self->_jetsamSource);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1001D1734, @"AppleLanguagePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", &_dispatch_main_q, &stru_10032BBC0);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_10032BBE0);
  xpc_set_event_stream_handler(kNSURLSessionLaunchOnDemandNotificationName, &_dispatch_main_q, &stru_10032BC00);
}

- (void)_setGlobalState
{
  SSSetIsDaemon();
  [SSSQLiteDatabase _setTakesTaskCompletionAssertions:0];
  v3 = objc_alloc_init(SSLogFileOptions);
  [v3 setLogFileBaseName:@"itunesstored"];
  [v3 setLogDirectoryPath:{objc_msgSend(objc_msgSend(objc_msgSend(CPSharedResourcesDirectory(), "stringByAppendingPathComponent:", @"Library", "stringByAppendingPathComponent:", @"Logs", "stringByAppendingPathComponent:", @"com.apple.itunesstored"}];
  SSDebugSetFileLoggingOptions();

  v4 = [+[ISDevice sharedInstance](ISDevice copyProtocolConditionalContext];
  [SSProtocolConditionalEvaluator setDefaultConditionalContext:v4];

  +[ISNetworkObserver sharedInstance];

  [(Daemon *)self _reloadWiFiManager];
}

@end