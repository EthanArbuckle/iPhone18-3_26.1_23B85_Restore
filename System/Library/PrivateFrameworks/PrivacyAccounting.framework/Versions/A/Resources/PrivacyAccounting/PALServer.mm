@interface PALServer
- (BOOL)canPruneEventsForConnection:(id)connection withError:(id *)error;
- (BOOL)canWriteEvent:(id)event forConnection:(id)connection withError:(id *)error;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)logAccess:(id)access error:(id *)error;
- (BOOL)preflight;
- (BOOL)runPreflightTask:(int64_t)task error:(id *)error;
- (NSArray)allStreams;
- (PALServer)initWithListener:(id)listener maxStoreSize:(unint64_t)size;
- (PALServer)initWithListener:(id)listener paths:(id)paths settings:(id)settings maxStoreSize:(unint64_t)size;
- (PALServerDelegate)delegate;
- (double)finalizeAllIncompleteAccessIntervalsSince:(double)since;
- (id)publisherForAllSince:(double)since;
- (id)streamFor:(Class)for;
- (void)_pruneEventsMatchingPredicate:(id)predicate withCancellationToken:(id)token completion:(id)completion;
- (void)addSession:(id)session;
- (void)applicationDidUninstall:(id)uninstall;
- (void)dealloc;
- (void)disableLogging;
- (void)enableLogging;
- (void)exportToFileHandle:(id)handle completion:(id)completion;
- (void)gatherAndSendDailyAnalyticsWithCancellationToken:(id)token completion:(id)completion;
- (void)observeAppUninstallsWithAppUninstallObserver:(id)observer;
- (void)process:(id)process didUpdateFromPreviousState:(id)state toState:(id)toState;
- (void)pruneEventsFromAccessor:(id)accessor withCancellationToken:(id)token completion:(id)completion;
- (void)pruneEventsFromStartTime:(double)time toEndTime:(double)endTime withCancellationToken:(id)token completion:(id)completion;
- (void)removeSession:(id)session;
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

        connection = [*(*(&v17 + 1) + 8 * v8) connection];
        v10 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [connection processIdentifier]);

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
  selfCopy = self;
  v13 = v3;
  [(RBSProcessMonitor *)processMonitor updateConfiguration:v14];
}

- (PALServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PALServer)initWithListener:(id)listener maxStoreSize:(unint64_t)size
{
  listenerCopy = listener;
  v7 = [PALPaths alloc];
  v8 = +[PALPaths defaultRootDirectory];
  v9 = [(PALPaths *)v7 initWithRootDirectory:v8];

  v10 = +[PALSettings sharedSettings];
  v11 = [(PALServer *)self initWithListener:listenerCopy paths:v9 settings:v10 maxStoreSize:size];

  return v11;
}

- (PALServer)initWithListener:(id)listener paths:(id)paths settings:(id)settings maxStoreSize:(unint64_t)size
{
  listenerCopy = listener;
  pathsCopy = paths;
  settingsCopy = settings;
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

    [listenerCopy _setQueue:v14->_serverQueue];
    [listenerCopy setDelegate:v14];
    objc_storeStrong(&v14->_listener, listener);
    objc_storeStrong(&v14->_paths, paths);
    biomeDirectory = [(PALPaths *)v14->_paths biomeDirectory];
    v21 = [BMStoreConfig newPrivateStreamDefaultConfigurationWithStoreBasePath:biomeDirectory protectionClass:2];
    storeConfig = v14->_storeConfig;
    v14->_storeConfig = v21;

    objc_storeStrong(&v14->_settings, settings);
    v23 = [[BMPruningPolicy alloc] initPruneOnAccess:1 filterByAgeOnRead:0 maxAge:size >> 2 maxStreamSize:0.0];
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

- (void)observeAppUninstallsWithAppUninstallObserver:(id)observer
{
  objc_storeStrong(&self->_appUninstallObserver, observer);
  observerCopy = observer;
  [observerCopy setDelegate:self];
  [observerCopy startObserving];
}

- (BOOL)canWriteEvent:(id)event forConnection:(id)connection withError:(id *)error
{
  v6 = sub_100001744(connection, @"com.apple.private.privacy.accounting.write");
  v7 = v6;
  if (error && (v6 & 1) == 0)
  {
    v10 = @"PAMissingEntitlement";
    v11 = @"com.apple.private.privacy.accounting.write";
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    *error = [NSError errorWithDomain:@"PAErrorDomain" code:9 userInfo:v8];
  }

  return v7;
}

- (BOOL)canPruneEventsForConnection:(id)connection withError:(id *)error
{
  v5 = sub_100001744(connection, @"com.apple.private.privacy.accounting.prune");
  v6 = v5;
  if (error && (v5 & 1) == 0)
  {
    v9 = @"PAMissingEntitlement";
    v10 = @"com.apple.private.privacy.accounting.prune";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    *error = [NSError errorWithDomain:@"PAErrorDomain" code:9 userInfo:v7];
  }

  return v6;
}

- (BOOL)runPreflightTask:(int64_t)task error:(id *)error
{
  delegate = [(PALServer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(PALServer *)self delegate];
    v9 = [delegate2 server:self shouldRunPreflightTask:task];

    if (!v9)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  switch(task)
  {
    case 2:
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v19 = log;
        settings = [(PALServer *)self settings];
        [settings lastPreflightCheck];
        v30 = 134217984;
        v31 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Finalizing incomplete access intervals; startTime=%f", &v30, 0xCu);
      }

      settings2 = [(PALServer *)self settings];
      [settings2 lastPreflightCheck];
      [(PALServer *)self finalizeAllIncompleteAccessIntervalsSince:?];
      v24 = v23;

      settings3 = [(PALServer *)self settings];
      [settings3 lastPreflightCheck];
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

      settings4 = [(PALServer *)self settings];
      [settings4 setLastPreflightCheck:v24];
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
      settings4 = [(PALPaths *)self->_paths settingsFile];
      [(PALSettings *)settings migrateSettingsFromFile:settings4];
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

      v10 = [(PALPaths *)self->_paths createDirectories:error];
      break;
  }

  return v10 & 1;
}

- (id)publisherForAllSince:(double)since
{
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allStreams = [(PALServer *)self allStreams];
  v7 = [allStreams countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allStreams);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) publisherFromStartTime:since];
        [v5 addObject:v11];
      }

      v8 = [allStreams countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [[BPSOrderedMerge alloc] initWithPublishers:v5 comparator:&stru_100018AB8];

  return v12;
}

