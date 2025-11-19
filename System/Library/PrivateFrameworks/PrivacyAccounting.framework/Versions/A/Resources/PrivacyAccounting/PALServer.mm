@interface PALServer
- (BOOL)canPruneEventsForConnection:(id)a3 withError:(id *)a4;
- (BOOL)canWriteEvent:(id)a3 forConnection:(id)a4 withError:(id *)a5;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)logAccess:(id)a3 error:(id *)a4;
- (BOOL)preflight;
- (BOOL)runPreflightTask:(int64_t)a3 error:(id *)a4;
- (NSArray)allStreams;
- (PALServer)initWithListener:(id)a3 maxStoreSize:(unint64_t)a4;
- (PALServer)initWithListener:(id)a3 paths:(id)a4 settings:(id)a5 maxStoreSize:(unint64_t)a6;
- (PALServerDelegate)delegate;
- (double)finalizeAllIncompleteAccessIntervalsSince:(double)a3;
- (id)publisherForAllSince:(double)a3;
- (id)streamFor:(Class)a3;
- (void)_pruneEventsMatchingPredicate:(id)a3 withCancellationToken:(id)a4 completion:(id)a5;
- (void)addSession:(id)a3;
- (void)applicationDidUninstall:(id)a3;
- (void)dealloc;
- (void)disableLogging;
- (void)enableLogging;
- (void)exportToFileHandle:(id)a3 completion:(id)a4;
- (void)gatherAndSendDailyAnalyticsWithCancellationToken:(id)a3 completion:(id)a4;
- (void)observeAppUninstallsWithAppUninstallObserver:(id)a3;
- (void)process:(id)a3 didUpdateFromPreviousState:(id)a4 toState:(id)a5;
- (void)pruneEventsFromAccessor:(id)a3 withCancellationToken:(id)a4 completion:(id)a5;
- (void)pruneEventsFromStartTime:(double)a3 toEndTime:(double)a4 withCancellationToken:(id)a5 completion:(id)a6;
- (void)removeSession:(id)a3;
- (void)updateProcessMonitorConfiguration;
@end

@implementation PALServer

- (BOOL)preflight
{
  v3 = os_transaction_create();
  if (self->_didRunPreflightTasks)
  {
    v4 = 1;
  }

  else
  {
    if ([(PALServer *)self isDeviceUnlocked])
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Device unlocked; running preflight tasks", buf, 2u);
      }

      v6 = 0;
      while ([(PALServer *)self runPreflightTask:kPALAllPreflightTasks[v6] error:0])
      {
        if (++v6 == 3)
        {
          notify_cancel(self->_keybagChangeNotificationToken);
          v4 = 1;
          self->_didRunPreflightTasks = 1;
          goto LABEL_16;
        }
      }
    }

    else if (self->_keybagChangeNotificationToken == -1)
    {
      objc_initWeak(buf, self);
      v7 = kMobileKeyBagLockStatusNotifyToken;
      serverQueue = self->_serverQueue;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10000ABF0;
      handler[3] = &unk_100018A78;
      objc_copyWeak(&v13, buf);
      v9 = notify_register_dispatch(v7, &self->_keybagChangeNotificationToken, serverQueue, handler);
      if (v9)
      {
        v10 = self->_log;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10000D5D0(v9, v10);
        }
      }

      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }

    v4 = 0;
  }

LABEL_16:

  return v4;
}

- (void)updateProcessMonitorConfiguration
{
  dispatch_assert_queue_V2(self->_serverQueue);
  v3 = [NSMutableArray arrayWithCapacity:[(NSMutableSet *)self->_sessions count]];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_sessions;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v17 + 1) + 8 * v8) connection];
        v10 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [v9 processIdentifier]);

        if (v10)
        {
          v11 = [RBSProcessPredicate predicateMatchingIdentifier:v10];
          [v3 addObject:v11];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  processMonitor = self->_processMonitor;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001854;
  v14[3] = &unk_100018B80;
  v15 = v3;
  v16 = self;
  v13 = v3;
  [(RBSProcessMonitor *)processMonitor updateConfiguration:v14];
}

