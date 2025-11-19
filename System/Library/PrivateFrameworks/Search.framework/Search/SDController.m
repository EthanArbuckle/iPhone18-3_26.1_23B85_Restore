@interface SDController
+ (id)datastores;
+ (id)getMeContactIdentifier;
+ (id)getMeEmailAddresses;
+ (void)deactivated;
+ (void)handleMemoryPressureWithStatus:(unint64_t)a3;
+ (void)initialize;
+ (void)readyForQueries;
+ (void)setDatastores:(id)a3;
- (BOOL)_valueFromArray:(id)a3 notInSet:(id)a4;
- (BOOL)blocklistCheck:(id)a3 withOptions:(int64_t)a4;
- (BOOL)deviceCXUnlocked;
- (BOOL)deviceFirstUnlockedInMKB;
- (BOOL)deviceFirstUnlockedInSB;
- (BOOL)deviceUnlocked;
- (BOOL)disableABCReporting:(id)a3;
- (BOOL)unlockedSinceBoot;
- (SDController)init;
- (id)extraTTRInfo;
- (id)indexDirectory;
- (id)taskForTopHitQueryWithQueryString:(id)a3 queryContext:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6 completionHandler:(id)a7;
- (void)didReceiveMemoryPressureNotification:(unint64_t)a3;
- (void)didReceiveSignal:(unint64_t)a3;
- (void)dumpTTRDebugFiles;
- (void)firstUnlockSBCompleted;
- (void)indexAvailableForProtectionClass:(id)a3 newIndex:(BOOL)a4;
- (void)issueLoadTrial:(id)a3;
- (void)locked;
- (void)lockedCx;
- (void)locking;
- (void)lockingCx;
- (void)migrationCompleted;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)recordEngagementForBundleID:(id)a3 uniqueIdentifier:(id)a4 protectionClass:(id)a5 userQuery:(id)a6 date:(id)a7;
- (void)registerMessageHandlers;
- (void)startIndexer;
- (void)unlockAppUninstallMonitor;
- (void)unlockMigrationMonitor;
- (void)unlocked;
- (void)updateParsecEnabled;
@end

@implementation SDController

- (BOOL)deviceUnlocked
{
  v2 = +[SDLockHandler sharedLockHandler];
  v3 = [v2 unlocked];

  return v3;
}

- (id)indexDirectory
{
  if (qword_1000A82C0 != -1)
  {
    sub_1000624C4();
  }

  v3 = qword_1000A82B8;

  return v3;
}

- (void)startIndexer
{
  if ((atomic_exchange(&self->_onceStartIndexer, 1u) & 1) == 0)
  {
    v3 = SPLogForSPLogCategoryIndex();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "### Indexer starting", buf, 2u);
    }

    [(SPCoreSpotlightIndexer *)self->_indexer upgradeCheck];
    [(SPCoreSpotlightIndexer *)self->_indexer moveBackMailToClassA];
    if (([(SPCoreSpotlightIndexer *)self->_indexer checkMailMigrationToClassCComplete]& 1) == 0)
    {
      indexQueue = self->_indexQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000B00C;
      block[3] = &unk_1000921C8;
      block[4] = self;
      dispatch_async(indexQueue, block);
    }

    dispatch_activate(self->_indexQueue);
    [(SPCoreSpotlightIndexer *)self->_indexer start];
    if (byte_1000A7C90 == 1)
    {
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        v5 = +[SDNetworkQualityInquiry sharedInstance];
      }

      v6 = dispatch_get_global_queue(17, 0);
      tracing_dispatch_async();
    }
  }
}

- (void)unlocked
{
  v3 = SPLogForSPLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "### SDController unlocked", v7, 2u);
  }

  [(SDController *)self unlockAppUninstallMonitor];
  v4 = dispatch_get_global_queue(17, 2uLL);
  tracing_dispatch_async();

  v5 = [(SDController *)self indexer];
  [v5 unlock];

  v6 = [(SDController *)self indexer];
  [v6 moveMailToClassC];
}

- (void)unlockAppUninstallMonitor
{
  if (byte_1000A7C90 == 1 && (atomic_exchange(&self->_onceUnlockAppUninstallMonitor, 1u) & 1) == 0)
  {
    v7 = v2;
    v8 = v3;
    v4 = SPLogForSPLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "### Uninstall Monitor Unlock", v6, 2u);
    }

    v5 = +[SDAppUninstallMonitor sharedInstance];
    [v5 unlock];
  }
}

