@interface INDaemon
+ (id)sharedInstance;
- (BOOL)_isFirstLaunchAfterBoot;
- (BOOL)_isFirstLaunchAfterBootMacOS;
- (BOOL)_isFirstLaunchAfterBootiOS;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (INDaemon)init;
- (id)_currentBootSessionUUID;
- (id)accountPushNotificationHandlerForEventType:(id)type;
- (id)familyPushNotificationHandlerForEventType:(id)type;
- (id)quotaPushNotificationHandlerForEventType:(id)type;
- (void)_cleanUpIfNoAccountsAreLeftOtherThanAccount:(id)account;
- (void)_enablePushTopics;
- (void)_ensureDesiredAPSEnvironmentIsInUseWithCompletion:(id)completion;
- (void)_handleGMSAvailabilityChange;
- (void)_handleOSEligibilityChange;
- (void)_initiateAPSConnectionWithCompletion:(id)completion;
- (void)_performHeartbeatRegistration;
- (void)_performLoggedOutHeartbeatRegistrationIfNeeded;
- (void)_planForRegistrationTTL:(unint64_t)l account:(id)account;
- (void)_registrationDigestCacheDidBecomeAvailable:(id)available;
- (void)_setFirstLaunchAfterBootiOS;
- (void)_stopHeartbeat;
- (void)_unregisterAccount:(id)account fromiCloudNotificationsWithReason:(unint64_t)reason completion:(id)completion;
- (void)_unsafe_ensureFreshmintActivityValidity;
- (void)_unsafe_icqUpdateOfferForButtonId:(id)id;
- (void)_unsafe_performFreshmintRefreshWithReason:(id)reason;
- (void)_validateEnabledTopics;
- (void)_validateRegistrationStateIfFirstLaunch;
- (void)appLaunchLinkDidPresentForBundleIdentifier:(id)identifier;
- (void)calculateExtraQuotaNeededToSyncForAccountWithID:(id)d isAccountFull:(BOOL)full completion:(id)completion;
- (void)clearAllRegistrationDigestsWithCompletion:(id)completion;
- (void)commonHeadersForRequest:(id)request withCompletion:(id)completion;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
- (void)diagnosticReportWithCompletion:(id)completion;
- (void)displayDelayedOfferWithContext:(id)context completion:(id)completion;
- (void)fetchAppsSyncingToiCloudDriveForAltDSID:(id)d completion:(id)completion;
- (void)fetchBackupInfoForAltDSID:(id)d completion:(id)completion;
- (void)fetchCompletedAndDismissedRecommendationsForAltDSID:(id)d configuration:(id)configuration completion:(id)completion;
- (void)fetchRecommendationsForAltDSID:(id)d completion:(id)completion;
- (void)fetchRecommendationsRulesetForAltDSID:(id)d completion:(id)completion;
- (void)fetchStorageAppsForAltDSID:(id)d completion:(id)completion;
- (void)fetchStorageByApp:(id)app forAltDSID:(id)d completion:(id)completion;
- (void)fetchStorageSummaryForAltDSID:(id)d completion:(id)completion;
- (void)handleICloudQuotaPush:(id)push;
- (void)handlePushRegistrationWithAccount:(id)account reason:(unint64_t)reason;
- (void)handlePushUnregistrationWithAccount:(id)account completion:(id)completion;
- (void)iCloudServerOfferForAccountWithID:(id)d options:(id)options completion:(id)completion;
- (void)notifyDeviceStorageLevel:(int64_t)level completion:(id)completion;
- (void)observeFPItem:(id)item notifyURL:(id)l completion:(id)completion;
- (void)presentHiddenFreshmintWithContext:(id)context completion:(id)completion;
- (void)registerAccountWithID:(id)d foriCloudNotificationsWithReason:(unint64_t)reason completion:(id)completion;
- (void)registerDeviceForLoggedOutiCloudNotificationsWithReason:(unint64_t)reason completion:(id)completion;
- (void)registerForPushNotificationsWithAccount:(id)account reason:(unint64_t)reason completion:(id)completion;
- (void)remoteFreshmintFlowCompletedWithSuccess:(BOOL)success error:(id)error;
- (void)renewCredentialsWithCompletion:(id)completion;
- (void)sendStatusForRecommendationsWithAltDSID:(id)d configuration:(id)configuration params:(id)params completion:(id)completion;
- (void)sendStatusForRecommendationsWithAltDSID:(id)d configuration:(id)configuration status:(id)status recommendationIdentifiers:(id)identifiers storageRecovered:(id)recovered completion:(id)completion;
- (void)sendTipDismissedNetworkRequestForAltDSID:(id)d tip:(id)tip completion:(id)completion;
- (void)sendTipDisplayedNetworkRequestForAltDSID:(id)d tip:(id)tip completion:(id)completion;
- (void)start;
- (void)startDelayedOfferFailsafeActivityWithDelaySecs:(int64_t)secs completion:(id)completion;
- (void)stopDelayedOfferFailsafeActivityWithCompletion:(id)completion;
- (void)syncFPItem:(id)item observeItemIDs:(id)ds notifyURL:(id)l completion:(id)completion;
- (void)teardownOffersForAccount:(id)account withCompletion:(id)completion;
- (void)unregisterAccountWithID:(id)d fromiCloudNotificationsWithCompletion:(id)completion;
- (void)unregisterDeviceFromLoggedOutiCloudNotificationsWithReason:(unint64_t)reason completion:(id)completion;
- (void)updateOfferForAccountWithID:(id)d offerId:(id)id buttonId:(id)buttonId info:(id)info completion:(id)completion;
@end

