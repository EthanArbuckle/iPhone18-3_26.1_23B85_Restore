@interface ICDServer
+ (ICDServer)server;
- (BOOL)_canCompleteStartupSequence;
- (BOOL)cancelOperationsByClass:(Class)a3;
- (BOOL)hasOperationsOfClass:(Class)a3;
- (BOOL)isStartupSequenceCompleted;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ICDCloudBadgeService)cloudBadgingService;
- (ICDCloudServiceStatusMonitor)cloudServiceStatusMonitor;
- (id)_init;
- (id)_setupXPCListenerForService:(int64_t)a3;
- (id)_stateDump;
- (id)_supportedInterfaceForCloudServerListenerXPCConnection;
- (id)_supportedInterfaceForCloudServerXPCConnection;
- (id)_urlResolutionCacheFilePath;
- (id)daemonOptionsForConfiguration:(id)a3;
- (id)handlerWithType:(int64_t)a3 configuration:(id)a4 error:(id *)a5;
- (int64_t)_ICCloudServerSupportedServiceForXPCListener:(id)a3;
- (void)_completeStartupSequenceIfNeeded;
- (void)_ensureMusicSubscriptionKeysAreAvailableForConfiguration:(id)a3;
- (void)_ensureSubscriptionInformationIsUpToDateForConfiguration:(id)a3;
- (void)_ensureURLResolutionCacheFileExists;
- (void)_handleApplicationRegistrationNotification:(id)a3;
- (void)_handleFamilyContentDeletionEvent:(id)a3;
- (void)_handleFlushPlayActivityEvents;
- (void)_handleURLBagProviderDidUpdateBagNotification:(id)a3;
- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3;
- (void)_initializeAncillaryServices;
- (void)_initializeSocialFeaturesAvailabilityIfNeeded;
- (void)_migrateToLatestUserVersionForConfigurations:(id)a3;
- (void)_performPeriodicSubscriptionTasks;
- (void)_precacheHomeProperties;
- (void)_preprocessURLResolutionCacheDictionary:(id)a3;
- (void)_retryLoadingCloudLibraryForSecondaryAccountsOnAppleTV;
- (void)_scheduleFixFaultyMusicKitPlaybackDonations;
- (void)_setupInternalQueues;
- (void)_setupMPMediaLibraryFilteringForConfigurations:(id)a3;
- (void)_setupSigtermHandler;
- (void)_startAncillaryServices;
- (void)_stopAncillaryServices;
- (void)_transitionAppleTVToParallelMultiUserLibraryManagementPolicy;
- (void)_updateAccountServerCachedData;
- (void)_updateAirPlaySettingsForConfiguration:(id)a3;
- (void)_updateAllowsExplicitContentSettingForConfiguration:(id)a3 automatically:(BOOL)a4;
- (void)_updateEnhancedAudioAvailabilityIfNeeded;
- (void)_updateHTTPCookieStoreForContentRestrictions;
- (void)_updateMediaRemoteCommands:(BOOL)a3;
- (void)_updateSocialFeaturesAvailabilityIfNeededUsingBag:(id)a3;
- (void)_updateURLResolutionCacheFile;
- (void)_writeURLResolutionCacheFileUsingBag:(id)a3;
- (void)dealloc;
- (void)enumerateBackgroundOperationsUsingBlock:(id)a3;
- (void)enumerateOperationsUsingBlock:(id)a3;
- (void)fetchEnhancedAudioOfflineKeys;
- (void)getListenerEndpointForService:(int64_t)a3 completion:(id)a4;
- (void)listCloudServerOperations;
- (void)notificationsManager:(id)a3 didReceiveActiveUserIdentityDidChangeNotification:(id)a4;
- (void)notificationsManager:(id)a3 didReceiveAllowsExplicitContentDidChangeNotification:(id)a4;
- (void)notificationsManager:(id)a3 didReceiveAllowsMusicVideosDidChangeNotification:(id)a4;
- (void)notificationsManager:(id)a3 didReceiveApplicationInstallationNotification:(id)a4;
- (void)notificationsManager:(id)a3 didReceiveAuthServiceTokenDidChangeNotification:(id)a4;
- (void)notificationsManager:(id)a3 didReceiveFamilyDeletionEventNotification:(id)a4;
- (void)notificationsManager:(id)a3 didReceiveHandlerCoordinatorFinishedInitializationNotification:(id)a4;
- (void)notificationsManager:(id)a3 didReceiveSubscriptionStatusDidChangeNotification:(id)a4;
- (void)notificationsManager:(id)a3 didReceiveUserIdentityStoreDidChangeNotification:(id)a4;
- (void)notificationsManagerDidReceiveCellularDataRestrictionDidChangeDarwinNotification:(id)a3;
- (void)notificationsManagerDidReceiveCloudAuthenticationDidChangeDarwinNotification:(id)a3;
- (void)notificationsManagerDidReceiveFamilyCircleChangedNotification:(id)a3;
- (void)notificationsManagerDidReceiveFirstUnlockNotification:(id)a3;
- (void)notificationsManagerDidReceiveLibraryImportDidFinishDarwinNotification:(id)a3;
- (void)notificationsManagerDidReceiveMusicSettingsChangedNotification:(id)a3;
- (void)notificationsManagerDidReceivePhoneNumberChangedNotification:(id)a3;
- (void)notificationsManagerDidRecieveICPlayActivityFlushInternalTestRequestNotification:(id)a3;
- (void)notifyDeviceSetupFinishedWithCompletion:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)processPendingKeyInvalidations;
- (void)refreshEnhancedAudioSharedKeys;
- (void)scheduleBackgroundUpdateType:(int64_t)a3 forConfiguration:(id)a4;
- (void)setStartupSequenceCompleted:(BOOL)a3;
- (void)start;
- (void)stop;
@end

@implementation ICDServer

- (BOOL)isStartupSequenceCompleted
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ICDServer *)self serialQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000023E8;
  v5[3] = &unk_1001DEF50;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

+ (ICDServer)server
{
  if (qword_100213C08 != -1)
  {
    dispatch_once(&qword_100213C08, &stru_1001DB7A0);
  }

  v3 = qword_100213C00;

  return v3;
}

- (void)processPendingKeyInvalidations
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "processing pending key invalidations", v5, 2u);
  }

  v4 = [(ICDServer *)self enhancedAudioKeyManager];
  [v4 processPendingKeyInvalidations];
}

- (void)_updateAirPlaySettingsForConfiguration:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.airplay"];
    v6 = [v5 BOOLForKey:@"isAppleMusicSubscriber"];
    v7 = [v5 BOOLForKey:@"cloudLibraryIsOn"];
    v8 = [v4 userIdentityStore];
    v9 = [v4 userIdentity];
    v21 = 0;
    v10 = [v8 getPropertiesForUserIdentity:v9 error:&v21];
    v11 = v21;

    if (v11)
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v23 = self;
        v24 = 2114;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "ICDServer %p - Failed to load identity properties. err=%{public}@", buf, 0x16u);
      }

      v13 = v7;
    }

    else
    {
      v13 = [v10 isActiveLocker];
    }

    v15 = +[ICMusicSubscriptionStatusController sharedStatusController];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10006144C;
    v16[3] = &unk_1001DBDA8;
    v18 = v6;
    v19 = v13;
    v20 = v7;
    v17 = v5;
    v14 = v5;
    [v15 getSubscriptionStatusWithCompletionHandler:v16];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ICDServer %p - _updateAirPlaySettingsForConfiguration - No action [No active configuration]", buf, 0xCu);
    }
  }
}

- (void)_handleFamilyContentDeletionEvent:(id)a3
{
  v4 = a3;
  v5 = [(ICDServer *)self accountManager];
  v6 = [v5 activeConfiguration];

  if (v6)
  {
    v21 = v6;
    v7 = [v6 userIdentity];
    v8 = [ML3MusicLibrary musicLibraryForUserAccount:v7];

    v9 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v29 = [v4 count];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received %llu account pairs for family content removal.", buf, 0xCu);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = v4;
    obj = v4;
    v10 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      v13 = "com.apple.amp.itunescloudd";
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = os_log_create(v13, "Accounts");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v15 purchaserAccountID];
            v18 = v13;
            v19 = [v15 downloaderAccountID];
            v20 = [v15 familyID];
            *buf = 134218496;
            v29 = v17;
            v30 = 2048;
            v31 = v19;
            v13 = v18;
            v32 = 2048;
            v33 = v20;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Family content removal (purchaser = %lld, downloader = %lld, family = %lld", buf, 0x20u);
          }

          -[NSObject removeItemsWithFamilyAccountID:purchaserAccountID:downloaderAccountID:](v8, "removeItemsWithFamilyAccountID:purchaserAccountID:downloaderAccountID:", [v15 familyID], objc_msgSend(v15, "purchaserAccountID"), objc_msgSend(v15, "downloaderAccountID"));
        }

        v11 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v11);
    }

    v6 = v21;
    v4 = v22;
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v29 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ICDServer %p - _handleFamilyContentDeletionEvent - No action [No active configuration]", buf, 0xCu);
    }
  }
}