- (BOOL)deviceFirstUnlockedInSB
{
  v2 = +[SDLockHandler sharedLockHandler];
  v3 = [v2 firstUnlockedInSB];

  return v3;
}

- (void)migrationCompleted
{
  v3 = SPLogForSPLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "### SDController migrationCompleted", &v6, 2u);
  }

  v4 = [(SDController *)self indexer];
  [v4 resume];

  v5 = SPLogForSPLogCategoryIndex();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "com.apple.spotlight.index.firstUnlock";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resuming %s queue", &v6, 0xCu);
  }

  dispatch_resume(self->_firstUnlockQueue);
  [(SDController *)self unlockAppUninstallMonitor];
  [(SDController *)self unlockMigrationMonitor];
}

- (void)firstUnlockSBCompleted
{
  v3 = SPLogForSPLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "### SDController firstUnlockSBCompleted", v5, 2u);
  }

  [(SDController *)self unlockAppUninstallMonitor];
  [(SDController *)self unlockMigrationMonitor];
  v4 = +[SPBackupRankingMetadataHandler sharedInstance];
  [v4 backUpFileProtectionClassCheck];
}

- (void)locking
{
  v3 = SPLogForSPLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "### SDController locking", v5, 2u);
  }

  v4 = [(SDController *)self indexer];
  [v4 locking];
}

- (void)locked
{
  v3 = SPLogForSPLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "### SDController locked", v5, 2u);
  }

  v4 = [(SDController *)self indexer];
  [v4 locked];
}

- (void)lockingCx
{
  v3 = SPLogForSPLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "### SDController locking Cx", v5, 2u);
  }

  v4 = [(SDController *)self indexer];
  [v4 lockingCx];
}

- (void)lockedCx
{
  v3 = SPLogForSPLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "### SDController locked Cx", v5, 2u);
  }

  v4 = [(SDController *)self indexer];
  [v4 lockedCx];
}

- (void)didReceiveSignal:(unint64_t)a3
{
  if (a3 == 1)
  {

    +[SPCoreSpotlightIndexer sync];
  }

  else if (a3 == 15)
  {
    +[SDAppUninstallMonitor shutdown];
    [(SPXPCServer *)self->_xpcServer shutdown];
    [(SPXPCServer *)self->_xpcBackgroundServer shutdown];

    +[SPCoreSpotlightIndexer shutdown];
  }
}

+ (void)handleMemoryPressureWithStatus:(unint64_t)a3
{
  [SPCoreSpotlightIndexer shrink:?];
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 _LSClearSchemaCaches];

  v5 = +[SDController datastores];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 shrink:a3];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)didReceiveMemoryPressureNotification:(unint64_t)a3
{
  [SPCoreSpotlightIndexer setMemoryPressureStatus:?];
  if (a3 != 1)
  {
    tracing_dispatch_async();
  }
}

+ (void)deactivated
{
  byte_1000A8240 = 0;
  if (byte_1000A8241 == 1 && qword_1000A8248 != 0)
  {
    [objc_opt_class() handleMemoryPressureWithStatus:qword_1000A8248];
    byte_1000A8241 = 0;
    qword_1000A8248 = 0;
  }
}

+ (id)getMeContactIdentifier
{
  os_unfair_lock_lock(&unk_1000A8250);
  os_unfair_lock_unlock(&unk_1000A8250);
  return 0;
}

+ (id)getMeEmailAddresses
{
  os_unfair_lock_lock(&unk_1000A8250);
  os_unfair_lock_unlock(&unk_1000A8250);
  return 0;
}

- (BOOL)_valueFromArray:(id)a3 notInSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if (![v6 containsObject:{*(*(&v12 + 1) + 8 * i), v12}])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)registerMessageHandlers
{
  [(SPXPCServer *)self->_xpcBackgroundServer setHandlerForMessageName:@"Apps" handler:&stru_1000922B0];
  [(SPXPCServer *)self->_xpcBackgroundServer setHandlerForMessageName:@"SendSFFeedback" handler:&stru_1000922F0];
  xpcBackgroundServer = self->_xpcBackgroundServer;

  [(SPXPCServer *)xpcBackgroundServer setDefaultMessageHandler:&stru_100092310];
}