- (PALServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PALServer)initWithListener:(id)a3 maxStoreSize:(unint64_t)a4
{
  v6 = a3;
  v7 = [PALPaths alloc];
  v8 = +[PALPaths defaultRootDirectory];
  v9 = [(PALPaths *)v7 initWithRootDirectory:v8];

  v10 = +[PALSettings sharedSettings];
  v11 = [(PALServer *)self initWithListener:v6 paths:v9 settings:v10 maxStoreSize:a4];

  return v11;
}

- (PALServer)initWithListener:(id)a3 paths:(id)a4 settings:(id)a5 maxStoreSize:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v42.receiver = self;
  v42.super_class = PALServer;
  v14 = [(PALServer *)&v42 init];
  if (v14)
  {
    v15 = os_log_create("com.apple.PrivacyAccounting", "PALServer");
    log = v14->_log;
    v14->_log = v15;

    PARegisterUserInfoValueProviderForPAErrorDomain();
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.privacyaccounting.server", v17);
    serverQueue = v14->_serverQueue;
    v14->_serverQueue = v18;

    [v11 _setQueue:v14->_serverQueue];
    [v11 setDelegate:v14];
    objc_storeStrong(&v14->_listener, a3);
    objc_storeStrong(&v14->_paths, a4);
    v20 = [(PALPaths *)v14->_paths biomeDirectory];
    v21 = [BMStoreConfig newPrivateStreamDefaultConfigurationWithStoreBasePath:v20 protectionClass:2];
    storeConfig = v14->_storeConfig;
    v14->_storeConfig = v21;

    objc_storeStrong(&v14->_settings, a5);
    v23 = [[BMPruningPolicy alloc] initPruneOnAccess:1 filterByAgeOnRead:0 maxAge:a6 >> 2 maxStreamSize:0.0];
    [(BMStoreConfig *)v14->_storeConfig setPruningPolicy:v23];
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create("com.apple.privacyaccounting.sessions", v24);
    sessionsQueue = v14->_sessionsQueue;
    v14->_sessionsQueue = v25;

    v27 = +[NSMutableSet set];
    sessions = v14->_sessions;
    v14->_sessions = v27;

    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = dispatch_queue_create("com.apple.privacyaccounting.background", v29);
    backgroundQueue = v14->_backgroundQueue;
    v14->_backgroundQueue = v30;

    v32 = [PALAccessorResolver alloc];
    settings = v14->_settings;
    v34 = objc_opt_new();
    v35 = [[PALApplicationMetadataResolver alloc] initWithSettings:v14->_settings];
    v36 = [(PALAccessorResolver *)v32 initWithSettings:settings tccAttributionResolver:v34 applicationMetadataResolver:v35];
    accessorResolver = v14->_accessorResolver;
    v14->_accessorResolver = v36;

    v14->_didRunPreflightTasks = 0;
    v14->_keybagChangeNotificationToken = -1;
    v38 = +[RBSProcessMonitor monitor];
    processMonitor = v14->_processMonitor;
    v14->_processMonitor = v38;

    enablementChangedNotificationName = v14->_enablementChangedNotificationName;
    v14->_enablementChangedNotificationName = @"com.apple.PrivacyAccounting.toggled";
  }

  return v14;
}

- (void)observeAppUninstallsWithAppUninstallObserver:(id)a3
{
  objc_storeStrong(&self->_appUninstallObserver, a3);
  v5 = a3;
  [v5 setDelegate:self];
  [v5 startObserving];
}

- (BOOL)canWriteEvent:(id)a3 forConnection:(id)a4 withError:(id *)a5
{
  v6 = sub_100001744(a4, @"com.apple.private.privacy.accounting.write");
  v7 = v6;
  if (a5 && (v6 & 1) == 0)
  {
    v10 = @"PAMissingEntitlement";
    v11 = @"com.apple.private.privacy.accounting.write";
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    *a5 = [NSError errorWithDomain:@"PAErrorDomain" code:9 userInfo:v8];
  }

  return v7;
}