- (void)_precacheHomeProperties
{
  if (MSVDeviceSupportsMultipleLibraries())
  {
    v2 = +[ICHomeManager sharedManager];
  }
}

- (void)_scheduleFixFaultyMusicKitPlaybackDonations
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061960;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_updateMediaRemoteCommands:(BOOL)a3
{
  v3 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = self;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Resetting media remote commands if needed (force = %{BOOL}u", buf, 0x12u);
  }

  if (v3)
  {
    goto LABEL_9;
  }

  v6 = [(ICDAccountManaging *)self->_accountManager stateChange];
  if (([v6 supportedConfigurationsChanged] & 1) != 0 || objc_msgSend(v6, "activeConfigurationChanged"))
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Resetting media remote commands because the account state has changed", buf, 0xCu);
    }

LABEL_9:
    v8 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    v9 = dispatch_get_global_queue(21, 0);
    v6 = v8;
    MRMediaRemoteClearDefaultSupportedCommandsForApp();
  }
}

- (void)_updateAccountServerCachedData
{
  v3 = +[ICMonitoredAccountStore sharedAccountStore];
  v15 = 0;
  v4 = [v3 activeStoreAccountWithError:&v15];
  v5 = v15;

  if (v4)
  {
    v6 = [AMSAccountIdentity alloc];
    v7 = [v4 ic_DSID];
    v8 = [v4 ic_altDSID];
    v9 = [v6 initWithDSID:v7 altDSID:v8];

    v10 = +[AMSAccountCachedServerData sharedInstance];
    v11 = [v10 BOOLForKey:15 accountID:v9 updateBlock:&stru_1001DBD58];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000620F0;
    v12[3] = &unk_1001DBD80;
    v13 = v4;
    v14 = self;
    [v11 resultWithTimeout:v12 completion:5.0];
  }

  else
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = self;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - _updateAccountServerCachedData failed to load active account. err=%{public}@", buf, 0x16u);
    }
  }
}

- (void)_handleFlushPlayActivityEvents
{
  v2 = +[ICPlayActivityServer sharedInstance];
  [v2 flushPendingPlayActivityEventsWithCompletionHandler:0];
}

- (void)_updateHTTPCookieStoreForContentRestrictions
{
  v2 = +[ICMusicSubscriptionStatusController sharedStatusController];
  [v2 getSubscriptionStatusWithCompletionHandler:&stru_1001DBD18];
}

- (void)_updateEnhancedAudioAvailabilityIfNeeded
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating enhanced audio availability flag", buf, 2u);
  }

  v3 = [[ICStoreRequestContext alloc] initWithBlock:&stru_1001DBCB8];
  v4 = +[ICURLBagProvider sharedBagProvider];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006304C;
  v6[3] = &unk_1001DD040;
  v7 = v3;
  v5 = v3;
  [v4 getBagForRequestContext:v5 forceRefetch:0 withCompletionHandler:v6];
}

- (void)_performPeriodicSubscriptionTasks
{
  v3 = +[ICMusicSubscriptionStatusController sharedStatusController];
  v4 = [[ICStoreRequestContext alloc] initWithBlock:&stru_1001DBBE8];
  v5 = +[ICURLBagProvider sharedBagProvider];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100063564;
  v7[3] = &unk_1001DFB88;
  v8 = v3;
  v9 = self;
  v6 = v3;
  [v5 getBagForRequestContext:v4 forceRefetch:0 withCompletionHandler:v7];
}

- (void)_transitionAppleTVToParallelMultiUserLibraryManagementPolicy
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[ICDeviceInfo currentDeviceInfo];
    v10 = 134218242;
    v11 = self;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Transitioning device=%{public}@ to Parallel Multi User", &v10, 0x16u);
  }

  v5 = [(ICDServer *)self accountManager];
  [v5 changeLibraryManagementPolicy:2];

  v6 = [(ICDServer *)self accountManager];
  [v6 updateState];

  v7 = [(ICDServer *)self handlerCoordinator];
  v8 = [(ICDServer *)self accountManager];
  v9 = [v8 stateChange];
  [v7 changeLibraryManagementPolicy:2 withAccountsStateChange:v9];
}

- (void)_retryLoadingCloudLibraryForSecondaryAccountsOnAppleTV
{
  v4 = +[ICDeviceInfo currentDeviceInfo];
  v5 = [v4 isAppleTV];

  if ((v5 & 1) == 0)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICDServer.m" lineNumber:1715 description:@"_retryLoadingCloudLibraryForSecondaryAccountsOnAppleTV: is only valid for AppleTV."];
  }

  v6 = dispatch_time(0x8000000000000000, 300000000000);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000644A4;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_after(v6, serialQueue, block);
}

- (void)_preprocessURLResolutionCacheDictionary:(id)a3
{
  v25 = a3;
  [v25 objectForKey:@"p2-url-resolution"];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v3 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v3)
  {
    v4 = *v44;
    v26 = @"Music";
    v27 = @"MusicNS";
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v44 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v43 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [v6 objectForKey:@"p2-url-section-name"];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (([v7 isEqualToString:@"AppleMusicSubscriber"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"AppleMusicUndecided") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"AppleMusicDisabled")))
          {

            v8 = @"AppleMusicSubscriber";
            v26 = @"AppleMusicUndecided";
            v27 = @"AppleMusicDisabled";
            goto LABEL_17;
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }

    v8 = @"Music";
  }

  else
  {
    v8 = @"Music";
    v26 = @"Music";
    v27 = @"MusicNS";
  }

LABEL_17:

  v29 = [NSMutableSet setWithObjects:v8, v26, v27, 0];
  if (CFPreferencesGetAppBooleanValue(@"UserRequestedSubscriptionHidden", @"com.apple.mobileipod", 0))
  {
    [v29 removeObject:v27];
  }

  else
  {
    v9 = [ICStoreRequestContext alloc];
    v10 = +[ICUserIdentity activeAccount];
    v11 = [v9 initWithIdentity:v10];

    v12 = [[ICMusicSubscriptionStatusRequest alloc] initWithStoreRequestContext:v11];
    [v12 setShouldReturnLastKnownStatusOnly:1];
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_100064CD4;
    v41 = sub_100064CE4;
    v42 = 0;
    v13 = dispatch_semaphore_create(0);
    v14 = +[ICMusicSubscriptionStatusController sharedStatusController];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100064CEC;
    v34[3] = &unk_1001DBBC8;
    v36 = &v37;
    v15 = v13;
    v35 = v15;
    [v14 performSubscriptionStatusRequest:v12 withCompletionHandler:v34];

    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    if ([v38[5] statusType] == 1)
    {
      v16 = v8;
    }

    else
    {
      v16 = v26;
    }

    [v29 removeObject:v16];

    _Block_object_dispose(&v37, 8);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [obj mutableCopy];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = obj;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v47 count:16];
    if (v19)
    {
      v20 = *v31;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v30 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [v22 objectForKey:@"p2-url-section-name"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v29 containsObject:v23])
            {
              [v17 removeObject:v22];
            }
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v30 objects:v47 count:16];
      }

      while (v19);
    }

    v24 = [v17 count];
    if (v24 != [v18 count])
    {
      [v25 setObject:v17 forKey:@"p2-url-resolution"];
    }
  }
}

