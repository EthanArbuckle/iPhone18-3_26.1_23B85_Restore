@interface CSDCallProviderManagerDataSource
+ (id)dataForProviders:(id)a3;
- (BOOL)_saveProviders:(id)a3 forKeychainItem:(id)a4 error:(id *)a5;
- (BOOL)isDevicePasscodeLocked;
- (BOOL)isProviderInstalled:(id)a3;
- (BOOL)isRelayCallingGuaranteed;
- (BOOL)isSymbolicLinkAtURL:(id)a3;
- (CSDCallProviderManagerDataSource)initWithSerialQueue:(id)a3;
- (CSDCallProviderManagerDataSource)initWithSerialQueue:(id)a3 localKeychainItem:(id)a4 pairedHostKeychainItem:(id)a5;
- (CSDCallProviderManagerDataSourceDelegate)delegate;
- (NSDictionary)registeredLocalProvidersByIdentifier;
- (NSDictionary)registeredPairedHostDeviceProvidersByIdentifier;
- (NSSet)providerIdentifiersForExistingCalls;
- (id)_providersForKeychainItem:(id)a3;
- (id)_providersForPreferenceKey:(id)a3;
- (id)createLinkIfNecessaryWithFilename:(id)a3 toURL:(id)a4;
- (void)callsChangedForCallCenterObserver:(id)a3;
- (void)dealloc;
- (void)didChangeRelayCallingAvailability;
- (void)handleApplicationUnregisteredNotification:(id)a3;
- (void)moveExistingPreferencesToKeychain;
- (void)openUserActivity:(id)a3 usingApplicationWithBundleIdentifier:(id)a4 frontBoardOptions:(id)a5 completion:(id)a6;
- (void)removeLinksForFilenamesNotInArray:(id)a3;
- (void)setRegisteredLocalProvidersByIdentifier:(id)a3;
- (void)setRegisteredPairedHostDeviceProvidersByIdentifier:(id)a3;
@end

@implementation CSDCallProviderManagerDataSource

- (CSDCallProviderManagerDataSource)initWithSerialQueue:(id)a3
{
  v4 = a3;
  v5 = [CSDKeychainPasswordItem alloc];
  v6 = +[CSDKeychainPasswordItem serviceName];
  v7 = +[CSDKeychainPasswordItem accessGroupName];
  v8 = [(CSDKeychainPasswordItem *)v5 initWithService:v6 account:@"registeredProviders" accessGroup:v7];

  v9 = [CSDKeychainPasswordItem alloc];
  v10 = +[CSDKeychainPasswordItem serviceName];
  v11 = +[CSDKeychainPasswordItem accessGroupName];
  v12 = [(CSDKeychainPasswordItem *)v9 initWithService:v10 account:@"registeredRelayProviders" accessGroup:v11];

  v13 = [(CSDCallProviderManagerDataSource *)self initWithSerialQueue:v4 localKeychainItem:v8 pairedHostKeychainItem:v12];
  return v13;
}

- (CSDCallProviderManagerDataSource)initWithSerialQueue:(id)a3 localKeychainItem:(id)a4 pairedHostKeychainItem:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = CSDCallProviderManagerDataSource;
  v12 = [(CSDCallProviderManagerDataSource *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a3);
    v14 = [(CSDCallProviderManagerDataSource *)v13 queue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10020C7FC;
    v16[3] = &unk_10061A450;
    v17 = v13;
    v18 = v10;
    v19 = v11;
    v20 = v9;
    dispatch_async(v14, v16);
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
  v3 = [v2 callCapabilitiesState];
  v4 = [v3 relayCallingAvailability] == 2;

  return v4;
}

- (NSDictionary)registeredLocalProvidersByIdentifier
{
  v3 = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(v3);

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
        v11 = [v10 identifier];
        [v4 setObject:v10 forKeyedSubscript:v11];
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
    v13 = [(CSDCallProviderManagerDataSource *)self keychainItem];
    v14 = [(CSDCallProviderManagerDataSource *)self _providersForKeychainItem:v13];

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
          v23 = [v22 identifier];
          [v4 setObject:v22 forKeyedSubscript:v23];
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

- (void)setRegisteredLocalProvidersByIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "registeredLocalProvidersByIdentifier: %@", buf, 0xCu);
  }

  v7 = [v4 allValues];
  v8 = [(CSDCallProviderManagerDataSource *)self keychainItem];
  v12 = 0;
  [(CSDCallProviderManagerDataSource *)self _saveProviders:v7 forKeychainItem:v8 error:&v12];
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
  v3 = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = +[NSMutableDictionary dictionary];
  v5 = [(CSDCallProviderManagerDataSource *)self pairedHostKeychainItem];
  v6 = [(CSDCallProviderManagerDataSource *)self _providersForKeychainItem:v5];

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
        v15 = [v14 identifier];
        [v4 setObject:v14 forKeyedSubscript:v15];
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

- (void)setRegisteredPairedHostDeviceProvidersByIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "registeredPairedHostDeviceProvidersByIdentifier: %@", buf, 0xCu);
  }

  v7 = [v4 allValues];
  v8 = [(CSDCallProviderManagerDataSource *)self pairedHostKeychainItem];
  v11 = 0;
  [(CSDCallProviderManagerDataSource *)self _saveProviders:v7 forKeychainItem:v8 error:&v11];
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
  v2 = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(v2);

  v3 = MKBGetDeviceLockState();
  if (v3 != 1)
  {
    LOBYTE(v3) = MKBGetDeviceLockState() == 2;
  }

  return v3;
}

- (NSSet)providerIdentifiersForExistingCalls
{
  v3 = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(v3);

  providerIdentifiersForExistingCalls = self->_providerIdentifiersForExistingCalls;

  return providerIdentifiersForExistingCalls;
}