- (BOOL)canPruneEventsForConnection:(id)a3 withError:(id *)a4
{
  v5 = sub_100001744(a3, @"com.apple.private.privacy.accounting.prune");
  v6 = v5;
  if (a4 && (v5 & 1) == 0)
  {
    v9 = @"PAMissingEntitlement";
    v10 = @"com.apple.private.privacy.accounting.prune";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    *a4 = [NSError errorWithDomain:@"PAErrorDomain" code:9 userInfo:v7];
  }

  return v6;
}

- (BOOL)runPreflightTask:(int64_t)a3 error:(id *)a4
{
  v7 = [(PALServer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(PALServer *)self delegate];
    v9 = [v8 server:self shouldRunPreflightTask:a3];

    if (!v9)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  switch(a3)
  {
    case 2:
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v19 = log;
        v20 = [(PALServer *)self settings];
        [v20 lastPreflightCheck];
        v30 = 134217984;
        v31 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Finalizing incomplete access intervals; startTime=%f", &v30, 0xCu);
      }

      v22 = [(PALServer *)self settings];
      [v22 lastPreflightCheck];
      [(PALServer *)self finalizeAllIncompleteAccessIntervalsSince:?];
      v24 = v23;

      v25 = [(PALServer *)self settings];
      [v25 lastPreflightCheck];
      v27 = v26;

      if (v27 == v24)
      {
        goto LABEL_21;
      }

      v28 = self->_log;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 134217984;
        v31 = v24;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Updating last successful preflight check; timestamp=%f", &v30, 0xCu);
      }

      v17 = [(PALServer *)self settings];
      [v17 setLastPreflightCheck:v24];
      goto LABEL_20;
    case 1:
      v12 = self->_log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        paths = self->_paths;
        v14 = v12;
        [(PALPaths *)paths settingsFile];
        v15 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v30 = 138543362;
        v31 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Migrating from legacy settings file=%{public}@", &v30, 0xCu);
      }

      settings = self->_settings;
      v17 = [(PALPaths *)self->_paths settingsFile];
      [(PALSettings *)settings migrateSettingsFromFile:v17];
LABEL_20:

LABEL_21:
      v10 = 1;
      return v10 & 1;
    case 0:
      v11 = self->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Creating storage directories", &v30, 2u);
      }

      v10 = [(PALPaths *)self->_paths createDirectories:a4];
      break;
  }

  return v10 & 1;
}

- (id)publisherForAllSince:(double)a3
{
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(PALServer *)self allStreams];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) publisherFromStartTime:a3];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [[BPSOrderedMerge alloc] initWithPublishers:v5 comparator:&stru_100018AB8];

  return v12;
}

