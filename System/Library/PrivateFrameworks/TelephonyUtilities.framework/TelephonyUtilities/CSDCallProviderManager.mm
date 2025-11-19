@interface CSDCallProviderManager
+ (id)_providersByIdentifierByFilteringForRemoteClientsFromProvidersByIdentifier:(id)a3;
- (BOOL)appShouldUseDeprecatedCallingIntents:(id)a3;
- (BOOL)validateBackgroundCallIntentForCallSource:(id)a3;
- (BOOL)validateUserIntentForCallSource:(id)a3;
- (CSDCallProviderManager)init;
- (CSDCallProviderManager)initWithDataSource:(id)a3 serialQueue:(id)a4;
- (CSDCallProviderManager)initWithDataSource:(id)a3 serialQueue:(id)a4 configurationProvider:(id)a5 featureFlags:(id)a6;
- (CSDCallProviderManager)initWithDataSource:(id)a3 serialQueue:(id)a4 featureFlags:(id)a5;
- (id)_providersByIdentifierForRemoteClients:(BOOL)a3;
- (id)defaultAppProviderForRemoteClients:(BOOL)a3;
- (id)defaultAppRelayProviderToUse;
- (id)localProvidersByIdentifierForRemoteClients:(BOOL)a3;
- (id)pairedHostDeviceProvidersByIdentifierForRemoteClients:(BOOL)a3;
- (id)providersByIdentifierForRemoteClients:(BOOL)a3;
- (id)sortedProvidersForRemoteClients:(BOOL)a3;
- (id)uniqueRingtoneSoundLinkFilenameWithOriginalFilename:(id)a3;
- (void)_donateBackgroundCallIntentForProviderWithIdentifier:(id)a3;
- (void)_donateUserIntentForProviderWithIdentifier:(id)a3;
- (void)_unregisterUninstalledProvidersAndNotify:(BOOL)a3;
- (void)_updateProvidersByIdentifierAndNotifyIfCanAccessKeychain:(BOOL)a3;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)donateBackgroundCallIntentForProviderWithIdentifier:(id)a3;
- (void)donateUserIntentForProviderWithIdentifier:(id)a3;
- (void)installedProvidersChangedForDataSource:(id)a3;
- (void)launchAppForDialRequest:(id)a3 completion:(id)a4;
- (void)registerLocalProvider:(id)a3;
- (void)registerPairedHostDeviceProviders:(id)a3;
- (void)registerRelayHostDeviceProviders:(id)a3;
- (void)relayCallProvidersChangedForDataSource:(id)a3 updatedCallProviders:(id)a4;
- (void)relayCallingStateChangedForDataSource:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)retrieveSavedProvidersByIdentifierAndNotify:(BOOL)a3 unregister:(BOOL)a4;
@end

@implementation CSDCallProviderManager

- (CSDCallProviderManager)init
{
  v3 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.callprovidermanager", 0);
  v4 = [[CSDCallProviderManagerDataSource alloc] initWithSerialQueue:v3];
  v5 = [(CSDCallProviderManager *)self initWithDataSource:v4 serialQueue:v3];

  return v5;
}

- (CSDCallProviderManager)initWithDataSource:(id)a3 serialQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(TUFeatureFlags);
  v9 = [(CSDCallProviderManager *)self initWithDataSource:v7 serialQueue:v6 featureFlags:v8];

  return v9;
}

- (CSDCallProviderManager)initWithDataSource:(id)a3 serialQueue:(id)a4 featureFlags:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(TUConfigurationProvider);
  v12 = [(CSDCallProviderManager *)self initWithDataSource:v10 serialQueue:v9 configurationProvider:v11 featureFlags:v8];

  return v12;
}

