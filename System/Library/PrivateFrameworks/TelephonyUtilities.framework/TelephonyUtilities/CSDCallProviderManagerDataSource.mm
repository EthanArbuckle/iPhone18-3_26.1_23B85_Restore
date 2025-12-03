@interface CSDCallProviderManagerDataSource
+ (id)dataForProviders:(id)providers;
- (BOOL)_saveProviders:(id)providers forKeychainItem:(id)item error:(id *)error;
- (BOOL)isDevicePasscodeLocked;
- (BOOL)isProviderInstalled:(id)installed;
- (BOOL)isRelayCallingGuaranteed;
- (BOOL)isSymbolicLinkAtURL:(id)l;
- (CSDCallProviderManagerDataSource)initWithSerialQueue:(id)queue;
- (CSDCallProviderManagerDataSource)initWithSerialQueue:(id)queue localKeychainItem:(id)item pairedHostKeychainItem:(id)keychainItem;
- (CSDCallProviderManagerDataSourceDelegate)delegate;
- (NSDictionary)registeredLocalProvidersByIdentifier;
- (NSDictionary)registeredPairedHostDeviceProvidersByIdentifier;
- (NSSet)providerIdentifiersForExistingCalls;
- (id)_providersForKeychainItem:(id)item;
- (id)_providersForPreferenceKey:(id)key;
- (id)createLinkIfNecessaryWithFilename:(id)filename toURL:(id)l;
- (void)callsChangedForCallCenterObserver:(id)observer;
- (void)dealloc;
- (void)didChangeRelayCallingAvailability;
- (void)handleApplicationUnregisteredNotification:(id)notification;
- (void)moveExistingPreferencesToKeychain;
- (void)openUserActivity:(id)activity usingApplicationWithBundleIdentifier:(id)identifier frontBoardOptions:(id)options completion:(id)completion;
- (void)removeLinksForFilenamesNotInArray:(id)array;
- (void)setRegisteredLocalProvidersByIdentifier:(id)identifier;
- (void)setRegisteredPairedHostDeviceProvidersByIdentifier:(id)identifier;
@end

@implementation CSDCallProviderManagerDataSource

- (CSDCallProviderManagerDataSource)initWithSerialQueue:(id)queue
{
  queueCopy = queue;
  v5 = [CSDKeychainPasswordItem alloc];
  v6 = +[CSDKeychainPasswordItem serviceName];
  v7 = +[CSDKeychainPasswordItem accessGroupName];
  v8 = [(CSDKeychainPasswordItem *)v5 initWithService:v6 account:@"registeredProviders" accessGroup:v7];

  v9 = [CSDKeychainPasswordItem alloc];
  v10 = +[CSDKeychainPasswordItem serviceName];
  v11 = +[CSDKeychainPasswordItem accessGroupName];
  v12 = [(CSDKeychainPasswordItem *)v9 initWithService:v10 account:@"registeredRelayProviders" accessGroup:v11];

  v13 = [(CSDCallProviderManagerDataSource *)self initWithSerialQueue:queueCopy localKeychainItem:v8 pairedHostKeychainItem:v12];
  return v13;
}

