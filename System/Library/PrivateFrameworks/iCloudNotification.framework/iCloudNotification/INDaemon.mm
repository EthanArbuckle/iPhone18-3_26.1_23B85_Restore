@interface INDaemon
+ (id)sharedInstance;
- (BOOL)_isFirstLaunchAfterBoot;
- (BOOL)_isFirstLaunchAfterBootMacOS;
- (BOOL)_isFirstLaunchAfterBootiOS;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (INDaemon)init;
- (id)_currentBootSessionUUID;
- (id)accountPushNotificationHandlerForEventType:(id)a3;
- (id)familyPushNotificationHandlerForEventType:(id)a3;
- (id)quotaPushNotificationHandlerForEventType:(id)a3;
- (void)_cleanUpIfNoAccountsAreLeftOtherThanAccount:(id)a3;
- (void)_enablePushTopics;
- (void)_ensureDesiredAPSEnvironmentIsInUseWithCompletion:(id)a3;
- (void)_handleGMSAvailabilityChange;
- (void)_handleOSEligibilityChange;
- (void)_initiateAPSConnectionWithCompletion:(id)a3;
- (void)_performHeartbeatRegistration;
- (void)_performLoggedOutHeartbeatRegistrationIfNeeded;
- (void)_planForRegistrationTTL:(unint64_t)a3 account:(id)a4;
- (void)_registrationDigestCacheDidBecomeAvailable:(id)a3;
- (void)_setFirstLaunchAfterBootiOS;
- (void)_stopHeartbeat;
- (void)_unregisterAccount:(id)a3 fromiCloudNotificationsWithReason:(unint64_t)a4 completion:(id)a5;
- (void)_unsafe_ensureFreshmintActivityValidity;
- (void)_unsafe_icqUpdateOfferForButtonId:(id)a3;
- (void)_unsafe_performFreshmintRefreshWithReason:(id)a3;
- (void)_validateEnabledTopics;
- (void)_validateRegistrationStateIfFirstLaunch;
- (void)appLaunchLinkDidPresentForBundleIdentifier:(id)a3;
- (void)calculateExtraQuotaNeededToSyncForAccountWithID:(id)a3 isAccountFull:(BOOL)a4 completion:(id)a5;
- (void)clearAllRegistrationDigestsWithCompletion:(id)a3;
- (void)commonHeadersForRequest:(id)a3 withCompletion:(id)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)dealloc;
- (void)diagnosticReportWithCompletion:(id)a3;
- (void)displayDelayedOfferWithContext:(id)a3 completion:(id)a4;
- (void)fetchAppsSyncingToiCloudDriveForAltDSID:(id)a3 completion:(id)a4;
- (void)fetchBackupInfoForAltDSID:(id)a3 completion:(id)a4;
- (void)fetchCompletedAndDismissedRecommendationsForAltDSID:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)fetchRecommendationsForAltDSID:(id)a3 completion:(id)a4;
- (void)fetchRecommendationsRulesetForAltDSID:(id)a3 completion:(id)a4;
- (void)fetchStorageAppsForAltDSID:(id)a3 completion:(id)a4;
- (void)fetchStorageByApp:(id)a3 forAltDSID:(id)a4 completion:(id)a5;
- (void)fetchStorageSummaryForAltDSID:(id)a3 completion:(id)a4;
- (void)handleICloudQuotaPush:(id)a3;
- (void)handlePushRegistrationWithAccount:(id)a3 reason:(unint64_t)a4;
- (void)handlePushUnregistrationWithAccount:(id)a3 completion:(id)a4;
- (void)iCloudServerOfferForAccountWithID:(id)a3 options:(id)a4 completion:(id)a5;
- (void)notifyDeviceStorageLevel:(int64_t)a3 completion:(id)a4;
- (void)observeFPItem:(id)a3 notifyURL:(id)a4 completion:(id)a5;
- (void)presentHiddenFreshmintWithContext:(id)a3 completion:(id)a4;
- (void)registerAccountWithID:(id)a3 foriCloudNotificationsWithReason:(unint64_t)a4 completion:(id)a5;
- (void)registerDeviceForLoggedOutiCloudNotificationsWithReason:(unint64_t)a3 completion:(id)a4;
- (void)registerForPushNotificationsWithAccount:(id)a3 reason:(unint64_t)a4 completion:(id)a5;
- (void)remoteFreshmintFlowCompletedWithSuccess:(BOOL)a3 error:(id)a4;
- (void)renewCredentialsWithCompletion:(id)a3;
- (void)sendStatusForRecommendationsWithAltDSID:(id)a3 configuration:(id)a4 params:(id)a5 completion:(id)a6;
- (void)sendStatusForRecommendationsWithAltDSID:(id)a3 configuration:(id)a4 status:(id)a5 recommendationIdentifiers:(id)a6 storageRecovered:(id)a7 completion:(id)a8;
- (void)sendTipDismissedNetworkRequestForAltDSID:(id)a3 tip:(id)a4 completion:(id)a5;
- (void)sendTipDisplayedNetworkRequestForAltDSID:(id)a3 tip:(id)a4 completion:(id)a5;
- (void)start;
- (void)startDelayedOfferFailsafeActivityWithDelaySecs:(int64_t)a3 completion:(id)a4;
- (void)stopDelayedOfferFailsafeActivityWithCompletion:(id)a3;
- (void)syncFPItem:(id)a3 observeItemIDs:(id)a4 notifyURL:(id)a5 completion:(id)a6;
- (void)teardownOffersForAccount:(id)a3 withCompletion:(id)a4;
- (void)unregisterAccountWithID:(id)a3 fromiCloudNotificationsWithCompletion:(id)a4;
- (void)unregisterDeviceFromLoggedOutiCloudNotificationsWithReason:(unint64_t)a3 completion:(id)a4;
- (void)updateOfferForAccountWithID:(id)a3 offerId:(id)a4 buttonId:(id)a5 info:(id)a6 completion:(id)a7;
@end