- (CSDCallProviderManager)initWithDataSource:(id)a3 serialQueue:(id)a4 configurationProvider:(id)a5 featureFlags:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v39.receiver = self;
  v39.super_class = CSDCallProviderManager;
  v15 = [(CSDCallProviderManager *)&v39 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, a4);
    objc_storeStrong(&v16->_dataSource, a3);
    [(CSDCallProviderManagerDataSource *)v16->_dataSource setDelegate:v16];
    v17 = +[NSMapTable weakToStrongObjectsMapTable];
    delegateToQueue = v16->_delegateToQueue;
    v16->_delegateToQueue = v17;

    v19 = +[NSMutableDictionary dictionary];
    localProvidersByIdentifier = v16->_localProvidersByIdentifier;
    v16->_localProvidersByIdentifier = v19;

    v21 = +[NSMutableDictionary dictionary];
    pairedHostDeviceProvidersByIdentifier = v16->_pairedHostDeviceProvidersByIdentifier;
    v16->_pairedHostDeviceProvidersByIdentifier = v21;

    providersByIdentifier = v16->_providersByIdentifier;
    v16->_providersByIdentifier = &__NSDictionary0__struct;

    v24 = [[CSDUserIntentManager alloc] initWithQueue:v12];
    userIntentManager = v16->_userIntentManager;
    v16->_userIntentManager = v24;

    objc_storeStrong(&v16->_featureFlags, a6);
    if ([(TUFeatureFlags *)v16->_featureFlags isDualSimParityEnabled])
    {
      v26 = +[NSMutableDictionary dictionary];
      relayHostDeviceProvidersByIdentifier = v16->_relayHostDeviceProvidersByIdentifier;
      v16->_relayHostDeviceProvidersByIdentifier = v26;

      v28 = [[CSDRelayCallProviderManagerDataSource alloc] initWithSerialQueue:v12];
      relayCallProviderDataSource = v16->_relayCallProviderDataSource;
      v16->_relayCallProviderDataSource = v28;

      [(CSDRelayCallProviderManagerDataSource *)v16->_relayCallProviderDataSource setDelegate:v16];
    }

    v30 = objc_alloc_init(CSDProtectedAppsUtilities);
    protectedAppsUtilities = v16->_protectedAppsUtilities;
    v16->_protectedAppsUtilities = v30;

    objc_initWeak(&location, v16);
    queue = v16->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001F1610;
    block[3] = &unk_10061CAB8;
    v33 = v16;
    v36 = v33;
    objc_copyWeak(&v37, &location);
    dispatch_sync(queue, block);
    objc_storeStrong(v33 + 13, a5);
    [v33 retrieveSavedProvidersByIdentifierAndNotify:0 unregister:1];
    objc_destroyWeak(&v37);

    objc_destroyWeak(&location);
  }

  return v16;
}