- (CSDCallProviderManagerDataSource)initWithSerialQueue:(id)queue localKeychainItem:(id)item pairedHostKeychainItem:(id)keychainItem
{
  queueCopy = queue;
  itemCopy = item;
  keychainItemCopy = keychainItem;
  v21.receiver = self;
  v21.super_class = CSDCallProviderManagerDataSource;
  v12 = [(CSDCallProviderManagerDataSource *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    queue = [(CSDCallProviderManagerDataSource *)v13 queue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10020C7FC;
    v16[3] = &unk_10061A450;
    v17 = v13;
    v18 = itemCopy;
    v19 = keychainItemCopy;
    v20 = queueCopy;
    dispatch_async(queue, v16);
  }

  return v13;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSDCallProviderManagerDataSource;
  [(CSDCallProviderManagerDataSource *)&v4 dealloc];
}

- (BOOL)isRelayCallingGuaranteed
{
  v2 = +[CSDCallCapabilities sharedInstance];
  callCapabilitiesState = [v2 callCapabilitiesState];
  v4 = [callCapabilitiesState relayCallingAvailability] == 2;

  return v4;
}

- (NSDictionary)registeredLocalProvidersByIdentifier
{
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[NSMutableDictionary dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = +[TUCallProviderManager defaultProviders];
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        identifier = [v10 identifier];
        [v4 setObject:v10 forKeyedSubscript:identifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v7);
  }

  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"registeredProvidersVersion", TUBundleIdentifierTelephonyUtilitiesFramework, 0);
  if (AppIntegerValue < 1)
  {
    v16 = AppIntegerValue;
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v36 = v16;
      v37 = 1024;
      v38 = 1;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Not loading registered providers because current registered providers version is %ld and minimum version is %d", buf, 0x12u);
    }
  }

  else
  {
    keychainItem = [(CSDCallProviderManagerDataSource *)self keychainItem];
    v14 = [(CSDCallProviderManagerDataSource *)self _providersForKeychainItem:keychainItem];

    if ([v14 count])
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found local providers from keychain", buf, 2u);
      }
    }

    else
    {
      [(CSDCallProviderManagerDataSource *)self _providersForPreferenceKey:@"registeredProviders"];
      v14 = v15 = v14;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v27 + 1) + 8 * j);
          identifier2 = [v22 identifier];
          [v4 setObject:v22 forKeyedSubscript:identifier2];
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v19);
    }
  }

  v24 = sub_100004778();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v4;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "registeredLocalProvidersByIdentifier: %@", buf, 0xCu);
  }

  v25 = [v4 copy];

  return v25;
}

- (void)setRegisteredLocalProvidersByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "registeredLocalProvidersByIdentifier: %@", buf, 0xCu);
  }

  allValues = [identifierCopy allValues];
  keychainItem = [(CSDCallProviderManagerDataSource *)self keychainItem];
  v12 = 0;
  [(CSDCallProviderManagerDataSource *)self _saveProviders:allValues forKeychainItem:keychainItem error:&v12];
  v9 = v12;

  if (v9)
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047C368();
    }
  }

  v11 = TUBundleIdentifierTelephonyUtilitiesFramework;
  CFPreferencesSetAppValue(@"registeredProvidersVersion", &off_10063EDB0, TUBundleIdentifierTelephonyUtilitiesFramework);
  CFPreferencesAppSynchronize(v11);
}

- (NSDictionary)registeredPairedHostDeviceProvidersByIdentifier
{
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[NSMutableDictionary dictionary];
  pairedHostKeychainItem = [(CSDCallProviderManagerDataSource *)self pairedHostKeychainItem];
  v6 = [(CSDCallProviderManagerDataSource *)self _providersForKeychainItem:pairedHostKeychainItem];

  if ([v6 count])
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found paired host providers from keychain", buf, 2u);
    }
  }

  else
  {
    v8 = [(CSDCallProviderManagerDataSource *)self _providersForPreferenceKey:@"registeredRelayProviders"];

    v6 = v8;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        identifier = [v14 identifier];
        [v4 setObject:v14 forKeyedSubscript:identifier];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v11);
  }

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "registeredPairedHostDeviceProvidersByIdentifier: %@", buf, 0xCu);
  }

  v17 = [v4 copy];

  return v17;
}

- (void)setRegisteredPairedHostDeviceProvidersByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "registeredPairedHostDeviceProvidersByIdentifier: %@", buf, 0xCu);
  }

  allValues = [identifierCopy allValues];
  pairedHostKeychainItem = [(CSDCallProviderManagerDataSource *)self pairedHostKeychainItem];
  v11 = 0;
  [(CSDCallProviderManagerDataSource *)self _saveProviders:allValues forKeychainItem:pairedHostKeychainItem error:&v11];
  v9 = v11;

  if (v9)
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047C368();
    }
  }
}

