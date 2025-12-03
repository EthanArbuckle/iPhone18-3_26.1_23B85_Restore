@interface CSDCallProviderManager
+ (id)_providersByIdentifierByFilteringForRemoteClientsFromProvidersByIdentifier:(id)identifier;
- (BOOL)appShouldUseDeprecatedCallingIntents:(id)intents;
- (BOOL)validateBackgroundCallIntentForCallSource:(id)source;
- (BOOL)validateUserIntentForCallSource:(id)source;
- (CSDCallProviderManager)init;
- (CSDCallProviderManager)initWithDataSource:(id)source serialQueue:(id)queue;
- (CSDCallProviderManager)initWithDataSource:(id)source serialQueue:(id)queue configurationProvider:(id)provider featureFlags:(id)flags;
- (CSDCallProviderManager)initWithDataSource:(id)source serialQueue:(id)queue featureFlags:(id)flags;
- (id)_providersByIdentifierForRemoteClients:(BOOL)clients;
- (id)defaultAppProviderForRemoteClients:(BOOL)clients;
- (id)defaultAppRelayProviderToUse;
- (id)localProvidersByIdentifierForRemoteClients:(BOOL)clients;
- (id)pairedHostDeviceProvidersByIdentifierForRemoteClients:(BOOL)clients;
- (id)providersByIdentifierForRemoteClients:(BOOL)clients;
- (id)sortedProvidersForRemoteClients:(BOOL)clients;
- (id)uniqueRingtoneSoundLinkFilenameWithOriginalFilename:(id)filename;
- (void)_donateBackgroundCallIntentForProviderWithIdentifier:(id)identifier;
- (void)_donateUserIntentForProviderWithIdentifier:(id)identifier;
- (void)_unregisterUninstalledProvidersAndNotify:(BOOL)notify;
- (void)_updateProvidersByIdentifierAndNotifyIfCanAccessKeychain:(BOOL)keychain;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)donateBackgroundCallIntentForProviderWithIdentifier:(id)identifier;
- (void)donateUserIntentForProviderWithIdentifier:(id)identifier;
- (void)installedProvidersChangedForDataSource:(id)source;
- (void)launchAppForDialRequest:(id)request completion:(id)completion;
- (void)registerLocalProvider:(id)provider;
- (void)registerPairedHostDeviceProviders:(id)providers;
- (void)registerRelayHostDeviceProviders:(id)providers;
- (void)relayCallProvidersChangedForDataSource:(id)source updatedCallProviders:(id)providers;
- (void)relayCallingStateChangedForDataSource:(id)source;
- (void)removeDelegate:(id)delegate;
- (void)retrieveSavedProvidersByIdentifierAndNotify:(BOOL)notify unregister:(BOOL)unregister;
@end

@implementation CSDCallProviderManager

- (CSDCallProviderManager)init
{
  v3 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.callprovidermanager", 0);
  v4 = [[CSDCallProviderManagerDataSource alloc] initWithSerialQueue:v3];
  v5 = [(CSDCallProviderManager *)self initWithDataSource:v4 serialQueue:v3];

  return v5;
}

- (CSDCallProviderManager)initWithDataSource:(id)source serialQueue:(id)queue
{
  queueCopy = queue;
  sourceCopy = source;
  v8 = objc_alloc_init(TUFeatureFlags);
  v9 = [(CSDCallProviderManager *)self initWithDataSource:sourceCopy serialQueue:queueCopy featureFlags:v8];

  return v9;
}

- (CSDCallProviderManager)initWithDataSource:(id)source serialQueue:(id)queue featureFlags:(id)flags
{
  flagsCopy = flags;
  queueCopy = queue;
  sourceCopy = source;
  v11 = objc_alloc_init(TUConfigurationProvider);
  v12 = [(CSDCallProviderManager *)self initWithDataSource:sourceCopy serialQueue:queueCopy configurationProvider:v11 featureFlags:flagsCopy];

  return v12;
}