- (void)retrieveSavedProvidersByIdentifierAndNotify:(BOOL)a3 unregister:(BOOL)a4
{
  v7 = [(CSDCallProviderManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F1854;
  v8[3] = &unk_10061E520;
  v8[4] = self;
  v9 = a4;
  v10 = a3;
  dispatch_async(v7, v8);
}

- (void)_updateProvidersByIdentifierAndNotifyIfCanAccessKeychain:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v5 = [(CSDCallProviderManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDCallProviderManager *)v4 localProvidersByIdentifier];
  v7 = [(CSDCallProviderManager *)v4 dataSource];
  if (![v7 isRelayCallingGuaranteed])
  {
    goto LABEL_4;
  }

  v8 = [(CSDCallProviderManager *)v4 pairedHostDeviceProvidersByIdentifier];
  v9 = [v8 count];

  if (v9)
  {
    [(CSDCallProviderManager *)v4 pairedHostDeviceProvidersByIdentifier];
    v6 = v7 = v6;
LABEL_4:
  }

  v10 = [(CSDCallProviderManager *)v4 relayHostDeviceProvidersByIdentifier];
  v11 = [v10 objectForKeyedSubscript:@"com.apple.coretelephony"];

  v12 = [(CSDCallProviderManager *)v4 featureFlags];
  if (![v12 isDualSimParityEnabled] || (+[TUCallCapabilities supportsPrimaryCalling](TUCallCapabilities, "supportsPrimaryCalling") & 1) != 0 || (+[TUCallCapabilities isThumperCallingEnabled](TUCallCapabilities, "isThumperCallingEnabled") & 1) != 0)
  {
  }

  else
  {

    if (v11)
    {
      v27 = sub_100004778();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v6 objectForKeyedSubscript:@"com.apple.coretelephony"];
        v29 = [(CSDCallProviderManager *)v4 relayHostDeviceProvidersByIdentifier];
        v30 = [v29 objectForKeyedSubscript:@"com.apple.coretelephony"];
        *buf = 138412546;
        v41 = v28;
        v42 = 2112;
        v43 = v30;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Updating current telephony provider from %@ to %@", buf, 0x16u);
      }

      v31 = [(CSDCallProviderManager *)v4 relayHostDeviceProvidersByIdentifier];
      v32 = [v31 objectForKeyedSubscript:@"com.apple.coretelephony"];
      [v6 setObject:v32 forKeyedSubscript:@"com.apple.coretelephony"];
    }
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating current providers to %@", buf, 0xCu);
  }

  [(CSDCallProviderManager *)v4 setProvidersByIdentifier:v6];
  if (v3)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = v4;
    obj = [(CSDCallProviderManager *)v4 delegateToQueue];
    v15 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v35 + 1) + 8 * i);
          v20 = [(CSDCallProviderManager *)v14 delegateToQueue];
          v21 = [v20 objectForKey:v19];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001F2010;
          block[3] = &unk_100619D88;
          block[4] = v19;
          block[5] = v14;
          dispatch_async(v21, block);
        }

        v16 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v16);
    }

    v4 = v14;
  }

  v22 = [(CSDCallProviderManager *)v4 featureFlags];
  if (![v22 isDualSimParityEnabled])
  {
    goto LABEL_26;
  }

  v23 = +[TUCallCapabilities supportsPrimaryCalling];

  if (v23)
  {
    v24 = [(CSDCallProviderManager *)v4 providersByIdentifier];
    v22 = [v24 objectForKeyedSubscript:@"com.apple.coretelephony"];

    if (v22)
    {
      v25 = sub_100004778();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Updating telephony provider in iCluod KVS", buf, 2u);
      }

      v26 = [(CSDCallProviderManager *)v4 relayCallProviderDataSource];
      [v26 updateCallProvider:v22 forIdentifier:@"com.apple.coretelephony"];
    }

LABEL_26:
  }
}

- (void)_unregisterUninstalledProvidersAndNotify:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSDCallProviderManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDCallProviderManager *)self localProvidersByIdentifier];
  v7 = [v6 allValues];
  v8 = [NSMutableSet setWithArray:v7];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = [v8 copy];
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        if (([v14 isSystemProvider] & 1) == 0)
        {
          v15 = [(CSDCallProviderManager *)self dataSource];
          v16 = [v15 isProviderInstalled:v14];

          if (!v16)
          {
            continue;
          }
        }

        [v8 removeObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v28 = v3;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v8;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v29 + 1) + 8 * j);
          v23 = sub_100004778();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Unregistering provider because its application is no longer installed: %@", buf, 0xCu);
          }

          v24 = [(CSDCallProviderManager *)self localProvidersByIdentifier];
          v25 = [v22 identifier];
          [v24 setObject:0 forKeyedSubscript:v25];
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v19);
    }

    v26 = [(CSDCallProviderManager *)self localProvidersByIdentifier];
    v27 = [(CSDCallProviderManager *)self dataSource];
    [v27 setRegisteredLocalProvidersByIdentifier:v26];

    [(CSDCallProviderManager *)self _updateProvidersByIdentifierAndNotifyIfCanAccessKeychain:v28];
  }
}

- (id)uniqueRingtoneSoundLinkFilenameWithOriginalFilename:(id)a3
{
  v3 = a3;
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];
  v6 = [NSString stringWithFormat:@"%@-%@", v5, v3];

  return v6;
}

