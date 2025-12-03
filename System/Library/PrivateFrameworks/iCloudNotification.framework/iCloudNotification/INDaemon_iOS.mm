@interface INDaemon_iOS
- (BOOL)_unsafe_isLegacyDeviceStorageLevelNotificationEnabled;
- (INDaemon_iOS)init;
- (id)accountPushNotificationHandlerForEventType:(id)type;
- (id)pushTopics;
- (void)_configureXPCEventStreamHandler;
- (void)_handleDeviceDidPairEvent;
- (void)_handleDeviceDidSetupNotification:(id)notification;
- (void)_handleDeviceNameChangeEvent;
- (void)_handleLanguageChangedEvent;
- (void)_loadPushNotificationHandlers;
- (void)_unsafe_handlePhotosOptimizeStateChangedEvent;
- (void)_unsafe_handlePhotosiCPLStateChangedEvent;
- (void)_unsafe_handleSimulateVFSAlmostFullEvent;
- (void)_unsafe_handleSimulateVFSNotFullEvent;
- (void)_unsafe_handleVFSFallBelowLowDisk;
- (void)_unsafe_handleVFSFallBelowNearLowDisk;
- (void)_unsafe_handleVFSFallBelowVeryLowDisk;
- (void)_unsafe_handleVFSRiseAboveDesiredDisk;
- (void)_unsafe_handleVFSRiseAboveLowDisk;
- (void)appLaunchLinkDidPresentForBundleIdentifier:(id)identifier;
- (void)commonHeadersForRequest:(id)request withCompletion:(id)completion;
- (void)getCacheDataForLink:(id)link completion:(id)completion;
- (void)handleICloudQuotaPush:(id)push;
- (void)iCloudServerOfferForAccountWithID:(id)d options:(id)options completion:(id)completion;
- (void)notifyDeviceStorageLevel:(int64_t)level completion:(id)completion;
- (void)observeFPItem:(id)item notifyURL:(id)l completion:(id)completion;
- (void)presentHiddenFreshmintWithContext:(id)context completion:(id)completion;
- (void)renewCredentialsWithCompletion:(id)completion;
- (void)start;
- (void)startDelayedOfferFailsafeActivityWithDelaySecs:(int64_t)secs completion:(id)completion;
- (void)stopDelayedOfferFailsafeActivityWithCompletion:(id)completion;
- (void)syncFPItem:(id)item observeItemIDs:(id)ds notifyURL:(id)l completion:(id)completion;
@end

@implementation INDaemon_iOS

- (void)_unsafe_handleVFSRiseAboveLowDisk
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Disk space improved to low level. Removing Storage Management alert.", v5, 2u);
  }

  v4 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v4 stopDirectingToStorageManagement];

  [(INDaemon *)self _unsafe_icqReconsiderOffersWithReason:ICQFetchOffersReasonRiseAboveLowDisk reuseLocalOffers:1];
}

- (INDaemon_iOS)init
{
  v10.receiver = self;
  v10.super_class = INDaemon_iOS;
  v2 = [(INDaemon *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(INDaemon_iOS *)v2 _loadPushNotificationHandlers];
    v4 = objc_alloc_init(INDelayedOfferFailsafeActivity);
    [(INDaemon_iOS *)v3 setDelayedOfferFailsafeActivity:v4];

    +[NRPairedDeviceRegistry sharedInstance];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v3 selector:"_handleDeviceDidSetupNotification:" name:NRPairedDeviceRegistryDeviceIsSetupNotification object:0];

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.ind.event-stream", v6);
    eventStreamQueue = v3->_eventStreamQueue;
    v3->_eventStreamQueue = v7;
  }

  return v3;
}

- (void)start
{
  if (![(INDaemon *)self isRunning])
  {
    v4.receiver = self;
    v4.super_class = INDaemon_iOS;
    [(INDaemon *)&v4 start];
    v3 = _INLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000388B0();
    }

    [(INDaemon_iOS *)self _configureXPCEventStreamHandler];
  }
}

- (void)_configureXPCEventStreamHandler
{
  eventStreamQueue = self->_eventStreamQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000188AC;
  handler[3] = &unk_100055C30;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", eventStreamQueue, handler);
  v4 = self->_eventStreamQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100018B64;
  v5[3] = &unk_100055C30;
  v5[4] = self;
  xpc_set_event_stream_handler("com.apple.dispatch.vfs", v4, v5);
}