@implementation INDaemon

- (void)_unsafe_ensureFreshmintActivityValidity
{
  v3 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  soonestOfferOrStubExpirationDate = [v3 soonestOfferOrStubExpirationDate];

  freshmintActivity = self->_freshmintActivity;
  if (soonestOfferOrStubExpirationDate)
  {
    [(INActivity *)freshmintActivity ensureNextActivityWillOccurBeforeDate:soonestOfferOrStubExpirationDate];
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
    freshmintActivity = [(INDaemon *)self freshmintActivity];
    [freshmintActivity checkIn];
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

- (void)registerForPushNotificationsWithAccount:(id)account reason:(unint64_t)reason completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000F958;
  v12[3] = &unk_100055868;
  objc_copyWeak(v16, &location);
  v10 = completionCopy;
  v15 = v10;
  v11 = accountCopy;
  v16[1] = reason;
  v13 = v11;
  selfCopy = self;
  [(INDaemon *)self _ensureDesiredAPSEnvironmentIsInUseWithCompletion:v12];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

- (void)_planForRegistrationTTL:(unint64_t)l account:(id)account
{
  accountCopy = account;
  v7 = _INLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100037518();
  }

  v8 = objc_alloc_init(INRegistrationTTLOverride);
  if ([(INRegistrationTTLOverride *)v8 hasOverride])
  {
    [(INRegistrationTTLOverride *)v8 overrideTimeInterval];
    l = v9;
    v10 = _INLogSystem();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 134217984;
    lCopy2 = l;
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
    lCopy2 = l;
    v11 = "Device has no registration TTL override, setting TTL to %lu";
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
LABEL_9:

  if (l)
  {
    v12 = [NSDate dateWithTimeIntervalSinceNow:l];
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_alloc_init(NSISO8601DateFormatter);
      v15 = [v14 stringFromDate:v12];
      *buf = 138412290;
      lCopy2 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Next registration expiration date is %@", buf, 0xCu);
    }

    if (accountCopy)
    {
      [accountCopy in_setRegistrationExpirationDate:v12];
      v16 = dispatch_semaphore_create(0);
      accountStore = self->_accountStore;
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_100010604;
      v23 = &unk_100055890;
      v24 = accountCopy;
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

- (void)_unregisterAccount:(id)account fromiCloudNotificationsWithReason:(unint64_t)reason completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000107B8;
  v12[3] = &unk_100055908;
  objc_copyWeak(v15, &location);
  v10 = completionCopy;
  v14 = v10;
  v11 = accountCopy;
  v13 = v11;
  v15[1] = reason;
  [(INDaemon *)self _ensureDesiredAPSEnvironmentIsInUseWithCompletion:v12];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

- (void)_cleanUpIfNoAccountsAreLeftOtherThanAccount:(id)account
{
  accountCopy = account;
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

        identifier = [*(*(&v21 + 1) + 8 * v10) identifier];
        identifier2 = [accountCopy identifier];

        if (identifier != identifier2)
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
  aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
  aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
  aa_altDSID2 = [accountCopy aa_altDSID];
  if ([aa_altDSID isEqualToString:aa_altDSID2])
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

  aa_primaryAppleAccount2 = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];

  if (!aa_primaryAppleAccount2)
  {
    goto LABEL_20;
  }

LABEL_21:
}

- (void)handlePushUnregistrationWithAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
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
    [v9 teardownOffersForAccount:accountCopy completion:completionCopy];

    if (!accountCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    completionCopy[2](completionCopy);
    if (!accountCopy)
    {
LABEL_9:
      [(INDaemon *)self _stopHeartbeat];
      +[_TtC3ind18LoggedOutPushCache unregisteredDevice];
    }
  }
}

- (void)handlePushRegistrationWithAccount:(id)account reason:(unint64_t)reason
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
    v7 = [INHelperFunctions fetchOfferReasonWithRegistrationReason:reason];
    [(INDaemon *)self _unsafe_performFreshmintRefreshWithReason:v7];
  }
}