+ (void)initialize
{
  notify_post("com.apple.searchd.launched");
  if (os_variant_has_internal_diagnostics())
  {
    v2 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Feature flag enabled", buf, 2u);
    }

    CFPreferencesSetAppValue(@"SPBullseyeFeatureFlag", &off_100098A08, SpotlightUIPrefsDomain);
  }

  v3 = dispatch_time(0, 1000000000);
  v4 = dispatch_get_global_queue(17, 0);
  dispatch_after(v3, v4, &stru_100092330);

  v5 = MGGetProductType();
  if (v5 == 2702125347 || v5 == 4240173202)
  {
    byte_1000A8278 = 1;
LABEL_8:
    byte_1000A7C90 = 0;
    return;
  }

  if (byte_1000A8278)
  {
    goto LABEL_8;
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SpotlightIndexEnabled", kCFPreferencesCurrentApplication, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    byte_1000A7C90 = AppBooleanValue != 0;
  }

  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 addSuiteNamed:@"com.apple.searchd"];

  v8 = SPGetDisabledDomainSet();
  [v8 containsObject:&off_100098A20];

  ADClientSetValueForScalarKey();
  v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.spotlightui"];
  v10 = [v9 integerForKey:@"SPUISearchFirstTimeShowCount"];

  if (v10 <= 0)
  {
    byte_1000A8279 = 0;
  }

  else
  {
    v11 = SPGetDisabledDomainSet();
    byte_1000A8279 = [v11 containsObject:@"DOMAIN_PARSEC"] ^ 1;
  }
}

+ (void)setDatastores:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableArray alloc] initWithArray:v3];
  v5 = qword_1000A8288;
  qword_1000A8288 = v4;

  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = qword_1000A8290;
  qword_1000A8290 = v6;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 domain];
        v15 = qword_1000A8290;
        v16 = [NSNumber numberWithUnsignedInt:v14];
        [v15 setObject:v13 forKeyedSubscript:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

+ (void)readyForQueries
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A9FC;
  block[3] = &unk_1000923B0;
  block[4] = a1;
  if (qword_1000A8298 != -1)
  {
    dispatch_once(&qword_1000A8298, block);
  }
}

- (void)unlockMigrationMonitor
{
  if (byte_1000A7C90 == 1 && (atomic_exchange(&self->_onceUnlockMigrationMonitor, 1u) & 1) == 0)
  {
    v7 = v2;
    v8 = v3;
    v4 = SPLogForSPLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "### Migration Monitor Unlock", v6, 2u);
    }

    v5 = +[SDMigrationMonitor sharedInstance];
    [v5 unlock];
  }
}