- (CSDCallProviderManager)initWithDataSource:(id)source serialQueue:(id)queue configurationProvider:(id)provider featureFlags:(id)flags
{
  sourceCopy = source;
  queueCopy = queue;
  providerCopy = provider;
  flagsCopy = flags;
  v39.receiver = self;
  v39.super_class = CSDCallProviderManager;
  v15 = [(CSDCallProviderManager *)&v39 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, queue);
    objc_storeStrong(&v16->_dataSource, source);
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

    v24 = [[CSDUserIntentManager alloc] initWithQueue:queueCopy];
    userIntentManager = v16->_userIntentManager;
    v16->_userIntentManager = v24;

    objc_storeStrong(&v16->_featureFlags, flags);
    if ([(TUFeatureFlags *)v16->_featureFlags isDualSimParityEnabled])
    {
      v26 = +[NSMutableDictionary dictionary];
      relayHostDeviceProvidersByIdentifier = v16->_relayHostDeviceProvidersByIdentifier;
      v16->_relayHostDeviceProvidersByIdentifier = v26;

      v28 = [[CSDRelayCallProviderManagerDataSource alloc] initWithSerialQueue:queueCopy];
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
    objc_storeStrong(v33 + 13, provider);
    [v33 retrieveSavedProvidersByIdentifierAndNotify:0 unregister:1];
    objc_destroyWeak(&v37);

    objc_destroyWeak(&location);
  }

  return v16;
}

- (void)retrieveSavedProvidersByIdentifierAndNotify:(BOOL)notify unregister:(BOOL)unregister
{
  queue = [(CSDCallProviderManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F1854;
  v8[3] = &unk_10061E520;
  v8[4] = self;
  unregisterCopy = unregister;
  notifyCopy = notify;
  dispatch_async(queue, v8);
}

- (void)_updateProvidersByIdentifierAndNotifyIfCanAccessKeychain:(BOOL)keychain
{
  keychainCopy = keychain;
  selfCopy = self;
  queue = [(CSDCallProviderManager *)self queue];
  dispatch_assert_queue_V2(queue);

  localProvidersByIdentifier = [(CSDCallProviderManager *)selfCopy localProvidersByIdentifier];
  dataSource = [(CSDCallProviderManager *)selfCopy dataSource];
  if (![dataSource isRelayCallingGuaranteed])
  {
    goto LABEL_4;
  }

  pairedHostDeviceProvidersByIdentifier = [(CSDCallProviderManager *)selfCopy pairedHostDeviceProvidersByIdentifier];
  v9 = [pairedHostDeviceProvidersByIdentifier count];

  if (v9)
  {
    [(CSDCallProviderManager *)selfCopy pairedHostDeviceProvidersByIdentifier];
    localProvidersByIdentifier = dataSource = localProvidersByIdentifier;
LABEL_4:
  }

  relayHostDeviceProvidersByIdentifier = [(CSDCallProviderManager *)selfCopy relayHostDeviceProvidersByIdentifier];
  v11 = [relayHostDeviceProvidersByIdentifier objectForKeyedSubscript:@"com.apple.coretelephony"];

  featureFlags = [(CSDCallProviderManager *)selfCopy featureFlags];
  if (![featureFlags isDualSimParityEnabled] || (+[TUCallCapabilities supportsPrimaryCalling](TUCallCapabilities, "supportsPrimaryCalling") & 1) != 0 || (+[TUCallCapabilities isThumperCallingEnabled](TUCallCapabilities, "isThumperCallingEnabled") & 1) != 0)
  {
  }

  else
  {

    if (v11)
    {
      v27 = sub_100004778();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [localProvidersByIdentifier objectForKeyedSubscript:@"com.apple.coretelephony"];
        relayHostDeviceProvidersByIdentifier2 = [(CSDCallProviderManager *)selfCopy relayHostDeviceProvidersByIdentifier];
        v30 = [relayHostDeviceProvidersByIdentifier2 objectForKeyedSubscript:@"com.apple.coretelephony"];
        *buf = 138412546;
        v41 = v28;
        v42 = 2112;
        v43 = v30;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Updating current telephony provider from %@ to %@", buf, 0x16u);
      }

      relayHostDeviceProvidersByIdentifier3 = [(CSDCallProviderManager *)selfCopy relayHostDeviceProvidersByIdentifier];
      v32 = [relayHostDeviceProvidersByIdentifier3 objectForKeyedSubscript:@"com.apple.coretelephony"];
      [localProvidersByIdentifier setObject:v32 forKeyedSubscript:@"com.apple.coretelephony"];
    }
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = localProvidersByIdentifier;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating current providers to %@", buf, 0xCu);
  }

  [(CSDCallProviderManager *)selfCopy setProvidersByIdentifier:localProvidersByIdentifier];
  if (keychainCopy)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = selfCopy;
    obj = [(CSDCallProviderManager *)selfCopy delegateToQueue];
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
          delegateToQueue = [(CSDCallProviderManager *)v14 delegateToQueue];
          v21 = [delegateToQueue objectForKey:v19];

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

    selfCopy = v14;
  }

  featureFlags2 = [(CSDCallProviderManager *)selfCopy featureFlags];
  if (![featureFlags2 isDualSimParityEnabled])
  {
    goto LABEL_26;
  }

  v23 = +[TUCallCapabilities supportsPrimaryCalling];

  if (v23)
  {
    providersByIdentifier = [(CSDCallProviderManager *)selfCopy providersByIdentifier];
    featureFlags2 = [providersByIdentifier objectForKeyedSubscript:@"com.apple.coretelephony"];

    if (featureFlags2)
    {
      v25 = sub_100004778();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Updating telephony provider in iCluod KVS", buf, 2u);
      }

      relayCallProviderDataSource = [(CSDCallProviderManager *)selfCopy relayCallProviderDataSource];
      [relayCallProviderDataSource updateCallProvider:featureFlags2 forIdentifier:@"com.apple.coretelephony"];
    }

LABEL_26:
  }
}

- (void)_unregisterUninstalledProvidersAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  queue = [(CSDCallProviderManager *)self queue];
  dispatch_assert_queue_V2(queue);

  localProvidersByIdentifier = [(CSDCallProviderManager *)self localProvidersByIdentifier];
  allValues = [localProvidersByIdentifier allValues];
  v8 = [NSMutableSet setWithArray:allValues];

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
          dataSource = [(CSDCallProviderManager *)self dataSource];
          v16 = [dataSource isProviderInstalled:v14];

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
    v28 = notifyCopy;
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

          localProvidersByIdentifier2 = [(CSDCallProviderManager *)self localProvidersByIdentifier];
          identifier = [v22 identifier];
          [localProvidersByIdentifier2 setObject:0 forKeyedSubscript:identifier];
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v19);
    }

    localProvidersByIdentifier3 = [(CSDCallProviderManager *)self localProvidersByIdentifier];
    dataSource2 = [(CSDCallProviderManager *)self dataSource];
    [dataSource2 setRegisteredLocalProvidersByIdentifier:localProvidersByIdentifier3];

    [(CSDCallProviderManager *)self _updateProvidersByIdentifierAndNotifyIfCanAccessKeychain:v28];
  }
}

- (id)uniqueRingtoneSoundLinkFilenameWithOriginalFilename:(id)filename
{
  filenameCopy = filename;
  v4 = +[NSUUID UUID];
  uUIDString = [v4 UUIDString];
  filenameCopy = [NSString stringWithFormat:@"%@-%@", uUIDString, filenameCopy];

  return filenameCopy;
}

