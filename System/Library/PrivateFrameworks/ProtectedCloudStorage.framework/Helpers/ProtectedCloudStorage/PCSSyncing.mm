@interface PCSSyncing
+ (id)defaultPCSSyncing;
- (BOOL)activityIsScheduled:(id)scheduled;
- (BOOL)ensureMKExists:(_PCSIdentitySetData *)exists error:(__CFError *)error;
- (BOOL)forceSyncNeeded:(id)needed dsid:(id)dsid;
- (BOOL)getServicesToRoll:(id)roll handler:(id)handler;
- (BOOL)shouldRoll;
- (BOOL)shouldRollStingray;
- (PCSSyncing)initWithPCSKeySyncing:(id)syncing;
- (_PCSIdentitySetData)identityCopySet:(id)set;
- (id)getRollEpoch;
- (id)healthSummary;
- (id)initForTesting;
- (int64_t)attemptTimer;
- (void)checkForBackupStateChange;
- (void)clearNextSyncNegativeCache;
- (void)disableWalrusForAccount:(id)account withParameters:(id)parameters complete:(id)complete;
- (void)enableWalrusForAccount:(id)account withParameters:(id)parameters complete:(id)complete;
- (void)ensureManateeIdentitiesExist;
- (void)fetchAllDeviceKeys:(id)keys withReply:(id)reply;
- (void)fetchStats:(id)stats;
- (void)getAllClients:(id)clients;
- (void)getHealthSummary:(id)summary;
- (void)keyRollPending:(id)pending complete:(id)complete;
- (void)manateeStatus:(id)status complete:(id)complete;
- (void)migrateToiCDPForAccount:(id)account withParameters:(id)parameters complete:(id)complete;
- (void)mobileBackupRecordIDsWithReply:(id)reply;
- (void)mobileBackupStatus:(id)status;
- (void)notifyDailyEvent;
- (void)notifyEvent:(id)event;
- (void)notifyInternalEvent:(id)event;
- (void)notifyKeyRegistry;
- (void)queuedCheckRegistry:(id)registry withReply:(id)reply;
- (void)recordEpochForKeyroll;
- (void)repairWalrus;
- (void)restoreMobileBackup:(BOOL)backup dsid:(id)dsid withReply:(id)reply;
- (void)rollingComplete:(BOOL)complete;
- (void)scheduleRollAttempt;
- (void)setupIdentitiesForAccount:(id)account withParameters:(id)parameters optional:(BOOL)optional;
- (void)setupIdentitiesWithParameters:(id)parameters complete:(id)complete;
- (void)setupMetrics;
- (void)syncKeys:(id)keys withReply:(id)reply;
- (void)triggerCKKSSyncForService:(id)service dsid:(id)dsid publicKeys:(id)keys complete:(id)complete;
- (void)triggerDaily:(id)daily withReply:(id)reply;
- (void)triggerEscrowSyncWithDSID:(id)d accountIdentifier:(id)identifier settingsKeyExpirationDate:(id)date settingsKeyIdentifier:(id)keyIdentifier complete:(id)complete;
- (void)triggerKeyRolling;
- (void)triggerSyncingWithEscrowProxy:(id)proxy dsid:(id)dsid publicKeys:(id)keys accountIdentifier:(id)identifier settingsKeyExpirationDate:(id)date settingsKeyIdentifier:(id)keyIdentifier complete:(id)complete;
- (void)triggerWatchSyncing;
- (void)triggerWatchSyncing:(id)syncing;
- (void)userDBBackupRecordIDsWithReply:(id)reply;
- (void)wStateChanged;
@end

@implementation PCSSyncing

+ (id)defaultPCSSyncing
{
  if (qword_100040780 != -1)
  {
    sub_100022CB8();
  }

  v3 = qword_100040778;

  return v3;
}

- (id)initForTesting
{
  v12.receiver = self;
  v12.super_class = PCSSyncing;
  v2 = [(PCSSyncing *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ProtectedCloudStorage", v3);
    [(PCSSyncing *)v2 setInternalQueue:v4];

    v5 = objc_alloc_init(NSOperationQueue);
    serialOperationQueue = v2->_serialOperationQueue;
    v2->_serialOperationQueue = v5;

    [(NSOperationQueue *)v2->_serialOperationQueue setMaxConcurrentOperationCount:1];
    v7 = objc_alloc_init(NSUserDefaults);
    settings = v2->_settings;
    v2->_settings = v7;

    v9 = +[PCSAccountsModel defaultAccountsModel];
    [(PCSSyncing *)v2 setAccounts:v9];

    v10 = v2;
  }

  return v2;
}

- (PCSSyncing)initWithPCSKeySyncing:(id)syncing
{
  syncingCopy = syncing;
  v34.receiver = self;
  v34.super_class = PCSSyncing;
  v5 = [(PCSSyncing *)&v34 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.ProtectedCloudStorage", v6);
    [(PCSSyncing *)v5 setInternalQueue:v7];

    v8 = objc_alloc_init(NSOperationQueue);
    serialOperationQueue = v5->_serialOperationQueue;
    v5->_serialOperationQueue = v8;

    [(NSOperationQueue *)v5->_serialOperationQueue setMaxConcurrentOperationCount:1];
    v10 = objc_alloc_init(NSUserDefaults);
    settings = v5->_settings;
    v5->_settings = v10;

    v12 = [PCSIDSTransport transportWithIDSServiceName:off_100040620];
    v13 = [[PCSIDSSyncing alloc] initWithManager:syncingCopy transport:v12 serialQueue:v5->_serialOperationQueue];
    [(PCSSyncing *)v5 setSyncing:v13];

    [(PCSSyncing *)v5 setManager:syncingCopy];
    v14 = +[PCSAccountsModel defaultAccountsModel];
    [(PCSSyncing *)v5 setAccounts:v14];

    v15 = +[PCSMobileBackup defaultMobileBackup];
    [(PCSSyncing *)v5 setMobileBackup:v15];

    if ((_PCSIsMultiDevice() & 1) == 0)
    {
      v16 = [PCSUserRegistry alloc];
      mobileBackup = [(PCSSyncing *)v5 mobileBackup];
      v18 = [(PCSUserRegistry *)v16 initWithBackup:mobileBackup];
      [(PCSSyncing *)v5 setRegistry:v18];

      registry = [(PCSSyncing *)v5 registry];
      [registry setupStatCache];

      v20 = dispatch_queue_create("PCSUserRegistry", 0);
      [(PCSSyncing *)v5 setRegistryQueue:v20];

      registry2 = [(PCSSyncing *)v5 registry];
      [registry2 setupCloudKitSyncing];

      registry3 = [(PCSSyncing *)v5 registry];
      [registry3 registerCloudKitNotifications];
    }

    objc_initWeak(&location, v5);
    v23 = [[PCSDelayedAction alloc] initWithLabel:@"triggerWatchSyncing" delay:30 operationQueue:v5->_serialOperationQueue];
    [(PCSSyncing *)v5 setTriggerWatchSyncingAction:v23];

    triggerWatchSyncingAction = [(PCSSyncing *)v5 triggerWatchSyncingAction];
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_1000193C8;
    v31 = &unk_100038B28;
    objc_copyWeak(&v32, &location);
    [triggerWatchSyncingAction setAction:&v28];

    v25 = [(PCSSyncing *)v5 triggerWatchSyncingAction:v28];
    [v25 run];

    [(PCSSyncing *)v5 scheduleRollAttempt];
    v26 = v5;
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)setupMetrics
{
  v3 = +[PCSAnalytics logger];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000195A0;
  v5[3] = &unk_100039648;
  v5[4] = self;
  v4 = [v3 AddMultiSamplerForName:@"PCS-healthSummary" withTimeInterval:v5 block:SFAnalyticsSamplerIntervalOncePerReport];
}

- (id)healthSummary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:&off_10003B330 forKeyedSubscript:@"version"];
  v4 = +[PCSAccountsModel accountForCurrentPersona];
  aa_personID = [v4 aa_personID];

  if (aa_personID)
  {
    v6 = [(PCSSyncing *)self identityCopySet:aa_personID];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"noDSID"];
  }

  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"noIdentitySet"];
  v7 = 0;
  v8 = 1;