- (void)_writeURLResolutionCacheFileUsingBag:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Updating resolution cache file", buf, 2u);
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [v4 arrayForBagKey:@"p2-url-resolution"];
  [v6 setObject:v7 forKeyedSubscript:@"p2-url-resolution"];

  v8 = [v4 arrayForBagKey:@"p2-launch-host-suffix-whitelist"];
  [v6 setObject:v8 forKeyedSubscript:@"p2-launch-host-suffix-whitelist"];

  v9 = [v4 arrayForBagKey:@"p2-launch-apple-store-host-patterns"];
  [v6 setObject:v9 forKeyedSubscript:@"p2-launch-apple-store-host-patterns"];

  v10 = [v4 arrayForBagKey:@"p2-launch-apple-store-path-patterns"];
  [v6 setObject:v10 forKeyedSubscript:@"p2-launch-apple-store-path-patterns"];

  v11 = [v4 arrayForBagKey:@"p2-launch-appstore-host-patterns"];
  [v6 setObject:v11 forKeyedSubscript:@"p2-launch-appstore-host-patterns"];

  v12 = [v4 arrayForBagKey:@"p2-launch-appstore-path-patterns"];
  [v6 setObject:v12 forKeyedSubscript:@"p2-launch-appstore-path-patterns"];

  v13 = [v4 arrayForBagKey:@"p2-launch-ebookstore-host-patterns"];
  [v6 setObject:v13 forKeyedSubscript:@"p2-launch-ebookstore-host-patterns"];

  v14 = [v4 arrayForBagKey:@"p2-launch-ebookstore-path-patterns"];
  [v6 setObject:v14 forKeyedSubscript:@"p2-launch-ebookstore-path-patterns"];

  v15 = [v4 arrayForBagKey:@"p2-launch-mobilestore-host-patterns"];
  [v6 setObject:v15 forKeyedSubscript:@"p2-launch-mobilestore-host-patterns"];

  v16 = [v4 arrayForBagKey:@"p2-launch-mobilestore-path-patterns"];
  [v6 setObject:v16 forKeyedSubscript:@"p2-launch-mobilestore-path-patterns"];

  v17 = [v4 stringForBagKey:@"vpp-licensing-invitation-url-pattern"];

  [v6 setObject:v17 forKeyedSubscript:@"vpp-licensing-invitation-url-pattern"];
  [(ICDServer *)self _preprocessURLResolutionCacheDictionary:v6];
  v18 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Caches/com.apple.itunesstored/url-resolution.plist"];
  v19 = +[NSFileManager defaultManager];
  if (![v6 count])
  {
    v29 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Removing p2-resolution file because the bag configuration is missing or empty", buf, 2u);
    }

    if ([v19 removeItemAtPath:v18 error:0])
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v20 = [v19 attributesOfItemAtPath:v18 error:0];
  v21 = [v20 objectForKey:NSFileModificationDate];

  if (v21)
  {
    [v21 timeIntervalSinceNow];
    if (v22 >= -60.0)
    {

      goto LABEL_22;
    }
  }

  v23 = [v18 stringByDeletingLastPathComponent];
  v38 = 0;
  v24 = [v19 createDirectoryAtPath:v23 withIntermediateDirectories:1 attributes:0 error:&v38];
  v25 = v38;

  if (v24)
  {
    v26 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:0];
    v37 = v25;
    v27 = [v26 writeToFile:v18 options:0 error:&v37];
    v28 = v37;

    v25 = v28;
  }

  else
  {
    v27 = 0;
  }

  v30 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v31 = v30;
  if (v25)
  {
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 138543362;
    v40 = v25;
    v32 = "Failed to update URL resolution cache file. err=%{public}@";
    v33 = v31;
    v34 = OS_LOG_TYPE_ERROR;
    v35 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v32 = "Successfully updated URL resolution cache file";
    v33 = v31;
    v34 = OS_LOG_TYPE_DEFAULT;
    v35 = 2;
  }

  _os_log_impl(&_mh_execute_header, v33, v34, v32, buf, v35);
LABEL_20:

  if (v27)
  {
LABEL_21:
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.itunesstored.changed-url-resolution", 0, 0, 1u);
  }

LABEL_22:
}

- (void)_updateURLResolutionCacheFile
{
  v3 = [[ICStoreRequestContext alloc] initWithBlock:&stru_1001DBBA0];
  v4 = +[ICURLBagProvider sharedBagProvider];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100065350;
  v5[3] = &unk_1001DD040;
  v5[4] = self;
  [v4 getBagForRequestContext:v3 withCompletionHandler:v5];
}

- (void)_ensureURLResolutionCacheFileExists
{
  v3 = +[ICDeviceInfo currentDeviceInfo];
  v4 = [v3 isWatch];

  if (v4)
  {
    v5 = [(ICDServer *)self _urlResolutionCacheFilePath];
    v6 = +[NSFileManager defaultManager];
    v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Checking if url resolution file exists at path '%{public}@'", &v9, 0xCu);
    }

    if (([v6 fileExistsAtPath:v5] & 1) == 0)
    {
      v8 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "url resolution file is missing - creating now", &v9, 2u);
      }

      [(ICDServer *)self _updateURLResolutionCacheFile];
    }
  }
}

- (id)_urlResolutionCacheFilePath
{
  v2 = CPSharedResourcesDirectory();

  return [v2 stringByAppendingPathComponent:@"Library/Caches/com.apple.itunesstored/url-resolution.plist"];
}

- (void)_updateSocialFeaturesAvailabilityIfNeededUsingBag:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[ICClientInfo defaultInfo];
    v6 = [v5 bagProfile];
    v7 = [v4 profileName];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      serialQueue = self->_serialQueue;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000658A8;
      v12[3] = &unk_1001DF618;
      v13 = v4;
      v14 = self;
      dispatch_async(serialQueue, v12);
      v10 = v13;
    }

    else
    {
      v10 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v4 profileName];
        *buf = 134218242;
        v16 = self;
        v17 = 2114;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ICDServer %p _updateSocialFeaturesAvailabilityIfNeededUsingBag: ignoring bag change for profile %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v16 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "ICDServer %p _updateSocialFeaturesAvailabilityIfNeededUsingBag: called with nil bag", buf, 0xCu);
    }
  }
}

- (void)_initializeSocialFeaturesAvailabilityIfNeeded
{
  v3 = +[ICDefaults standardDefaults];
  v4 = [v3 cachedSharedControlsCapability];

  if (!v4)
  {
    v5 = [(ICDServer *)self accountManager];
    v6 = [v5 activeConfiguration];

    v7 = [v6 userIdentity];
    if (v7)
    {
      v8 = [[ICStoreRequestContext alloc] initWithIdentity:v7];
      v9 = +[ICURLBagProvider sharedBagProvider];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100065BDC;
      v10[3] = &unk_1001DD040;
      v10[4] = self;
      [v9 getBagForRequestContext:v8 withCompletionHandler:v10];
    }
  }
}

- (void)_handleURLBagProviderDidUpdateBagNotification:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling updated bag notification", v10, 2u);
  }

  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:ICURLBagProviderDidUpdateBagNotificationURLBagUserInfoKey];

  v8 = +[ICDeviceInfo currentDeviceInfo];
  v9 = [v8 isWatch];

  if (v9 && v7)
  {
    [(ICDServer *)self _updateURLResolutionCacheFile];
  }

  [(ICDServer *)self _updateSocialFeaturesAvailabilityIfNeededUsingBag:v7];
  [(ICDServer *)self _updateEnhancedAudioAvailabilityIfNeeded];
}

- (void)_handleApplicationRegistrationNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"ICDServerNotificationsManagerApplicationRegistrationBundleIDsKey"];
    v7 = [v5 objectForKeyedSubscript:@"ICDServerNotificationsManagerIsApplicationRegistrationKey"];
    v8 = [v7 integerValue];

    v9 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"uninstalled";
      if (v8 == 1)
      {
        v10 = @"installed";
      }

      *buf = 138543618;
      v26 = v6;
      v27 = 2114;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Handling app install changed notification - apps=%{public}@, registration=%{public}@", buf, 0x16u);
    }

    v11 = ICBundleIdentifierForSystemApplicationType();
    v12 = [(ICDServer *)v6 containsObject:v11];

    if (v12)
    {
      if (v8 == 1)
      {
        v13 = [(ICDServer *)self accountManager];
        v14 = [v13 supportedConfigurations];
        [v14 enumerateObjectsUsingBlock:&stru_1001DBB20];

        v15 = +[CloudContentTasteUpdateRequestListener sharedContentTasteRequestListener];
        [v15 handleMusicAppInstalled];
      }

      else
      {
        v16 = os_log_create("com.apple.amp.itunescloudd", "XPC");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v26 = self;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ [Music App Removal] Clearing music preferences", buf, 0xCu);
        }

        v15 = CFPreferencesCopyKeyList(@"com.apple.Music", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
        if ([v15 count])
        {
          CFPreferencesSetMultiple(0, v15, @"com.apple.Music", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
        }

        v17 = [(ICDServer *)self accountManager];
        v18 = [v17 supportedConfigurations];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100066120;
        v24[3] = &unk_1001DB910;
        v24[4] = self;
        [v18 enumerateObjectsUsingBlock:v24];

        v19 = +[CloudContentTasteUpdateRequestListener sharedContentTasteRequestListener];
        [v19 handleMusicAppRemoved];
      }
    }

    v20 = ICBundleIdentifierForSystemApplicationType();
    v21 = [(ICDServer *)v6 containsObject:v20];

    if (v21)
    {
      v22 = [(ICDServer *)self accountManager];
      v23 = [v22 supportedConfigurations];
      [v23 enumerateObjectsUsingBlock:&stru_1001DBB60];
    }
  }
}

- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3
{
  v4 = [(ICDServer *)self _canCompleteStartupSequence];
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if ((v4 & 1) == 0)
  {
    if (v6)
    {
      *buf = 134217984;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Ignoring notification [Account change - Not ready]", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (v6)
  {
    *buf = 134217984;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [Account change]", buf, 0xCu);
  }

  if ([(ICDServer *)self isStartupSequenceCompleted])
  {
    v5 = [(ICDServer *)self internalOperationQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100066BFC;
    v7[3] = &unk_1001DF578;
    v7[4] = self;
    [v5 addOperationWithBlock:v7];
LABEL_8:

    return;
  }

  [(ICDServer *)self _completeStartupSequenceIfNeeded];
}

- (void)_ensureMusicSubscriptionKeysAreAvailableForConfiguration:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ICDServer %p - _ensureMusicSubscriptionKeysAreAvailableForConfiguration - No action [No active configuration]", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v5 = +[ICDeviceInfo currentDeviceInfo];
  v6 = [v5 isMac];

  if ((v6 & 1) == 0)
  {
    v7 = +[ICDeviceInfo currentDeviceInfo];
    if (([v7 isAppleTV]& 1) == 0 && ([v7 isAudioAccessory]& 1) == 0 && (byte_100213C30 & 1) == 0)
    {
      byte_100213C30 = 1;
      v8 = [ICAsyncBlockOperation alloc];
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_100067050;
      v14 = &unk_1001DBAE0;
      v15 = v4;
      v16 = self;
      v9 = [v8 initWithStartHandler:&v11];
      [v9 setName:{@"com.apple.itunescloudd.CloudServer.keyRefreshOperation", v11, v12, v13, v14}];
      v10 = [(ICDServer *)self serverOperationsManager];
      [v10 addOperation:v9 priority:1];
    }

LABEL_9:
  }
}

- (void)_ensureSubscriptionInformationIsUpToDateForConfiguration:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[ICMusicSubscriptionStatusController sharedStatusController];
    v6 = [v4 userIdentity];
    [v5 getSubscriptionStatusForUserIdentity:v6 bypassingCache:0 withCompletionHandler:&stru_1001DBA40];

    [(ICDServer *)self _ensureMusicSubscriptionKeysAreAvailableForConfiguration:v4];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ICDServer %p - _ensureSubscriptionInformationIsUpToDateForConfiguration - No action [No active configuration]", &v8, 0xCu);
    }
  }
}

- (void)_updateAllowsExplicitContentSettingForConfiguration:(id)a3 automatically:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [sub_100062744() sharedRestrictionsMonitor];
    v8 = [v7 allowsExplicitContent];

    v42 = 0;
    v43 = &v42;
    v44 = 0x2050000000;
    v9 = qword_100213C58;
    v45 = qword_100213C58;
    if (!qword_100213C58)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000680DC;
      v47 = &unk_1001DF318;
      v48 = &v42;
      sub_1000680DC(buf);
      v9 = v43[3];
    }

    v10 = v9;
    _Block_object_dispose(&v42, 8);
    if ([v9 isCurrentDeviceValidHomeAccessory])
    {
      v42 = 0;
      v43 = &v42;
      v44 = 0x2050000000;
      v11 = qword_100213C60;
      v45 = qword_100213C60;
      if (!qword_100213C60)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1000681A4;
        v47 = &unk_1001DF318;
        v48 = &v42;
        sub_1000681A4(buf);
        v11 = v43[3];
      }

      v12 = v11;
      _Block_object_dispose(&v42, 8);
      v13 = [v6 userIdentity];
      v14 = [v6 userIdentityStore];
      v15 = [v11 userMonitorWithUserIdentity:v13 fromUserIdentityStore:v14];

      v16 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v6 userIdentity];
          v19 = [v18 accountDSID];
          *buf = 134218755;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = v15;
          *&buf[22] = 2113;
          v47 = v19;
          LOWORD(v48) = 1024;
          *(&v48 + 2) = v8;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "ICDServer %p - _updateAllowsExplicitContentSettingAutomatically: userMonitor=%p for dsid=%{private}@ allowExplicit=%{BOOL}u", buf, 0x26u);
        }

        v8 = [v15 isExplicitSettingEnabled];
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = self;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "ICDServer %p - _updateAllowsExplicitContentSettingAutomatically - userMonitor=nil", buf, 0xCu);
        }
      }
    }

    v21 = [ICStoreRequestContext alloc];
    v22 = [v6 userIdentity];
    v23 = [v21 initWithIdentity:v22];

    v24 = [v6 userIdentity];
    v25 = [ML3MusicLibrary musicLibraryForUserAccount:v24];

    v26 = [v25 valueForDatabaseProperty:@"MPExplicitContentAllowedBoolean"];
    v20 = v26;
    if (!v26 || v8 != [v26 BOOLValue])
    {
      v27 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v25 accountDSID];
        v29 = [v20 BOOLValue];
        *buf = 138478339;
        *&buf[4] = v28;
        *&buf[12] = 1024;
        *&buf[14] = v29;
        *&buf[18] = 1024;
        *&buf[20] = v8;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "updating explicit content. dsid=%{private}@, lastWrittenValue=%{BOOL}u, setting allowsExplicitContent=%{BOOL}u", buf, 0x18u);
      }

      v30 = [NSNumber numberWithBool:v8];
      [v25 setValue:v30 forDatabaseProperty:@"MPExplicitContentAllowedBoolean"];
    }

    v31 = +[ICMusicSubscriptionStatusController sharedStatusController];
    v32 = [v6 userIdentity];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10006826C;
    v35[3] = &unk_1001DBA20;
    v40 = v8;
    v36 = v25;
    v37 = v23;
    v41 = a4;
    v38 = self;
    v39 = v6;
    v33 = v23;
    v34 = v25;
    [v31 getSubscriptionStatusForUserIdentity:v32 withCompletionHandler:v35];
  }

  else
  {
    v20 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "ICDServer %p - _updateServerAllowsExplicitContentSettingAutomatically - No action [No active configuration]", buf, 0xCu);
    }
  }
}

- (void)_setupMPMediaLibraryFilteringForConfigurations:(id)a3
{
  v3 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v4 = qword_100213C48;
  v25 = qword_100213C48;
  if (!qword_100213C48)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1000689AC;
    v28 = &unk_1001DF318;
    v29 = &v22;
    sub_1000689AC(buf);
    v4 = v23[3];
  }

  v5 = v4;
  _Block_object_dispose(&v22, 8);
  [v4 setFilteringDisabled:1];
  if ((MSVDeviceSupportsMultipleLibraries() & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICDServer %p - _setupMPMediaLibraryFilteringForConfigurations - setting filtering type for default media library]", buf, 0xCu);
    }

    v7 = [sub_100068A74() defaultMediaLibrary];
    [v7 setCloudFilteringType:1];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ICDServer %p - _setupMPMediaLibraryFilteringForConfigurations - setting filtering type for configuration=%{public}@]", buf, 0x16u);
        }

        v14 = sub_100068A74();
        v15 = [v12 userIdentity];
        v16 = [v14 deviceMediaLibraryWithUserIdentity:v15];
        [v16 setCloudFilteringType:1];
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v9);
  }
}

- (void)_migrateToLatestUserVersionForConfigurations:(id)a3
{
  v3 = a3;
  v4 = +[ICDeviceInfo currentDeviceInfo];
  v5 = [v4 isMac];

  if ((v5 & 1) == 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = v3;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v11 userIdentity];
            v14 = [v13 accountDSID];
            *buf = 134218242;
            v22 = self;
            v23 = 2112;
            v24 = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ICDServer %p - _migrateToLatestUserVersion - Migrating library [dsid=%@]", buf, 0x16u);
          }

          sub_1000323B0(v11);
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v8);
    }

    v3 = v15;
  }
}

- (void)_completeStartupSequenceIfNeeded
{
  if ([(ICDServer *)self _canCompleteStartupSequence])
  {
    v3 = [(ICDServer *)self startupQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100068F10;
    block[3] = &unk_1001DF578;
    block[4] = self;
    dispatch_sync(v3, block);
  }

  else
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v6 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "ICDServer %p - _completeStartupSequenceIfNeeded - Nothing to do [blocked]", buf, 0xCu);
    }
  }
}

- (BOOL)_canCompleteStartupSequence
{
  v3 = +[ICDeviceSetupStatusMonitor sharedMonitor];
  v4 = [v3 isDeviceSetupComplete];

  v5 = +[ICSecurityInfo sharedSecurityInfo];
  v6 = [v5 isDeviceClassCUnlocked];

  v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218752;
    v10 = self;
    v11 = 1024;
    v12 = v6 & v4;
    v13 = 1026;
    v14 = v6;
    v15 = 1026;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "ICDServer %p - Can complete startup sequence [%{BOOL}u] - deviceUnlocked=%{public}u - deviceSetupComplete=%{public}u", &v9, 0x1Eu);
  }

  return v6 & v4;
}