+ (id)_providersByIdentifierByFilteringForRemoteClientsFromProvidersByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [identifierCopy allValues];
  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 supportsCurrentPlatform])
        {
          identifier = [v10 identifier];
          [v4 setObject:v10 forKeyedSubscript:identifier];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (void)_donateUserIntentForProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDCallProviderManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Donating user intent to call provider with identifier: %@", &v8, 0xCu);
  }

  userIntentManager = [(CSDCallProviderManager *)self userIntentManager];
  [userIntentManager donateUserIntentForCallProviderIdentifier:identifierCopy];
}

- (void)_donateBackgroundCallIntentForProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDCallProviderManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Donating background call intent to call provider with identifier: %@", &v8, 0xCu);
  }

  userIntentManager = [(CSDCallProviderManager *)self userIntentManager];
  [userIntentManager donateBackgroundCallIntentForCallProviderIdentifier:identifierCopy];
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  queue = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F2828;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = queueCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = queueCopy;
  dispatch_async(queue, block);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(CSDCallProviderManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F2930;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(queue, v7);
}

- (id)providersByIdentifierForRemoteClients:(BOOL)clients
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000286E4;
  v14 = sub_1000328FC;
  v15 = 0;
  queue = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F2AA8;
  block[3] = &unk_10061CE30;
  block[4] = self;
  block[5] = &v10;
  clientsCopy = clients;
  dispatch_sync(queue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)_providersByIdentifierForRemoteClients:(BOOL)clients
{
  clientsCopy = clients;
  queue = [(CSDCallProviderManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (clientsCopy)
  {
    v6 = objc_opt_class();
    providersByIdentifier = [(CSDCallProviderManager *)self providersByIdentifier];
    v8 = [v6 _providersByIdentifierByFilteringForRemoteClientsFromProvidersByIdentifier:providersByIdentifier];
  }

  else
  {
    providersByIdentifier = [(CSDCallProviderManager *)self providersByIdentifier];
    v8 = [providersByIdentifier copy];
  }

  v9 = v8;

  return v9;
}

- (id)localProvidersByIdentifierForRemoteClients:(BOOL)clients
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000286E4;
  v14 = sub_1000328FC;
  v15 = 0;
  queue = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F2CC0;
  block[3] = &unk_10061CE30;
  clientsCopy = clients;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(queue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)pairedHostDeviceProvidersByIdentifierForRemoteClients:(BOOL)clients
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000286E4;
  v14 = sub_1000328FC;
  v15 = 0;
  queue = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F2E80;
  block[3] = &unk_10061CE30;
  clientsCopy = clients;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(queue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)sortedProvidersForRemoteClients:(BOOL)clients
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000286E4;
  v14 = sub_1000328FC;
  v15 = 0;
  queue = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F3040;
  block[3] = &unk_10061CE30;
  block[4] = self;
  block[5] = &v10;
  clientsCopy = clients;
  dispatch_sync(queue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)defaultAppProviderForRemoteClients:(BOOL)clients
{
  clientsCopy = clients;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000286E4;
  v16 = sub_1000328FC;
  v17 = 0;
  queue = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F3424;
  block[3] = &unk_10061CE30;
  block[4] = self;
  block[5] = &v12;
  v11 = clientsCopy;
  dispatch_sync(queue, block);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v13[5];
    *buf = 67109378;
    v19 = clientsCopy;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetched default app provider forRemoteClient %d %@", buf, 0x12u);
  }

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (void)registerLocalProvider:(id)provider
{
  providerCopy = provider;
  queue = [(CSDCallProviderManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F3A88;
  v7[3] = &unk_100619D88;
  v8 = providerCopy;
  selfCopy = self;
  v6 = providerCopy;
  dispatch_async(queue, v7);
}

- (void)registerPairedHostDeviceProviders:(id)providers
{
  providersCopy = providers;
  queue = [(CSDCallProviderManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F3FD8;
  v7[3] = &unk_100619D88;
  v8 = providersCopy;
  selfCopy = self;
  v6 = providersCopy;
  dispatch_async(queue, v7);
}

- (void)registerRelayHostDeviceProviders:(id)providers
{
  providersCopy = providers;
  featureFlags = [(CSDCallProviderManager *)self featureFlags];
  isDualSimParityEnabled = [featureFlags isDualSimParityEnabled];

  if (isDualSimParityEnabled)
  {
    queue = [(CSDCallProviderManager *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001F4328;
    v8[3] = &unk_100619D88;
    v9 = providersCopy;
    selfCopy = self;
    dispatch_async(queue, v8);
  }
}

- (void)donateUserIntentForProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDCallProviderManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F462C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)validateUserIntentForCallSource:(id)source
{
  sourceCopy = source;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4738;
  block[3] = &unk_10061C678;
  v9 = sourceCopy;
  v10 = &v11;
  block[4] = self;
  v6 = sourceCopy;
  dispatch_sync(queue, block);

  LOBYTE(sourceCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return sourceCopy;
}

- (void)donateBackgroundCallIntentForProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDCallProviderManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F484C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)validateBackgroundCallIntentForCallSource:(id)source
{
  sourceCopy = source;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4958;
  block[3] = &unk_10061C678;
  v9 = sourceCopy;
  v10 = &v11;
  block[4] = self;
  v6 = sourceCopy;
  dispatch_sync(queue, block);

  LOBYTE(sourceCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return sourceCopy;
}

- (void)launchAppForDialRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  queue = [(CSDCallProviderManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4A90;
  block[3] = &unk_10061D128;
  selfCopy = self;
  v14 = completionCopy;
  v12 = requestCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_async(queue, block);
}

- (BOOL)appShouldUseDeprecatedCallingIntents:(id)intents
{
  intentsCopy = intents;
  v4 = [LSApplicationRecord csd_applicationRecordForBundleIdentifier:intentsCopy];
  v5 = v4;
  if (v4)
  {
    compatibilityObject = [v4 compatibilityObject];
    plugInKitPlugins = [compatibilityObject plugInKitPlugins];
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
        v21 = intentsCopy;
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
            v21 = intentsCopy;
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
        v21 = intentsCopy;
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
  localProvidersByIdentifier = [(CSDCallProviderManager *)self localProvidersByIdentifier];
  v4 = [localProvidersByIdentifier objectForKeyedSubscript:@"com.apple.coretelephony"];

  localProvidersByIdentifier2 = [(CSDCallProviderManager *)self localProvidersByIdentifier];
  v6 = [localProvidersByIdentifier2 objectForKeyedSubscript:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

  v7 = defaultAppRelayTelephonySetting();
  v8 = v4;
  if (v7 == 2)
  {
    goto LABEL_6;
  }

  if (v7 == 1)
  {
    configurationProvider = [(CSDCallProviderManager *)self configurationProvider];
    isUplevelFTAEnabled = [configurationProvider isUplevelFTAEnabled];

    if (isUplevelFTAEnabled)
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

- (void)relayCallingStateChangedForDataSource:(id)source
{
  queue = [(CSDCallProviderManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDCallProviderManager *)self _updateProvidersByIdentifierAndNotifyIfCanAccessKeychain:1];
}

- (void)installedProvidersChangedForDataSource:(id)source
{
  queue = [(CSDCallProviderManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDCallProviderManager *)self _unregisterUninstalledProvidersAndNotify:1];
}

- (void)relayCallProvidersChangedForDataSource:(id)source updatedCallProviders:(id)providers
{
  providersCopy = providers;
  queue = [(CSDCallProviderManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = [providersCopy objectForKeyedSubscript:@"com.apple.coretelephony"];

  if (v7)
  {
    relayHostDeviceProvidersByIdentifier = [(CSDCallProviderManager *)self relayHostDeviceProvidersByIdentifier];
    v9 = [relayHostDeviceProvidersByIdentifier objectForKeyedSubscript:@"com.apple.coretelephony"];
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