LABEL_6:
  v9 = [NSNumber numberWithBool:[(PCSSyncing *)self shouldRoll]];
  [v3 setObject:v9 forKeyedSubscript:@"shouldRoll"];

  getRollEpoch = [(PCSSyncing *)self getRollEpoch];
  v11 = [NSNumber numberWithInteger:[PCSAnalytics fuzzyDaysSinceDate:getRollEpoch]];
  [v3 setObject:v11 forKeyedSubscript:@"roll"];

  scheduledKeyrollActivity = [(PCSSyncing *)self scheduledKeyrollActivity];
  v13 = [NSNumber numberWithBool:[(PCSSyncing *)self activityIsScheduled:scheduledKeyrollActivity]];
  [v3 setObject:v13 forKeyedSubscript:@"keyrollScheduled"];

  if ((v8 & 1) == 0)
  {
    v14 = +[PCSMetrics metrics];
    [v14 addMetricsToHealthSummary:v3 withIdentitySet:v7];

    CFRelease(v7);
  }

  return v3;
}

- (void)triggerWatchSyncing
{
  triggerWatchSyncingAction = [(PCSSyncing *)self triggerWatchSyncingAction];
  [triggerWatchSyncingAction trigger];
}

- (void)notifyKeyRegistry
{
  registry = [(PCSSyncing *)self registry];

  if (registry)
  {
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x3032000000;
    v5[3] = sub_1000194C8;
    v5[4] = sub_1000194D8;
    v6 = os_transaction_create();
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100019904;
    v4[3] = &unk_100039670;
    v4[4] = v5;
    [(PCSSyncing *)self queuedCheckRegistry:&__NSDictionary0__struct withReply:v4];
    _Block_object_dispose(v5, 8);
  }
}

- (void)triggerWatchSyncing:(id)syncing
{
  syncingCopy = syncing;
  objc_initWeak(&location, self);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_1000194C8;
  v14[4] = sub_1000194D8;
  v15 = os_transaction_create();
  v5 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Trigger syncing with watches", buf, 2u);
  }

  syncing = [(PCSSyncing *)self syncing];
  havePeers = [syncing havePeers];

  if (havePeers)
  {
    syncingCopy[2](syncingCopy);
    v8 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Catching up local database changes from keychain", buf, 2u);
    }

    serialOperationQueue = self->_serialOperationQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100019C38;
    v11[3] = &unk_1000396E0;
    v11[4] = self;
    objc_copyWeak(&v12, &location);
    v11[5] = v14;
    [(NSOperationQueue *)serialOperationQueue addOperationWithBlock:v11];
    objc_destroyWeak(&v12);
  }

  else
  {
    v10 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No peers, not doing any syncing with watches", buf, 2u);
    }

    syncingCopy[2](syncingCopy);
  }

  _Block_object_dispose(v14, 8);

  objc_destroyWeak(&location);
}

- (void)notifyInternalEvent:(id)event
{
  eventCopy = event;
  if (qword_100040788 != -1)
  {
    sub_100022CCC();
  }

  v5 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Got darwin notification %@", buf, 0xCu);
  }

  if ([eventCopy isEqualToString:@"_CDPWalrusStateChangeDarwinNotification"])
  {
    [(PCSSyncing *)self wStateChanged];
  }

  else
  {
    if ([qword_100040790 containsObject:eventCopy])
    {
      [(PCSSyncing *)self triggerWatchSyncing];
    }

    if ([qword_1000407A0 containsObject:eventCopy])
    {
      v6 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MOBSTATE Got notification that mobile backup state changed.", buf, 2u);
      }

      if ([eventCopy isEqualToString:@"com.apple.ProtectedCloudStorage.test.mobileBackupStateChange"])
      {
        v7 = +[PCSAnalytics logger];
        v18 = 0;
        v8 = [PCSAccountsModel settingsKeyForKey:@"testRollEpoch" error:&v18];
        v9 = v18;
        v10 = v9;
        if (!v8 || v9)
        {
          v14 = qword_1000407B8;
          if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = v10;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "failed to fetch appropriate key: %@", buf, 0xCu);
          }
        }

        else
        {
          if ([(PCSSyncing *)self shouldRoll])
          {
            settings = [(PCSSyncing *)self settings];
            v12 = [settings BOOLForKey:v8];

            if (v12)
            {
              notify_post("com.apple.ProtectedCloudStorage.PendingKeyRoll");
            }
          }

          settings2 = [(PCSSyncing *)self settings];
          [settings2 setBool:1 forKey:v8];

          [(PCSSyncing *)self recordEpochForKeyroll];
          [v7 logSuccessForEvent:PCSEventTestKeyRollStateChange];
        }
      }

      else
      {
        [(PCSSyncing *)self checkForBackupStateChange];
      }
    }

    if ([eventCopy isEqualToString:@"com.apple.security.view-ready.Manatee"])
    {
      [(PCSSyncing *)self ensureManateeIdentitiesExist];
    }

    if ([(PCSSyncing *)self shouldRoll])
    {
      [(PCSSyncing *)self triggerKeyRolling];
    }

    if (([qword_100040798 containsObject:eventCopy] & 1) != 0 || objc_msgSend(qword_1000407A0, "containsObject:", eventCopy))
    {
      mobileBackup = [(PCSSyncing *)self mobileBackup];
      isBackupEnabled = [mobileBackup isBackupEnabled];

      if (isBackupEnabled)
      {
        v17 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "MOBSTATE Notifying registry.", buf, 2u);
        }

        [(PCSSyncing *)self notifyKeyRegistry];
      }
    }
  }
}