- (SDController)init
{
  v55.receiver = self;
  v55.super_class = SDController;
  v2 = [(SDController *)&v55 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_initially_inactive(0);
    v4 = dispatch_queue_attr_make_with_overcommit();
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);

    v7 = dispatch_queue_create("com.apple.spotlight.index", v6);
    v8 = *(v2 + 6);
    *(v2 + 6) = v7;

    [SPCoreSpotlightIndexer setIndexerDelegate:v2];
    if (byte_1000A7C90)
    {
      v9 = byte_1000A8278;
    }

    else
    {
      v9 = byte_1000A8278 | 2;
    }

    [SDLockHandler setLockHandlerWithDelegate:v2 options:v9];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_overcommit();
    v12 = dispatch_queue_create("com.apple.searchd.workq", v11);
    v13 = qword_1000A8238;
    qword_1000A8238 = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_overcommit();
    v16 = dispatch_queue_create("com.apple.searchd.rankq", v15);
    v17 = qword_1000A8268;
    qword_1000A8268 = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_BACKGROUND, 0);
    v20 = dispatch_queue_create("com.apple.searchd.bgworkq", v19);
    v21 = qword_1000A8270;
    qword_1000A8270 = v20;

    if ((byte_1000A8278 & 1) == 0)
    {
      if (_os_feature_enabled_impl())
      {
        v22 = 0;
      }

      else
      {
        v22 = &stru_1000923F0;
      }

      v23 = [SPXPCServer alloc];
      v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v25 = dispatch_queue_create("com.apple.searchd.foreground", v24);
      v26 = [v23 initListenerWithServiceName:@"com.apple.searchd" onQueue:v25 qos:33];
      v27 = *(v2 + 1);
      *(v2 + 1) = v26;

      [*(v2 + 1) setDisconnectHandler:&stru_100092430];
      [*(v2 + 1) setFirstConnectionBlock:v22];
      v28 = [SPXPCServer alloc];
      v29 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
      v30 = dispatch_queue_create("com.apple.searchd.background", v29);
      v31 = [v28 initListenerWithServiceName:@"com.apple.searchd.background" onQueue:v30 qos:9];
      v32 = *(v2 + 2);
      *(v2 + 2) = v31;

      [*(v2 + 2) setDisconnectHandler:&stru_100092450];
      [*(v2 + 2) setDefaultMessageHandler:&stru_100092470];
      [*(v2 + 1) setDefaultMessageHandler:&stru_100092490];
      [v2 registerMessageHandlers];
    }

    v33 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v34 = dispatch_queue_create_with_target_V2("com.apple.spotlight.index.firstUnlock", v33, *(v2 + 6));
    v35 = *(v2 + 7);
    *(v2 + 7) = v34;

    v36 = SPLogForSPLogCategoryIndex();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v57 = "com.apple.spotlight.index.firstUnlock";
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Suspending %s queue", buf, 0xCu);
    }

    dispatch_suspend(*(v2 + 7));
    v37 = +[SDLockHandler sharedLockHandler];
    v38 = +[SPCoreSpotlightIndexer sharedInstance];
    v39 = *(v2 + 5);
    *(v2 + 5) = v38;

    [v37 start];
    v40 = +[SDLockHandler sharedLockHandler];
    v41 = [v40 unlockedSinceBoot];

    if (v41)
    {
      [v2 startIndexer];
    }

    else
    {
      v42 = SPLogForSPLogCategoryIndex();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "### delaying indexer start until first unlock", buf, 2u);
      }
    }

    if ((byte_1000A8278 & 1) == 0)
    {
      [SDClient registerMessageHandlersWithServer:*(v2 + 1)];
    }

    [SDSignalHandler setDelegate:v2 memoryStatusFlags:55];
    +[SDSignalHandler setupHandlers];
    if ((byte_1000A8278 & 1) == 0)
    {
      [*(v2 + 1) startListening];
      [*(v2 + 2) startListening];
      if (byte_1000A7C90 == 1)
      {
        v43 = +[SDEventMonitor sharedInstance];
        v44 = +[SDAppUninstallMonitor sharedInstance];
        [v44 registerHandlerWithEventMonitor:v43];
        v45 = +[SDMigrationMonitor sharedInstance];
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_10000BCE0;
        v53[3] = &unk_1000921C8;
        v54 = v2;
        [v45 monitorDataMigrationWithCompletionBlock:v53];

        [v43 startMonitoringEvents];
        if (byte_1000A7C90 == 1)
        {
          v46 = dispatch_get_global_queue(17, 0);
          tracing_dispatch_async();
        }
      }

      if (+[SSBiomeConsumers enabled])
      {
        v47 = +[SSBiomeConsumers sharedInstance];
        [v47 start];
      }

      v48 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.spotlightui"];
      [v48 addObserver:v2 forKeyPath:@"SPUISearchFirstTimeShowCount" options:0 context:0];
      [v48 addObserver:v2 forKeyPath:@"SBSearchDisabledDomains" options:0 context:0];
      [v2 setDefaultsCenter:v48];
      [v2 updateParsecEnabled];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_10000BDCC, @"AppleLanguagePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(LocalCenter, v2, sub_10000BDCC, kCFLocaleCurrentLocaleDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v51 = dispatch_get_global_queue(9, 0);
      tracing_dispatch_async();

      if (qword_1000A82A0 != -1)
      {
        sub_1000623B8();
      }
    }
  }

  return v2;
}

+ (id)datastores
{
  [a1 readyForQueries];
  v2 = qword_1000A8288;

  return v2;
}