- (BOOL)isDevicePasscodeLocked
{
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v3 = MKBGetDeviceLockState();
  if (v3 != 1)
  {
    LOBYTE(v3) = MKBGetDeviceLockState() == 2;
  }

  return v3;
}

- (NSSet)providerIdentifiersForExistingCalls
{
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  providerIdentifiersForExistingCalls = self->_providerIdentifiersForExistingCalls;

  return providerIdentifiersForExistingCalls;
}

- (void)openUserActivity:(id)activity usingApplicationWithBundleIdentifier:(id)identifier frontBoardOptions:(id)options completion:(id)completion
{
  activityCopy = activity;
  identifierCopy = identifier;
  optionsCopy = options;
  completionCopy = completion;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412802;
    v21 = activityCopy;
    v22 = 2112;
    v23 = identifierCopy;
    v24 = 2112;
    v25 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Opening user activity %@ for bundle identifier %@ with options %@", &v20, 0x20u);
  }

  v16 = [LSApplicationRecord csd_applicationRecordForBundleIdentifier:identifierCopy];
  v17 = objc_alloc_init(_LSOpenConfiguration);
  [v17 setFrontBoardOptions:optionsCopy];
  if (v16)
  {
    v18 = +[LSApplicationWorkspace defaultWorkspace];
    [v18 openUserActivity:activityCopy usingApplicationRecord:v16 configuration:v17 completionHandler:completionCopy];
  }

  else
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10047C3D0();
    }

    v18 = [NSError errorWithDomain:TUBundleIdentifierTelephonyUtilitiesFramework code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v18);
  }
}

- (BOOL)isSymbolicLinkAtURL:(id)l
{
  lCopy = l;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[NSFileManager defaultManager];
  path = [lCopy path];

  v13 = 0;
  v8 = [v6 attributesOfItemAtPath:path error:&v13];
  v9 = v13;

  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:NSFileType];
    v11 = [v10 isEqual:NSFileTypeSymbolicLink];
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047C438();
    }

    v11 = 0;
  }

  return v11;
}

- (id)createLinkIfNecessaryWithFilename:(id)filename toURL:(id)l
{
  filenameCopy = filename;
  lCopy = l;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  ringtonesSandboxExtensionDirectory = [(CSDCallProviderManagerDataSource *)self ringtonesSandboxExtensionDirectory];
  v14 = 0;
  v10 = [ringtonesSandboxExtensionDirectory createLinkIfNecessaryWithFilename:filenameCopy toURL:lCopy error:&v14];
  v11 = v14;

  if (!v10)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = lCopy;
      v17 = 2112;
      v18 = filenameCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error creating link to source URL '%@' with filename '%@': %@", buf, 0x20u);
    }
  }

  return v10;
}

- (void)removeLinksForFilenamesNotInArray:(id)array
{
  arrayCopy = array;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  ringtonesSandboxExtensionDirectory = [(CSDCallProviderManagerDataSource *)self ringtonesSandboxExtensionDirectory];
  v10 = 0;
  v7 = [ringtonesSandboxExtensionDirectory removeLinksForFilenamesNotInArray:arrayCopy error:&v10];
  v8 = v10;

  if ((v7 & 1) == 0)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10047C4A0();
    }
  }
}

- (BOOL)isProviderInstalled:(id)installed
{
  installedCopy = installed;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  bundleIdentifier = [installedCopy bundleIdentifier];

  if (bundleIdentifier)
  {
    v7 = [LSApplicationRecord csd_applicationRecordForBundleIdentifier:bundleIdentifier];
  }

  else
  {
    v7 = 0;
  }

  applicationState = [v7 applicationState];
  isInstalled = [applicationState isInstalled];

  return isInstalled;
}