@implementation INDaemon

- (void)_unsafe_ensureFreshmintActivityValidity
{
  v3 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  v5 = [v3 soonestOfferOrStubExpirationDate];

  freshmintActivity = self->_freshmintActivity;
  if (v5)
  {
    [(INActivity *)freshmintActivity ensureNextActivityWillOccurBeforeDate:v5];
  }

  else
  {
    [(INActivity *)freshmintActivity stop];
  }
}

+ (id)sharedInstance
{
  if (qword_100063670 != -1)
  {
    sub_1000370B4();
  }

  v3 = qword_100063668;

  return v3;
}

- (INDaemon)init
{
  v34.receiver = self;
  v34.super_class = INDaemon;
  v2 = [(INDaemon *)&v34 init];
  if (v2)
  {
    v3 = +[AARemoteServer sharedServerWithNoUrlCache];
    aaSharedRemoteServer = v2->_aaSharedRemoteServer;
    v2->_aaSharedRemoteServer = v3;

    v5 = +[ACAccountStore defaultStore];
    accountStore = v2->_accountStore;
    v2->_accountStore = v5;

    v7 = +[INRegistrationDigestCache sharedInstance];
    registrationDigestCache = v2->_registrationDigestCache;
    v2->_registrationDigestCache = v7;

    v9 = objc_alloc_init(INRegistrar);
    registrar = v2->_registrar;
    v2->_registrar = v9;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"_registrationDigestCacheDidBecomeAvailable:" name:@"INRegistrationDigestCacheDidBecomeAvailable" object:v2->_registrationDigestCache];

    v12 = [[INActivity alloc] initWithTarget:v2 action:"_performHeartbeatRegistration"];
    hearbeatActivity = v2->_hearbeatActivity;
    v2->_hearbeatActivity = v12;

    [(INActivity *)v2->_hearbeatActivity setActivityID:off_100063050];
    [(INActivity *)v2->_hearbeatActivity setActivityNextFireDateKey:INNextHeartbeatDateKey];
    [(INActivity *)v2->_hearbeatActivity checkIn];
    v14 = objc_alloc_init(NSMutableSet);
    accountsToReconsiderAfterReboot = v2->_accountsToReconsiderAfterReboot;
    v2->_accountsToReconsiderAfterReboot = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_UTILITY, 0);
    v18 = dispatch_queue_create("com.apple.ind.aps-connection-delegate", v17);
    apsConnectionDelegateQueue = v2->_apsConnectionDelegateQueue;
    v2->_apsConnectionDelegateQueue = v18;

    if (qword_100063660 != -1)
    {
      sub_1000370C8();
    }

    if (byte_100063658 == 1)
    {
      v20 = [[INActivity alloc] initWithTarget:v2 action:"_unsafe_performFreshmintRefreshHeartBeat"];
      freshmintActivity = v2->_freshmintActivity;
      v2->_freshmintActivity = v20;

      [(INActivity *)v2->_freshmintActivity setActivityID:off_100063058];
      [(INActivity *)v2->_freshmintActivity setActivityNextFireDateKey:INNextFreshmintRefreshDateKey];
      v22 = +[NSNotificationCenter defaultCenter];
      v23 = _ICQDaemonOfferPersistedNotificationName;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100002300;
      v32[3] = &unk_1000557A0;
      v24 = v2;
      v33 = v24;
      v25 = [v22 addObserverForName:v23 object:0 queue:0 usingBlock:v32];
      freshmintObserverObject = v24->_freshmintObserverObject;
      v24->_freshmintObserverObject = v25;
    }

    v27 = objc_alloc_init(NSMutableDictionary);
    v28 = [[INQuotaCleanupPushHandler alloc] initWithAccountStore:v2->_accountStore];
    [v27 setObject:v28 forKeyedSubscript:@"cleanup"];

    v29 = [v27 copy];
    quotaPushNotificationHandlersByEventType = v2->_quotaPushNotificationHandlersByEventType;
    v2->_quotaPushNotificationHandlersByEventType = v29;
  }

  return v2;
}

- (void)start
{
  if (!self->_isRunning)
  {
    v10[7] = v2;
    v10[8] = v3;
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000370F0();
    }

    v6 = [NSXPCListener alloc];
    v7 = [v6 initWithMachServiceName:INDaemonMachServiceName];
    listener = self->_listener;
    self->_listener = v7;

    [(NSXPCListener *)self->_listener setDelegate:self];
    [(NSXPCListener *)self->_listener resume];
    self->_isRunning = 1;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000F754;
    v10[3] = &unk_100055318;
    v10[4] = self;
    [(INDaemon *)self _initiateAPSConnectionWithCompletion:v10];
    v9 = [(INDaemon *)self freshmintActivity];
    [v9 checkIn];
  }
}

- (void)dealloc
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100037124();
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  listener = self->_listener;
  if (listener)
  {
    [(NSXPCListener *)listener setDelegate:0];
    [(NSXPCListener *)self->_listener invalidate];
  }

  [(APSConnection *)self->_apsConnection setDelegate:0];
  [(APSConnection *)self->_apsConnection shutdown];
  if (self->_freshmintObserverObject)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self->_freshmintObserverObject];
  }

  v7.receiver = self;
  v7.super_class = INDaemon;
  [(INDaemon *)&v7 dealloc];
}

- (void)registerForPushNotificationsWithAccount:(id)a3 reason:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000F958;
  v12[3] = &unk_100055868;
  objc_copyWeak(v16, &location);
  v10 = v9;
  v15 = v10;
  v11 = v8;
  v16[1] = a4;
  v13 = v11;
  v14 = self;
  [(INDaemon *)self _ensureDesiredAPSEnvironmentIsInUseWithCompletion:v12];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