- (void)updateParsecEnabled
{
  v3 = SPGetDisabledDomainSet();
  [v3 containsObject:@"DOMAIN_ZKWS"];
  v4 = 0;
  if (([v3 containsObject:@"DOMAIN_PARSEC"] & 1) == 0)
  {
    v5 = +[MCProfileConnection sharedConnection];
    v4 = [v5 isSpotlightInternetResultsAllowed];
  }

  ADClientSetValueForScalarKey();
  v6 = [(SDController *)self defaultsCenter];
  v7 = [v6 integerForKey:@"SPUISearchFirstTimeShowCount"];

  byte_1000A8279 = (v7 > 0) & v4;
  [qword_1000A8280 setParsecState:?];
  v8 = SPLogForSPLogCategoryDefault();
  v9 = v8;
  if (gSPLogDebugAsDefault)
  {
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v10 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v8, v10))
  {
    v17 = 134217984;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "[FEEDBACK-DEBUG] (_userPrefsChanged) firstTimeShowCount: %ld", &v17, 0xCu);
  }

  v11 = SPLogForSPLogCategoryDefault();
  v12 = v11;
  if (gSPLogDebugAsDefault)
  {
    v13 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v13 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v11, v13))
  {
    v17 = 67109120;
    LODWORD(v18) = v4 ^ 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "[FEEDBACK-DEBUG] (_userPrefsChanged) DOMAIN_PARSEC disabled: %d", &v17, 8u);
  }

  v14 = SPLogForSPLogCategoryDefault();
  v15 = v14;
  if (gSPLogDebugAsDefault)
  {
    v16 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v16 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v14, v16))
  {
    v17 = 67109120;
    LODWORD(v18) = byte_1000A8279;
    _os_log_impl(&_mh_execute_header, v15, v16, "[FEEDBACK-DEBUG] (_userPrefsChanged) _permitParsecFeedback: %d", &v17, 8u);
  }

  [SPFeedbackSender synchronizedBlock:&stru_100092530];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([v10 isEqualToString:@"SPUISearchFirstTimeShowCount"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"SBSearchDisabledDomains"))
  {
    [(SDController *)self updateParsecEnabled];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SDController;
    if ([(SDController *)&v14 respondsToSelector:"observeValueForKeyPath:ofObject:change:context:"])
    {
      v13.receiver = self;
      v13.super_class = SDController;
      [(SDController *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    }
  }
}

- (BOOL)blocklistCheck:(id)a3 withOptions:(int64_t)a4
{
  v4 = a4;
  v5 = a3;
  if (qword_1000A82B0)
  {
    if (v4 < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_100062414();
    if (v4 < 0)
    {
LABEL_6:
      if (!qword_1000A82D0)
      {
        sub_100062464(v5);
      }

      v7 = qword_1000A8280;
      if (qword_1000A8280)
      {
        goto LABEL_15;
      }

      v8 = +[NSUserDefaults standardUserDefaults];
      v9 = [v8 BOOLForKey:@"ParsecSplitRequests"];

      if (v9)
      {
        v10 = objc_alloc_init(SPParsecSuggestionsDatastore);
        [objc_opt_class() setParsecDatastore:v10];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10000C7F0;
        v23[3] = &unk_1000921C8;
        v11 = &v24;
        v24 = v10;
        v12 = v10;
        v13 = v23;
      }

      else
      {
        v14 = objc_alloc_init(SPParsecDatastore);
        if (!v14)
        {
LABEL_14:
          v7 = qword_1000A8280;
LABEL_15:
          v16 = [v7 appBlocklist];
          v6 = [v16 containsObject:v5];

          goto LABEL_16;
        }

        v15 = v14;
        [objc_opt_class() setParsecDatastore:v14];
        v18 = _NSConcreteStackBlock;
        v19 = 3221225472;
        v20 = sub_10000C800;
        v21 = &unk_1000921C8;
        v11 = &v22;
        v22 = v15;
        v12 = v15;
        v13 = &v18;
      }

      [SPFeedbackSender synchronizedBlock:v13, v18, v19, v20, v21];

      goto LABEL_14;
    }
  }

  if ((byte_1000A82A8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = 1;
LABEL_16:

  return v6;
}

- (id)taskForTopHitQueryWithQueryString:(id)a3 queryContext:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6 completionHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  +[SDController readyForQueries];
  v16 = +[SPCoreSpotlightDatastore sharedInstance];
  v17 = [v16 taskForTopHitQueryWithQueryString:v15 queryContext:v14 eventHandler:v13 resultsHandler:v12 completionHandler:v11];

  return v17;
}

- (BOOL)unlockedSinceBoot
{
  v2 = +[SDLockHandler sharedLockHandler];
  v3 = [v2 unlockedSinceBoot];

  return v3;
}

- (BOOL)deviceFirstUnlockedInMKB
{
  v2 = +[SDLockHandler sharedLockHandler];
  v3 = [v2 unlockedSinceBoot];

  return v3;
}

- (BOOL)deviceCXUnlocked
{
  v2 = +[SDLockHandler sharedLockHandler];
  v3 = [v2 cxUnlocked];

  return v3;
}

- (void)recordEngagementForBundleID:(id)a3 uniqueIdentifier:(id)a4 protectionClass:(id)a5 userQuery:(id)a6 date:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = +[PRSAnonymousPipelineManager sharedManager];
  [v16 userEngagedItemWithIdentifier:v14 forBundle:v15 forQuery:v12];

  v17 = objc_alloc_init(CSSearchableItem);
  [v17 setUniqueIdentifier:v14];

  [v17 setBundleID:v15];
  v18 = [CSSearchableItemAttributeSet alloc];
  v24[0] = @"kMDItemLastUsedDate";
  v24[1] = @"_kMDItemShortcutLastUsedDate";
  v25[0] = v11;
  v25[1] = v11;
  v24[2] = @"_kMDItemLaunchString";
  v25[2] = v12;
  v19 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];
  v20 = [v18 initWithAttributes:v19];
  [v17 setAttributeSet:v20];

  [v17 setIsUpdate:1];
  v21 = +[SPCoreSpotlightIndexer sharedInstance];
  v23 = v17;
  v22 = [NSArray arrayWithObjects:&v23 count:1];

  [v21 indexSearchableItems:v22 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v13 forBundleID:v15 options:0 completionHandler:0];
}

- (void)dumpTTRDebugFiles
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v2 = +[SDFeedbackInterceptor sharedInstance];
    [v2 dumpTTRDebugFiles];
  }
}