- (void)_registrationDigestCacheDidBecomeAvailable:(id)available
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
    aa_appleAccounts = [(ACAccountStore *)self->_accountStore aa_appleAccounts];
    if (![aa_appleAccounts count])
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
      obj = aa_appleAccounts;
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
            selfCopy = self;
            objc_sync_enter(selfCopy);
            aa_altDSID = [v9 aa_altDSID];
            if (aa_altDSID)
            {
              accountsToReconsiderAfterReboot = [(INDaemon *)selfCopy accountsToReconsiderAfterReboot];
              [accountsToReconsiderAfterReboot addObject:aa_altDSID];
            }

            objc_sync_exit(selfCopy);
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_100011584;
            v18[3] = &unk_100055998;
            v18[4] = v9;
            [(INDaemon *)selfCopy registerForPushNotificationsWithAccount:v9 reason:5 completion:v18];
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

    v4 = aa_appleAccounts;
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
  _isFirstLaunchAfterBootiOS = [(INDaemon *)self _isFirstLaunchAfterBootiOS];
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (_isFirstLaunchAfterBootiOS)
    {
      v4 = @"YES";
    }

    v6 = 136315394;
    v7 = "[INDaemon _isFirstLaunchAfterBoot]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: %@", &v6, 0x16u);
  }

  return _isFirstLaunchAfterBootiOS;
}

- (BOOL)_isFirstLaunchAfterBootiOS
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_hasCheckedForFirstLaunch)
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
      selfCopy->_hasCheckedForFirstLaunch = 1;
    }

    v8 = _INLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished checking if this is first launch since boot.", v10, 2u);
    }
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setFirstLaunchAfterBootiOS
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  objc_sync_exit(selfCopy);
}