- (void)_planForRegistrationTTL:(unint64_t)a3 account:(id)a4
{
  v6 = a4;
  v7 = _INLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100037518();
  }

  v8 = objc_alloc_init(INRegistrationTTLOverride);
  if ([(INRegistrationTTLOverride *)v8 hasOverride])
  {
    [(INRegistrationTTLOverride *)v8 overrideTimeInterval];
    a3 = v9;
    v10 = _INLogSystem();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 134217984;
    v27 = a3;
    v11 = "Device has registration TTL override, setting TTL to %lu";
  }

  else
  {
    v10 = _INLogSystem();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 134217984;
    v27 = a3;
    v11 = "Device has no registration TTL override, setting TTL to %lu";
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
LABEL_9:

  if (a3)
  {
    v12 = [NSDate dateWithTimeIntervalSinceNow:a3];
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_alloc_init(NSISO8601DateFormatter);
      v15 = [v14 stringFromDate:v12];
      *buf = 138412290;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Next registration expiration date is %@", buf, 0xCu);
    }

    if (v6)
    {
      [v6 in_setRegistrationExpirationDate:v12];
      v16 = dispatch_semaphore_create(0);
      accountStore = self->_accountStore;
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_100010604;
      v23 = &unk_100055890;
      v24 = v6;
      v25 = v16;
      v18 = v16;
      [(ACAccountStore *)accountStore saveAccount:v24 withDataclassActions:0 doVerify:0 completion:&v20];
      v19 = dispatch_time(0, 300000000000);
      dispatch_semaphore_wait(v18, v19);
    }

    else
    {
      [_TtC3ind18LoggedOutPushCache registeredDeviceWithExpirationDate:v12];
    }

    [(INActivity *)self->_hearbeatActivity ensureNextActivityWillOccurBeforeDate:v12, v20, v21, v22, v23];
  }
}

- (void)_unregisterAccount:(id)a3 fromiCloudNotificationsWithReason:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000107B8;
  v12[3] = &unk_100055908;
  objc_copyWeak(v15, &location);
  v10 = v9;
  v14 = v10;
  v11 = v8;
  v13 = v11;
  v15[1] = a4;
  [(INDaemon *)self _ensureDesiredAPSEnvironmentIsInUseWithCompletion:v12];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

- (void)_cleanUpIfNoAccountsAreLeftOtherThanAccount:(id)a3
{
  v4 = a3;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100037734();
  }

  [(ACAccountStore *)self->_accountStore aa_appleAccounts];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v21 + 1) + 8 * v10) identifier];
        v12 = [v4 identifier];

        if (v11 != v12)
        {

          v14 = _INLogSystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "We have remaining iCloud accounts. Not cleaning up.", buf, 2u);
          }

          goto LABEL_17;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = _INLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No remaining iCloud accounts. Turning off APS topics and heartbeat.", buf, 2u);
  }

  [(INDaemon *)self _disablePushTopics];
  [(INActivity *)self->_hearbeatActivity stop];
LABEL_17:
  v15 = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
  v16 = [v15 aa_altDSID];
  v17 = [v4 aa_altDSID];
  if ([v16 isEqualToString:v17])
  {

LABEL_20:
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100010EC8;
    v19[3] = &unk_100055950;
    v19[4] = self;
    [CSFFeatureManager deviceHasAnyTicket:v19];
    goto LABEL_21;
  }

  v18 = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];

  if (!v18)
  {
    goto LABEL_20;
  }

LABEL_21:
}

- (void)handlePushUnregistrationWithAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _INLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling push un-registration.", v10, 2u);
  }

  if (qword_100063660 != -1)
  {
    sub_1000370C8();
  }

  if (byte_100063658 == 1)
  {
    v9 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
    [v9 teardownOffersForAccount:v6 completion:v7];

    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7[2](v7);
    if (!v6)
    {
LABEL_9:
      [(INDaemon *)self _stopHeartbeat];
      +[_TtC3ind18LoggedOutPushCache unregisteredDevice];
    }
  }
}

- (void)handlePushRegistrationWithAccount:(id)a3 reason:(unint64_t)a4
{
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling push registration.", v8, 2u);
  }

  if (qword_100063660 != -1)
  {
    sub_1000370C8();
  }

  if (byte_100063658 == 1)
  {
    v7 = [INHelperFunctions fetchOfferReasonWithRegistrationReason:a4];
    [(INDaemon *)self _unsafe_performFreshmintRefreshWithReason:v7];
  }
}

- (void)_registrationDigestCacheDidBecomeAvailable:(id)a3
{
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "INRegistrationDigestCache is now available! We might need to do FLAB validation.", v5, 2u);
  }

  [(INDaemon *)self _validateRegistrationStateIfFirstLaunch];
}

- (void)_validateRegistrationStateIfFirstLaunch
{
  v2 = _INLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100037768();
  }

  if ([(INDaemon *)self _isFirstLaunchAfterBoot])
  {
    v14 = [(ACAccountStore *)self->_accountStore aa_appleAccounts];
    if (![v14 count])
    {
      if (+[_TtC3ind18LoggedOutPushCache wasDeviceRegistered])
      {
        [(INDaemon *)self registerForPushNotificationsWithAccount:0 reason:5 completion:&stru_100055970];
      }

      else
      {
        v5 = _INLogSystem();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          sub_1000377D0();
        }
      }
    }

    if (+[INRegistrationDigestCache isAvailable])
    {
      [(INDaemon *)self _setFirstLaunchAfterBootiOS];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      obj = v14;
      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        v7 = *v20;
        do
        {
          v8 = 0;
          do
          {
            if (*v20 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v19 + 1) + 8 * v8);
            v10 = self;
            objc_sync_enter(v10);
            v11 = [v9 aa_altDSID];
            if (v11)
            {
              v12 = [(INDaemon *)v10 accountsToReconsiderAfterReboot];
              [v12 addObject:v11];
            }

            objc_sync_exit(v10);
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_100011584;
            v18[3] = &unk_100055998;
            v18[4] = v9;
            [(INDaemon *)v10 registerForPushNotificationsWithAccount:v9 reason:5 completion:v18];
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v6);
      }

      v13 = obj;
    }

    else
    {
      v13 = _INLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "INRegistrationDigestCache is not available. Skipping FLAB registration validation!", buf, 2u);
      }
    }

    v4 = v14;
  }

  else
  {
    v3 = _INLogSystem();
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10003779C();
      v4 = v3;
    }
  }
}