- (double)finalizeAllIncompleteAccessIntervalsSince:(double)a3
{
  v5 = [(PALServer *)self publisherForAllSince:?];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = [PAAccessPublisherPipelines ongoingAccessRecordsFromPublisher:v5];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B310;
  v13[3] = &unk_100018AE0;
  v13[4] = self;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000B374;
  v12[3] = &unk_100018B08;
  v12[4] = self;
  v12[5] = &v14;
  v12[6] = &v18;
  v7 = [v6 sinkWithCompletion:v13 receiveInput:v12];

  v8 = [(PALServer *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(v15 + 6);
    *buf = 67109120;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finalized %d incomplete intervals", buf, 8u);
  }

  v10 = v19[3];
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v10;
}

- (void)enableLogging
{
  [(PALSettings *)self->_settings setLoggingEnabled:1];
  v3 = [(PALServer *)self enablementChangedNotificationName];
  notify_post([v3 UTF8String]);

  v4 = [(PALServer *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PALServer *)self delegate];
    [v6 server:self didSetLoggingEnabled:1];
  }

  v7 = [(PALServer *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Logging Enabled", v8, 2u);
  }
}

- (void)disableLogging
{
  [(PALSettings *)self->_settings setLoggingEnabled:0];
  accessEventStream = self->_accessEventStream;
  self->_accessEventStream = 0;

  tccAccessEventStream = self->_tccAccessEventStream;
  self->_tccAccessEventStream = 0;

  locationAccessEventStream = self->_locationAccessEventStream;
  self->_locationAccessEventStream = 0;

  replayKitAccessEventStream = self->_replayKitAccessEventStream;
  self->_replayKitAccessEventStream = 0;

  outOfProcessPickerAccessEventStream = self->_outOfProcessPickerAccessEventStream;
  self->_outOfProcessPickerAccessEventStream = 0;

  [(PALPaths *)self->_paths removeBiomeDirectory];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_sessions;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000B7F0;
        block[3] = &unk_100018B30;
        block[4] = v13;
        dispatch_async(v14, block);
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v15 = [(PALServer *)self enablementChangedNotificationName];
  notify_post([v15 UTF8String]);

  v16 = [(PALServer *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(PALServer *)self delegate];
    [v18 server:self didSetLoggingEnabled:0];
  }

  v19 = [(PALServer *)self log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Disabled logging and deleted all data", v20, 2u);
  }
}

- (id)streamFor:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    v6 = 40;
  }

  else if (objc_opt_class() == a3)
  {
    v6 = 48;
  }

  else if (objc_opt_class() == a3)
  {
    v6 = 56;
  }

  else if (objc_opt_class() == a3)
  {
    v6 = 64;
  }

  else
  {
    if (objc_opt_class() != a3)
    {
      v5 = 0;
      goto LABEL_15;
    }

    v6 = 72;
  }

  v7 = *(&self->super.isa + v6);
  if (!v7)
  {
    v8 = [BMStoreStream alloc];
    v9 = [(objc_class *)a3 valueForKey:@"eventStreamIdentifier"];
    v10 = [v8 initWithPrivateStreamIdentifier:v9 storeConfig:self->_storeConfig];
    v11 = *(&self->super.isa + v6);
    *(&self->super.isa + v6) = v10;

    v7 = *(&self->super.isa + v6);
  }

  v5 = v7;
LABEL_15:

  return v5;
}

- (NSArray)allStreams
{
  v3 = +[PAAccess allAccessClasses];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(PALServer *)self streamFor:*(*(&v13 + 1) + 8 * i), v13];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (BOOL)logAccess:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PALServer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(PALServer *)self delegate];
    v9 = [v8 server:self shouldLogAccess:v6 error:a4];

    if (!v9)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  if (![(PALSettings *)self->_settings loggingEnabled])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10000D7B0();
      if (a4)
      {
        goto LABEL_12;
      }
    }

    else if (a4)
    {
LABEL_12:
      [NSError errorWithDomain:@"PAErrorDomain" code:2 userInfo:0];
      *a4 = v12 = 0;
      goto LABEL_25;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  settings = self->_settings;
  v11 = [v6 category];
  LODWORD(settings) = [(PALSettings *)settings persistenceEnabledForCategory:v11];

  if (!settings)
  {
LABEL_9:
    v12 = 1;
    goto LABEL_25;
  }

  if (![(PALSettings *)self->_settings assetIdentifiersPersistenceEnabled])
  {
    if ([v6 kind] == 4)
    {
      goto LABEL_9;
    }

    v13 = [v6 assetIdentifiers];
    v14 = [v13 count];

    if (v14)
    {
      v15 = +[NSSet set];
      v16 = [v6 copyWithNewAssetIdentifiers:v15];

      v6 = v16;
    }
  }

  v17 = [(PALServer *)self streamFor:objc_opt_class()];
  v18 = v17;
  v12 = v17 != 0;
  if (v17)
  {
    v19 = [v17 source];
    [v19 sendEvent:v6];

    v20 = [(PALServer *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [(PALServer *)self delegate];
      [v22 server:self didLogAccess:v6];
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_10000D818();
    }
  }

  else if (a4)
  {
    *a4 = [NSError errorWithDomain:@"PAErrorDomain" code:6 userInfo:0];
  }

LABEL_25:
  return v12;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [(PALServer *)self preflight];
  if (v6)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PASessionProtocol];
    [v5 setExportedInterface:v7];
    v8 = [[PALSession alloc] initWithServer:self targetQueue:self->_sessionsQueue connection:v5];
    [v5 setExportedObject:v8];
    [(PALServer *)self addSession:v8];
    [v5 resume];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D880();
  }

  return v6;
}