- (void)_handleDeviceNameChangeEvent
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device name has changed.", buf, 2u);
  }

  accountStore = [(INDaemon *)self accountStore];
  aa_appleAccounts = [accountStore aa_appleAccounts];

  if ([aa_appleAccounts count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = aa_appleAccounts;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
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

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = _INLogSystem();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v19 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Checking if new registration for account %@ is warranted...", buf, 0xCu);
          }

          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_10001912C;
          v13[3] = &unk_100055998;
          v13[4] = v11;
          [(INDaemon *)self registerForPushNotificationsWithAccount:v11 reason:4 completion:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No iCloud accounts found, so there's nothing to do.", buf, 2u);
    }
  }
}

- (void)_handleDeviceDidPairEvent
{
  v2 = _INLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "devicedidpair get fired, no action performed!", v3, 2u);
  }
}

- (void)_handleDeviceDidSetupNotification:(id)notification
{
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "New paired device!", buf, 2u);
  }

  accountStore = [(INDaemon *)self accountStore];
  aa_appleAccounts = [accountStore aa_appleAccounts];

  if ([aa_appleAccounts count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = aa_appleAccounts;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = _INLogSystem();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Checking if new registration for account %@ is warranted...", buf, 0xCu);
          }

          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_1000194E0;
          v14[3] = &unk_100055998;
          v14[4] = v12;
          [(INDaemon *)self registerForPushNotificationsWithAccount:v12 reason:6 completion:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = _INLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No iCloud accounts found, so there's nothing to do.", buf, 2u);
    }
  }
}

- (void)_handleLanguageChangedEvent
{
  v2 = _INLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Language has changed, clearing cached offers, exiting.", v4, 2u);
  }

  v3 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v3 teardownCachedOffers];

  if (objc_opt_respondsToSelector())
  {
    +[CSFFeatureManager revalidateCFU];
  }

  xpc_transaction_exit_clean();
}

- (void)_loadPushNotificationHandlers
{
  v14 = objc_alloc_init(NSMutableDictionary);
  v3 = [INVerifyTermsPushHandler alloc];
  accountStore = [(INDaemon *)self accountStore];
  v5 = [(INVerifyTermsPushHandler *)v3 initWithAccountStore:accountStore];

  [v14 setObject:v5 forKeyedSubscript:@"t_needs_agree"];
  [v14 setObject:v5 forKeyedSubscript:@"t_did_agree"];
  v6 = [v14 copy];
  accountPushNotificationHandlersByEventType = self->_accountPushNotificationHandlersByEventType;
  self->_accountPushNotificationHandlersByEventType = v6;

  v8 = [INAccountEventPushHandler alloc];
  accountStore2 = [(INDaemon *)self accountStore];
  v10 = [(INAccountEventPushHandler *)v8 initWithAccountStore:accountStore2];
  accountDefaultEventPushNotificationHandler = self->_accountDefaultEventPushNotificationHandler;
  self->_accountDefaultEventPushNotificationHandler = v10;

  v12 = objc_alloc_init(INMercuryPushNotificationHandler);
  mercuryPushHandler = self->_mercuryPushHandler;
  self->_mercuryPushHandler = v12;
}

- (id)accountPushNotificationHandlerForEventType:(id)type
{
  v4 = [(NSDictionary *)self->_accountPushNotificationHandlersByEventType objectForKeyedSubscript:type];
  accountDefaultEventPushNotificationHandler = v4;
  if (!v4)
  {
    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100038988();
    }

    accountDefaultEventPushNotificationHandler = self->_accountDefaultEventPushNotificationHandler;
  }

  v7 = accountDefaultEventPushNotificationHandler;

  return v7;
}

- (id)pushTopics
{
  v6 = @"com.me.setupservice";
  v2 = [NSArray arrayWithObjects:&v6 count:1];
  v3 = [v2 mutableCopy];

  if (sub_100002168())
  {
    [v3 addObject:@"com.icloud.quota"];
  }

  v4 = [v3 copy];

  return v4;
}