- (void)wStateChanged
{
  v3 = +[PCSAccountsModel accountForCurrentPersona];
  aa_personID = [v3 aa_personID];

  if (aa_personID)
  {
    v4 = [(PCSSyncing *)self identityCopySet:aa_personID];
    if (v4)
    {
      v5 = v4;
      v6 = +[PCSMetrics metrics];
      [v6 updateCurrentWState:v5 forceFetchFromServer:0];

      CFRelease(v5);
    }
  }

  _objc_release_x1();
}

- (void)clearNextSyncNegativeCache
{
  v15 = 0;
  v3 = [PCSAccountsModel settingsKeyForKey:@"nextRegistrySync" error:&v15];
  v4 = v15;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    settings = [(PCSSyncing *)self settings];
    [settings removeObjectForKey:v3];
  }

  else
  {
    v7 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to get key: %@", buf, 0xCu);
    }
  }

  v14 = 0;
  v9 = [PCSAccountsModel settingsKeyForKey:@"nextRegistrySyncEnterprise" error:&v14];
  v10 = v14;
  v11 = v10;
  if (!v3 || v10)
  {
    v13 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to get key: %@", buf, 0xCu);
    }
  }

  else
  {
    settings2 = [(PCSSyncing *)self settings];
    [settings2 removeObjectForKey:v9];
  }
}

- (void)mobileBackupStatus:(id)status
{
  statusCopy = status;
  mobileBackup = [(PCSSyncing *)self mobileBackup];
  (*(status + 2))(statusCopy, [mobileBackup isBackupEnabled], 0);
}

- (id)getRollEpoch
{
  v15 = 0;
  v3 = [PCSAccountsModel settingsKeyForKey:kPCSPendingRollEpoch error:&v15];
  v4 = v15;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    settings = [(PCSSyncing *)self settings];
    v10 = [settings objectForKey:v3];

    if (v10)
    {
      v11 = +[NSDate date];
      if ([v10 compare:v11] == 1 || (objc_msgSend(v10, "timeIntervalSince1970"), v12 == 0.0))
      {
        settings2 = [(PCSSyncing *)self settings];
        [settings2 removeObjectForKey:v3];

        v8 = 0;
      }

      else
      {
        v8 = v10;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to get key: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (void)recordEpochForKeyroll
{
  v3 = +[NSDate date];
  v10 = 0;
  v4 = [PCSAccountsModel settingsKeyForKey:kPCSPendingRollEpoch error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    settings = [(PCSSyncing *)self settings];
    [settings setObject:v3 forKey:v4];
  }

  else
  {
    v8 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to get key: %@", buf, 0xCu);
    }
  }
}

- (void)checkForBackupStateChange
{
  objc_initWeak(&location, self);
  v3 = dispatch_semaphore_create(0);
  serialOperationQueue = [(PCSSyncing *)self serialOperationQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001A9AC;
  v6[3] = &unk_100038DC0;
  objc_copyWeak(&v9, &location);
  v5 = v3;
  v7 = v5;
  selfCopy = self;
  [serialOperationQueue addOperationWithBlock:v6];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (BOOL)shouldRoll
{
  getRollEpoch = [(PCSSyncing *)self getRollEpoch];
  if (getRollEpoch)
  {
    v4 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = getRollEpoch;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "There is a pending keyRoll for epoch %@", &v7, 0xCu);
    }

    shouldRollStingray = 1;
  }

  else
  {
    shouldRollStingray = [(PCSSyncing *)self shouldRollStingray];
  }

  return shouldRollStingray;
}

- (BOOL)shouldRollStingray
{
  if (!_os_feature_enabled_impl())
  {
    v21 = 0;
    v5 = [PCSAccountsModel settingsKeyForKey:kPCSSettingStingrayRoll error:&v21];
    v6 = v21;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      settings = [(PCSSyncing *)self settings];
      v11 = [settings objectForKey:v5];

      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = +[NSDate distantPast];
        }

        v14 = v12;
        if (_os_feature_enabled_impl())
        {
          v15 = XPC_ACTIVITY_INTERVAL_1_MIN;
        }

        else
        {
          v15 = XPC_ACTIVITY_INTERVAL_8_HOURS;
        }

        v16 = +[NSDate now];
        [v16 timeIntervalSinceDate:v14];
        v18 = v17;

        if (v18 > v15)
        {

          v4 = 1;
          goto LABEL_26;
        }

        v19 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v23 = v14;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Insufficient time elapsed since previous Stingray key roll attempt (%{public}@)", buf, 0xCu);
        }
      }

      else
      {
        v13 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Stingray key roll not required", buf, 2u);
        }
      }
    }

    else
    {
      v9 = qword_1000407B8;
      v4 = 0;
      if (!os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:

        return v4;
      }

      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to get key: %@", buf, 0xCu);
    }

    v4 = 0;
    goto LABEL_26;
  }

  v3 = qword_1000407B8;
  v4 = 0;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Feature enabled, no stingray roll", buf, 2u);
    return 0;
  }

  return v4;
}

