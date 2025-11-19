@interface SPSettingsConfiguration
- (NSDate)beaconZoneCreationDate;
- (NSDate)lastKeyRollDate;
- (NSNumber)beaconZoneCreationErrorCode;
- (NSSet)serviceDisabledReasons;
- (NSString)serviceState;
- (SPBeaconManagerXPCProtocol)proxy;
- (SPSettingsConfiguration)init;
- (id)serviceSettingsChangedNotificationToken;
- (id)serviceSettingsConfiguration;
- (void)_invalidate;
- (void)beginRefreshingServiceStateWithBlock:(id)a3;
- (void)dealloc;
- (void)setServiceState:(id)a3 completion:(id)a4;
@end

@implementation SPSettingsConfiguration

- (NSDate)beaconZoneCreationDate
{
  v2 = [(SPSettingsConfiguration *)self sharedDefaults];
  v3 = [v2 objectForKey:@"SPBeaconZoneCreationDateKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSNumber)beaconZoneCreationErrorCode
{
  v2 = [(SPSettingsConfiguration *)self sharedDefaults];
  v3 = [v2 objectForKey:@"SPBeaconZoneCreationDateKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)lastKeyRollDate
{
  v2 = [(SPSettingsConfiguration *)self sharedDefaults];
  v3 = [v2 objectForKey:@"SPLastKeyRollDateKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)serviceSettingsConfiguration
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/db/searchparty/daemon/savedConfiguration.plist" isDirectory:1];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v2 error:0];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [v3 objectForKeyedSubscript:{@"configurations", 0}];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 objectForKeyedSubscript:@"source"];
          if ([v10 isEqualToString:@"serviceSettings"])
          {
            v11 = v9;

            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (SPSettingsConfiguration)init
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = SPSettingsConfiguration;
  v2 = [(SPSettingsConfiguration *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.icloud.searchpartyd.settingsconfiguration", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v6;

    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606B50];
    v9 = [objc_alloc(MEMORY[0x277D07BA0]) initWithMachServiceName:@"com.apple.icloud.searchpartyd.beaconmanager" options:0 remoteObjectInterface:v8 interruptionHandler:0 invalidationHandler:0];
    serviceDescription = v2->_serviceDescription;
    v2->_serviceDescription = v9;

    v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"systemgroup.com.apple.icloud.searchpartyd.sharedsettings"];
    sharedDefaults = v2->_sharedDefaults;
    v2->_sharedDefaults = v11;

    v13 = LogCategory_ServiceState();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v2;
      _os_log_impl(&dword_2643D0000, v13, OS_LOG_TYPE_DEFAULT, "SPSettingsConfiguration: Created %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = LogCategory_ServiceState();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPSettingsConfiguration: Dealloc %@", buf, 0xCu);
  }

  [(SPSettingsConfiguration *)self _invalidate];
  v5.receiver = self;
  v5.super_class = SPSettingsConfiguration;
  [(SPSettingsConfiguration *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  v3 = [(SPSettingsConfiguration *)self session];
  [v3 invalidate];

  [(SPSettingsConfiguration *)self setSession:0];
  v5 = [(SPSettingsConfiguration *)self serviceSettingsChangedNotificationToken];
  [(SPSettingsConfiguration *)self setServiceSettingsChangedNotificationToken:0];
  if (v5)
  {
    [(SPSettingsConfiguration *)self fm_removeNotificationBlockObserver:v5];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.icloud.searchparty.ServiceSettingsChanged", 0);
}

- (void)beginRefreshingServiceStateWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(SPSettingsConfiguration *)self serviceSettingsChangedNotificationToken];

  if (v5)
  {
    v6 = LogCategory_ServiceState();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "beginRefreshingServiceStateWithBlock: already started.", buf, 2u);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__SPSettingsConfiguration_beginRefreshingServiceStateWithBlock___block_invoke;
    block[3] = &unk_279B58AE8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__SPSettingsConfiguration_beginRefreshingServiceStateWithBlock___block_invoke_2;
    aBlock[3] = &unk_279B59398;
    aBlock[4] = self;
    v18 = v4;
    v7 = _Block_copy(aBlock);
    v8 = SPServiceSettingsChangedLocalNotification;
    v9 = [(SPSettingsConfiguration *)self notificationQueue];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __64__SPSettingsConfiguration_beginRefreshingServiceStateWithBlock___block_invoke_3;
    v15 = &unk_279B5A7B0;
    v16 = v7;
    v10 = v7;
    v11 = [(SPSettingsConfiguration *)self fm_addNotificationBlockObserverForName:v8 object:self queue:v9 usingBlock:&v12];
    [(SPSettingsConfiguration *)self setServiceSettingsChangedNotificationToken:v11, v12, v13, v14, v15];

    v10[2](v10);
  }
}

void __64__SPSettingsConfiguration_beginRefreshingServiceStateWithBlock___block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, serviceSettingsChangedTrampoline, @"com.apple.icloud.searchparty.ServiceSettingsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void __64__SPSettingsConfiguration_beginRefreshingServiceStateWithBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) serviceState];
  v3 = [*(a1 + 32) serviceDisabledReasons];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)setServiceState:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPSettingsConfiguration *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__SPSettingsConfiguration_setServiceState_completion___block_invoke;
  v11[3] = &unk_279B58BA8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __54__SPSettingsConfiguration_setServiceState_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 setServiceState:*(a1 + 32) completion:*(a1 + 40)];
}

- (NSString)serviceState
{
  v2 = [(SPSettingsConfiguration *)self sharedDefaults];
  v3 = [v2 stringForKey:@"SPSettingsServiceStateKey"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"SPServiceStateEnabled";
  }

  v6 = v5;

  return &v5->isa;
}

- (NSSet)serviceDisabledReasons
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(SPSettingsConfiguration *)self sharedDefaults];
  v4 = [v3 arrayForKey:@"SPSettingsServiceDisabledReasonsKey"];
  v5 = [v2 setWithArray:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

- (SPBeaconManagerXPCProtocol)proxy
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SPSettingsConfiguration *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SPSettingsConfiguration *)self session];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    v6 = [(SPSettingsConfiguration *)self serviceDescription];
    v7 = [v5 initWithServiceDescription:v6];
    [(SPSettingsConfiguration *)self setSession:v7];

    v8 = LogCategory_ServiceState();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(SPSettingsConfiguration *)self serviceDescription];
      v10 = [v9 machService];
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPSettingsConfiguration: Establishing XPC connection to %@", &v16, 0xCu);
    }

    v11 = [(SPSettingsConfiguration *)self session];
    [v11 resume];
  }

  v12 = [(SPSettingsConfiguration *)self session];
  v13 = [v12 proxy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)serviceSettingsChangedNotificationToken
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceSettingsChangedNotificationToken);

  return WeakRetained;
}

@end