- (void)handleICloudQuotaPush:(id)push
{
  pushCopy = push;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [pushCopy userInfo];
    *buf = 138412290;
    v24 = userInfo;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "> Handling iCloudQuota push message: %@", buf, 0xCu);
  }

  userInfo2 = [pushCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"category"];

  if ([v8 isEqualToString:@"oobe"])
  {
    userInfo3 = [pushCopy userInfo];
    v10 = [userInfo3 objectForKeyedSubscript:@"eventDetails"];

    v11 = [v10 objectForKeyedSubscript:@"subCategory"];
    if (![v11 isEqualToString:@"prebuddy"])
    {
LABEL_20:

      goto LABEL_21;
    }

    v12 = [v10 objectForKeyedSubscript:@"action"];
    v13 = [v10 objectForKeyedSubscript:@"additionalInfo"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [v10 objectForKeyedSubscript:@"additionalInfo"];
    }

    else
    {
      v15 = 0;
    }

    v16 = _INLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      userInfo4 = [pushCopy userInfo];
      *buf = 138412546;
      v24 = v12;
      v25 = 2112;
      v26 = userInfo4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Handling iCloudQuota OOBE Prebuddy %@ push notification: %@", buf, 0x16u);
    }

    if ([v12 isEqualToString:@"start"])
    {
      v18 = +[MBPrebuddyManager sharedManager];
      [v18 signalPrebuddy:v15];
    }

    else if ([v12 isEqualToString:@"cancel"])
    {
      v18 = +[MBPrebuddyManager sharedManager];
      [v18 cancelPrebuddy];
    }

    else
    {
      if (![v12 isEqualToString:@"delete"])
      {
        if (![v12 isEqualToString:@"restore"])
        {
          if ([v12 isEqualToString:@"purchase"])
          {
            v18 = objc_alloc_init(MBManager);
            v22 = 0;
            [v18 exitMegaBackupMode:&v22];
            v19 = v22;
            if (v19)
            {
              v20 = _INLogSystem();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_100038A2C(v19, v20);
              }
            }
          }

          else
          {
            v18 = _INLogSystem();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_1000389BC();
            }
          }

          goto LABEL_19;
        }

        +[DKFollowUp postFollowUp];
      }

      v18 = +[MBPrebuddyManager sharedManager];
      [v18 prebuddyBackupDeleted:v15];
    }

LABEL_19:

    goto LABEL_20;
  }

  v21.receiver = self;
  v21.super_class = INDaemon_iOS;
  [(INDaemon *)&v21 handleICloudQuotaPush:pushCopy];
LABEL_21:
}

- (void)iCloudServerOfferForAccountWithID:(id)d options:(id)options completion:(id)completion
{
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  v11 = _INLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = dCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received offer request for account %@ over XPC.", &v19, 0xCu);
  }

  if ((sub_100002168() & 1) != 0 && dCopy && (-[INDaemon accountStore](self, "accountStore"), v12 = objc_claimAutoreleasedReturnValue(), [v12 accountWithIdentifier:dCopy], v13 = objc_claimAutoreleasedReturnValue(), v12, v13))
  {
    accountType = [v13 accountType];
    identifier = [accountType identifier];
    v16 = [identifier isEqualToString:ACAccountTypeIdentifierAppleAccount];

    if (v16)
    {
      v17 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
      if (!v17)
      {
        sub_100038AC0();
      }

      v18 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
      [v18 daemonOfferDictionaryForAccount:v13 options:optionsCopy completion:completionCopy];
    }

    else
    {
      v18 = INCreateError();
      completionCopy[2](completionCopy, 0, v18);
    }
  }

  else
  {
    v13 = INCreateError();
    completionCopy[2](completionCopy, 0, v13);
  }
}