- (void)setStartupSequenceCompleted:(BOOL)a3
{
  v5 = [(ICDServer *)self serialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006986C;
  v6[3] = &unk_1001DE650;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

- (ICDCloudServiceStatusMonitor)cloudServiceStatusMonitor
{
  dispatch_assert_queue_V2(self->_serialQueue);
  cloudServiceStatusMonitor = self->_cloudServiceStatusMonitor;
  if (!cloudServiceStatusMonitor)
  {
    v4 = objc_alloc_init(ICDCloudServiceStatusMonitor);
    v5 = self->_cloudServiceStatusMonitor;
    self->_cloudServiceStatusMonitor = v4;

    cloudServiceStatusMonitor = self->_cloudServiceStatusMonitor;
  }

  return cloudServiceStatusMonitor;
}

- (ICDCloudBadgeService)cloudBadgingService
{
  dispatch_assert_queue_V2(self->_serialQueue);
  cloudBadgingService = self->_cloudBadgingService;
  if (!cloudBadgingService)
  {
    v4 = objc_alloc_init(ICDCloudBadgeService);
    v5 = self->_cloudBadgingService;
    self->_cloudBadgingService = v4;

    cloudBadgingService = self->_cloudBadgingService;
  }

  return cloudBadgingService;
}

- (id)_supportedInterfaceForCloudServerXPCConnection
{
  if (qword_100213C28 != -1)
  {
    dispatch_once(&qword_100213C28, &stru_1001DB9D0);
  }

  v3 = qword_100213C20;

  return v3;
}

- (id)_supportedInterfaceForCloudServerListenerXPCConnection
{
  if (qword_100213C18 != -1)
  {
    dispatch_once(&qword_100213C18, &stru_1001DB9B0);
  }

  v3 = qword_100213C10;

  return v3;
}

- (void)_stopAncillaryServices
{
  v3 = +[MediaLibraryAccessRevocationController sharedController];
  [v3 stopObservingRevocations];

  v4 = +[AppleMusicAPITokenIDSService sharedService];
  [v4 stop];

  v5 = +[CloudRemoteRequestOperationExecutionServiceListener sharedRemoteRequestOperationExecutionServiceListener];
  [v5 stop];

  v6 = +[ICLibraryAuthServiceClientTokenProvider sharedProvider];
  [v6 stopService];

  v7 = +[ICPlayActivityServer sharedInstance];
  [v7 stop];

  v8 = +[CloudContentTasteUpdateRequestListener sharedContentTasteRequestListener];
  [v8 stop];

  v9 = +[ICInAppMessageManager sharedManager];
  [v9 stopSystemService];

  v10 = [(ICDServer *)self mediaUserStateCenterServer];
  [v10 stop];
}

- (void)_startAncillaryServices
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v34 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "ICDServer %p - _startAncillaryServices begin", buf, 0xCu);
  }

  v4 = [(ICDServer *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006A380;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(v4, block);

  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v34 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "ICDServer %p - _startAncillaryServices... 2", buf, 0xCu);
  }

  v6 = +[MediaLibraryAccessRevocationController sharedController];
  [v6 startObservingRevocations];

  v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v34 = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "ICDServer %p - _startAncillaryServices... 3", buf, 0xCu);
  }

  v8 = +[AppleMusicAPITokenIDSService sharedService];
  [v8 start];

  v9 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v34 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "ICDServer %p - _startAncillaryServices... 4", buf, 0xCu);
  }

  v10 = [(ICDServer *)self backgroundTaskManager];
  [v10 startPeriodicPolling];

  v11 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v34 = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "ICDServer %p - _startAncillaryServices... 5", buf, 0xCu);
  }

  v12 = +[CloudRemoteRequestOperationExecutionServiceListener sharedRemoteRequestOperationExecutionServiceListener];
  [v12 start];

  v13 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v34 = self;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "ICDServer %p - _startAncillaryServices... 6", buf, 0xCu);
  }

  [(ICDServer *)self _performPeriodicSubscriptionTasks];
  v14 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v34 = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "ICDServer %p - _startAncillaryServices... 7", buf, 0xCu);
  }

  v15 = +[ICLibraryAuthServiceClientTokenProvider sharedProvider];
  [v15 startService];

  v16 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v34 = self;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "ICDServer %p - _startAncillaryServices... 8", buf, 0xCu);
  }

  v17 = +[ICDeviceInfo currentDeviceInfo];
  v18 = [v17 isWatch];

  if (v18)
  {
    v19 = +[ICDeviceSetupStatusMonitor sharedMonitor];
    [v19 performBlockAfterDeviceSetup:&stru_1001DB990];
  }

  else
  {
    v20 = +[ICPlayActivityServer sharedInstance];
    [v20 start];

    v21 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v34 = self;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "ICDServer %p - _startAncillaryServices... 9", buf, 0xCu);
    }

    v22 = +[CloudContentTasteUpdateRequestListener sharedContentTasteRequestListener];
    [v22 start];

    v19 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v34 = self;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "ICDServer %p - _startAncillaryServices... 10", buf, 0xCu);
    }
  }

  v23 = +[ICInAppMessageManager sharedManager];
  [v23 startSystemService];

  v24 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v34 = self;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "ICDServer %p - _startAncillaryServices... 11", buf, 0xCu);
  }

  v25 = +[ICDeviceInfo currentDeviceInfo];
  if (([v25 isIPhone] & 1) != 0 || objc_msgSend(v25, "isIPod"))
  {
    v26 = +[ICMusicLibraryRecommendationController sharedLibraryRecommendationController];
    [v26 startSystemService];
  }

  v27 = [(ICDServer *)self mediaUserStateCenterServer];
  [v27 start];

  v28 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v34 = self;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "ICDServer %p - _startAncillaryServices... 12", buf, 0xCu);
  }

  v29 = [(ICDServer *)self playbackPositionService];
  [v29 start];

  v30 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v34 = self;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "ICDServer %p - _startAncillaryServices... 13", buf, 0xCu);
  }

  [(ICDServer *)self _updateMediaRemoteCommands:0];
  [(ICDServer *)self _precacheHomeProperties];
  v31 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v34 = self;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "ICDServer %p - _startAncillaryServices finished", buf, 0xCu);
  }
}

- (void)_initializeAncillaryServices
{
  v3 = [(ICDServer *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006A4B8;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_setupSigtermHandler
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up sigterm handler", buf, 2u);
  }

  signal(15, 1);
  v4 = dispatch_get_global_queue(21, 0);
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v4);
  sigtermSource = self->_sigtermSource;
  self->_sigtermSource = v5;

  objc_initWeak(buf, self);
  v7 = self->_sigtermSource;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006A8E0;
  handler[3] = &unk_1001DE5B0;
  objc_copyWeak(&v9, buf);
  dispatch_source_set_event_handler(v7, handler);
  dispatch_activate(self->_sigtermSource);
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)_setupInternalQueues
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v5 = dispatch_queue_create("com.apple.itunescloudd.ICDServer.serial.queue", v4);
  serialQueue = self->_serialQueue;
  self->_serialQueue = v5;

  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v8 = dispatch_queue_create("com.apple.itunescloudd.ICDServer.startup.queue", v7);
  startupQueue = self->_startupQueue;
  self->_startupQueue = v8;

  v10 = objc_alloc_init(NSOperationQueue);
  internalOperationQueue = self->_internalOperationQueue;
  self->_internalOperationQueue = v10;

  [(NSOperationQueue *)self->_internalOperationQueue setName:@"com.apple.itunescloudd.ICDServer.internal.operation.queue"];
  v12 = self->_internalOperationQueue;

  [(NSOperationQueue *)v12 setMaxConcurrentOperationCount:1];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (self->_mediaPlaybackDefaults == v11 && [v10 isEqualToString:@"MPCPlaybackPrivateListeningEnabled"])
  {
    v13 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Private listening changed, notifying assistant.", buf, 2u);
    }

    ICSiriPostDynamiteClientStateChangedNotification();
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICDServer;
    [(ICDServer *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)notificationsManagerDidReceiveFamilyCircleChangedNotification:(id)a3
{
  if ([(ICDServer *)self _canCompleteStartupSequence])
  {
    [(ICDServer *)self _completeStartupSequenceIfNeeded];
    v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [Family Circle Changed]", &v7, 0xCu);
    }

    v5 = +[ICMusicSubscriptionStatusController sharedStatusController];
    [v5 invalidateCachedSubscriptionStatusWithCompletionHandler:&stru_1001DB950];
    v6 = +[ICUserIdentity activeAccount];
    [v5 getSubscriptionStatusForUserIdentity:v6 bypassingCache:1 withCompletionHandler:&stru_1001DB970];
  }

  else
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Ignoring notification [Family Circle Changed - Not ready]", &v7, 0xCu);
    }
  }
}

- (void)notificationsManagerDidRecieveICPlayActivityFlushInternalTestRequestNotification:(id)a3
{
  v4 = [(ICDServer *)self isStartupSequenceCompleted];
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [Flush Play Activity events request]", &v7, 0xCu);
    }

    [(ICDServer *)self _handleFlushPlayActivityEvents];
  }

  else
  {
    if (v6)
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Ignoring notification [Flush Play Activity events request - Not ready]", &v7, 0xCu);
    }
  }
}

- (void)notificationsManagerDidReceiveMusicSettingsChangedNotification:(id)a3
{
  v4 = [(ICDServer *)self _canCompleteStartupSequence];
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [Music settings changed]", &v7, 0xCu);
    }

    [(ICDServer *)self _updateHTTPCookieStoreForContentRestrictions];
  }

  else
  {
    if (v6)
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Ignoring notification [Music settings changed - Not ready]", &v7, 0xCu);
    }
  }
}