- (double)finalizeAllIncompleteAccessIntervalsSince:(double)since
{
  v5 = [(PALServer *)self publisherForAllSince:?];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  sinceCopy = since;
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
  enablementChangedNotificationName = [(PALServer *)self enablementChangedNotificationName];
  notify_post([enablementChangedNotificationName UTF8String]);

  delegate = [(PALServer *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PALServer *)self delegate];
    [delegate2 server:self didSetLoggingEnabled:1];
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
        queue = [v13 queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000B7F0;
        block[3] = &unk_100018B30;
        block[4] = v13;
        dispatch_async(queue, block);
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  enablementChangedNotificationName = [(PALServer *)self enablementChangedNotificationName];
  notify_post([enablementChangedNotificationName UTF8String]);

  delegate = [(PALServer *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    delegate2 = [(PALServer *)self delegate];
    [delegate2 server:self didSetLoggingEnabled:0];
  }

  v19 = [(PALServer *)self log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Disabled logging and deleted all data", v20, 2u);
  }
}

- (id)streamFor:(Class)for
{
  if (objc_opt_class() == for)
  {
    v6 = 40;
  }

  else if (objc_opt_class() == for)
  {
    v6 = 48;
  }

  else if (objc_opt_class() == for)
  {
    v6 = 56;
  }

  else if (objc_opt_class() == for)
  {
    v6 = 64;
  }

  else
  {
    if (objc_opt_class() != for)
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
    v9 = [(objc_class *)for valueForKey:@"eventStreamIdentifier"];
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

- (BOOL)logAccess:(id)access error:(id *)error
{
  accessCopy = access;
  delegate = [(PALServer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(PALServer *)self delegate];
    v9 = [delegate2 server:self shouldLogAccess:accessCopy error:error];

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
      if (error)
      {
        goto LABEL_12;
      }
    }

    else if (error)
    {
LABEL_12:
      [NSError errorWithDomain:@"PAErrorDomain" code:2 userInfo:0];
      *error = v12 = 0;
      goto LABEL_25;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  settings = self->_settings;
  category = [accessCopy category];
  LODWORD(settings) = [(PALSettings *)settings persistenceEnabledForCategory:category];

  if (!settings)
  {
LABEL_9:
    v12 = 1;
    goto LABEL_25;
  }

  if (![(PALSettings *)self->_settings assetIdentifiersPersistenceEnabled])
  {
    if ([accessCopy kind] == 4)
    {
      goto LABEL_9;
    }

    assetIdentifiers = [accessCopy assetIdentifiers];
    v14 = [assetIdentifiers count];

    if (v14)
    {
      v15 = +[NSSet set];
      v16 = [accessCopy copyWithNewAssetIdentifiers:v15];

      accessCopy = v16;
    }
  }

  v17 = [(PALServer *)self streamFor:objc_opt_class()];
  v18 = v17;
  v12 = v17 != 0;
  if (v17)
  {
    source = [v17 source];
    [source sendEvent:accessCopy];

    delegate3 = [(PALServer *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      delegate4 = [(PALServer *)self delegate];
      [delegate4 server:self didLogAccess:accessCopy];
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_10000D818();
    }
  }

  else if (error)
  {
    *error = [NSError errorWithDomain:@"PAErrorDomain" code:6 userInfo:0];
  }

LABEL_25:
  return v12;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  preflight = [(PALServer *)self preflight];
  if (preflight)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PASessionProtocol];
    [connectionCopy setExportedInterface:v7];
    v8 = [[PALSession alloc] initWithServer:self targetQueue:self->_sessionsQueue connection:connectionCopy];
    [connectionCopy setExportedObject:v8];
    [(PALServer *)self addSession:v8];
    [connectionCopy resume];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D880();
  }

  return preflight;
}

- (void)addSession:(id)session
{
  [(NSMutableSet *)self->_sessions addObject:session];

  [(PALServer *)self updateProcessMonitorConfiguration];
}

- (void)removeSession:(id)session
{
  [(NSMutableSet *)self->_sessions removeObject:session];

  [(PALServer *)self updateProcessMonitorConfiguration];
}

- (void)process:(id)process didUpdateFromPreviousState:(id)state toState:(id)toState
{
  processCopy = process;
  toStateCopy = toState;
  if ([state taskState] != 3 && objc_msgSend(toStateCopy, "taskState") == 3)
  {
    objc_initWeak(&location, self);
    serverQueue = self->_serverQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000BF6C;
    block[3] = &unk_100018BA8;
    objc_copyWeak(&v13, &location);
    v12 = processCopy;
    dispatch_async(serverQueue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)_pruneEventsMatchingPredicate:(id)predicate withCancellationToken:(id)token completion:(id)completion
{
  predicateCopy = predicate;
  tokenCopy = token;
  completionCopy = completion;
  selfCopy = self;
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
  allStreams = [(PALServer *)self allStreams];
  v10 = [allStreams countByEnumeratingWithState:&v53 objects:v71 count:16];
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
          objc_enumerationMutation(allStreams);
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
        v47 = tokenCopy;
        v50 = v68;
        v48 = predicateCopy;
        v49 = v8;
        v51 = &v57;
        v15 = [v14 pruneEventsWithError:&v52 predicateBlock:v46];
        v16 = v52;
        if ((v15 & 1) == 0)
        {
          v17 = [(PALServer *)self log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            identifier = [v14 identifier];
            *buf = v33;
            v65 = identifier;
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

      v10 = [allStreams countByEnumeratingWithState:&v53 objects:v71 count:16];
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
    *(&v69 + 2) = predicateCopy;
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
    allStreams = &unk_100018708;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v42 + 1) + 8 * j);
        queue = [v26 queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000C9AC;
        block[3] = &unk_100018708;
        block[4] = v26;
        v41 = v8;
        dispatch_async(queue, block);
      }

      v23 = [(NSMutableSet *)v22 countByEnumeratingWithState:&v42 objects:v63 count:16];
    }

    while (v23);
  }

  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    v30 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v30 serverDidPruneAccesses:selfCopy];
  }

  v31 = [v36 count];
  if (v31)
  {
    v61 = NSMultipleUnderlyingErrorsKey;
    v62 = v36;
    allStreams = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v32 = [NSError errorWithDomain:@"PAErrorDomain" code:8 userInfo:allStreams];
  }

  else
  {
    v32 = 0;
  }

  completionCopy[2](completionCopy, v32);
  if (v31)
  {
  }

  _Block_object_dispose(&v57, 8);
}

- (void)pruneEventsFromStartTime:(double)time toEndTime:(double)endTime withCancellationToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  v12 = [NSNumber numberWithDouble:time];
  v16[0] = v12;
  v13 = [NSNumber numberWithDouble:endTime];
  v16[1] = v13;
  v14 = [NSArray arrayWithObjects:v16 count:2];
  v15 = [NSPredicate predicateWithFormat:@"timestamp BETWEEN %@", v14];

  [(PALServer *)self _pruneEventsMatchingPredicate:v15 withCancellationToken:tokenCopy completion:completionCopy];
}

- (void)pruneEventsFromAccessor:(id)accessor withCancellationToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  accessor = [NSPredicate predicateWithFormat:@"eventBody.accessor = %@", accessor];
  [(PALServer *)self _pruneEventsMatchingPredicate:accessor withCancellationToken:tokenCopy completion:completionCopy];
}

- (void)applicationDidUninstall:(id)uninstall
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000CC2C;
  v4[3] = &unk_100018BF8;
  selfCopy = self;
  uninstallCopy = uninstall;
  v3 = uninstallCopy;
  [(PALServer *)selfCopy pruneEventsFromAccessor:v3 withCancellationToken:0 completion:v4];
}

- (void)exportToFileHandle:(id)handle completion:(id)completion
{
  handleCopy = handle;
  completionCopy = completion;
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
  v18 = handleCopy;
  selfCopy = self;
  v20 = v12;
  v21 = completionCopy;
  v22 = v25;
  v14 = v12;
  v15 = completionCopy;
  v16 = handleCopy;
  dispatch_async(backgroundQueue, v17);

  _Block_object_dispose(v25, 8);
}

- (void)gatherAndSendDailyAnalyticsWithCancellationToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
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
    v14 = tokenCopy;
    v15 = completionCopy;
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

    (*(completionCopy + 2))(completionCopy, 1);
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