- (BOOL)_isFirstLaunchAfterBoot
{
  v2 = [(INDaemon *)self _isFirstLaunchAfterBootiOS];
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v6 = 136315394;
    v7 = "[INDaemon _isFirstLaunchAfterBoot]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: %@", &v6, 0x16u);
  }

  return v2;
}

- (BOOL)_isFirstLaunchAfterBootiOS
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_hasCheckedForFirstLaunch)
  {
    v3 = 0;
  }

  else
  {
    v4 = _INLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Checking kernel for semaphore to see if this is the first launch since boot.", buf, 2u);
    }

    v5 = sem_open(off_1000630C8, 0);
    v3 = v5 == -1;
    if (v5 == -1)
    {
      v7 = _INLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Semaphore does not exist, this is the first launch after unlock.", v12, 2u);
      }
    }

    else
    {
      v6 = _INLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Closing semaphore found in kernel.", v11, 2u);
      }

      sem_close(v5);
      v2->_hasCheckedForFirstLaunch = 1;
    }

    v8 = _INLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished checking if this is first launch since boot.", v10, 2u);
    }
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)_setFirstLaunchAfterBootiOS
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = sem_open(off_1000630C8, 512, 256, 0);
  if (v3 == -1)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = off_1000630C8;
      v7 = __error();
      v8 = strerror(*v7);
      *buf = 136446466;
      v10 = v6;
      v11 = 2082;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to create FLAB semaphore %{public}s: %{public}s", buf, 0x16u);
    }
  }

  else
  {
    v4 = _INLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Closing semaphore after creating it.", buf, 2u);
    }

    sem_close(v3);
  }

  objc_sync_exit(v2);
}

- (BOOL)_isFirstLaunchAfterBootMacOS
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 stringForKey:@"com.apple.iCloudNotification.sessionUUID"];

  v5 = [(INDaemon *)self _currentBootSessionUUID];
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Saved session UUID: %@, current session UUID: %@", &v11, 0x16u);
  }

  v7 = [v4 isEqualToString:v5];
  if ((v7 & 1) == 0)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 setObject:v5 forKey:@"com.apple.iCloudNotification.sessionUUID"];

    v9 = _INLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updated saved session UUID to: %@", &v11, 0xCu);
    }
  }

  return v7 ^ 1;
}

- (id)_currentBootSessionUUID
{
  size = 0;
  sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0);
  v2 = malloc_type_malloc(size, 0x100004077774924uLL);
  sysctlbyname("kern.bootsessionuuid", v2, &size, 0, 0);
  v3 = [NSString stringWithUTF8String:v2];
  free(v2);

  return v3;
}

- (void)_handleOSEligibilityChange
{
  v2 = _INLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received os_eligibility change. Revalidating CFU.", v3, 2u);
  }

  +[CSFFeatureManager revalidateCFU];
}

- (void)_handleGMSAvailabilityChange
{
  v2 = _INLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received GMS Availability change. Revalidating CFU.", v3, 2u);
  }

  +[CSFFeatureManager revalidateCFU];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "New connection request received.", buf, 2u);
  }

  v7 = [v5 valueForEntitlement:@"com.apple.private.ind.client"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    [v5 setExportedObject:self];
    v9 = +[INDaemonInterface XPCInterface];
    [v5 setExportedInterface:v9];

    [v5 setInterruptionHandler:&stru_1000559B8];
    [v5 setInvalidationHandler:&stru_1000559B8];
    [v5 resume];
  }

  else
  {
    v10 = _INLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "INDaemon: incoming connection denied for lacking entitlement.", v12, 2u);
    }
  }

  return v8;
}

- (void)_performHeartbeatRegistration
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v56 = "[INDaemon _performHeartbeatRegistration]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s Thump thump!", buf, 0xCu);
  }

  v4 = [(ACAccountStore *)self->_accountStore aa_appleAccounts];
  v39 = objc_alloc_init(NSMutableArray);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v38 = self;
    v8 = 0;
    v9 = *v50;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        v12 = [v11 in_registrationExpirationDate];
        if (v12)
        {
          v13 = +[NSDate date];
          v14 = [v12 compare:v13];

          if (v14 == 1)
          {
            if (!v8 || [v8 compare:v12] == 1)
            {
              v15 = _INLogSystem();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v56 = v12;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updating soonest expiration date to %{public}@", buf, 0xCu);
              }

              v16 = v12;
              v8 = v16;
            }
          }

          else
          {
            v18 = _INLogSystem();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v56 = v11;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Adding account %@ to expired registration list.", buf, 0xCu);
            }

            [v39 addObject:v11];
          }
        }

        else
        {
          v17 = _INLogSystem();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v56 = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No registration expiration date found for account %@.", buf, 0xCu);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v7);

    v19 = v8;
    if (v8)
    {
      self = v38;
      [(INActivity *)v38->_hearbeatActivity ensureNextActivityWillOccurBeforeDate:v19];
    }

    else
    {
      self = v38;
    }
  }

  else
  {

    v19 = 0;
  }

  if ([(INActivity *)self->_hearbeatActivity setActivityState:4])
  {
    v37 = v19;
    v20 = os_transaction_create();
    v21 = dispatch_group_create();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v39;
    v22 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v46;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v46 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v45 + 1) + 8 * j);
          v27 = _INLogSystem();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v56 = v26;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Forcing registration for account %@", buf, 0xCu);
          }

          dispatch_group_enter(v21);
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_100012508;
          v42[3] = &unk_100055890;
          v43 = v20;
          v44 = v21;
          [(INDaemon *)self registerForPushNotificationsWithAccount:v26 reason:0 completion:v42];
        }

        v23 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v23);
    }

    v28 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000125EC;
    block[3] = &unk_100055318;
    block[4] = self;
    dispatch_group_notify(v21, v28, block);

    v19 = v37;
  }

  else
  {
    v20 = _INLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100037804(v20, v29, v30, v31, v32, v33, v34, v35);
    }
  }

  v36 = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];

  if (!v36)
  {
    [(INDaemon *)self _performLoggedOutHeartbeatRegistrationIfNeeded];
  }
}