- (void)moveExistingPreferencesToKeychain
{
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [(CSDCallProviderManagerDataSource *)self _providersForPreferenceKey:@"registeredProviders"];
  if ([v4 count])
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found local provider data to move into keychain", buf, 2u);
    }

    keychainItem = [(CSDCallProviderManagerDataSource *)self keychainItem];
    v17 = 0;
    [(CSDCallProviderManagerDataSource *)self _saveProviders:v4 forKeychainItem:keychainItem error:&v17];
    v7 = v17;

    v8 = sub_100004778();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10047C368();
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Removing preferences for local registered providers", buf, 2u);
      }

      CFPreferencesSetAppValue(@"registeredProviders", 0, TUBundleIdentifierTelephonyUtilitiesFramework);
    }
  }

  v10 = [(CSDCallProviderManagerDataSource *)self _providersForPreferenceKey:@"registeredRelayProviders"];
  if ([v10 count])
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found paired host provider data to move into keychain", buf, 2u);
    }

    pairedHostKeychainItem = [(CSDCallProviderManagerDataSource *)self pairedHostKeychainItem];
    v16 = 0;
    [(CSDCallProviderManagerDataSource *)self _saveProviders:v10 forKeychainItem:pairedHostKeychainItem error:&v16];
    v13 = v16;

    v14 = sub_100004778();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10047C368();
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removing preferences for paired host registered providers", buf, 2u);
      }

      CFPreferencesSetAppValue(@"registeredRelayProviders", 0, TUBundleIdentifierTelephonyUtilitiesFramework);
    }
  }
}

+ (id)dataForProviders:(id)providers
{
  providersCopy = providers;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [providersCopy count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = providersCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [[CSDMessagingCallProvider alloc] initWithProvider:*(*(&v18 + 1) + 8 * i)];
        data = [(CSDMessagingCallProvider *)v10 data];
        [v4 addObject:data];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v17 = 0;
  v12 = [NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:&v17];
  v13 = v17;
  if (v13)
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10047C520();
    }

    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  return v15;
}

- (BOOL)_saveProviders:(id)providers forKeychainItem:(id)item error:(id *)error
{
  providersCopy = providers;
  itemCopy = item;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [providersCopy mutableCopy];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  v13 = v11;
  if (v12)
  {
    v14 = v12;
    v15 = *v22;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v22 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v21 + 1) + 8 * v16);
      if ([v17 isSuperboxProvider])
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        v13 = v11;
        goto LABEL_12;
      }
    }

    v13 = v17;

    if (!v13)
    {
      goto LABEL_13;
    }

    [v11 removeObject:v13];
  }

LABEL_12:

LABEL_13:
  v18 = [objc_opt_class() dataForProviders:v11];
  [itemCopy saveData:v18 error:error];
  [(CSDCallProviderManagerDataSource *)self setSucceededAccessingKeychainOnLastAttempt:error == 0];
  hasSucceededAccessingKeychainOnLastAttempt = [(CSDCallProviderManagerDataSource *)self hasSucceededAccessingKeychainOnLastAttempt];

  return hasSucceededAccessingKeychainOnLastAttempt;
}