- (void)addSession:(id)a3
{
  [(NSMutableSet *)self->_sessions addObject:a3];

  [(PALServer *)self updateProcessMonitorConfiguration];
}

- (void)removeSession:(id)a3
{
  [(NSMutableSet *)self->_sessions removeObject:a3];

  [(PALServer *)self updateProcessMonitorConfiguration];
}

- (void)process:(id)a3 didUpdateFromPreviousState:(id)a4 toState:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([a4 taskState] != 3 && objc_msgSend(v9, "taskState") == 3)
  {
    objc_initWeak(&location, self);
    serverQueue = self->_serverQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000BF6C;
    block[3] = &unk_100018BA8;
    objc_copyWeak(&v13, &location);
    v12 = v8;
    dispatch_async(serverQueue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)_pruneEventsMatchingPredicate:(id)a3 withCancellationToken:(id)a4 completion:(id)a5
{
  v39 = a3;
  v38 = a4;
  v35 = a5;
  v37 = self;
  dispatch_assert_queue_V2(self->_serverQueue);
  v34 = os_transaction_create();
  v36 = +[NSMutableArray array];
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v8 = +[NSMutableSet set];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v9 = [(PALServer *)self allStreams];
  v10 = [v9 countByEnumeratingWithState:&v53 objects:v71 count:16];
  if (v10)
  {
    v12 = *v54;
    *&v11 = 138543618;
    v33 = v11;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v54 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v53 + 1) + 8 * i);
        *v68 = 0;
        *&v69 = v68;
        *(&v69 + 1) = 0x2020000000;
        v70 = 0;
        v52 = 0;
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_10000C870;
        v46[3] = &unk_100018BD0;
        v47 = v38;
        v50 = v68;
        v48 = v39;
        v49 = v8;
        v51 = &v57;
        v15 = [v14 pruneEventsWithError:&v52 predicateBlock:v46];
        v16 = v52;
        if ((v15 & 1) == 0)
        {
          v17 = [(PALServer *)self log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = [v14 identifier];
            *buf = v33;
            v65 = v18;
            v66 = 2114;
            v67 = v16;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Pruning failed for stream %{public}@ with error: %{public}@", buf, 0x16u);
          }

          [v36 addObject:v16];
        }

        if (*(v69 + 24) == 1)
        {
          v19 = [NSError errorWithDomain:@"PAErrorDomain" code:15 userInfo:0];
          [v36 addObject:v19];

          _Block_object_dispose(v68, 8);
          goto LABEL_15;
        }

        _Block_object_dispose(v68, 8);
      }

      v10 = [v9 countByEnumeratingWithState:&v53 objects:v71 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v20 = [(PALServer *)self log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = *(v58 + 6);
    *v68 = 67109378;
    *&v68[4] = v21;
    LOWORD(v69) = 2112;
    *(&v69 + 2) = v39;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Pruned %d events matching predicate: %@", v68, 0x12u);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = self->_sessions;
  v23 = [(NSMutableSet *)v22 countByEnumeratingWithState:&v42 objects:v63 count:16];
  if (v23)
  {
    v24 = *v43;
    v9 = &unk_100018708;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v42 + 1) + 8 * j);
        v27 = [v26 queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000C9AC;
        block[3] = &unk_100018708;
        block[4] = v26;
        v41 = v8;
        dispatch_async(v27, block);
      }

      v23 = [(NSMutableSet *)v22 countByEnumeratingWithState:&v42 objects:v63 count:16];
    }

    while (v23);
  }

  WeakRetained = objc_loadWeakRetained(&v37->_delegate);
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    v30 = objc_loadWeakRetained(&v37->_delegate);
    [v30 serverDidPruneAccesses:v37];
  }

  v31 = [v36 count];
  if (v31)
  {
    v61 = NSMultipleUnderlyingErrorsKey;
    v62 = v36;
    v9 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v32 = [NSError errorWithDomain:@"PAErrorDomain" code:8 userInfo:v9];
  }

  else
  {
    v32 = 0;
  }

  v35[2](v35, v32);
  if (v31)
  {
  }

  _Block_object_dispose(&v57, 8);
}

