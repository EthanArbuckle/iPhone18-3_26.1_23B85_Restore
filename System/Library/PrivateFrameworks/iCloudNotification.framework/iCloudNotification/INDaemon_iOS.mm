@interface INDaemon_iOS
- (BOOL)_unsafe_isLegacyDeviceStorageLevelNotificationEnabled;
- (INDaemon_iOS)init;
- (id)accountPushNotificationHandlerForEventType:(id)a3;
- (id)pushTopics;
- (void)_configureXPCEventStreamHandler;
- (void)_handleDeviceDidPairEvent;
- (void)_handleDeviceDidSetupNotification:(id)a3;
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
- (void)appLaunchLinkDidPresentForBundleIdentifier:(id)a3;
- (void)commonHeadersForRequest:(id)a3 withCompletion:(id)a4;
- (void)getCacheDataForLink:(id)a3 completion:(id)a4;
- (void)handleICloudQuotaPush:(id)a3;
- (void)iCloudServerOfferForAccountWithID:(id)a3 options:(id)a4 completion:(id)a5;
- (void)notifyDeviceStorageLevel:(int64_t)a3 completion:(id)a4;
- (void)observeFPItem:(id)a3 notifyURL:(id)a4 completion:(id)a5;
- (void)presentHiddenFreshmintWithContext:(id)a3 completion:(id)a4;
- (void)renewCredentialsWithCompletion:(id)a3;
- (void)start;
- (void)startDelayedOfferFailsafeActivityWithDelaySecs:(int64_t)a3 completion:(id)a4;
- (void)stopDelayedOfferFailsafeActivityWithCompletion:(id)a3;
- (void)syncFPItem:(id)a3 observeItemIDs:(id)a4 notifyURL:(id)a5 completion:(id)a6;
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

  v4 = [(INDaemon *)self accountStore];
  v5 = [v4 aa_appleAccounts];

  if ([v5 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
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

- (void)_handleDeviceDidSetupNotification:(id)a3
{
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "New paired device!", buf, 2u);
  }

  v5 = [(INDaemon *)self accountStore];
  v6 = [v5 aa_appleAccounts];

  if ([v6 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v6;
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
  v4 = [(INDaemon *)self accountStore];
  v5 = [(INVerifyTermsPushHandler *)v3 initWithAccountStore:v4];

  [v14 setObject:v5 forKeyedSubscript:@"t_needs_agree"];
  [v14 setObject:v5 forKeyedSubscript:@"t_did_agree"];
  v6 = [v14 copy];
  accountPushNotificationHandlersByEventType = self->_accountPushNotificationHandlersByEventType;
  self->_accountPushNotificationHandlersByEventType = v6;

  v8 = [INAccountEventPushHandler alloc];
  v9 = [(INDaemon *)self accountStore];
  v10 = [(INAccountEventPushHandler *)v8 initWithAccountStore:v9];
  accountDefaultEventPushNotificationHandler = self->_accountDefaultEventPushNotificationHandler;
  self->_accountDefaultEventPushNotificationHandler = v10;

  v12 = objc_alloc_init(INMercuryPushNotificationHandler);
  mercuryPushHandler = self->_mercuryPushHandler;
  self->_mercuryPushHandler = v12;
}

- (id)accountPushNotificationHandlerForEventType:(id)a3
{
  v4 = [(NSDictionary *)self->_accountPushNotificationHandlersByEventType objectForKeyedSubscript:a3];
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

- (void)handleICloudQuotaPush:(id)a3
{
  v4 = a3;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 userInfo];
    *buf = 138412290;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "> Handling iCloudQuota push message: %@", buf, 0xCu);
  }

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"category"];

  if ([v8 isEqualToString:@"oobe"])
  {
    v9 = [v4 userInfo];
    v10 = [v9 objectForKeyedSubscript:@"eventDetails"];

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
      v17 = [v4 userInfo];
      *buf = 138412546;
      v24 = v12;
      v25 = 2112;
      v26 = v17;
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
  [(INDaemon *)&v21 handleICloudQuotaPush:v4];
LABEL_21:
}