- (void)_performLoggedOutHeartbeatRegistrationIfNeeded
{
  if (+[_TtC3ind18LoggedOutPushCache wasDeviceRegistered])
  {
    v3 = +[_TtC3ind18LoggedOutPushCache expirationDate];
    [(INActivity *)self->_hearbeatActivity ensureNextActivityWillOccurBeforeDate:v3];
    if ([(INActivity *)self->_hearbeatActivity setActivityState:4])
    {
      v4 = os_transaction_create();
      v5 = dispatch_group_create();
      v6 = _INLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Forcing logged-out push registration for device", buf, 2u);
      }

      dispatch_group_enter(v5);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100012844;
      v12[3] = &unk_100055890;
      v13 = v4;
      v14 = v5;
      v7 = v5;
      v8 = v4;
      [(INDaemon *)self registerForPushNotificationsWithAccount:0 reason:0 completion:v12];
      v9 = dispatch_get_global_queue(21, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100012914;
      block[3] = &unk_100055318;
      block[4] = self;
      dispatch_group_notify(v7, v9, block);
    }

    else
    {
      v8 = _INLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10003787C();
      }
    }
  }

  else
  {
    v10 = _INLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No iCloud accounts found, and device wasn't registered for logged-out push, so there's nothing to do.", buf, 2u);
    }

    [(INDaemon *)self _stopHeartbeat];
  }
}

- (void)registerAccountWithID:(id)a3 foriCloudNotificationsWithReason:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = _INLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v8;
    v19 = 2080;
    v20 = "[INDaemon registerAccountWithID:foriCloudNotificationsWithReason:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received registration request for account %@ over XPC. %s", &v17, 0x16u);
  }

  if (v8 && ([(ACAccountStore *)self->_accountStore accountWithIdentifier:v8], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = [v11 accountType];
    v14 = [v13 identifier];
    v15 = [v14 isEqualToString:ACAccountTypeIdentifierAppleAccount];

    if (v15)
    {
      [(INDaemon *)self registerForPushNotificationsWithAccount:v12 reason:a4 completion:v9];
    }

    else
    {
      v16 = INCreateError();
      v9[2](v9, 0, v16);
    }
  }

  else
  {
    v12 = INCreateError();
    v9[2](v9, 0, v12);
  }
}

- (void)registerDeviceForLoggedOutiCloudNotificationsWithReason:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = _INLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[INDaemon registerDeviceForLoggedOutiCloudNotificationsWithReason:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received logged-out push registration request over XPC. %s", &v8, 0xCu);
  }

  [(INDaemon *)self registerForPushNotificationsWithAccount:0 reason:a3 completion:v6];
}

- (void)unregisterAccountWithID:(id)a3 fromiCloudNotificationsWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _INLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v6;
    v22 = 2080;
    v23 = "[INDaemon unregisterAccountWithID:fromiCloudNotificationsWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received unregistration request for account %@ over XPC. %s", buf, 0x16u);
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v9 = [(ACAccountStore *)self->_accountStore accountWithIdentifier:v6];
  v10 = _INLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000378B8();
  }

  if (v9)
  {
    v11 = [v9 accountType];
    v12 = [v11 identifier];
    v13 = [v12 isEqualToString:ACAccountTypeIdentifierAppleAccount];

    if (v13)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100012EB8;
      v17[3] = &unk_1000558B8;
      v17[4] = self;
      v18 = v9;
      v19 = v7;
      v9 = v9;
      [(INDaemon *)self _unregisterAccount:v9 fromiCloudNotificationsWithCompletion:v17];
    }

    else
    {
      v15 = _INLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100037928();
      }

      v16 = INCreateError();
      (*(v7 + 2))(v7, 0, v16);
    }
  }

  else
  {
LABEL_9:
    v14 = _INLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100037990();
    }

    v9 = INCreateError();
    (*(v7 + 2))(v7, 0, v9);
  }
}

- (void)unregisterDeviceFromLoggedOutiCloudNotificationsWithReason:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = _INLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[INDaemon unregisterDeviceFromLoggedOutiCloudNotificationsWithReason:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received logged-out push unregistration request over XPC. %s", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000130C8;
  v9[3] = &unk_100055A08;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(INDaemon *)self _unregisterAccount:0 fromiCloudNotificationsWithReason:a3 completion:v9];
}

- (void)teardownOffersForAccount:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _INLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2080;
    v12 = "[INDaemon teardownOffersForAccount:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received teardown offers request for account %@ over XPC. %s", &v9, 0x16u);
  }

  v8 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v8 teardownOffersForAccount:v5 completion:v6];
}

- (void)clearAllRegistrationDigestsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000379CC();
  }

  v6 = [(ACAccountStore *)self->_accountStore aa_appleAccounts];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v16 = v4;
  v9 = 0;
  v10 = *v19;
  do
  {
    v11 = 0;
    v12 = v9;
    do
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v18 + 1) + 8 * v11);
      v14 = _INLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removing registration digest for account: %@", buf, 0xCu);
      }

      registrationDigestCache = self->_registrationDigestCache;
      v17 = v12;
      [(INRegistrationDigestCache *)registrationDigestCache removeRegistrationDigestForAccount:v13 withError:&v17];
      v9 = v17;

      v11 = v11 + 1;
      v12 = v9;
    }

    while (v8 != v11);
    v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  }

  while (v8);
  v4 = v16;
  if (v9)
  {
    (v16)[2](v16, 0, v9);
  }

  else
  {
LABEL_14:
    v4[2](v4, 1, 0);
  }
}