- (int64_t)attemptTimer
{
  getRollEpoch = [(PCSSyncing *)self getRollEpoch];
  v4 = getRollEpoch;
  if (getRollEpoch)
  {
    [getRollEpoch timeIntervalSinceNow];
    if (v5 <= 0.0)
    {
      v12 = -v5;
      v6 = XPC_ACTIVITY_INTERVAL_5_MIN;
      if (v12 >= XPC_ACTIVITY_INTERVAL_5_MIN)
      {
        v6 = XPC_ACTIVITY_INTERVAL_30_MIN;
        if (v12 >= XPC_ACTIVITY_INTERVAL_30_MIN)
        {
          v6 = XPC_ACTIVITY_INTERVAL_1_HOUR;
          if (v12 >= XPC_ACTIVITY_INTERVAL_1_HOUR)
          {
            v6 = XPC_ACTIVITY_INTERVAL_4_HOURS;
            if (v12 >= XPC_ACTIVITY_INTERVAL_4_HOURS)
            {
              v6 = XPC_ACTIVITY_INTERVAL_8_HOURS;
            }
          }
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    settings = [(PCSSyncing *)self settings];
    v8 = [settings objectForKey:kPCSSettingStingrayRoll];

    v9 = _os_feature_enabled_impl();
    v10 = &XPC_ACTIVITY_INTERVAL_1_MIN;
    if (!v9)
    {
      v10 = &XPC_ACTIVITY_INTERVAL_8_HOURS;
    }

    v11 = *v10;
    if (v8)
    {
      v6 = v11;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)activityIsScheduled:(id)scheduled
{
  if (!scheduled)
  {
    return 0;
  }

  v3 = xpc_activity_copy_criteria(scheduled);
  v4 = v3;
  if (v3)
  {
    v5 = xpc_dictionary_get_value(v3, XPC_ACTIVITY_RANDOM_INITIAL_DELAY);
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)scheduleRollAttempt
{
  attemptTimer = [(PCSSyncing *)self attemptTimer];
  if (attemptTimer)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10001B484;
    v5[3] = &unk_100039728;
    v5[4] = self;
    v5[5] = attemptTimer;
    xpc_activity_register("com.apple.ProtectedCloudStorage.scheduledKeyroll", XPC_ACTIVITY_CHECK_IN, v5);
  }

  else
  {
    v4 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No identity key roll is required, unscheduling keyroll activity.", buf, 2u);
    }

    [(PCSSyncing *)self setScheduledKeyrollActivity:0];
    xpc_activity_unregister("com.apple.ProtectedCloudStorage.scheduledKeyroll");
  }
}

- (BOOL)getServicesToRoll:(id)roll handler:(id)handler
{
  rollCopy = roll;
  handlerCopy = handler;
  getRollEpoch = [(PCSSyncing *)self getRollEpoch];
  v9 = [(PCSSyncing *)self identityCopySet:rollCopy];
  if (v9)
  {
    v23 = 0;
    PCSIdentitySetIsWalrusWithForceFetch();
    _os_feature_enabled_impl();
    v10 = _PCSServiceItemsGetNoRollStingrayServiceTypes();
    *buf = 0;
    v18 = buf;
    v19 = 0x3032000000;
    v20 = sub_1000194C8;
    v21 = sub_1000194D8;
    v22 = 0;
    v13 = getRollEpoch;
    v16 = handlerCopy;
    v14 = v10;
    v15 = rollCopy;
    PCSServiceItemsInfoIteration();
    CFRelease(v9);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "getServicesToRoll: no identity set", buf, 2u);
    }
  }

  return v9 != 0;
}

- (void)rollingComplete:(BOOL)complete
{
  v18 = 0;
  v5 = [PCSAccountsModel settingsKeyForKey:kPCSPendingRollEpoch error:&v18];
  v6 = v18;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    settings = [(PCSSyncing *)self settings];
    [settings removeObjectForKey:v5];
  }

  else
  {
    v9 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to get key: %@", buf, 0xCu);
    }
  }

  if (!complete)
  {
    v17 = 0;
    v11 = [PCSAccountsModel settingsKeyForKey:kPCSSettingStingrayRoll error:&v17];
    v12 = v17;
    v13 = v12;
    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      settings2 = [(PCSSyncing *)self settings];
      [settings2 removeObjectForKey:v11];
    }

    else
    {
      v15 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to get key: %@", buf, 0xCu);
      }
    }
  }

  [(PCSSyncing *)self scheduleRollAttempt];
}

- (void)triggerKeyRolling
{
  objc_initWeak(&location, self);
  serialOperationQueue = [(PCSSyncing *)self serialOperationQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001BEF8;
  v4[3] = &unk_100038F00;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [serialOperationQueue addOperationWithBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)ensureMKExists:(_PCSIdentitySetData *)exists error:(__CFError *)error
{
  cf = 0;
  v5 = _PCSIdentitySetCopyCurrentIdentityInternal();
  if (v5)
  {
    Master = v5;
LABEL_3:
    v7 = 1;
    goto LABEL_4;
  }

  if (CFErrorGetCode(cf) != -25300)
  {
LABEL_15:
    if (CFErrorGetCode(cf) == -25300)
    {
      v13 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v13);
      }

      Master = PCSIdentityCreateMaster();
      if (Master && PCSIdentitySetAddIdentityWithError())
      {
        v7 = PCSIdentitySetSetCurrentIdentityWithError();
        goto LABEL_4;
      }
    }

    else
    {
      Master = 0;
    }

    v7 = 0;
LABEL_4:
    v8 = cf;
    if (error && cf)
    {
      *error = CFRetain(cf);
      v8 = cf;
    }

    if (v8)
    {
      cf = 0;
      CFRelease(v8);
    }

    if (Master)
    {
      CFRelease(Master);
    }

    return v7;
  }

  v14 = 0;
  v10 = [PCSCKKS fetchWithTimeout:20 error:&v14];
  v11 = v14;
  v12 = v11;
  if (v10)
  {
    Master = _PCSIdentitySetCopyCurrentIdentityInternal();

    if (Master)
    {
      goto LABEL_3;
    }

    goto LABEL_15;
  }

  if (error)
  {
    *error = v11;
  }

  return 0;
}