- (void)notifyDeviceStorageLevel:(int64_t)level completion:(id)completion
{
  completionCopy = completion;
  if ((sub_100002168() & 1) == 0)
  {
LABEL_17:
    v8 = INCreateError();
    completionCopy[2](completionCopy, 0, v8);

    goto LABEL_18;
  }

  if (level <= 1)
  {
    if (!level)
    {
      [(INDaemon_iOS *)self _unsafe_handleVFSRiseAboveDesiredDisk];
      goto LABEL_13;
    }

    if (level == 1)
    {
      [(INDaemon_iOS *)self _unsafe_handleVFSFallBelowNearLowDisk];
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (level == 2)
  {
    [(INDaemon_iOS *)self _unsafe_handleVFSFallBelowLowDisk];
    goto LABEL_13;
  }

  if (level == 3)
  {
    [(INDaemon_iOS *)self _unsafe_handleVFSFallBelowVeryLowDisk];
    goto LABEL_13;
  }

  if (level != 6)
  {
LABEL_14:
    v7 = _INLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100038AEC();
    }

    goto LABEL_17;
  }

  [(INDaemon_iOS *)self _unsafe_handleVFSRiseAboveLowDisk];
LABEL_13:
  completionCopy[2](completionCopy, 1, 0);
LABEL_18:
}

- (void)presentHiddenFreshmintWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = _INLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "presenting freshmint flow with context %@", buf, 0xCu);
  }

  if (sub_100002168())
  {
    v9 = objc_retainBlock(completionCopy);
    freshmintCompletion = self->_freshmintCompletion;
    self->_freshmintCompletion = v9;

    v11 = [[ICQRemotePresentationManager alloc] initWithRemoteContext:contextCopy];
    presentationManager = self->_presentationManager;
    self->_presentationManager = v11;

    objc_initWeak(buf, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001A254;
    v18[3] = &unk_100055C58;
    objc_copyWeak(&v19, buf);
    [(ICQRemotePresentationManager *)self->_presentationManager setPresentationWasInvalidated:v18];
    v13 = self->_presentationManager;
    listener = [(INDaemon *)self listener];
    endpoint = [listener endpoint];
    _endpoint = [endpoint _endpoint];
    [(ICQRemotePresentationManager *)v13 presentHiddenFreshmintFlowWithEndpoint:_endpoint];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  else
  {
    v17 = INCreateError();
    (*(completionCopy + 2))(completionCopy, 0, v17);
  }
}

- (void)appLaunchLinkDidPresentForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AppLaunch detected for Bundle: %@", &v6, 0xCu);
  }

  v5 = +[NSDate now];
  [_ICQHelperFunctions appLaunchLinkTrackerSetLastShownDate:v5 forBundleID:identifierCopy];
}

- (void)getCacheDataForLink:(id)link completion:(id)completion
{
  linkCopy = link;
  completionCopy = completion;
  v7 = _INLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = linkCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Checking for Cached content for Link: %@", &v8, 0xCu);
  }

  [linkCopy getCachedContentWithCompletion:completionCopy];
}

- (void)commonHeadersForRequest:(id)request withCompletion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v7 = sub_100002168();
  v8 = _INLogSystem();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Adding common headers to request", v13, 2u);
    }

    allHTTPHeaderFields2 = [requestCopy mutableCopy];
    v11 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
    [v11 addCommonHeadersToRequest:allHTTPHeaderFields2];

    allHTTPHeaderFields = [allHTTPHeaderFields2 allHTTPHeaderFields];
    completionCopy[2](completionCopy, allHTTPHeaderFields);

    completionCopy = allHTTPHeaderFields;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100038B98();
    }

    allHTTPHeaderFields2 = [requestCopy allHTTPHeaderFields];

    completionCopy[2](completionCopy, allHTTPHeaderFields2);
  }
}

- (void)renewCredentialsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = sub_100002168();
  v5 = _INLogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100038C10(v6);
    }

    v7 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
    [v7 renewCredentialsWithCompletion:completionCopy];

    completionCopy = v7;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100038BD4();
    }

    (*(completionCopy + 2))(completionCopy, 2, 0);
  }
}

- (void)_unsafe_handlePhotosiCPLStateChangedEvent
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Photos iCPL state changed.", v4, 2u);
  }

  [(INDaemon *)self _unsafe_icqReconsiderOffersWithReason:ICQFetchOffersReasonICPLStateChanged reuseLocalOffers:0];
}

- (void)_unsafe_handlePhotosOptimizeStateChangedEvent
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Photos optimize state changed.", v4, 2u);
  }

  [(INDaemon *)self _unsafe_icqReconsiderOffersWithReason:ICQFetchOffersReasonPhotosOptimizeStateChanged reuseLocalOffers:0];
}

- (void)_unsafe_handleVFSFallBelowVeryLowDisk
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Disk space fell below very low level. Using Storage Management alert.", v5, 2u);
  }

  v4 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v4 startDirectingToStorageManagement];

  [(INDaemon *)self _unsafe_icqReconsiderOffersWithReason:ICQFetchOffersReasonFallBelowVeryLowDisk reuseLocalOffers:1];
}