- (void)diagnosticReportWithCompletion:(id)a3
{
  v11 = a3;
  v4 = objc_alloc_init(INDiagnosticReport);
  [v4 setDisabled:0];
  [v4 setPushEnvironment:self->_activeAPSEnvironment];
  v5 = [(APSConnection *)self->_apsConnection publicToken];
  v6 = [v5 description];
  [v4 setPushToken:v6];

  v7 = [(APSConnection *)self->_apsConnection enabledTopics];
  [v4 setPushTopics:v7];

  v8 = +[INManagedDefaults sharedInstance];
  v9 = [v8 valueForManagedDefault:INNextHeartbeatDateKey];

  if (v9)
  {
    [v9 doubleValue];
    v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v4 setNextHeartbeatDate:v10];
  }

  v11[2](v11, v4, 0);
}

- (void)iCloudServerOfferForAccountWithID:(id)a3 options:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Subclass must override if they support freshmint.", v8, 2u);
  }

  v7 = INCreateError();
  v5[2](v5, 0, v7);
}

- (void)updateOfferForAccountWithID:(id)a3 offerId:(id)a4 buttonId:(id)a5 info:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = _INLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100037A00();
  }

  if (v12 && (-[INDaemon accountStore](self, "accountStore"), v18 = objc_claimAutoreleasedReturnValue(), [v18 accountWithIdentifier:v12], v19 = objc_claimAutoreleasedReturnValue(), v18, v19))
  {
    v20 = [v19 accountType];
    v21 = [v20 identifier];
    v22 = [v21 isEqualToString:ACAccountTypeIdentifierAppleAccount];

    if (v22)
    {
      v23 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
      [v23 updateOfferForAccount:v19 offerId:v13 buttonId:v14 info:v15 completion:v16];
    }

    else
    {
      v23 = INCreateError();
      v16[2](v16, 0, v23);
    }
  }

  else
  {
    v19 = INCreateError();
    v16[2](v16, 0, v19);
  }
}

- (void)notifyDeviceStorageLevel:(int64_t)a3 completion:(id)a4
{
  v4 = a4;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Subclass must override if they support freshmint.", v7, 2u);
  }

  v6 = INCreateError();
  v4[2](v4, 0, v6);
}

- (void)presentHiddenFreshmintWithContext:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Subclass must override if they support freshmint.", v7, 2u);
  }

  v6 = INCreateError();
  v4[2](v4, 0, v6);
}

- (void)remoteFreshmintFlowCompletedWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Subclass must override if they support freshmint.", v5, 2u);
  }
}

- (void)appLaunchLinkDidPresentForBundleIdentifier:(id)a3
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Subclass must override if they support freshmint.", v4, 2u);
  }
}

- (void)commonHeadersForRequest:(id)a3 withCompletion:(id)a4
{
  v4 = a4;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Subclass must override if they support freshmint.", v6, 2u);
  }

  v4[2](v4, 0);
}

- (void)renewCredentialsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Subclass must override if they support freshmint.", v5, 2u);
  }

  v3[2](v3, 2, 0);
}

- (void)fetchStorageSummaryForAltDSID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:v6];
  if (v8)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100013D04;
    v19 = sub_100013D14;
    v20 = [[INCloudNetworkController alloc] initWithAccount:v8];
    v9 = v16[5];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100013D1C;
    v12[3] = &unk_100055A30;
    v13 = v7;
    v14 = &v15;
    [v9 cloudStorageSummary:v12];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = _INLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100037A34();
    }

    v11 = INCreateError();
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)fetchStorageAppsForAltDSID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:v6];
  if (v8)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100013D04;
    v19 = sub_100013D14;
    v20 = [[INCloudNetworkController alloc] initWithAccount:v8];
    v9 = v16[5];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100013F94;
    v12[3] = &unk_100055A58;
    v13 = v7;
    v14 = &v15;
    [v9 cloudStorageApps:v12];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = _INLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100037A34();
    }

    v11 = INCreateError();
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)fetchStorageByApp:(id)a3 forAltDSID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:v9];
  if (v11)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100013D04;
    v22 = sub_100013D14;
    v23 = [[INCloudNetworkController alloc] initWithAccount:v11];
    v12 = v19[5];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100014220;
    v15[3] = &unk_100055A80;
    v16 = v10;
    v17 = &v18;
    [v12 appCloudStorageForBundleId:v8 completion:v15];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100037A34();
    }

    v14 = INCreateError();
    (*(v10 + 2))(v10, 0, v14);
  }
}

- (void)fetchBackupInfoForAltDSID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:v6];
  if (v8)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100013D04;
    v19 = sub_100013D14;
    v20 = [[INCloudNetworkController alloc] initWithAccount:v8];
    v9 = v16[5];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100014498;
    v12[3] = &unk_100055AA8;
    v13 = v7;
    v14 = &v15;
    [v9 fetchBackupInfoWithCompletion:v12];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = _INLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100037A34();
    }

    v11 = INCreateError();
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)sendTipDisplayedNetworkRequestForAltDSID:(id)a3 tip:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:v8];
  if (v11)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100013D04;
    v22 = sub_100013D14;
    v23 = [[INCloudNetworkController alloc] initWithAccount:v11];
    v12 = v19[5];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100014720;
    v15[3] = &unk_100055AD0;
    v16 = v10;
    v17 = &v18;
    [v12 displayedNetworkRequestForTip:v9 completion:v15];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100037C3C();
    }

    v14 = INCreateError();
    (*(v10 + 2))(v10, v14);
  }
}