- (void)notificationsManagerDidReceivePhoneNumberChangedNotification:(id)a3
{
  v4 = [(ICDServer *)self _canCompleteStartupSequence];
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v9 = 134217984;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [Phone number changed]", &v9, 0xCu);
    }

    v7 = +[ICMusicSubscriptionStatusController sharedStatusController];
    v8 = +[ICMusicSubscriptionStatusCache sharedCache];
    [v8 updateBaseCacheKey];

    [(ICDServer *)self _completeStartupSequenceIfNeeded];
  }

  else
  {
    if (v6)
    {
      v9 = 134217984;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Ignoring notification [Phone number changed - Not ready]", &v9, 0xCu);
    }
  }
}

- (void)notificationsManagerDidReceiveFirstUnlockNotification:(id)a3
{
  v4 = [(ICDServer *)self _canCompleteStartupSequence];
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [First unlock]", &v7, 0xCu);
    }

    [(ICDServer *)self _completeStartupSequenceIfNeeded];
  }

  else
  {
    if (v6)
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Ignoring notification [First unlock - Not ready]", &v7, 0xCu);
    }
  }
}

- (void)notificationsManager:(id)a3 didReceiveApplicationInstallationNotification:(id)a4
{
  v5 = a4;
  v6 = [(ICDServer *)self isStartupSequenceCompleted];
  v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = 134217984;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [Application install/removal]", &v9, 0xCu);
    }

    [(ICDServer *)self _handleApplicationRegistrationNotification:v5];
  }

  else
  {
    if (v8)
    {
      v9 = 134217984;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Ignoring notification [Application install/removal - Not ready]", &v9, 0xCu);
    }
  }
}

- (void)notificationsManager:(id)a3 didReceiveFamilyDeletionEventNotification:(id)a4
{
  v5 = a4;
  v6 = [(ICDServer *)self isStartupSequenceCompleted];
  v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v10 = 134217984;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [Family deletion event]", &v10, 0xCu);
    }

    v7 = [v5 userInfo];
    v9 = [v7 objectForKeyedSubscript:@"ICDServerNotificationsManagerFamilyEventKey"];
    [(ICDServer *)self _handleFamilyContentDeletionEvent:v9];
  }

  else if (v8)
  {
    v10 = 134217984;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Ignoring notification [Family deletion event - Not ready]", &v10, 0xCu);
  }
}

- (void)notificationsManager:(id)a3 didReceiveAuthServiceTokenDidChangeNotification:(id)a4
{
  v5 = [(ICDServer *)self isStartupSequenceCompleted:a3];
  v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = 134217984;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [Auth service token]", &v8, 0xCu);
    }

    ICSiriPostDynamiteClientStateChangedNotification();
  }

  else
  {
    if (v7)
    {
      v8 = 134217984;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Ignoring notification [Auth service token - Not ready]", &v8, 0xCu);
    }
  }
}

- (void)notificationsManager:(id)a3 didReceiveSubscriptionStatusDidChangeNotification:(id)a4
{
  v5 = [(ICDServer *)self isStartupSequenceCompleted:a3];
  v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v9 = 134217984;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [Subscription status]", &v9, 0xCu);
    }

    ICSiriPostDynamiteClientStateChangedNotification();
    v8 = [(ICDServer *)self accountManager];
    v6 = [v8 activeConfiguration];

    [(ICDServer *)self _updateAirPlaySettingsForConfiguration:v6];
    [(ICDServer *)self _updateAllowsExplicitContentSettingForConfiguration:v6 automatically:1];
    [(ICDServer *)self _ensureMusicSubscriptionKeysAreAvailableForConfiguration:v6];
    [(ICDServer *)self _updateHTTPCookieStoreForContentRestrictions];
    [(ICDServer *)self _updateEnhancedAudioAvailabilityIfNeeded];
    [(ICDServer *)self _updateMediaRemoteCommands:1];
  }

  else if (v7)
  {
    v9 = 134217984;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Ignoring notification [Subscription status - Not ready]", &v9, 0xCu);
  }
}

- (void)notificationsManager:(id)a3 didReceiveAllowsMusicVideosDidChangeNotification:(id)a4
{
  v5 = [(ICDServer *)self isStartupSequenceCompleted:a3];
  v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = 134217984;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [Allows music videos]", &v8, 0xCu);
    }

    [(ICDServer *)self _updateHTTPCookieStoreForContentRestrictions];
  }

  else
  {
    if (v7)
    {
      v8 = 134217984;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Ignoring notification [Allows music videos - Not ready]", &v8, 0xCu);
    }
  }
}

- (void)notificationsManager:(id)a3 didReceiveAllowsExplicitContentDidChangeNotification:(id)a4
{
  v5 = [(ICDServer *)self isStartupSequenceCompleted:a3];
  v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 134217984;
      v14 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [Allows explicit content]", buf, 0xCu);
    }

    v8 = [(ICDServer *)self accountManager];
    v9 = [v8 supportedConfigurations];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006B8FC;
    v12[3] = &unk_1001DB910;
    v12[4] = self;
    [v9 enumerateObjectsUsingBlock:v12];

    [(ICDServer *)self _updateHTTPCookieStoreForContentRestrictions];
    v10 = [sub_100062744() sharedRestrictionsMonitor];
    LOBYTE(v8) = [v10 allowsExplicitContent];

    if ((v8 & 1) == 0)
    {
      v11 = objc_alloc_init(CSSearchableIndex);
      [v11 deleteInteractionsWithGroupIdentifiers:&off_1001EE278 bundleID:@"com.apple.Music" protectionClass:0 completionHandler:&stru_1001DB930];
    }
  }

  else
  {
    if (v7)
    {
      *buf = 134217984;
      v14 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Ignoring notification [Allows explicit content - Not ready]", buf, 0xCu);
    }
  }
}

- (void)notificationsManager:(id)a3 didReceiveHandlerCoordinatorFinishedInitializationNotification:(id)a4
{
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    switchLibraryManagementPolicy = self->_switchLibraryManagementPolicy;
    startupSequenceCompleted = self->_startupSequenceCompleted;
    *buf = 134218496;
    v15 = self;
    v16 = 1024;
    v17 = switchLibraryManagementPolicy;
    v18 = 1024;
    v19 = startupSequenceCompleted;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [Handler Coordinator Did Initialize], should switch library management policy = %{BOOL}u, startupSequenceCompleted = %{BOOL}u", buf, 0x18u);
  }

  if ([(ICDServer *)self isStartupSequenceCompleted])
  {
    v8 = +[ICDeviceInfo currentDeviceInfo];
    v9 = [v8 isAppleTV];

    if (!v9)
    {
      return;
    }

    v10 = [(ICDServer *)self internalOperationQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006BC5C;
    v12[3] = &unk_1001DF578;
    v12[4] = self;
    [v10 addOperationWithBlock:v12];
  }

  else
  {
    serverStartupGroup = self->_serverStartupGroup;
    v10 = [(ICDServer *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006BBA0;
    block[3] = &unk_1001DF578;
    block[4] = self;
    dispatch_group_notify(serverStartupGroup, v10, block);
  }
}

- (void)notificationsManager:(id)a3 didReceiveUserIdentityStoreDidChangeNotification:(id)a4
{
  v5 = a4;
  v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [User identity store changed]", &v7, 0xCu);
  }

  [(ICDServer *)self _handleUserIdentityStoreDidChangeNotification:v5];
}

- (void)notificationsManager:(id)a3 didReceiveActiveUserIdentityDidChangeNotification:(id)a4
{
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [Active user identity changed]", &v7, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, ICCloudClientActiveUserIdentityDidChangeNotification, 0, 0, 1u);
  [(ICDServer *)self _updateEnhancedAudioAvailabilityIfNeeded];
  [(ICDServer *)self _updateAccountServerCachedData];
}

- (void)notificationsManagerDidReceiveCloudAuthenticationDidChangeDarwinNotification:(id)a3
{
  v4 = [(ICDServer *)self isStartupSequenceCompleted];
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v8 = 134217984;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [Cloud authentication]", &v8, 0xCu);
    }

    v5 = [(ICDServer *)self accountManager];
    v7 = [v5 activeConfiguration];
    [(ICDServer *)self _updateAirPlaySettingsForConfiguration:v7];
  }

  else if (v6)
  {
    v8 = 134217984;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Ignoring notification [Cloud authentication - Not ready]", &v8, 0xCu);
  }
}

- (void)notificationsManagerDidReceiveCellularDataRestrictionDidChangeDarwinNotification:(id)a3
{
  v4 = [(ICDServer *)self _canCompleteStartupSequence];
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 134217984;
      v18 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [Cellular restriction]", buf, 0xCu);
    }

    [(ICDServer *)self _completeStartupSequenceIfNeeded];
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowAutoDownloadOnCellular", @"com.apple.itunesstored", 0);
    v8 = [(ICDServer *)self accountManager];
    v5 = [v8 activeConfiguration];

    if (AppBooleanValue && v5)
    {
      v9 = [v5 userIdentity];
      v10 = [ML3MusicLibrary musicLibraryForUserAccount:v9];

      v11 = [v5 userIdentityStore];
      v12 = [v5 userIdentity];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10006C26C;
      v14[3] = &unk_1001DF4B8;
      v15 = v10;
      v5 = v5;
      v16 = v5;
      v13 = v10;
      [v11 getPropertiesForUserIdentity:v12 completionHandler:v14];
    }
  }

  else if (v6)
  {
    *buf = 134217984;
    v18 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Ignoring notification [Cellular restriction - Not ready]", buf, 0xCu);
  }
}