+ (id)_providersByIdentifierByFilteringForRemoteClientsFromProvidersByIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 allValues];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 supportsCurrentPlatform])
        {
          v11 = [v10 identifier];
          [v4 setObject:v10 forKeyedSubscript:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (void)_donateUserIntentForProviderWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Donating user intent to call provider with identifier: %@", &v8, 0xCu);
  }

  v7 = [(CSDCallProviderManager *)self userIntentManager];
  [v7 donateUserIntentForCallProviderIdentifier:v4];
}

- (void)_donateBackgroundCallIntentForProviderWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Donating background call intent to call provider with identifier: %@", &v8, 0xCu);
  }

  v7 = [(CSDCallProviderManager *)self userIntentManager];
  [v7 donateBackgroundCallIntentForCallProviderIdentifier:v4];
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F2828;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F2930;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (id)providersByIdentifierForRemoteClients:(BOOL)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000286E4;
  v14 = sub_1000328FC;
  v15 = 0;
  v5 = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F2AA8;
  block[3] = &unk_10061CE30;
  block[4] = self;
  block[5] = &v10;
  v9 = a3;
  dispatch_sync(v5, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)_providersByIdentifierForRemoteClients:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSDCallProviderManager *)self queue];
  dispatch_assert_queue_V2(v5);

  if (v3)
  {
    v6 = objc_opt_class();
    v7 = [(CSDCallProviderManager *)self providersByIdentifier];
    v8 = [v6 _providersByIdentifierByFilteringForRemoteClientsFromProvidersByIdentifier:v7];
  }

  else
  {
    v7 = [(CSDCallProviderManager *)self providersByIdentifier];
    v8 = [v7 copy];
  }

  v9 = v8;

  return v9;
}

- (id)localProvidersByIdentifierForRemoteClients:(BOOL)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000286E4;
  v14 = sub_1000328FC;
  v15 = 0;
  v5 = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F2CC0;
  block[3] = &unk_10061CE30;
  v9 = a3;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(v5, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)pairedHostDeviceProvidersByIdentifierForRemoteClients:(BOOL)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000286E4;
  v14 = sub_1000328FC;
  v15 = 0;
  v5 = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F2E80;
  block[3] = &unk_10061CE30;
  v9 = a3;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(v5, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)sortedProvidersForRemoteClients:(BOOL)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000286E4;
  v14 = sub_1000328FC;
  v15 = 0;
  v5 = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F3040;
  block[3] = &unk_10061CE30;
  block[4] = self;
  block[5] = &v10;
  v9 = a3;
  dispatch_sync(v5, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)defaultAppProviderForRemoteClients:(BOOL)a3
{
  v3 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000286E4;
  v16 = sub_1000328FC;
  v17 = 0;
  v5 = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F3424;
  block[3] = &unk_10061CE30;
  block[4] = self;
  block[5] = &v12;
  v11 = v3;
  dispatch_sync(v5, block);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v13[5];
    *buf = 67109378;
    v19 = v3;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetched default app provider forRemoteClient %d %@", buf, 0x12u);
  }

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (void)registerLocalProvider:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F3A88;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)registerPairedHostDeviceProviders:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F3FD8;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)registerRelayHostDeviceProviders:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManager *)self featureFlags];
  v6 = [v5 isDualSimParityEnabled];

  if (v6)
  {
    v7 = [(CSDCallProviderManager *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001F4328;
    v8[3] = &unk_100619D88;
    v9 = v4;
    v10 = self;
    dispatch_async(v7, v8);
  }
}

- (void)donateUserIntentForProviderWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F462C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (BOOL)validateUserIntentForCallSource:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4738;
  block[3] = &unk_10061C678;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)donateBackgroundCallIntentForProviderWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F484C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (BOOL)validateBackgroundCallIntentForCallSource:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4958;
  block[3] = &unk_10061C678;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)launchAppForDialRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4A90;
  block[3] = &unk_10061D128;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (BOOL)appShouldUseDeprecatedCallingIntents:(id)a3
{
  v3 = a3;
  v4 = [LSApplicationRecord csd_applicationRecordForBundleIdentifier:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 compatibilityObject];
    v7 = [v6 plugInKitPlugins];
    v8 = INSupportedIntentsByExtensions();
    v9 = 0;

    v10 = TUDialRequestUserActivityTypeCall;
    v11 = [v8 containsObject:TUDialRequestUserActivityTypeCall];
    if (v11)
    {
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v21 = v3;
        v22 = 2114;
        v23 = v10;
        v13 = "App %{public}@ supports %{public}@.";
        v14 = v12;
        v15 = 22;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      }
    }

    else
    {
      v17 = TUDialRequestUserActivityTypeAudioCall;
      if (([v8 containsObject:TUDialRequestUserActivityTypeAudioCall] & 1) == 0)
      {
        v18 = TUDialRequestUserActivityTypeVideoCall;
        if (![v8 containsObject:TUDialRequestUserActivityTypeVideoCall])
        {
          v12 = sub_100004778();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138544130;
            v21 = v3;
            v22 = 2114;
            v23 = v17;
            v24 = 2114;
            v25 = v18;
            v26 = 2112;
            v27 = v9;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "App %{public}@ does not declare support for any dialing intents. Using %{public}@ or %{public}@. Error: %@", buf, 0x2Au);
          }

          goto LABEL_15;
        }
      }

      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        v21 = v3;
        v22 = 2114;
        v23 = v10;
        v24 = 2114;
        v25 = v17;
        v26 = 2114;
        v27 = TUDialRequestUserActivityTypeVideoCall;
        v13 = "[WARN] App %{public}@ does not support %{public}@, using deprecated %{public}@ and %{public}@.";
        v14 = v12;
        v15 = 42;
        goto LABEL_12;
      }
    }