- (void)sendTipDismissedNetworkRequestForAltDSID:(id)a3 tip:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:v8];
  if (v11)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100013D04;
    v22 = sub_100013D14;
    v23 = [[INCloudNetworkController alloc] initWithAccount:v11];
    v12 = v19[5];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100014984;
    v15[3] = &unk_100055AD0;
    v16 = v10;
    v17 = &v18;
    [v12 dismissedNetworkRequestForTip:v9 completion:v15];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100037D0C();
    }

    v14 = INCreateError();
    (*(v10 + 2))(v10, v14);
  }
}

- (void)fetchAppsSyncingToiCloudDriveForAltDSID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:v6];
  if (v8)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100013D04;
    v19 = sub_100013D14;
    v20 = [[INCloudNetworkController alloc] initWithAccount:v8];
    v9 = v16[5];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100014BD8;
    v12[3] = &unk_100055AF8;
    v13 = v7;
    v14 = &v15;
    [v9 fetchAppsSyncingToDrive:v12];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = _INLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100037DDC();
    }

    v11 = INCreateError();
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (id)accountPushNotificationHandlerForEventType:(id)a3
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100037EAC();
  }

  return 0;
}

- (id)familyPushNotificationHandlerForEventType:(id)a3
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100037EAC();
  }

  return 0;
}

- (id)quotaPushNotificationHandlerForEventType:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_quotaPushNotificationHandlersByEventType objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No quota push handler found for event type: %@", &v8, 0xCu);
    }
  }

  return v5;
}

- (void)handleICloudQuotaPush:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"category"];

  v6 = [v5 isEqualToString:@"cloudsubscriptionfeatures"];
  v7 = _INLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 userInfo];
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling CloudSubscriptionFeatures plan change notification: %@", buf, 0xCu);
    }

    v10 = [v3 userInfo];
    [CSFFeatureManager processPushNotificationDictionary:v10];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100037EE8(v3);
    }

    v11 = os_transaction_create();
    v12 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
    v13 = [v3 userInfo];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = nullsub_2;
    v14[3] = &unk_100055318;
    v15 = v11;
    v10 = v11;
    [v12 processPushNotificationDictionary:v13 completion:v14];
  }
}

- (void)_initiateAPSConnectionWithCompletion:(id)a3
{
  v4 = a3;
  aaSharedRemoteServer = self->_aaSharedRemoteServer;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000150BC;
  v7[3] = &unk_100055B20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(AARemoteServer *)aaSharedRemoteServer configurationWithCompletion:v7];
}

- (void)_ensureDesiredAPSEnvironmentIsInUseWithCompletion:(id)a3
{
  v4 = a3;
  aaSharedRemoteServer = self->_aaSharedRemoteServer;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000153C0;
  v7[3] = &unk_100055B48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(AARemoteServer *)aaSharedRemoteServer configurationWithCompletion:v7];
}

- (void)_validateEnabledTopics
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100038170();
  }

  v4 = [(INDaemon *)self accountStore];
  v5 = [v4 aa_appleAccounts];

  if ([v5 count])
  {
    [(INDaemon *)self _enablePushTopics];
  }

  else
  {
    v6 = [(APSConnection *)self->_apsConnection enabledTopics];
    v7 = [v6 count];

    if (v7)
    {
      v8 = _INLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "We have stale APS enabled topics. Clearing...", v10, 2u);
      }

      [(INDaemon *)self _disablePushTopics];
    }
  }

  v9 = _INLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000381A4();
  }
}

- (void)_enablePushTopics
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000381D8(self);
  }

  v4 = [(INDaemon *)self pushTopics];
  [(APSConnection *)self->_apsConnection _setEnabledTopics:v4];
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received new public token from APS.", buf, 2u);
  }

  v6 = [(ACAccountStore *)self->_accountStore aa_appleAccounts];
  if ([v6 count])
  {
    v7 = +[INRegistrationDigestCache isAvailable];
    v8 = _INLogSystem();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_100038268();
      }

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v16 + 1) + 8 * i);
            [INDaemon registerForPushNotificationsWithAccount:"registerForPushNotificationsWithAccount:reason:completion:" reason:? completion:?];
          }

          v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v11);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ignoring new push token from APS because the registration cache is unavailable right now.", buf, 2u);
    }
  }

  else if (+[_TtC3ind18LoggedOutPushCache wasDeviceRegistered])
  {
    [(INDaemon *)self registerForPushNotificationsWithAccount:0 reason:7 completion:&stru_100055B68];
  }

  else
  {
    v14 = _INLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ignoring new push token from APS because we don't have an iCloud account right now, and logged-out pushes are not needed.", buf, 2u);
    }
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v5 = a4;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 topic];
    v8 = [v5 userInfo];
    v21 = 138412546;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received new incoming message from APS. %@ - %@", &v21, 0x16u);
  }

  v9 = [(APSConnection *)self->_apsConnection enabledTopics];
  v10 = [v5 topic];
  v11 = [v9 containsObject:v10];

  if (v11)
  {
    v12 = [v5 userInfo];
    v13 = [v12 objectForKeyedSubscript:@"event"];

    v14 = [v5 topic];
    v15 = [v14 isEqualToString:@"com.me.setupservice"];

    if (v15)
    {
      v16 = [(INDaemon *)self accountPushNotificationHandlerForEventType:v13];
      v17 = v16;
    }

    else
    {
      v19 = [v5 topic];
      v20 = [v19 isEqualToString:@"com.icloud.quota"];

      if (!v20)
      {
        v17 = _INLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10003829C(v5);
        }

        goto LABEL_14;
      }

      v16 = [(INDaemon *)self quotaPushNotificationHandlerForEventType:v13];
      v17 = v16;
      if (!v16)
      {
        [(INDaemon *)self handleICloudQuotaPush:v5];
        goto LABEL_14;
      }
    }

    [v16 handleIncomingPushNotification:v5];