- (BOOL)_isFirstLaunchAfterBootMacOS
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 stringForKey:@"com.apple.iCloudNotification.sessionUUID"];

  _currentBootSessionUUID = [(INDaemon *)self _currentBootSessionUUID];
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = _currentBootSessionUUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Saved session UUID: %@, current session UUID: %@", &v11, 0x16u);
  }

  v7 = [v4 isEqualToString:_currentBootSessionUUID];
  if ((v7 & 1) == 0)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 setObject:_currentBootSessionUUID forKey:@"com.apple.iCloudNotification.sessionUUID"];

    v9 = _INLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = _currentBootSessionUUID;
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "New connection request received.", buf, 2u);
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.private.ind.client"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    [connectionCopy setExportedObject:self];
    v9 = +[INDaemonInterface XPCInterface];
    [connectionCopy setExportedInterface:v9];

    [connectionCopy setInterruptionHandler:&stru_1000559B8];
    [connectionCopy setInvalidationHandler:&stru_1000559B8];
    [connectionCopy resume];
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

  return bOOLValue;
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

  aa_appleAccounts = [(ACAccountStore *)self->_accountStore aa_appleAccounts];
  v39 = objc_alloc_init(NSMutableArray);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = aa_appleAccounts;
  v6 = [v5 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    selfCopy = self;
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
        in_registrationExpirationDate = [v11 in_registrationExpirationDate];
        if (in_registrationExpirationDate)
        {
          v13 = +[NSDate date];
          v14 = [in_registrationExpirationDate compare:v13];

          if (v14 == 1)
          {
            if (!v8 || [v8 compare:in_registrationExpirationDate] == 1)
            {
              v15 = _INLogSystem();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v56 = in_registrationExpirationDate;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updating soonest expiration date to %{public}@", buf, 0xCu);
              }

              v16 = in_registrationExpirationDate;
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
      self = selfCopy;
      [(INActivity *)selfCopy->_hearbeatActivity ensureNextActivityWillOccurBeforeDate:v19];
    }

    else
    {
      self = selfCopy;
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

  aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];

  if (!aa_primaryAppleAccount)
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

- (void)registerAccountWithID:(id)d foriCloudNotificationsWithReason:(unint64_t)reason completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10 = _INLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = dCopy;
    v19 = 2080;
    v20 = "[INDaemon registerAccountWithID:foriCloudNotificationsWithReason:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received registration request for account %@ over XPC. %s", &v17, 0x16u);
  }

  if (dCopy && ([(ACAccountStore *)self->_accountStore accountWithIdentifier:dCopy], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    accountType = [v11 accountType];
    identifier = [accountType identifier];
    v15 = [identifier isEqualToString:ACAccountTypeIdentifierAppleAccount];

    if (v15)
    {
      [(INDaemon *)self registerForPushNotificationsWithAccount:v12 reason:reason completion:completionCopy];
    }

    else
    {
      v16 = INCreateError();
      completionCopy[2](completionCopy, 0, v16);
    }
  }

  else
  {
    v12 = INCreateError();
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)registerDeviceForLoggedOutiCloudNotificationsWithReason:(unint64_t)reason completion:(id)completion
{
  completionCopy = completion;
  v7 = _INLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[INDaemon registerDeviceForLoggedOutiCloudNotificationsWithReason:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received logged-out push registration request over XPC. %s", &v8, 0xCu);
  }

  [(INDaemon *)self registerForPushNotificationsWithAccount:0 reason:reason completion:completionCopy];
}

- (void)unregisterAccountWithID:(id)d fromiCloudNotificationsWithCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = _INLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = dCopy;
    v22 = 2080;
    v23 = "[INDaemon unregisterAccountWithID:fromiCloudNotificationsWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received unregistration request for account %@ over XPC. %s", buf, 0x16u);
  }

  if (!dCopy)
  {
    goto LABEL_9;
  }

  v9 = [(ACAccountStore *)self->_accountStore accountWithIdentifier:dCopy];
  v10 = _INLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000378B8();
  }

  if (v9)
  {
    accountType = [v9 accountType];
    identifier = [accountType identifier];
    v13 = [identifier isEqualToString:ACAccountTypeIdentifierAppleAccount];

    if (v13)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100012EB8;
      v17[3] = &unk_1000558B8;
      v17[4] = self;
      v18 = v9;
      v19 = completionCopy;
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
      (*(completionCopy + 2))(completionCopy, 0, v16);
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
    (*(completionCopy + 2))(completionCopy, 0, v9);
  }
}