- (void)triggerEscrowSyncWithDSID:(id)d accountIdentifier:(id)identifier settingsKeyExpirationDate:(id)date settingsKeyIdentifier:(id)keyIdentifier complete:(id)complete
{
  dCopy = d;
  identifierCopy = identifier;
  dateCopy = date;
  keyIdentifierCopy = keyIdentifier;
  completeCopy = complete;
  objc_initWeak(&location, self);
  serialOperationQueue = [(PCSSyncing *)self serialOperationQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10001CC70;
  v23[3] = &unk_1000397F0;
  objc_copyWeak(&v30, &location);
  v18 = completeCopy;
  v29 = v18;
  v19 = dCopy;
  v24 = v19;
  v20 = identifierCopy;
  v25 = v20;
  selfCopy = self;
  v21 = keyIdentifierCopy;
  v27 = v21;
  v22 = dateCopy;
  v28 = v22;
  [serialOperationQueue addOperationWithBlock:v23];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- (BOOL)forceSyncNeeded:(id)needed dsid:(id)dsid
{
  neededCopy = needed;
  dsidCopy = dsid;
  if (!neededCopy)
  {
    LOBYTE(v11) = 0;
    goto LABEL_22;
  }

  if (![neededCopy count])
  {
    v16 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "received empty public keys array, will force CKKS fetch";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
    }

LABEL_21:
    LOBYTE(v11) = 1;
    goto LABEL_22;
  }

  v8 = [(PCSSyncing *)self identityCopySet:dsidCopy];
  if (!v8)
  {
    v16 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "failed to create identity set, will force CKKS fetch";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v9 = v8;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = neededCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v11)
  {
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = PCSIdentitySetCopyIdentity();
        if (!v15)
        {
          LOBYTE(v11) = 1;
          goto LABEL_17;
        }

        CFRelease(v15);
      }

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  CFRelease(v9);
LABEL_22:

  return v11;
}

- (void)triggerCKKSSyncForService:(id)service dsid:(id)dsid publicKeys:(id)keys complete:(id)complete
{
  serviceCopy = service;
  dsidCopy = dsid;
  keysCopy = keys;
  completeCopy = complete;
  objc_initWeak(&location, self);
  if ((PCSSupportsPersonaMultiuser() & 1) == 0)
  {
    v25 = 0;
    v14 = [PCSAccountsModel currentPersonaSupportsPrimaryAccount:&v25];
    v15 = v25;
    v16 = v15;
    if ((v14 & 1) == 0)
    {
      (*(completeCopy + 2))(completeCopy, 0, 0, v15);

      goto LABEL_6;
    }
  }

  serialOperationQueue = [(PCSSyncing *)self serialOperationQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001D660;
  v18[3] = &unk_100039840;
  objc_copyWeak(&v24, &location);
  v23 = completeCopy;
  v19 = serviceCopy;
  selfCopy = self;
  v21 = keysCopy;
  v22 = dsidCopy;
  [serialOperationQueue addOperationWithBlock:v18];

  objc_destroyWeak(&v24);
LABEL_6:
  objc_destroyWeak(&location);
}

- (void)triggerSyncingWithEscrowProxy:(id)proxy dsid:(id)dsid publicKeys:(id)keys accountIdentifier:(id)identifier settingsKeyExpirationDate:(id)date settingsKeyIdentifier:(id)keyIdentifier complete:(id)complete
{
  proxyCopy = proxy;
  dsidCopy = dsid;
  keysCopy = keys;
  identifierCopy = identifier;
  dateCopy = date;
  keyIdentifierCopy = keyIdentifier;
  completeCopy = complete;
  cf = 0;
  if (CFEqual(proxyCopy, kPCSServiceMaster) || (v23 = [(PCSSyncing *)self identityCopySet:dsidCopy]) == 0)
  {
    _PCSError();
  }

  else
  {
    v22 = v23;
    if (proxyCopy)
    {
      IsManatee = PCSServiceItemTypeIsManatee();
    }

    else
    {
      IsManatee = 0;
    }

    if (!PCSIdentitySetIsWalrusWithForceFetch())
    {
      if (!IsManatee)
      {
        [(PCSSyncing *)self triggerEscrowSyncWithDSID:dsidCopy accountIdentifier:identifierCopy settingsKeyExpirationDate:dateCopy settingsKeyIdentifier:keyIdentifierCopy complete:completeCopy];
        goto LABEL_5;
      }

      goto LABEL_17;
    }

    if ([(PCSSyncing *)self ensureMKExists:v22 error:&cf])
    {
      if ((IsManatee & 1) == 0)
      {
        [(PCSSyncing *)self triggerEscrowSyncWithDSID:dsidCopy accountIdentifier:identifierCopy settingsKeyExpirationDate:dateCopy settingsKeyIdentifier:keyIdentifierCopy complete:&stru_100039880];
      }

LABEL_17:
      [(PCSSyncing *)self triggerCKKSSyncForService:proxyCopy dsid:dsidCopy publicKeys:keysCopy complete:completeCopy];
      goto LABEL_5;
    }

    CFRelease(v22);
  }

  (*(completeCopy + 2))(completeCopy, 0, 0, cf);
  v22 = cf;
  if (cf)
  {
    cf = 0;
LABEL_5:
    CFRelease(v22);
  }
}

- (void)setupIdentitiesForAccount:(id)account withParameters:(id)parameters optional:(BOOL)optional
{
  accountCopy = account;
  parametersCopy = parameters;
  objc_initWeak(&location, self);
  serialOperationQueue = [(PCSSyncing *)self serialOperationQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001DDE0;
  v13[3] = &unk_100039238;
  objc_copyWeak(&v16, &location);
  v11 = parametersCopy;
  v14 = v11;
  optionalCopy = optional;
  v12 = accountCopy;
  v15 = v12;
  [serialOperationQueue addOperationWithBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)migrateToiCDPForAccount:(id)account withParameters:(id)parameters complete:(id)complete
{
  accountCopy = account;
  parametersCopy = parameters;
  completeCopy = complete;
  objc_initWeak(&location, self);
  serialOperationQueue = [(PCSSyncing *)self serialOperationQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001E150;
  v14[3] = &unk_1000391C0;
  objc_copyWeak(&v17, &location);
  v12 = parametersCopy;
  v15 = v12;
  v13 = completeCopy;
  v16 = v13;
  [serialOperationQueue addOperationWithBlock:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)enableWalrusForAccount:(id)account withParameters:(id)parameters complete:(id)complete
{
  accountCopy = account;
  parametersCopy = parameters;
  completeCopy = complete;
  objc_initWeak(&location, self);
  serialOperationQueue = [(PCSSyncing *)self serialOperationQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001E2F8;
  v14[3] = &unk_1000391C0;
  objc_copyWeak(&v17, &location);
  v12 = parametersCopy;
  v15 = v12;
  v13 = completeCopy;
  v16 = v13;
  [serialOperationQueue addOperationWithBlock:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)disableWalrusForAccount:(id)account withParameters:(id)parameters complete:(id)complete
{
  accountCopy = account;
  parametersCopy = parameters;
  completeCopy = complete;
  objc_initWeak(&location, self);
  serialOperationQueue = [(PCSSyncing *)self serialOperationQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001E588;
  v14[3] = &unk_1000391C0;
  objc_copyWeak(&v17, &location);
  v12 = parametersCopy;
  v15 = v12;
  v13 = completeCopy;
  v16 = v13;
  [serialOperationQueue addOperationWithBlock:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (_PCSIdentitySetData)identityCopySet:(id)set
{
  setCopy = set;
  v5 = setCopy;
  v17[1] = 0;
  if (!setCopy)
  {
    v17[0] = 0;
    v9 = [PCSAccountsModel currentPersonaSupportsPrimaryAccount:v17];
    v10 = v17[0];
    v11 = qword_1000407B8;
    v12 = os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v12)
      {
        v13 = v11;
        accounts = [(PCSSyncing *)self accounts];
        lastError = [accounts lastError];
        *buf = 138412290;
        v21 = lastError;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Fail getting dsid: %@", buf, 0xCu);
      }
    }

    else if (v12)
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Fail getting dsid, error: %@", buf, 0xCu);
    }

    v6 = 0;
    goto LABEL_11;
  }

  v18 = kPCSSetupDSID;
  v19 = setCopy;
  v6 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v7 = PCSIdentitySetCreate();
  if (!v7)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = v7;
LABEL_12:

  return v8;
}

- (void)repairWalrus
{
  internalQueue = [(PCSSyncing *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  accounts = [(PCSSyncing *)self accounts];
  dsid = [accounts dsid];

  v6 = [(PCSSyncing *)self identityCopySet:dsid];
  if (v6)
  {
    v7 = v6;
    v8 = PCSIdentitySetIsWalrusWithForceFetch();
    CFRelease(v7);
    if (v8)
    {
      v11 = kPCSSetupDSID;
      v12 = dsid;
      v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      [(PCSSyncing *)self enableWalrusForAccount:0 withParameters:v10 complete:&stru_100039938];
    }
  }

  else
  {
    v9 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "repairWalrus: no identity set", buf, 2u);
    }
  }
}

- (void)notifyDailyEvent
{
  internalQueue = [(PCSSyncing *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FA70;
  block[3] = &unk_100038C58;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)notifyEvent:(id)event
{
  eventCopy = event;
  internalQueue = [(PCSSyncing *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001FE18;
  v7[3] = &unk_100038CA8;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(internalQueue, v7);
}

- (void)queuedCheckRegistry:(id)registry withReply:(id)reply
{
  replyCopy = reply;
  registry = [(PCSSyncing *)self registry];
  if (registry && (v7 = registry, -[PCSSyncing mobileBackup](self, "mobileBackup"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isBackupEnabled], v8, v7, v9))
  {
    registryQueue = [(PCSSyncing *)self registryQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001FFC4;
    block[3] = &unk_100038F50;
    block[4] = self;
    v15 = replyCopy;
    dispatch_async(registryQueue, block);

    v11 = v15;
  }

  else
  {
    v12 = kPCSErrorDomain;
    v16 = NSLocalizedDescriptionKey;
    v17 = @"Mobile backup is disabled";
    v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = [NSError errorWithDomain:v12 code:137 userInfo:v11];
    (*(replyCopy + 2))(replyCopy, v13);
  }
}

- (void)getAllClients:(id)clients
{
  clientsCopy = clients;
  manager = [(PCSSyncing *)self manager];
  allClients = [manager allClients];

  +[NSMutableDictionary dictionary];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000202E0;
  v9 = v8[3] = &unk_1000399E8;
  selfCopy = self;
  v7 = v9;
  [allClients enumerateObjectsUsingBlock:v8];
  clientsCopy[2](clientsCopy, v7, 0);
}

- (void)syncKeys:(id)keys withReply:(id)reply
{
  replyCopy = reply;
  keysCopy = keys;
  syncing = [(PCSSyncing *)self syncing];
  [syncing triggerIDSSyncing:keysCopy];

  replyCopy[2](replyCopy, &__NSDictionary0__struct, 0);
}

- (void)triggerDaily:(id)daily withReply:(id)reply
{
  replyCopy = reply;
  [(PCSSyncing *)self notifyDailyEvent];
  replyCopy[2](replyCopy, &__NSDictionary0__struct, 0);
}

- (void)fetchAllDeviceKeys:(id)keys withReply:(id)reply
{
  replyCopy = reply;
  v5 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching all device keys", v7, 2u);
  }

  v6 = PCSErrorCreate();
  (*(replyCopy + 2))(replyCopy, 0, 0, 0, 0, v6);
}

- (void)restoreMobileBackup:(BOOL)backup dsid:(id)dsid withReply:(id)reply
{
  backupCopy = backup;
  dsidCopy = dsid;
  replyCopy = reply;
  if ((PCSSupportsPersonaMultiuser() & 1) == 0)
  {
    v84 = 0;
    v9 = [PCSAccountsModel currentPersonaSupportsPrimaryAccount:&v84];
    v10 = v84;
    if ((v9 & 1) == 0)
    {
      v76 = v10;
      (*(replyCopy + 2))(replyCopy, 0, 0, 0);
      goto LABEL_24;
    }
  }

  v11 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "restore";
    if (backupCopy)
    {
      v12 = "test";
    }

    *buf = 136315138;
    *v86 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PCSRestoreCKBackupWithCompletion: %s", buf, 0xCu);
  }

  v13 = +[PCSAnalytics logger];
  v72 = PCSEventMobileRestore;
  v73 = PCSEventMBValidate;
  if (backupCopy)
  {
    v14 = PCSEventMBValidate;
  }

  else
  {
    v14 = PCSEventMobileRestore;
  }

  v15 = v14;
  registry = [(PCSSyncing *)self registry];

  v76 = v13;
  if (!registry)
  {
    v18 = PCSErrorCreate();
    (*(replyCopy + 2))(replyCopy, 0, 0, 0, v18);
    v27 = v13;
LABEL_22:
    [v27 logRecoverableError:v18 forEvent:v15 withAttributes:0];
    goto LABEL_23;
  }

  if (!dsidCopy)
  {
    v18 = PCSErrorCreate();
    goto LABEL_21;
  }

  v83 = 0;
  v17 = [PCSAccountsModel accountEligibleForMBRestoreForDSID:dsidCopy error:&v83];
  v18 = v83;
  if ((v17 & 1) == 0)
  {
LABEL_21:
    (*(replyCopy + 2))(replyCopy, 0, 0, 0, v18);
    v27 = v13;
    goto LABEL_22;
  }

  registry2 = [(PCSSyncing *)self registry];
  syncUserRegistry = [registry2 syncUserRegistry];

  [syncUserRegistry waitUntilFinished];
  v21 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    error = [syncUserRegistry error];
    *buf = 138412290;
    *v86 = error;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "restoreMobileBackup: sync finished with: %@", buf, 0xCu);
  }

  error2 = [syncUserRegistry error];

  if (error2)
  {
    error3 = [syncUserRegistry error];
    v26 = CKXPCSuitableError();
  }

  else
  {
    v26 = 0;
  }

  registry3 = [(PCSSyncing *)self registry];
  allMobileBackupKeys = [registry3 allMobileBackupKeys];

  v69 = allMobileBackupKeys;
  v70 = v26;
  if (!allMobileBackupKeys)
  {
    v44 = 0;
    v78 = 0;
    v75 = 0;
    goto LABEL_71;
  }

  v30 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "restoreMobileBackup: got reply from server", buf, 2u);
  }

  v38 = sub_100020E40(kCFAllocatorDefault, v31, v32, v33, v34, v35, v36, v37, kPCSSetupDSID, dsidCopy);
  Keychain = PCSIdentitySetCreateKeychain();
  v77 = PCSIdentitySetCreateKeychain();
  if (v38)
  {
    CFRelease(v38);
  }

  if (!Keychain)
  {
    v63 = PCSErrorCreate();

    v75 = 0;
    v78 = 0;
    v44 = 0;
    v70 = v63;
    goto LABEL_69;
  }

  v65 = syncUserRegistry;
  v66 = v18;
  v40 = v15;
  v67 = replyCopy;
  v68 = dsidCopy;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v41 = allMobileBackupKeys;
  v42 = [v41 countByEnumeratingWithState:&v79 objects:v89 count:16];
  if (!v42)
  {
    v44 = 0;
    v78 = 0;
    v75 = 0;
    goto LABEL_66;
  }

  v43 = v42;
  v44 = 0;
  v78 = 0;
  v75 = 0;
  v45 = *v80;
  v46 = @"Would Be";
  if (!backupCopy)
  {
    v46 = &stru_100039CF8;
  }

  v71 = v46;
  v47 = v76;
  do
  {
    for (i = 0; i != v43; i = i + 1)
    {
      if (*v80 != v45)
      {
        objc_enumerationMutation(v41);
      }

      data = [*(*(&v79 + 1) + 8 * i) data];
      v50 = PCSBackupCopyRecoveredKeyWithIdentitySet();

      if (v50)
      {
        ServiceName = PCSIdentityGetServiceName();
        if (ServiceName)
        {
          v52 = kPCSMessages3 == 0;
        }

        else
        {
          v52 = 1;
        }

        if (v52)
        {
          if (ServiceName == kPCSMessages3)
          {
LABEL_51:
            PCSIdentityGetPublicKey();
            v55 = PCSIdentitySetCopyIdentity();
            v56 = qword_1000407B8;
            v57 = os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT);
            if (v55)
            {
              if (v57)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Already have identity", buf, 2u);
              }

              CFRelease(v55);
              v47 = v76;
              [v76 logSuccessForEvent:v40];
              ++v78;
            }

            else
            {
              if (v57)
              {
                *buf = 138412290;
                *v86 = v71;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%@ Adding missing identity", buf, 0xCu);
              }

              if (backupCopy)
              {
                key = PCSIdentityGetServiceName();
                v58 = PCSErrorCreate();
                v47 = v76;
                [v76 logRecoverableError:v58 forEvent:v73 withAttributes:{0, key}];
              }

              else
              {
                PCSIdentitySetAddIdentity();
                v47 = v76;
                [v76 logSuccessForEvent:v72];
              }

              ++v75;
            }
          }
        }

        else if (CFEqual(ServiceName, kPCSMessages3))
        {
          goto LABEL_51;
        }

        CFRelease(v50);
        continue;
      }

      v53 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v86 = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "PCSRestoreCKBackupWithCompletion failed with: %@", buf, 0xCu);
      }

      [v47 logRecoverableError:0 forEvent:v40 withAttributes:0];
      v44 = (v44 + 1);
    }

    v43 = [v41 countByEnumeratingWithState:&v79 objects:v89 count:16];
  }

  while (v43);
LABEL_66:

  v59 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v86 = v75;
    *&v86[4] = 1024;
    *&v86[6] = v78;
    v87 = 1024;
    v88 = v44;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "recover stats: Recovered: %d AlreadyPresent: %d RecoveryIssue: %d", buf, 0x14u);
  }

  CFRelease(Keychain);
  replyCopy = v67;
  dsidCopy = v68;
  v15 = v40;
  syncUserRegistry = v65;
  v18 = v66;
LABEL_69:
  if (v77)
  {
    CFRelease(v77);
  }

LABEL_71:
  v60 = [[NSNumber alloc] initWithInt:v44];
  v61 = [[NSNumber alloc] initWithInt:v75];
  v62 = [[NSNumber alloc] initWithInt:v78];
  (*(replyCopy + 2))(replyCopy, v60, v61, v62, v70);

  if (v70)
  {
    [v76 logRecoverableError:v70 forEvent:v15 withAttributes:0];
  }

LABEL_23:
LABEL_24:
}

- (void)mobileBackupRecordIDsWithReply:(id)reply
{
  replyCopy = reply;
  registry = [(PCSSyncing *)self registry];

  if (registry)
  {
    registry2 = [(PCSSyncing *)self registry];
    v8 = 0;
    v7 = [registry2 fetchMobileBackupRecordIDsWithError:&v8];
    registry = v8;
  }

  else
  {
    v7 = 0;
  }

  replyCopy[2](replyCopy, v7, registry);
}

- (void)userDBBackupRecordIDsWithReply:(id)reply
{
  replyCopy = reply;
  registry = [(PCSSyncing *)self registry];

  if (registry)
  {
    registry2 = [(PCSSyncing *)self registry];
    v8 = 0;
    v7 = [registry2 userDBBackupRecordIDsWithError:&v8];
    registry = v8;
  }

  else
  {
    v7 = 0;
  }

  replyCopy[2](replyCopy, v7, registry);
}

- (void)fetchStats:(id)stats
{
  statsCopy = stats;
  registry = [(PCSSyncing *)self registry];

  if (registry)
  {
    registry2 = [(PCSSyncing *)self registry];
    stats = [registry2 stats];
    statsCopy[2](statsCopy, stats);

    statsCopy = stats;
  }

  else
  {
    registry2 = objc_alloc_init(UserRegistryStats);
    (statsCopy[2])(statsCopy);
  }
}

- (void)manateeStatus:(id)status complete:(id)complete
{
  statusCopy = status;
  completeCopy = complete;
  v7 = +[PCSAccountsModel accountForCurrentPersona];
  v8 = objc_alloc_init(OTConfigurationContext);
  aa_altDSID = [v7 aa_altDSID];
  [v8 setAltDSID:aa_altDSID];

  [v8 setContext:OTDefaultContext];
  v10 = [[OTClique alloc] initWithContextData:v8];
  v11 = objc_alloc_init(OTOperationConfiguration);
  [v11 setUseCachedAccountStatus:1];
  v26 = 0;
  v12 = [v10 fetchCliqueStatus:v11 error:&v26];
  v13 = v26;
  if (v12)
  {
    v14 = pcsLogObjForScope();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PCSReportManateeStatus otStatus: %@", &buf, 0xCu);
    }

    if (v12 + 1 > 4)
    {
      v15 = 30;
    }

    else
    {
      v15 = dword_100029B10[v12 + 1];
    }

    completeCopy[2](completeCopy, v15);
  }

  if (statusCopy)
  {
    v25 = 0;
    v16 = [CKKSControl controlObject:&v25];
    v21 = v25;
    if (v16)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v32 = 0x2020000000;
      v33 = 9;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000214E0;
      v22[3] = &unk_100039A10;
      p_buf = &buf;
      v17 = dispatch_semaphore_create(0);
      v23 = v17;
      [v16 rpcStatus:statusCopy reply:v22];
      dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
      v18 = pcsLogObjForScope();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(*(&buf + 1) + 24);
        *v27 = 138412546;
        v28 = statusCopy;
        v29 = 1024;
        v30 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "PCSReportManateeStatus %@ rpcStatus: %d", v27, 0x12u);
      }

      completeCopy[2](completeCopy, *(*(&buf + 1) + 24));
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v20 = pcsLogObjForScope();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "PCSReportManateeStatus rpcStatus: %@", &buf, 0xCu);
      }

      completeCopy[2](completeCopy, 10);
    }
  }

  else
  {
    completeCopy[2](completeCopy, 0);
  }
}