- (void)iCloudServerOfferForAccountWithID:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _INLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received offer request for account %@ over XPC.", &v19, 0xCu);
  }

  if ((sub_100002168() & 1) != 0 && v8 && (-[INDaemon accountStore](self, "accountStore"), v12 = objc_claimAutoreleasedReturnValue(), [v12 accountWithIdentifier:v8], v13 = objc_claimAutoreleasedReturnValue(), v12, v13))
  {
    v14 = [v13 accountType];
    v15 = [v14 identifier];
    v16 = [v15 isEqualToString:ACAccountTypeIdentifierAppleAccount];

    if (v16)
    {
      v17 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
      if (!v17)
      {
        sub_100038AC0();
      }

      v18 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
      [v18 daemonOfferDictionaryForAccount:v13 options:v9 completion:v10];
    }

    else
    {
      v18 = INCreateError();
      v10[2](v10, 0, v18);
    }
  }

  else
  {
    v13 = INCreateError();
    v10[2](v10, 0, v13);
  }
}

- (void)notifyDeviceStorageLevel:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if ((sub_100002168() & 1) == 0)
  {
LABEL_17:
    v8 = INCreateError();
    v6[2](v6, 0, v8);

    goto LABEL_18;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      [(INDaemon_iOS *)self _unsafe_handleVFSRiseAboveDesiredDisk];
      goto LABEL_13;
    }

    if (a3 == 1)
    {
      [(INDaemon_iOS *)self _unsafe_handleVFSFallBelowNearLowDisk];
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a3 == 2)
  {
    [(INDaemon_iOS *)self _unsafe_handleVFSFallBelowLowDisk];
    goto LABEL_13;
  }

  if (a3 == 3)
  {
    [(INDaemon_iOS *)self _unsafe_handleVFSFallBelowVeryLowDisk];
    goto LABEL_13;
  }

  if (a3 != 6)
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
  v6[2](v6, 1, 0);
LABEL_18:
}

- (void)presentHiddenFreshmintWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _INLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "presenting freshmint flow with context %@", buf, 0xCu);
  }

  if (sub_100002168())
  {
    v9 = objc_retainBlock(v7);
    freshmintCompletion = self->_freshmintCompletion;
    self->_freshmintCompletion = v9;

    v11 = [[ICQRemotePresentationManager alloc] initWithRemoteContext:v6];
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
    v14 = [(INDaemon *)self listener];
    v15 = [v14 endpoint];
    v16 = [v15 _endpoint];
    [(ICQRemotePresentationManager *)v13 presentHiddenFreshmintFlowWithEndpoint:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  else
  {
    v17 = INCreateError();
    (*(v7 + 2))(v7, 0, v17);
  }
}

- (void)appLaunchLinkDidPresentForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AppLaunch detected for Bundle: %@", &v6, 0xCu);
  }

  v5 = +[NSDate now];
  [_ICQHelperFunctions appLaunchLinkTrackerSetLastShownDate:v5 forBundleID:v3];
}

- (void)getCacheDataForLink:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _INLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Checking for Cached content for Link: %@", &v8, 0xCu);
  }

  [v5 getCachedContentWithCompletion:v6];
}

- (void)commonHeadersForRequest:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
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

    v10 = [v6 mutableCopy];
    v11 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
    [v11 addCommonHeadersToRequest:v10];

    v12 = [v10 allHTTPHeaderFields];
    v5[2](v5, v12);

    v5 = v12;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100038B98();
    }

    v10 = [v6 allHTTPHeaderFields];

    v5[2](v5, v10);
  }
}

- (void)renewCredentialsWithCompletion:(id)a3
{
  v3 = a3;
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
    [v7 renewCredentialsWithCompletion:v3];

    v3 = v7;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100038BD4();
    }

    (*(v3 + 2))(v3, 2, 0);
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
  v3 = [v2 isLegacyDeviceStorageLevelNotificationEnabled];

  return v3;
}

- (void)startDelayedOfferFailsafeActivityWithDelaySecs:(int64_t)a3 completion:(id)a4
{
  v7 = a4;
  v6 = [(INDaemon_iOS *)self delayedOfferFailsafeActivity];
  [v6 startActivityWithDelaySecs:a3];

  v7[2](v7, 0);
}

- (void)stopDelayedOfferFailsafeActivityWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(INDaemon_iOS *)self delayedOfferFailsafeActivity];
  [v4 stopActivity];

  v5[2](v5, 0);
}

- (void)observeFPItem:(id)a3 notifyURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v19 = v10;
  v15 = v13;
  v16 = v10;
  [(INFPItemCollectionManager *)v14 syncWithItemID:v8 notifyURL:v9 syncCompletion:v17];
}

- (void)syncFPItem:(id)a3 observeItemIDs:(id)a4 notifyURL:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
  v22 = v13;
  v18 = v16;
  v19 = v13;
  [(INFPItemCollectionManager *)v17 syncWithItemID:v10 observeItemIDs:v11 notifyURL:v12 syncCompletion:v20];
}

@end