- (id)extraTTRInfo
{
  v2 = +[SDSearchQuery appGenreMap];
  v3 = +[SDSearchQuery searchContinuationCompatibilitySet];
  v4 = SPFastHiddenAppsGetNoBuild();
  v5 = +[SRResourcesManager sharedResourcesManager];
  v6 = [v5 allLoadedAssets];

  if (_os_feature_enabled_impl())
  {
    v7 = +[APApplication applicationsWithContentHiddenFromSearch];
    v8 = sub_10000CE44(v7);

    v9 = +[APApplication hiddenApplications];
    v10 = sub_10000CE44(v9);
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }

  v11 = [NSString stringWithFormat:@"\nApp Genre Cache:\n%@\n\nSearch Continuation Compatibility Cache:\n%@\n\n(MC)Hidden Apps:\n%@\n\nLoaded Assets:%@\n\nLocked Apps:%@\n\nHiddenApps:%@\n\n", v2, v3, v4, v6, v8, v10];
  v12 = [v11 dataUsingEncoding:4];

  return v12;
}

- (void)indexAvailableForProtectionClass:(id)a3 newIndex:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = SPLogForSPLogCategoryDefault();
  v8 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v7, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 138412546;
    v16 = v6;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v7, ((v8 & 1) == 0), "indexAvailable pc:%@ new: %d", buf, 0x12u);
  }

  if (([v6 isEqualToString:NSFileProtectionCompleteUntilFirstUserAuthentication] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"Priority"))
  {
    if ((byte_1000A8278 & 1) == 0)
    {
      v9 = +[SPApplicationIndexer sharedIndexer];
      [v9 start];
    }

    if (v4)
    {
      v10 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v16 = v6;
        v17 = 1024;
        v18 = 1;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "New index; trigger apps rebuild pc:%@ new: %d", buf, 0x12u);
      }

      v11 = SPFastApplicationsGetNoBuild();
      if ([v11 count])
      {
        v12 = +[SPApplicationIndexer sharedIndexer];
        v13 = [v11 allKeys];
        [v12 updateApplications:0 appBundleArray:v13 clean:0 activity:0];
      }
    }

    else
    {
      v14 = [(SDController *)self firstUnlockQueue];
      tracing_dispatch_async();
    }
  }
}

- (void)issueLoadTrial:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    dispatch_group_enter(v3);
  }

  v5 = +[SDLockHandler sharedLockHandler];
  v6 = [v5 unlockedSinceBoot];

  if (v6)
  {
    v7 = dispatch_get_global_queue(25, 0);
    v11[1] = _NSConcreteStackBlock;
    v11[2] = 3221225472;
    v11[3] = sub_10000ECBC;
    v11[4] = &unk_1000921C8;
    v8 = &v12;
    v12 = v4;
    v9 = v4;
  }

  else
  {
    v7 = +[SDController workQueue];
    v8 = v11;
    v11[0] = v4;
    v10 = v4;
  }

  tracing_dispatch_async();
}

- (BOOL)disableABCReporting:(id)a3
{
  if (a3)
  {
    return [a3 isEqualToString:NSFileProtectionCompleteUnlessOpen];
  }

  else
  {
    return 0;
  }
}

@end