- (void)keyRollPending:(id)pending complete:(id)complete
{
  pendingCopy = pending;
  completeCopy = complete;
  if ((PCSSupportsPersonaMultiuser() & 1) == 0)
  {
    v14 = 0;
    v8 = [PCSAccountsModel currentPersonaSupportsPrimaryAccount:&v14];
    v9 = v14;
    v10 = v9;
    if ((v8 & 1) == 0)
    {
      completeCopy[2](completeCopy, 0, v9);
LABEL_11:

      goto LABEL_12;
    }
  }

  if (pendingCopy)
  {
    v10 = +[PCSAccountsModel defaultAccountsModel];
    dsid = [v10 dsid];
    v12 = [(PCSSyncing *)self identityCopySet:dsid];

    if (v12)
    {
      IsPending = PCSDaemonKeyRollIsPending();
      CFRelease(v12);
    }

    else
    {
      IsPending = 0;
    }

    completeCopy[2](completeCopy, IsPending, 0);
    goto LABEL_11;
  }

  completeCopy[2](completeCopy, 0, 0);
LABEL_12:
}

- (void)ensureManateeIdentitiesExist
{
  v3 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Kicking off batch manatee identity creation from Manatee view ready notification", &v8, 2u);
  }

  v4 = _PCSServiceItemsGetAllManateeServices();
  v5 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Services to be created: %@", &v8, 0xCu);
  }

  accounts = [(PCSSyncing *)self accounts];
  dsid = [accounts dsid];
  [(PCSSyncing *)self createIdentities:v4 dsid:dsid roll:0 sync:1 forceSync:0 complete:&stru_100039A50];
}

- (void)getHealthSummary:(id)summary
{
  summaryCopy = summary;
  healthSummary = [(PCSSyncing *)self healthSummary];
  (*(summary + 2))(summaryCopy, healthSummary, 0);
}

- (void)setupIdentitiesWithParameters:(id)parameters complete:(id)complete
{
  parametersCopy = parameters;
  completeCopy = complete;
  objc_initWeak(&location, self);
  serialOperationQueue = [(PCSSyncing *)self serialOperationQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100021F1C;
  v11[3] = &unk_1000391C0;
  objc_copyWeak(&v14, &location);
  v9 = parametersCopy;
  v12 = v9;
  v10 = completeCopy;
  v13 = v10;
  [serialOperationQueue addOperationWithBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

@end