LABEL_14:

    goto LABEL_15;
  }

  v13 = _INLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v5 topic];
    v21 = 138412290;
    v22 = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignoring push because the topic %@ is not enabled.", &v21, 0xCu);
  }

LABEL_15:
}

- (void)_stopHeartbeat
{
  [(INDaemon *)self _disablePushTopics];
  [(INActivity *)self->_hearbeatActivity stop];
  v4 = +[INManagedDefaults sharedInstance];
  v3 = [(INActivity *)self->_hearbeatActivity activityNextFireDateKey];
  [v4 setValue:0 forManagedDefault:v3];
}

- (void)displayDelayedOfferWithContext:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _INLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100038344();
  }

  v8 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v8 displayDelayedOfferWithContext:v5 completion:v6];

  v9 = _INLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000383B4();
  }
}

- (void)_unsafe_performFreshmintRefreshWithReason:(id)a3
{
  v4 = a3;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Thump thump - Fresh!", v6, 2u);
  }

  [(INDaemon *)self _unsafe_icqReconsiderOffersWithReason:v4];
}

- (void)_unsafe_icqUpdateOfferForButtonId:(id)a3
{
  v4 = a3;
  v5 = [(INDaemon *)self accountStore];
  v6 = [v5 aa_primaryAppleAccount];

  v7 = os_transaction_create();
  v8 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = nullsub_3;
  v10[3] = &unk_100055998;
  v11 = v7;
  v9 = v7;
  [v8 updateOfferForAccount:v6 offerId:0 buttonId:v4 info:0 completion:v10];
}

- (void)startDelayedOfferFailsafeActivityWithDelaySecs:(int64_t)a3 completion:(id)a4
{
  v4 = a4;
  v5 = INCreateErrorWithMessage();
  v4[2](v4, v5);
}

- (void)stopDelayedOfferFailsafeActivityWithCompletion:(id)a3
{
  v3 = a3;
  v4 = INCreateErrorWithMessage();
  v3[2](v3, v4);
}

- (void)calculateExtraQuotaNeededToSyncForAccountWithID:(id)a3 isAccountFull:(BOOL)a4 completion:(id)a5
{
  v5 = a5;
  v7 = [NSString stringWithFormat:@"Method %s not supported in this platform.", "[INDaemon calculateExtraQuotaNeededToSyncForAccountWithID:isAccountFull:completion:]"];
  v6 = INCreateErrorWithMessage();
  v5[2](v5, 0, v6);
}

- (void)fetchRecommendationsForAltDSID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:v6];
  if (v8)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100013D04;
    v19 = sub_100013D14;
    v20 = [[INCloudNetworkController alloc] initWithAccount:v8];
    v9 = v16[5];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000168CC;
    v12[3] = &unk_100055BB8;
    v13 = v7;
    v14 = &v15;
    [v9 fetchServerRecommendations:v12];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = _INLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100038424();
    }

    v11 = INCreateError();
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)fetchRecommendationsRulesetForAltDSID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:v6];
  if (v8)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100013D04;
    v19 = sub_100013D14;
    v20 = [[INCloudNetworkController alloc] initWithAccount:v8];
    v9 = v16[5];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100016B44;
    v12[3] = &unk_100055BE0;
    v13 = v7;
    v14 = &v15;
    [v9 fetchRecommendationRules:v12];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = _INLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000384F4();
    }

    v11 = INCreateError();
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)fetchCompletedAndDismissedRecommendationsForAltDSID:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:v8];
  if (v11)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100013D04;
    v22 = sub_100013D14;
    v23 = [[INCloudNetworkController alloc] initWithAccount:v11];
    v12 = v19[5];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100016DD0;
    v15[3] = &unk_100055BB8;
    v16 = v10;
    v17 = &v18;
    [v12 fetchCompletedAndDismissedRecommendationsWithConfiguration:v9 completion:v15];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000385C4();
    }

    v14 = INCreateError();
    (*(v10 + 2))(v10, 0, v14);
  }
}

- (void)sendStatusForRecommendationsWithAltDSID:(id)a3 configuration:(id)a4 status:(id)a5 recommendationIdentifiers:(id)a6 storageRecovered:(id)a7 completion:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v21 = objc_alloc_init(NSMutableDictionary);
  [v21 setObject:v17 forKeyedSubscript:@"action"];

  [v21 setObject:v16 forKeyedSubscript:@"recommendationIdentifiers"];
  [v21 setObject:v15 forKeyedSubscript:@"storageRecovered"];

  v20 = [v21 copy];
  [(INDaemon *)self sendStatusForRecommendationsWithAltDSID:v19 configuration:v18 params:v20 completion:v14];
}

- (void)sendStatusForRecommendationsWithAltDSID:(id)a3 configuration:(id)a4 params:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:v10];
  v15 = [v12 objectForKeyedSubscript:@"action"];
  if (v14)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_100013D04;
    v27 = sub_100013D14;
    v28 = [[INCloudNetworkController alloc] initWithAccount:v14];
    v16 = v24[5];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000171D0;
    v19[3] = &unk_100055C08;
    v20 = v15;
    v21 = v13;
    v22 = &v23;
    [v16 sendStatusForRecommendationWithConfiguration:v11 params:v12 completion:v19];

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v17 = _INLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100038694();
    }

    v18 = INCreateError();
    (*(v13 + 2))(v13, v18);
  }
}

- (void)observeFPItem:(id)a3 notifyURL:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = INCreateErrorWithMessage();
  v5[2](v5, 0, v6);
}

- (void)syncFPItem:(id)a3 observeItemIDs:(id)a4 notifyURL:(id)a5 completion:(id)a6
{
  v6 = a6;
  v7 = INCreateErrorWithMessage();
  v6[2](v6, 0, v7);
}

@end