LABEL_15:

    v16 = v11 ^ 1;
    goto LABEL_16;
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10047AF28();
  }

  v16 = 0;
LABEL_16:

  return v16;
}

- (id)defaultAppRelayProviderToUse
{
  v3 = [(CSDCallProviderManager *)self localProvidersByIdentifier];
  v4 = [v3 objectForKeyedSubscript:@"com.apple.coretelephony"];

  v5 = [(CSDCallProviderManager *)self localProvidersByIdentifier];
  v6 = [v5 objectForKeyedSubscript:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

  v7 = defaultAppRelayTelephonySetting();
  v8 = v4;
  if (v7 == 2)
  {
    goto LABEL_6;
  }

  if (v7 == 1)
  {
    v9 = [(CSDCallProviderManager *)self configurationProvider];
    v10 = [v9 isUplevelFTAEnabled];

    if (v10)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

LABEL_6:
    v11 = v8;
    goto LABEL_8;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (void)relayCallingStateChangedForDataSource:(id)a3
{
  v4 = [(CSDCallProviderManager *)self queue];
  dispatch_assert_queue_V2(v4);

  [(CSDCallProviderManager *)self _updateProvidersByIdentifierAndNotifyIfCanAccessKeychain:1];
}

- (void)installedProvidersChangedForDataSource:(id)a3
{
  v4 = [(CSDCallProviderManager *)self queue];
  dispatch_assert_queue_V2(v4);

  [(CSDCallProviderManager *)self _unregisterUninstalledProvidersAndNotify:1];
}

- (void)relayCallProvidersChangedForDataSource:(id)a3 updatedCallProviders:(id)a4
{
  v5 = a4;
  v6 = [(CSDCallProviderManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [v5 objectForKeyedSubscript:@"com.apple.coretelephony"];

  if (v7)
  {
    v8 = [(CSDCallProviderManager *)self relayHostDeviceProvidersByIdentifier];
    v9 = [v8 objectForKeyedSubscript:@"com.apple.coretelephony"];
    v10 = [v7 isEqualToCallProvider:v9];

    if ((v10 & 1) == 0)
    {
      v14 = v7;
      v11 = [NSArray arrayWithObjects:&v14 count:1];
      [(CSDCallProviderManager *)self registerRelayHostDeviceProviders:v11];

      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updated relay host call providers", v13, 2u);
      }
    }
  }
}

@end