- (void)pruneEventsFromStartTime:(double)a3 toEndTime:(double)a4 withCancellationToken:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = [NSNumber numberWithDouble:a3];
  v16[0] = v12;
  v13 = [NSNumber numberWithDouble:a4];
  v16[1] = v13;
  v14 = [NSArray arrayWithObjects:v16 count:2];
  v15 = [NSPredicate predicateWithFormat:@"timestamp BETWEEN %@", v14];

  [(PALServer *)self _pruneEventsMatchingPredicate:v15 withCancellationToken:v11 completion:v10];
}

- (void)pruneEventsFromAccessor:(id)a3 withCancellationToken:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [NSPredicate predicateWithFormat:@"eventBody.accessor = %@", a3];
  [(PALServer *)self _pruneEventsMatchingPredicate:v10 withCancellationToken:v9 completion:v8];
}

- (void)applicationDidUninstall:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000CC2C;
  v4[3] = &unk_100018BF8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(PALServer *)v5 pruneEventsFromAccessor:v3 withCancellationToken:0 completion:v4];
}

- (void)exportToFileHandle:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_serverQueue);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_100001734;
  v25[4] = sub_100001A20;
  v26 = os_transaction_create();
  v8 = [(PALServer *)self publisherForAllSince:0.0];
  v9 = [PAAccessPublisherPipelines accessPublisherWithoutUnknownCategoryAccesses:v8];

  [(PALAccessorResolver *)self->_accessorResolver applicationMetadataResolver];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000CED8;
  v10 = v23[3] = &unk_100018C20;
  v24 = v10;
  v11 = objc_retainBlock(v23);
  v12 = [PAAccessPublisherPipelines accessPublisherWithoutHiddenOrMissingApps:v9 withBundleLookup:v11];

  backgroundQueue = self->_backgroundQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000CEE4;
  v17[3] = &unk_100018C48;
  v18 = v6;
  v19 = self;
  v20 = v12;
  v21 = v7;
  v22 = v25;
  v14 = v12;
  v15 = v7;
  v16 = v6;
  dispatch_async(backgroundQueue, v17);

  _Block_object_dispose(v25, 8);
}

- (void)gatherAndSendDailyAnalyticsWithCancellationToken:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_serverQueue);
  if (AnalyticsIsEventUsed())
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_100001734;
    v17[4] = sub_100001A20;
    v18 = os_transaction_create();
    v8 = [(PALServer *)self publisherForAllSince:0.0];
    backgroundQueue = self->_backgroundQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D22C;
    block[3] = &unk_100018C98;
    block[4] = self;
    v13 = v8;
    v14 = v6;
    v15 = v7;
    v16 = v17;
    v10 = v8;
    dispatch_async(backgroundQueue, block);

    _Block_object_dispose(v17, 8);
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_10000DA40(log);
    }

    (*(v7 + 2))(v7, 1);
  }
}

- (void)dealloc
{
  notify_cancel(self->_keybagChangeNotificationToken);
  [(RBSProcessMonitor *)self->_processMonitor invalidate];
  v3.receiver = self;
  v3.super_class = PALServer;
  [(PALServer *)&v3 dealloc];
}

@end