- (void)unregisterDeviceFromLoggedOutiCloudNotificationsWithReason:(unint64_t)reason completion:(id)completion
{
  completionCopy = completion;
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
  v10 = completionCopy;
  v8 = completionCopy;
  [(INDaemon *)self _unregisterAccount:0 fromiCloudNotificationsWithReason:reason completion:v9];
}

- (void)teardownOffersForAccount:(id)account withCompletion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  v7 = _INLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = accountCopy;
    v11 = 2080;
    v12 = "[INDaemon teardownOffersForAccount:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received teardown offers request for account %@ over XPC. %s", &v9, 0x16u);
  }

  v8 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v8 teardownOffersForAccount:accountCopy completion:completionCopy];
}

- (void)clearAllRegistrationDigestsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000379CC();
  }

  aa_appleAccounts = [(ACAccountStore *)self->_accountStore aa_appleAccounts];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [aa_appleAccounts countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v16 = completionCopy;
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
        objc_enumerationMutation(aa_appleAccounts);
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
    v8 = [aa_appleAccounts countByEnumeratingWithState:&v18 objects:v24 count:16];
  }

  while (v8);
  completionCopy = v16;
  if (v9)
  {
    (v16)[2](v16, 0, v9);
  }

  else
  {
LABEL_14:
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)diagnosticReportWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(INDiagnosticReport);
  [v4 setDisabled:0];
  [v4 setPushEnvironment:self->_activeAPSEnvironment];
  publicToken = [(APSConnection *)self->_apsConnection publicToken];
  v6 = [publicToken description];
  [v4 setPushToken:v6];

  enabledTopics = [(APSConnection *)self->_apsConnection enabledTopics];
  [v4 setPushTopics:enabledTopics];

  v8 = +[INManagedDefaults sharedInstance];
  v9 = [v8 valueForManagedDefault:INNextHeartbeatDateKey];

  if (v9)
  {
    [v9 doubleValue];
    v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v4 setNextHeartbeatDate:v10];
  }

  completionCopy[2](completionCopy, v4, 0);
}

- (void)iCloudServerOfferForAccountWithID:(id)d options:(id)options completion:(id)completion
{
  completionCopy = completion;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Subclass must override if they support freshmint.", v8, 2u);
  }

  v7 = INCreateError();
  completionCopy[2](completionCopy, 0, v7);
}

- (void)updateOfferForAccountWithID:(id)d offerId:(id)id buttonId:(id)buttonId info:(id)info completion:(id)completion
{
  dCopy = d;
  idCopy = id;
  buttonIdCopy = buttonId;
  infoCopy = info;
  completionCopy = completion;
  v17 = _INLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100037A00();
  }

  if (dCopy && (-[INDaemon accountStore](self, "accountStore"), v18 = objc_claimAutoreleasedReturnValue(), [v18 accountWithIdentifier:dCopy], v19 = objc_claimAutoreleasedReturnValue(), v18, v19))
  {
    accountType = [v19 accountType];
    identifier = [accountType identifier];
    v22 = [identifier isEqualToString:ACAccountTypeIdentifierAppleAccount];

    if (v22)
    {
      v23 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
      [v23 updateOfferForAccount:v19 offerId:idCopy buttonId:buttonIdCopy info:infoCopy completion:completionCopy];
    }

    else
    {
      v23 = INCreateError();
      completionCopy[2](completionCopy, 0, v23);
    }
  }

  else
  {
    v19 = INCreateError();
    completionCopy[2](completionCopy, 0, v19);
  }
}

- (void)notifyDeviceStorageLevel:(int64_t)level completion:(id)completion
{
  completionCopy = completion;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Subclass must override if they support freshmint.", v7, 2u);
  }

  v6 = INCreateError();
  completionCopy[2](completionCopy, 0, v6);
}