- (void)notificationsManagerDidReceiveLibraryImportDidFinishDarwinNotification:(id)a3
{
  v4 = [(ICDServer *)self isStartupSequenceCompleted];
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v12 = 134217984;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Processing notification [Import finished]", &v12, 0xCu);
    }

    v7 = [(ICDServer *)self accountManager];
    v8 = [v7 activeConfiguration];
    v5 = [(BaseRequestHandler *)ArtistImageRequestHandler handlerForConfiguration:v8];

    if (v5)
    {
      v9 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received library import did finish notification, triggering artist hero update.", &v12, 2u);
      }

      v10 = [v5 configuration];
      v11 = [v10 clientIdentity];
      [v5 updateArtistHeroImagesForArtistsAddedSinceLastUpdateUsingClientIdentity:v11];
    }
  }

  else if (v6)
  {
    v12 = 134217984;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Ignoring notification [Import finished - Not ready]", &v12, 0xCu);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  v7 = [(ICDServer *)self _ICCloudServerSupportedServiceForXPCListener:a3];
  if ([v6 icd_isConnectionAllowedForService:v7])
  {
    v8 = [v6 processIdentifier];
    if (v6)
    {
      [v6 auditToken];
    }

    else
    {
      memset(v18, 0, sizeof(v18));
    }

    v9 = MSVBundleIDForAuditToken();
    v10 = ICCloudServerSupportedServiceGetName();
    if (v7 > 7)
    {
      goto LABEL_25;
    }

    if (((1 << v7) & 0xF5) != 0)
    {
      v11 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (!os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
      {
LABEL_13:
        LOBYTE(self) = 0;
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      LODWORD(v18[0]) = 134219266;
      v12 = @"unknown";
      *(v18 + 4) = self;
      WORD6(v18[0]) = 2114;
      if (v10)
      {
        v12 = v10;
      }

      *(v18 + 14) = v6;
      WORD3(v18[1]) = 2114;
      *(&v18[1] + 1) = v9;
      v19 = 2048;
      v20 = v8;
      v21 = 2114;
      v22 = v12;
      v23 = 2048;
      v24 = v7;
      v13 = "ICDServer %p - Refusing XPC connection %{public}@ from %{public}@[%ld] for service %{public}@[%ld].";
LABEL_12:
      _os_log_impl(&_mh_execute_header, &v11->super, OS_LOG_TYPE_ERROR, v13, v18, 0x3Eu);
      goto LABEL_13;
    }

    if (v7 == 1)
    {
      v14 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v18[0]) = 134219266;
        *(v18 + 4) = self;
        WORD6(v18[0]) = 2114;
        *(v18 + 14) = v6;
        WORD3(v18[1]) = 2114;
        *(&v18[1] + 1) = v9;
        v19 = 2048;
        v20 = v8;
        v21 = 2114;
        v22 = v10;
        v23 = 2048;
        v24 = 1;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Setting XPC connection %{public}@ from %{public}@[%ld] for service %{public}@[%ld].", v18, 0x3Eu);
      }

      v11 = [(ICDServer *)self _supportedInterfaceForCloudServerListenerXPCConnection];
      [v6 setExportedInterface:v11];
      [v6 setExportedObject:self];
      [v6 resume];
    }

    else
    {
      if (![(ICDServer *)self isStartupSequenceCompleted])
      {
        [(ICDServer *)self _completeStartupSequenceIfNeeded];
        if (![(ICDServer *)self isStartupSequenceCompleted])
        {
          v11 = sub_10010283C();
          if (!os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          LODWORD(v18[0]) = 134219266;
          *(v18 + 4) = self;
          WORD6(v18[0]) = 2114;
          *(v18 + 14) = v6;
          WORD3(v18[1]) = 2114;
          *(&v18[1] + 1) = v9;
          v19 = 2048;
          v20 = v8;
          v21 = 2114;
          v22 = v10;
          v23 = 2048;
          v24 = 3;
          v13 = "ICDServer %p - Refusing XPC connection %{public}@ from %{public}@[%ld] for service %{public}@[%ld]: not ready.";
          goto LABEL_12;
        }
      }

      v15 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v18[0]) = 134219266;
        *(v18 + 4) = self;
        WORD6(v18[0]) = 2114;
        *(v18 + 14) = v6;
        WORD3(v18[1]) = 2114;
        *(&v18[1] + 1) = v9;
        v19 = 2048;
        v20 = v8;
        v21 = 2114;
        v22 = v10;
        v23 = 2048;
        v24 = 3;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Setting XPC connection %{public}@ from %{public}@[%ld] for service %{public}@[%ld].", v18, 0x3Eu);
      }

      v11 = [[CloudService alloc] initWithHandlerProvider:self];
      [(CloudService *)v11 setRequestingBundleID:v9];
      v16 = [(ICDServer *)self _supportedInterfaceForCloudServerXPCConnection];
      [v6 setExportedInterface:v16];
      [v6 setExportedObject:v11];
      [v6 resume];
    }

    LOBYTE(self) = 1;
    goto LABEL_24;
  }

  LOBYTE(self) = 0;
LABEL_26:

  return self & 1;
}

- (int64_t)_ICCloudServerSupportedServiceForXPCListener:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100064CD4;
  v17 = sub_100064CE4;
  v18 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006CB38;
  block[3] = &unk_1001DCFA8;
  block[4] = self;
  v6 = v4;
  v11 = v6;
  v12 = &v13;
  dispatch_sync(serialQueue, block);
  v7 = v14[5];
  v8 = ICCloudServerSupportedServiceForName();

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (id)_setupXPCListenerForService:(int64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100064CD4;
  v14 = sub_100064CE4;
  v15 = 0;
  v6 = [(ICDServer *)self serialQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006CD88;
  v9[3] = &unk_1001DB880;
  v9[6] = a3;
  v9[7] = a2;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v6, v9);

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)notifyDeviceSetupFinishedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 134217984;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "CloudService %p Handling notification request that device setup has finished", &v7, 0xCu);
  }

  v6 = +[ICDeviceSetupStatusMonitor sharedMonitor];
  [v6 setSetupAssistantComplete:1];

  [(ICDServer *)self _completeStartupSequenceIfNeeded];
  v4[2](v4, 0);
}

- (void)getListenerEndpointForService:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(ICDServer *)self _setupXPCListenerForService:a3];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = ICCloudServerSupportedServiceGetName();
    v10 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v17 = self;
      v18 = 2114;
      v19 = v9;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "ICDServer %p - Unable to get an anonymous listener for %{public}@[%ld] - This usually indicates an attempt to access itunescloudd without the proper entitlements.", buf, 0x20u);
    }

    v11 = [NSString stringWithFormat:@"Unable to get an anonymous listener for %@[%ld] - This usually indicates an attempt to access itunescloudd without the proper entitlements.", v9, a3, @"description"];
    v15 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v8 = [NSError errorWithDomain:@"ICCloudServiceErrorDomain" code:2000 userInfo:v12];
  }

  v13 = [v7 endpoint];
  v6[2](v6, v13, v8);
}

- (id)handlerWithType:(int64_t)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = self;
  v7 = [(ICDServer *)self accountManager];
  v8 = [v7 supportedConfigurations];

  v9 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v33 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v32 + 1) + 8 * v12);
      v14 = [v6 userIdentity];
      v15 = [v14 accountDSID];
      v16 = [v13 userIdentity];
      v17 = [v16 accountDSID];
      v18 = [v15 isEqualToString:v17];

      if (v18)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (a3 == 1)
    {
      v26 = ArtistImageRequestHandler;
    }

    else
    {
      if (a3)
      {
        goto LABEL_22;
      }

      v26 = ICDCloudMusicLibraryRequestHandler;
    }

    v18 = [(__objc2_class *)v26 handlerForConfiguration:v6];
  }

  else
  {
LABEL_9:

    v19 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v6 userIdentity];
      v21 = [v20 accountDSID];
      *buf = 134218242;
      v37 = v29;
      v38 = 2112;
      v39 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "ICDServer %p - Attempt to retrieve handler for unsupported configuration [returning nil] - Configuration dsid=%@", buf, 0x16u);
    }

    if (a5)
    {
      v22 = [[NSMutableDictionary alloc] initWithCapacity:3];
      if (MSVDeviceOSIsInternalInstall())
      {
        v23 = [v6 userIdentity];
        v24 = [v23 accountDSID];
        v25 = [NSString stringWithFormat:@"Attempting to retrieve handler for an unsupported configuration [dsid=%@]", v24];
        [v22 setObject:v25 forKeyedSubscript:NSLocalizedDescriptionKey];
      }

      else
      {
        [v22 setObject:@"Attempting to retrieve handler for an unsupported configuration" forKeyedSubscript:NSLocalizedDescriptionKey];
      }

      [v22 setObject:@"An ICCloudClient (or HSCloudClient) instance is using a signed-out user identity." forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
      [v22 setObject:@"Listen to ICActiveUserIdentityDidChangeNotification and either update ICCloudClient with the new active account or recreate it" forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
      v27 = [v22 copy];
      *a5 = [NSError ic_cloudClientErrorWithCode:2003 userInfo:v27];
    }

    v18 = 0;
  }

LABEL_22:

  return v18;
}