- (void)openUserActivity:(id)a3 usingApplicationWithBundleIdentifier:(id)a4 frontBoardOptions:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(v14);

  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412802;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Opening user activity %@ for bundle identifier %@ with options %@", &v20, 0x20u);
  }

  v16 = [LSApplicationRecord csd_applicationRecordForBundleIdentifier:v11];
  v17 = objc_alloc_init(_LSOpenConfiguration);
  [v17 setFrontBoardOptions:v12];
  if (v16)
  {
    v18 = +[LSApplicationWorkspace defaultWorkspace];
    [v18 openUserActivity:v10 usingApplicationRecord:v16 configuration:v17 completionHandler:v13];
  }

  else
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10047C3D0();
    }

    v18 = [NSError errorWithDomain:TUBundleIdentifierTelephonyUtilitiesFramework code:1 userInfo:0];
    v13[2](v13, 0, v18);
  }
}

- (BOOL)isSymbolicLinkAtURL:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[NSFileManager defaultManager];
  v7 = [v4 path];

  v13 = 0;
  v8 = [v6 attributesOfItemAtPath:v7 error:&v13];
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

- (id)createLinkIfNecessaryWithFilename:(id)a3 toURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDCallProviderManagerDataSource *)self ringtonesSandboxExtensionDirectory];
  v14 = 0;
  v10 = [v9 createLinkIfNecessaryWithFilename:v6 toURL:v7 error:&v14];
  v11 = v14;

  if (!v10)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = v7;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error creating link to source URL '%@' with filename '%@': %@", buf, 0x20u);
    }
  }

  return v10;
}

- (void)removeLinksForFilenamesNotInArray:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDCallProviderManagerDataSource *)self ringtonesSandboxExtensionDirectory];
  v10 = 0;
  v7 = [v6 removeLinksForFilenamesNotInArray:v4 error:&v10];
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

- (BOOL)isProviderInstalled:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 bundleIdentifier];

  if (v6)
  {
    v7 = [LSApplicationRecord csd_applicationRecordForBundleIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 applicationState];
  v9 = [v8 isInstalled];

  return v9;
}

- (void)moveExistingPreferencesToKeychain
{
  v3 = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDCallProviderManagerDataSource *)self _providersForPreferenceKey:@"registeredProviders"];
  if ([v4 count])
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found local provider data to move into keychain", buf, 2u);
    }

    v6 = [(CSDCallProviderManagerDataSource *)self keychainItem];
    v17 = 0;
    [(CSDCallProviderManagerDataSource *)self _saveProviders:v4 forKeychainItem:v6 error:&v17];
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

    v12 = [(CSDCallProviderManagerDataSource *)self pairedHostKeychainItem];
    v16 = 0;
    [(CSDCallProviderManagerDataSource *)self _saveProviders:v10 forKeychainItem:v12 error:&v16];
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

+ (id)dataForProviders:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
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
        v11 = [(CSDMessagingCallProvider *)v10 data];
        [v4 addObject:v11];
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

- (BOOL)_saveProviders:(id)a3 forKeychainItem:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(v10);

  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v8 mutableCopy];
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
  [v9 saveData:v18 error:a5];
  [(CSDCallProviderManagerDataSource *)self setSucceededAccessingKeychainOnLastAttempt:a5 == 0];
  v19 = [(CSDCallProviderManagerDataSource *)self hasSucceededAccessingKeychainOnLastAttempt];

  return v19;
}

- (id)_providersForKeychainItem:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[NSMutableArray array];
  v37 = 0;
  v7 = [v4 readDataAndReturnError:&v37];
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
      v31 = v4;
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
            v19 = [(CSDMessagingCallProvider *)v18 provider];

            if (v19)
            {
              [v6 addObject:v19];
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
            v19 = sub_100004778();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            v20 = objc_opt_class();
            *buf = 138412546;
            v39 = v20;
            v40 = 2112;
            v41 = v12;
            v21 = v20;
            v22 = v19;
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
          v4 = v31;
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

- (id)_providersForPreferenceKey:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[NSMutableArray array];
  v7 = [(CSDCallProviderManagerDataSource *)self preferencesForKeyBlock];
  v8 = (v7)[2](v7, v4);

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
      v26 = v4;
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
            v16 = [(CSDMessagingCallProvider *)v15 provider];

            if (v16)
            {
              [v6 addObject:v16];
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
            v16 = sub_100004778();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_15;
            }

            v17 = objc_opt_class();
            *buf = 138412546;
            v32 = v17;
            v33 = 2112;
            v34 = v9;
            v18 = v17;
            v19 = v16;
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

- (void)handleApplicationUnregisteredNotification:(id)a3
{
  v4 = [(CSDCallProviderManagerDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020E718;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)callsChangedForCallCenterObserver:(id)a3
{
  v4 = [(CSDCallProviderManagerDataSource *)self callCenterObserver];
  v5 = [v4 callContainer];
  v6 = [v5 currentAudioAndVideoCalls];

  v7 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v6 count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
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

        v13 = [*(*(&v19 + 1) + 8 * v12) provider];
        v14 = [v13 identifier];

        if ([v14 length])
        {
          [v7 addObject:v14];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v15 = [(CSDCallProviderManagerDataSource *)self queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10020E96C;
  v17[3] = &unk_100619D88;
  v17[4] = self;
  v18 = v7;
  v16 = v7;
  dispatch_async(v15, v17);
}

- (void)didChangeRelayCallingAvailability
{
  v3 = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDCallProviderManagerDataSource *)self delegate];
  [v4 relayCallingStateChangedForDataSource:self];
}

- (CSDCallProviderManagerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end