- (void)presentHiddenFreshmintWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Subclass must override if they support freshmint.", v7, 2u);
  }

  v6 = INCreateError();
  completionCopy[2](completionCopy, 0, v6);
}

- (void)remoteFreshmintFlowCompletedWithSuccess:(BOOL)success error:(id)error
{
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Subclass must override if they support freshmint.", v5, 2u);
  }
}

- (void)appLaunchLinkDidPresentForBundleIdentifier:(id)identifier
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Subclass must override if they support freshmint.", v4, 2u);
  }
}

- (void)commonHeadersForRequest:(id)request withCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Subclass must override if they support freshmint.", v6, 2u);
  }

  completionCopy[2](completionCopy, 0);
}

- (void)renewCredentialsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Subclass must override if they support freshmint.", v5, 2u);
  }

  completionCopy[2](completionCopy, 2, 0);
}

- (void)fetchStorageSummaryForAltDSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:dCopy];
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
    v13 = completionCopy;
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
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

- (void)fetchStorageAppsForAltDSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:dCopy];
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
    v13 = completionCopy;
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
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

- (void)fetchStorageByApp:(id)app forAltDSID:(id)d completion:(id)completion
{
  appCopy = app;
  dCopy = d;
  completionCopy = completion;
  v11 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:dCopy];
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
    v16 = completionCopy;
    v17 = &v18;
    [v12 appCloudStorageForBundleId:appCopy completion:v15];

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
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

- (void)fetchBackupInfoForAltDSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:dCopy];
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
    v13 = completionCopy;
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
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

- (void)sendTipDisplayedNetworkRequestForAltDSID:(id)d tip:(id)tip completion:(id)completion
{
  dCopy = d;
  tipCopy = tip;
  completionCopy = completion;
  v11 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:dCopy];
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
    v16 = completionCopy;
    v17 = &v18;
    [v12 displayedNetworkRequestForTip:tipCopy completion:v15];

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
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

- (void)sendTipDismissedNetworkRequestForAltDSID:(id)d tip:(id)tip completion:(id)completion
{
  dCopy = d;
  tipCopy = tip;
  completionCopy = completion;
  v11 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:dCopy];
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
    v16 = completionCopy;
    v17 = &v18;
    [v12 dismissedNetworkRequestForTip:tipCopy completion:v15];

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
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

- (void)fetchAppsSyncingToiCloudDriveForAltDSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:dCopy];
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
    v13 = completionCopy;
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
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

- (id)accountPushNotificationHandlerForEventType:(id)type
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100037EAC();
  }

  return 0;
}

- (id)familyPushNotificationHandlerForEventType:(id)type
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100037EAC();
  }

  return 0;
}

- (id)quotaPushNotificationHandlerForEventType:(id)type
{
  typeCopy = type;
  v5 = [(NSDictionary *)self->_quotaPushNotificationHandlersByEventType objectForKeyedSubscript:typeCopy];
  if (!v5)
  {
    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = typeCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No quota push handler found for event type: %@", &v8, 0xCu);
    }
  }

  return v5;
}

- (void)handleICloudQuotaPush:(id)push
{
  pushCopy = push;
  userInfo = [pushCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"category"];

  v6 = [v5 isEqualToString:@"cloudsubscriptionfeatures"];
  v7 = _INLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      userInfo2 = [pushCopy userInfo];
      *buf = 138412290;
      v17 = userInfo2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling CloudSubscriptionFeatures plan change notification: %@", buf, 0xCu);
    }

    userInfo3 = [pushCopy userInfo];
    [CSFFeatureManager processPushNotificationDictionary:userInfo3];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100037EE8(pushCopy);
    }

    v11 = os_transaction_create();
    v12 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
    userInfo4 = [pushCopy userInfo];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = nullsub_2;
    v14[3] = &unk_100055318;
    v15 = v11;
    userInfo3 = v11;
    [v12 processPushNotificationDictionary:userInfo4 completion:v14];
  }
}