- (void)scheduleBackgroundUpdateType:(int64_t)a3 forConfiguration:(id)a4
{
  v6 = a4;
  v7 = [(ICDServer *)self backgroundTaskManager];
  [v7 scheduleTaskOfType:a3 forConfiguration:v6];
}

- (void)listCloudServerOperations
{
  v3 = [(ICDServer *)self serverOperationsManager];
  v2 = [v3 listCloudServerOperations];
}

- (void)fetchEnhancedAudioOfflineKeys
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Fetching enhanced-audio offline keys", v5, 2u);
  }

  v4 = [(ICDServer *)self enhancedAudioKeyManager];
  [v4 fetchMissingOfflineKeys];
}

- (void)refreshEnhancedAudioSharedKeys
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Refreshing enhanced-audio shared keys", v5, 2u);
  }

  v4 = [(ICDServer *)self enhancedAudioKeyManager];
  [v4 refreshSharedKeys];
}

- (id)daemonOptionsForConfiguration:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CloudServerOptions);
  v5 = +[ICDeviceInfo currentDeviceInfo];
  if ([v5 isAppleTV])
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      [(CloudServerOptions *)v4 setProhibitLibraryUpload:1];
LABEL_10:
      [(CloudServerOptions *)v4 setSupportsAutomaticEnablingiCloudMusicLibrary:1];
      goto LABEL_11;
    }

    *buf = 0;
    v7 = "Setting options for apple tv.";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    goto LABEL_5;
  }

  if ([v5 isAudioAccessory])
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting options for audio accessory.", buf, 2u);
    }

    [(CloudServerOptions *)v4 setProhibitLibraryUpload:1];
    [(CloudServerOptions *)v4 setProhibitArtworkPrefetch:1];
    goto LABEL_10;
  }

  if ([v5 isWatch])
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting options for watch.", buf, 2u);
    }

    v11 = sub_100004B8C();
    [(CloudServerOptions *)v4 setProhibitLibraryUpload:1];
    [(CloudServerOptions *)v4 setProhibitArtworkPrefetch:v11];
    [(CloudServerOptions *)v4 setSupportsAutomaticEnablingiCloudMusicLibrary:v11 ^ 1];
    v12 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(CloudServerOptions *)v4 prohibitLibraryUpload];
      v14 = [(CloudServerOptions *)v4 prohibitArtworkPrefetch];
      v15 = [(CloudServerOptions *)v4 supportsAutomaticEnablingiCloudMusicLibrary];
      *buf = 67109888;
      v23 = v11;
      v24 = 1024;
      v25 = v13;
      v26 = 1024;
      v27 = v14;
      v28 = 1024;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting options for watch. isMediaSyncingSupported=%{BOOL}u, prohibitLibraryUpload=%{BOOL}u, prohibitArtworkPrefetch =%{BOOL}u, supportsAutomaticEnablingiCloudMusicLibrary=%{BOOL}u", buf, 0x1Au);
    }

LABEL_26:

    goto LABEL_11;
  }

  if ([v5 isROSDevice])
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v7 = "Setting options for Vision.";
    goto LABEL_4;
  }

  if ([v5 supportsSideLoadedMediaContent])
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting options for phone/ipad/ipod.", buf, 2u);
    }

    v17 = dispatch_semaphore_create(0);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10006DD50;
    v18[3] = &unk_1001DB858;
    v19 = v4;
    v20 = v3;
    v21 = v17;
    v12 = v17;
    sub_1000031E4(v20, v18);
    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);

    goto LABEL_26;
  }

LABEL_11:

  return v4;
}

- (void)enumerateBackgroundOperationsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(ICDServer *)self serverOperationsManager];
  [v5 enumerateBackgroundOperationsUsingBlock:v4];
}

- (void)enumerateOperationsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(ICDServer *)self serverOperationsManager];
  [v5 enumerateOperationsUsingBlock:v4];
}

- (BOOL)hasOperationsOfClass:(Class)a3
{
  v4 = [(ICDServer *)self serverOperationsManager];
  LOBYTE(a3) = [v4 hasOperationsOfClass:a3];

  return a3;
}

- (BOOL)cancelOperationsByClass:(Class)a3
{
  v4 = [(ICDServer *)self serverOperationsManager];
  LOBYTE(a3) = [v4 cancelOperationsByClass:a3];

  return a3;
}

- (void)stop
{
  v3 = +[NSDate date];
  v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping server...", buf, 2u);
  }

  v5 = [(ICDServer *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006E3C8;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(v5, block);

  v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = +[NSDate date];
    [v7 timeIntervalSinceDate:v3];
    *buf = 134217984;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopped server in %f seconds.", buf, 0xCu);
  }
}

- (void)start
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006E600;
  v9[3] = &unk_1001DB7F0;
  v9[4] = self;
  self->_stateHandle = sub_10006E600(v9);
  v3 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting server...", buf, 2u);
  }

  v4 = [(ICDServer *)self _setupXPCListenerForService:1];
  v5 = +[CloudMusicSubscriptionStatusServiceListener sharedMusicSubscriptionStatusServiceListener];
  [v5 start];

  v6 = +[ICDeviceSetupStatusMonitor sharedMonitor];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006E6E0;
  v7[3] = &unk_1001DF578;
  v7[4] = self;
  [v6 performBlockAfterDeviceSetup:v7];

  notify_post("com.apple.itunescloudd.launched");
}

- (id)_stateDump
{
  v2 = [(ICDServer *)self serverOperationsManager];
  v3 = [v2 listCloudServerOperations];

  return v3;
}

- (void)dealloc
{
  [(ICDServer *)self stop];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  serverNotificationsManager = self->_serverNotificationsManager;
  self->_serverNotificationsManager = 0;

  serverOperationsManager = self->_serverOperationsManager;
  self->_serverOperationsManager = 0;

  networkAvailabilityService = self->_networkAvailabilityService;
  self->_networkAvailabilityService = 0;

  mediaUserStateCenterServer = self->_mediaUserStateCenterServer;
  self->_mediaUserStateCenterServer = 0;

  playbackPositionService = self->_playbackPositionService;
  self->_playbackPositionService = 0;

  v9.receiver = self;
  v9.super_class = ICDServer;
  [(ICDServer *)&v9 dealloc];
}

- (id)_init
{
  v24.receiver = self;
  v24.super_class = ICDServer;
  v2 = [(ICDServer *)&v24 init];
  if (v2)
  {
    +[ICUserIdentityStore _claimSingleWriterStatus];
    [(ICDServer *)v2 _setupInternalQueues];
    [(ICDServer *)v2 _setupSigtermHandler];
    v3 = objc_alloc_init(NSMutableDictionary);
    xpcListeners = v2->_xpcListeners;
    v2->_xpcListeners = v3;

    v5 = dispatch_group_create();
    serverStartupGroup = v2->_serverStartupGroup;
    v2->_serverStartupGroup = v5;

    v7 = [[ICDServerNotificationsManager alloc] initWithDelegate:v2];
    serverNotificationsManager = v2->_serverNotificationsManager;
    v2->_serverNotificationsManager = v7;

    v9 = objc_alloc_init(ICDNetworkAvailabilityService);
    networkAvailabilityService = v2->_networkAvailabilityService;
    v2->_networkAvailabilityService = v9;

    v11 = objc_alloc_init(ICDServerOperationsManager);
    serverOperationsManager = v2->_serverOperationsManager;
    v2->_serverOperationsManager = v11;

    v13 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mediaplaybackcore"];
    mediaPlaybackDefaults = v2->_mediaPlaybackDefaults;
    v2->_mediaPlaybackDefaults = v13;

    v15 = objc_alloc_init(ICDMediaUserStateCenterServer);
    mediaUserStateCenterServer = v2->_mediaUserStateCenterServer;
    v2->_mediaUserStateCenterServer = v15;

    v2->_outputClusterType = 0;
    [(ICDServer *)v2 _setupKVO];
    v17 = objc_alloc_init(ICDEnhancedAudioKeyManager);
    enhancedAudioKeyManager = v2->_enhancedAudioKeyManager;
    v2->_enhancedAudioKeyManager = v17;

    internalOperationQueue = v2->_internalOperationQueue;
    v20 = +[CloudArtworkImportSetupOperation sharedSetupOperation];
    [(NSOperationQueue *)internalOperationQueue addOperation:v20];

    v21 = objc_alloc_init(ICDPlaybackPositionService);
    playbackPositionService = v2->_playbackPositionService;
    v2->_playbackPositionService = v21;
  }

  return v2;
}

@end