- (id)_providersForKeychainItem:(id)item
{
  itemCopy = item;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[NSMutableArray array];
  v37 = 0;
  v7 = [itemCopy readDataAndReturnError:&v37];
  v8 = v37;
  if (v8)
  {
    [(CSDCallProviderManagerDataSource *)self setSucceededAccessingKeychainOnLastAttempt:0];
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10047C588();
    }

    if (!v7)
    {
      goto LABEL_30;
    }
  }

  else
  {
    [(CSDCallProviderManagerDataSource *)self setSucceededAccessingKeychainOnLastAttempt:1];
    if (!v7)
    {
      goto LABEL_30;
    }
  }

  v36 = 0;
  v10 = [NSPropertyListSerialization propertyListWithData:v7 options:0 format:0 error:&v36];
  v11 = v36;

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (!v13)
      {
        goto LABEL_29;
      }

      v14 = v13;
      v28 = v11;
      v29 = v10;
      v30 = v7;
      v31 = itemCopy;
      v15 = *v33;
      while (1)
      {
        v16 = 0;
        do
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * v16);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [[CSDMessagingCallProvider alloc] initWithData:v17];
            provider = [(CSDMessagingCallProvider *)v18 provider];

            if (provider)
            {
              [v6 addObject:provider];
              goto LABEL_21;
            }

            v21 = sub_100004778();
            if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_20;
            }

            *buf = 138412290;
            v39 = v12;
            v22 = v21;
            v23 = "Could not deserialize data to TUCallProvider instance: %@";
            v24 = 12;
          }

          else
          {
            provider = sub_100004778();
            if (!os_log_type_enabled(provider, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            v20 = objc_opt_class();
            *buf = 138412546;
            v39 = v20;
            v40 = 2112;
            v41 = v12;
            v21 = v20;
            v22 = provider;
            v23 = "Archived object was of unexpected class %@: %@";
            v24 = 22;
          }

          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v23, buf, v24);
LABEL_20:

LABEL_21:
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v25 = [v12 countByEnumeratingWithState:&v32 objects:v42 count:16];
        v14 = v25;
        if (!v25)
        {
          itemCopy = v31;
          v11 = v28;
          goto LABEL_29;
        }
      }
    }
  }

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10047C5F0();
  }

LABEL_29:

  v8 = v11;
LABEL_30:
  v26 = [v6 copy];

  return v26;
}

- (id)_providersForPreferenceKey:(id)key
{
  keyCopy = key;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[NSMutableArray array];
  preferencesForKeyBlock = [(CSDCallProviderManagerDataSource *)self preferencesForKeyBlock];
  v8 = (preferencesForKeyBlock)[2](preferencesForKeyBlock, keyCopy);

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (!v10)
      {
        goto LABEL_23;
      }

      v11 = v10;
      v25 = v8;
      v26 = keyCopy;
      v12 = *v28;
      while (1)
      {
        v13 = 0;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [[CSDMessagingCallProvider alloc] initWithData:v14];
            provider = [(CSDMessagingCallProvider *)v15 provider];

            if (provider)
            {
              [v6 addObject:provider];
              goto LABEL_15;
            }

            v18 = sub_100004778();
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_14;
            }

            *buf = 138412290;
            v32 = v9;
            v19 = v18;
            v20 = "Could not deserialize data to TUCallProvider instance: %@";
            v21 = 12;
          }

          else
          {
            provider = sub_100004778();
            if (!os_log_type_enabled(provider, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_15;
            }

            v17 = objc_opt_class();
            *buf = 138412546;
            v32 = v17;
            v33 = 2112;
            v34 = v9;
            v18 = v17;
            v19 = provider;
            v20 = "Archived object was of unexpected class %@: %@";
            v21 = 22;
          }

          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v20, buf, v21);
LABEL_14:

LABEL_15:
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v22 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
        v11 = v22;
        if (!v22)
        {
          goto LABEL_23;
        }
      }
    }

    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10047C5F0();
    }

LABEL_23:
  }

  v23 = [v6 copy];

  return v23;
}

- (void)handleApplicationUnregisteredNotification:(id)notification
{
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020E718;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)callsChangedForCallCenterObserver:(id)observer
{
  callCenterObserver = [(CSDCallProviderManagerDataSource *)self callCenterObserver];
  callContainer = [callCenterObserver callContainer];
  currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];

  v7 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [currentAudioAndVideoCalls count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = currentAudioAndVideoCalls;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        provider = [*(*(&v19 + 1) + 8 * v12) provider];
        identifier = [provider identifier];

        if ([identifier length])
        {
          [v7 addObject:identifier];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  queue = [(CSDCallProviderManagerDataSource *)self queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10020E96C;
  v17[3] = &unk_100619D88;
  v17[4] = self;
  v18 = v7;
  v16 = v7;
  dispatch_async(queue, v17);
}

- (void)didChangeRelayCallingAvailability
{
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(CSDCallProviderManagerDataSource *)self delegate];
  [delegate relayCallingStateChangedForDataSource:self];
}

- (CSDCallProviderManagerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end