- (void)_initiateAPSConnectionWithCompletion:(id)completion
{
  completionCopy = completion;
  aaSharedRemoteServer = self->_aaSharedRemoteServer;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000150BC;
  v7[3] = &unk_100055B20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(AARemoteServer *)aaSharedRemoteServer configurationWithCompletion:v7];
}

- (void)_ensureDesiredAPSEnvironmentIsInUseWithCompletion:(id)completion
{
  completionCopy = completion;
  aaSharedRemoteServer = self->_aaSharedRemoteServer;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000153C0;
  v7[3] = &unk_100055B48;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(AARemoteServer *)aaSharedRemoteServer configurationWithCompletion:v7];
}

- (void)_validateEnabledTopics
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100038170();
  }

  accountStore = [(INDaemon *)self accountStore];
  aa_appleAccounts = [accountStore aa_appleAccounts];

  if ([aa_appleAccounts count])
  {
    [(INDaemon *)self _enablePushTopics];
  }

  else
  {
    enabledTopics = [(APSConnection *)self->_apsConnection enabledTopics];
    v7 = [enabledTopics count];

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

  pushTopics = [(INDaemon *)self pushTopics];
  [(APSConnection *)self->_apsConnection _setEnabledTopics:pushTopics];
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received new public token from APS.", buf, 2u);
  }

  aa_appleAccounts = [(ACAccountStore *)self->_accountStore aa_appleAccounts];
  if ([aa_appleAccounts count])
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
      v9 = aa_appleAccounts;
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

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    topic = [messageCopy topic];
    userInfo = [messageCopy userInfo];
    v21 = 138412546;
    v22 = topic;
    v23 = 2112;
    v24 = userInfo;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received new incoming message from APS. %@ - %@", &v21, 0x16u);
  }

  enabledTopics = [(APSConnection *)self->_apsConnection enabledTopics];
  topic2 = [messageCopy topic];
  v11 = [enabledTopics containsObject:topic2];

  if (v11)
  {
    userInfo2 = [messageCopy userInfo];
    v13 = [userInfo2 objectForKeyedSubscript:@"event"];

    topic3 = [messageCopy topic];
    v15 = [topic3 isEqualToString:@"com.me.setupservice"];

    if (v15)
    {
      v16 = [(INDaemon *)self accountPushNotificationHandlerForEventType:v13];
      v17 = v16;
    }

    else
    {
      topic4 = [messageCopy topic];
      v20 = [topic4 isEqualToString:@"com.icloud.quota"];

      if (!v20)
      {
        v17 = _INLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10003829C(messageCopy);
        }

        goto LABEL_14;
      }

      v16 = [(INDaemon *)self quotaPushNotificationHandlerForEventType:v13];
      v17 = v16;
      if (!v16)
      {
        [(INDaemon *)self handleICloudQuotaPush:messageCopy];
        goto LABEL_14;
      }
    }

    [v16 handleIncomingPushNotification:messageCopy];
LABEL_14:

    goto LABEL_15;
  }

  v13 = _INLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    topic5 = [messageCopy topic];
    v21 = 138412290;
    v22 = topic5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignoring push because the topic %@ is not enabled.", &v21, 0xCu);
  }

LABEL_15:
}

- (void)_stopHeartbeat
{
  [(INDaemon *)self _disablePushTopics];
  [(INActivity *)self->_hearbeatActivity stop];
  v4 = +[INManagedDefaults sharedInstance];
  activityNextFireDateKey = [(INActivity *)self->_hearbeatActivity activityNextFireDateKey];
  [v4 setValue:0 forManagedDefault:activityNextFireDateKey];
}

- (void)displayDelayedOfferWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v7 = _INLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100038344();
  }

  v8 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v8 displayDelayedOfferWithContext:contextCopy completion:completionCopy];

  v9 = _INLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000383B4();
  }
}

- (void)_unsafe_performFreshmintRefreshWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Thump thump - Fresh!", v6, 2u);
  }

  [(INDaemon *)self _unsafe_icqReconsiderOffersWithReason:reasonCopy];
}