- (void)_unsafe_handleVFSFallBelowLowDisk
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Disk space fell below low level.", v4, 2u);
  }

  [(INDaemon *)self _unsafe_icqReconsiderOffersWithReason:ICQFetchOffersReasonFallBelowLowDisk reuseLocalOffers:1];
}

- (void)_unsafe_handleVFSFallBelowNearLowDisk
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Disk space fell below near low level.", v4, 2u);
  }

  [(INDaemon *)self _unsafe_icqUpdateOfferForButtonId:@"deviceFull"];
  [(INDaemon *)self _unsafe_icqReconsiderOffersWithReason:ICQFetchOffersReasonFallBelowNearLowDisk reuseLocalOffers:1];
}

- (void)_unsafe_handleVFSRiseAboveDesiredDisk
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Disk space improved to desired level.", v5, 2u);
  }

  [(INDaemon *)self _unsafe_icqUpdateOfferForButtonId:@"sufficient"];
  v4 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v4 stopDirectingToStorageManagement];

  [(INDaemon *)self _unsafe_icqReconsiderOffersWithReason:ICQFetchOffersReasonRiseAboveDesiredDisk reuseLocalOffers:1];
}

- (void)_unsafe_handleSimulateVFSAlmostFullEvent
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Simulated VFS almost full event.", v5, 2u);
  }

  v4 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v4 setSimulatedDeviceStorageAlmostFull:1];

  [(INDaemon *)self _unsafe_icqReconsiderOffers];
}

- (void)_unsafe_handleSimulateVFSNotFullEvent
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Simulated VFS not full event.", v5, 2u);
  }

  v4 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v4 setSimulatedDeviceStorageAlmostFull:0];

  [(INDaemon *)self _unsafe_icqReconsiderOffers];
}

- (BOOL)_unsafe_isLegacyDeviceStorageLevelNotificationEnabled
{
  v2 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  isLegacyDeviceStorageLevelNotificationEnabled = [v2 isLegacyDeviceStorageLevelNotificationEnabled];

  return isLegacyDeviceStorageLevelNotificationEnabled;
}

- (void)startDelayedOfferFailsafeActivityWithDelaySecs:(int64_t)secs completion:(id)completion
{
  completionCopy = completion;
  delayedOfferFailsafeActivity = [(INDaemon_iOS *)self delayedOfferFailsafeActivity];
  [delayedOfferFailsafeActivity startActivityWithDelaySecs:secs];

  completionCopy[2](completionCopy, 0);
}

- (void)stopDelayedOfferFailsafeActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  delayedOfferFailsafeActivity = [(INDaemon_iOS *)self delayedOfferFailsafeActivity];
  [delayedOfferFailsafeActivity stopActivity];

  completionCopy[2](completionCopy, 0);
}

- (void)observeFPItem:(id)item notifyURL:(id)l completion:(id)completion
{
  itemCopy = item;
  lCopy = l;
  completionCopy = completion;
  if (!self->_fpItemCollectionManager)
  {
    v11 = objc_alloc_init(_TtC3ind25INFPItemCollectionManager);
    fpItemCollectionManager = self->_fpItemCollectionManager;
    self->_fpItemCollectionManager = v11;
  }

  v13 = os_transaction_create();
  v14 = self->_fpItemCollectionManager;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001AFA8;
  v17[3] = &unk_100055C80;
  v18 = v13;
  v19 = completionCopy;
  v15 = v13;
  v16 = completionCopy;
  [(INFPItemCollectionManager *)v14 syncWithItemID:itemCopy notifyURL:lCopy syncCompletion:v17];
}

- (void)syncFPItem:(id)item observeItemIDs:(id)ds notifyURL:(id)l completion:(id)completion
{
  itemCopy = item;
  dsCopy = ds;
  lCopy = l;
  completionCopy = completion;
  if (!self->_fpItemCollectionManager)
  {
    v14 = objc_alloc_init(_TtC3ind25INFPItemCollectionManager);
    fpItemCollectionManager = self->_fpItemCollectionManager;
    self->_fpItemCollectionManager = v14;
  }

  v16 = os_transaction_create();
  v17 = self->_fpItemCollectionManager;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001B0E8;
  v20[3] = &unk_100055C80;
  v21 = v16;
  v22 = completionCopy;
  v18 = v16;
  v19 = completionCopy;
  [(INFPItemCollectionManager *)v17 syncWithItemID:itemCopy observeItemIDs:dsCopy notifyURL:lCopy syncCompletion:v20];
}

@end