- (void)_unsafe_icqUpdateOfferForButtonId:(id)id
{
  idCopy = id;
  accountStore = [(INDaemon *)self accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];

  v7 = os_transaction_create();
  v8 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = nullsub_3;
  v10[3] = &unk_100055998;
  v11 = v7;
  v9 = v7;
  [v8 updateOfferForAccount:aa_primaryAppleAccount offerId:0 buttonId:idCopy info:0 completion:v10];
}

- (void)startDelayedOfferFailsafeActivityWithDelaySecs:(int64_t)secs completion:(id)completion
{
  completionCopy = completion;
  v5 = INCreateErrorWithMessage();
  completionCopy[2](completionCopy, v5);
}

- (void)stopDelayedOfferFailsafeActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = INCreateErrorWithMessage();
  completionCopy[2](completionCopy, v4);
}

- (void)calculateExtraQuotaNeededToSyncForAccountWithID:(id)d isAccountFull:(BOOL)full completion:(id)completion
{
  completionCopy = completion;
  v7 = [NSString stringWithFormat:@"Method %s not supported in this platform.", "[INDaemon calculateExtraQuotaNeededToSyncForAccountWithID:isAccountFull:completion:]"];
  v6 = INCreateErrorWithMessage();
  completionCopy[2](completionCopy, 0, v6);
}

- (void)fetchRecommendationsForAltDSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:dCopy];
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
    v13 = completionCopy;
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
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

- (void)fetchRecommendationsRulesetForAltDSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:dCopy];
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
    v13 = completionCopy;
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
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

- (void)fetchCompletedAndDismissedRecommendationsForAltDSID:(id)d configuration:(id)configuration completion:(id)completion
{
  dCopy = d;
  configurationCopy = configuration;
  completionCopy = completion;
  v11 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:dCopy];
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
    v16 = completionCopy;
    v17 = &v18;
    [v12 fetchCompletedAndDismissedRecommendationsWithConfiguration:configurationCopy completion:v15];

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
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

- (void)sendStatusForRecommendationsWithAltDSID:(id)d configuration:(id)configuration status:(id)status recommendationIdentifiers:(id)identifiers storageRecovered:(id)recovered completion:(id)completion
{
  completionCopy = completion;
  recoveredCopy = recovered;
  identifiersCopy = identifiers;
  statusCopy = status;
  configurationCopy = configuration;
  dCopy = d;
  v21 = objc_alloc_init(NSMutableDictionary);
  [v21 setObject:statusCopy forKeyedSubscript:@"action"];

  [v21 setObject:identifiersCopy forKeyedSubscript:@"recommendationIdentifiers"];
  [v21 setObject:recoveredCopy forKeyedSubscript:@"storageRecovered"];

  v20 = [v21 copy];
  [(INDaemon *)self sendStatusForRecommendationsWithAltDSID:dCopy configuration:configurationCopy params:v20 completion:completionCopy];
}

- (void)sendStatusForRecommendationsWithAltDSID:(id)d configuration:(id)configuration params:(id)params completion:(id)completion
{
  dCopy = d;
  configurationCopy = configuration;
  paramsCopy = params;
  completionCopy = completion;
  v14 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithAltDSID:dCopy];
  v15 = [paramsCopy objectForKeyedSubscript:@"action"];
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
    v21 = completionCopy;
    v22 = &v23;
    [v16 sendStatusForRecommendationWithConfiguration:configurationCopy params:paramsCopy completion:v19];

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
    (*(completionCopy + 2))(completionCopy, v18);
  }
}

- (void)observeFPItem:(id)item notifyURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v6 = INCreateErrorWithMessage();
  completionCopy[2](completionCopy, 0, v6);
}

- (void)syncFPItem:(id)item observeItemIDs:(id)ds notifyURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v7 = INCreateErrorWithMessage();
  completionCopy[2](completionCopy, 0, v7);
}

@end