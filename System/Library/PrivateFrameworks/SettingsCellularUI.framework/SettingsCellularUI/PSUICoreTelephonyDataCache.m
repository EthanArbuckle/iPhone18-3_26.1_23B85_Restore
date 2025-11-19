@interface PSUICoreTelephonyDataCache
+ (PSUICoreTelephonyDataCache)sharedInstance;
- (BOOL)getInternationalDataAccessStatus;
- (BOOL)getInternationalDataAccessStatus:(id)a3;
- (BOOL)hideDataRoaming:(id)a3;
- (BOOL)isAirplaneModeEnabled;
- (BOOL)isCellularDataEnabled;
- (BOOL)isCellularUsageStatisticsEnabled;
- (BOOL)isDataFallbackEnabled;
- (BOOL)isPrivacyProxyEnabled:(id)a3;
- (BOOL)isPrivateNetworkSIM:(id)a3;
- (BOOL)isUserSubscribedToPrivacyProxy:(id)a3;
- (PSUICoreTelephonyDataCache)init;
- (id)copyStartDateOfCellularDataUsageRecords;
- (id)getDataStatus:(id)a3;
- (id)initPrivate;
- (void)airplaneModeChanged;
- (void)dataSettingsChanged:(id)a3;
- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4;
- (void)dealloc;
- (void)eraseCellularDataUsageRecords;
- (void)fetchCellularDataEnabled;
- (void)fetchCellularUsageStatisticsSetting;
- (void)fetchDataStatus;
- (void)fetchInternationalDataAccessStatus:(id)a3;
- (void)fetchPrivacyProxyStatus:(id)a3;
- (void)fetchPrivateNetworkCapabilities:(id)a3;
- (void)preferPrivateNetworkCellularOverWiFiDidChange;
- (void)simStatusDidChange:(id)a3 status:(id)a4;
- (void)willEnterForeground;
@end

@implementation PSUICoreTelephonyDataCache

+ (PSUICoreTelephonyDataCache)sharedInstance
{
  if (qword_28156A7E0 != -1)
  {
    dispatch_once(&qword_28156A7E0, &__block_literal_global_23);
  }

  v3 = _MergedGlobals_77;

  return v3;
}

uint64_t __44__PSUICoreTelephonyDataCache_sharedInstance__block_invoke()
{
  _MergedGlobals_77 = [[PSUICoreTelephonyDataCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v15.receiver = self;
  v15.super_class = PSUICoreTelephonyDataCache;
  v2 = [(PSUICoreTelephonyDataCache *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC37B0]);
    v4 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"data_cache"];
    v5 = [v3 initWithQueue:v4];
    client = v2->_client;
    v2->_client = v5;

    [(CoreTelephonyClient *)v2->_client setDelegate:v2];
    v7 = *MEMORY[0x277CBECE8];
    [(PSUICoreTelephonyDataCache *)v2 setCtConnection:_CTServerConnectionCreateOnTargetQueue()];
    [(PSUICoreTelephonyDataCache *)v2 setCellularDataSettingInitialized:0];
    [(PSUICoreTelephonyDataCache *)v2 setCellularDataSetting:0];
    [(PSUICoreTelephonyDataCache *)v2 setDataStatusDict:0];
    v8 = objc_opt_new();
    [(PSUICoreTelephonyDataCache *)v2 setIntlDataAccessStatus:v8];

    v9 = objc_alloc_init(MEMORY[0x277CEC5D0]);
    radioPreferences = v2->_radioPreferences;
    v2->_radioPreferences = v9;

    [(RadiosPreferences *)v2->_radioPreferences setNotifyForExternalChangeOnly:1];
    [(RadiosPreferences *)v2->_radioPreferences setDelegate:v2];
    [(PSUICoreTelephonyDataCache *)v2 setPrivacyProxySettingsFetched:0];
    [(PSUICoreTelephonyDataCache *)v2 privacyProxySetting];
    [(PSUICoreTelephonyDataCache *)v2 setPrivacyProxySetting:0];
    v11 = objc_opt_new();
    privateNetworkCapabilities = v2->_privateNetworkCapabilities;
    v2->_privateNetworkCapabilities = v11;

    [(PSUICoreTelephonyDataCache *)v2 setCellularStatisticsSetting:0];
    [(PSUICoreTelephonyDataCache *)v2 setCellularStatisticsSettingFetched:0];
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v2 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v2;
}

- (PSUICoreTelephonyDataCache)init
{
  v2 = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2658DE000, v2, OS_LOG_TYPE_ERROR, "Unsupported initializer called", v3, 2u);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSUICoreTelephonyDataCache;
  [(PSUICoreTelephonyDataCache *)&v4 dealloc];
}

- (void)willEnterForeground
{
  [(PSUICoreTelephonyDataCache *)self setCellularDataSettingInitialized:0];
  [(PSUICoreTelephonyDataCache *)self setCellularStatisticsSettingFetched:0];
  v3 = [(PSUICoreTelephonyDataCache *)self intlDataAccessStatus];
  [v3 removeAllObjects];

  [(PSUICoreTelephonyDataCache *)self setDataStatusDict:0];
}

- (void)fetchDataStatus
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Executing fetch for data status", buf, 2u);
  }

  v4 = [MEMORY[0x277D4D868] sharedInstance];
  v5 = [v4 subscriptionContexts];

  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v9 = *v23;
    *&v8 = 138412546;
    v19 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        client = self->_client;
        v21 = 0;
        v13 = [(CoreTelephonyClient *)client getDataStatus:v11 error:&v21, v19];
        v14 = v21;
        v15 = [(PSUICoreTelephonyDataCache *)self getLogger];
        v16 = v15;
        if (v14)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v27 = v11;
            v28 = 2112;
            v29 = v14;
            _os_log_error_impl(&dword_2658DE000, v16, OS_LOG_TYPE_ERROR, "Data status fetch failed: %@, %@", buf, 0x16u);
          }
        }

        else
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v27 = v11;
            v28 = 2112;
            v29 = v13;
            _os_log_impl(&dword_2658DE000, v16, OS_LOG_TYPE_DEFAULT, "Data status fetched succeeded: %@, %@", buf, 0x16u);
          }

          v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "slotID")}];
          [v20 setObject:v13 forKeyedSubscript:v16];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v7);
  }

  v17 = self;
  objc_sync_enter(v17);
  [(PSUICoreTelephonyDataCache *)v17 setDataStatusDict:v20];
  objc_sync_exit(v17);

  v18 = *MEMORY[0x277D85DE8];
}

- (id)getDataStatus:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyDataCache *)self dataStatusDict];

  if (!v5)
  {
    [(PSUICoreTelephonyDataCache *)self fetchDataStatus];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonyDataCache *)v6 dataStatusDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  objc_sync_exit(v6);

  return v9;
}

- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "Updating data status: %@, %@", &v12, 0x16u);
  }

  v9 = self;
  objc_sync_enter(v9);
  v10 = [(PSUICoreTelephonyDataCache *)v9 dataStatusDict];
  [v10 setObject:v7 forKeyedSubscript:v6];

  objc_sync_exit(v9);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)dataSettingsChanged:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Updating data settings: %@", buf, 0xCu);
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonyDataCache *)v6 cellularDataSetting];
  if (v7 != [(__CFString *)v4 isCellularDataEnabled])
  {
    v8 = [(PSUICoreTelephonyDataCache *)v6 getLogger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PSUICoreTelephonyDataCache *)v6 cellularDataSetting];
      v10 = [(__CFString *)v4 isCellularDataEnabled];
      v11 = @"NO";
      if (v9)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (v10)
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "Cellular data changing from %@ to %@", buf, 0x16u);
    }
  }

  [(PSUICoreTelephonyDataCache *)v6 setCellularDataSettingInitialized:0];
  objc_sync_exit(v6);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PSUICoreTelephonyDataCache_dataSettingsChanged___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v13 = *MEMORY[0x277D85DE8];
}

void __50__PSUICoreTelephonyDataCache_dataSettingsChanged___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[PSUICoreTelephonyDataCache dataSettingsChanged:]_block_invoke";
    v6 = 2112;
    v7 = @"PSCellularDataSettingChangedNotification";
    _os_log_impl(&dword_2658DE000, v1, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v4, 0x16u);
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"PSCellularDataSettingChangedNotification" object:0];

  v3 = *MEMORY[0x277D85DE8];
}

- (void)fetchInternationalDataAccessStatus:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(PSUICoreTelephonyDataCache *)v5 intlDataAccessStatus];
  v7 = [v4 instance];
  v8 = [v6 objectForKey:v7];

  objc_sync_exit(v5);
  if (!v8)
  {
    v9 = [(PSUICoreTelephonyDataCache *)v5 getLogger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "Executing fetch for international data access status", buf, 2u);
    }

    client = v5->_client;
    v19 = 0;
    v11 = [(CoreTelephonyClient *)client getInternationalDataAccessSync:v4 error:&v19];
    v12 = v19;
    v13 = [(PSUICoreTelephonyDataCache *)v5 getLogger];
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v12;
        _os_log_error_impl(&dword_2658DE000, v14, OS_LOG_TYPE_ERROR, "International data access status fetch failed: %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"NO";
        if (v11)
        {
          v15 = @"YES";
        }

        *buf = 138412290;
        v21 = v15;
        _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "Fetch for international data access status succeeded: %@", buf, 0xCu);
      }

      v14 = [(PSUICoreTelephonyDataCache *)v5 intlDataAccessStatus];
      v16 = [MEMORY[0x277CCABB0] numberWithBool:v11];
      v17 = [v4 instance];
      [v14 setObject:v16 forKey:v17];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)getInternationalDataAccessStatus
{
  if (+[SettingsCellularUtils isUIDualSIM])
  {
    v3 = [(PSUICoreTelephonyDataCache *)self getLogger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2658DE000, v3, OS_LOG_TYPE_ERROR, "Need a service descriptor, use getInternationalDataAccessStatus:", v7, 2u);
    }
  }

  v4 = +[SettingsCellularUtils singleSIMUIServiceDescriptor];
  v5 = [(PSUICoreTelephonyDataCache *)self getInternationalDataAccessStatus:v4];

  return v5;
}

- (BOOL)getInternationalDataAccessStatus:(id)a3
{
  v4 = a3;
  [(PSUICoreTelephonyDataCache *)self fetchInternationalDataAccessStatus:v4];
  v5 = [(PSUICoreTelephonyDataCache *)self intlDataAccessStatus];
  v6 = [v4 instance];

  v7 = [v5 objectForKey:v6];
  v8 = [v7 BOOLValue];

  return v8;
}

void __64__PSUICoreTelephonyDataCache_dataRoamingSettingsChanged_status___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[PSUICoreTelephonyDataCache dataRoamingSettingsChanged:status:]_block_invoke";
    v6 = 2112;
    v7 = @"PSCellularDataSettingChangedNotification";
    _os_log_impl(&dword_2658DE000, v1, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v4, 0x16u);
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"PSCellularDataSettingChangedNotification" object:0];

  v3 = *MEMORY[0x277D85DE8];
}

- (void)fetchCellularDataEnabled
{
  *&v10[5] = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PSUICoreTelephonyDataCache *)v2 cellularDataSettingInitialized];
  objc_sync_exit(v2);

  if (!v3)
  {
    v8 = [(PSUICoreTelephonyDataCache *)v2 cellularDataSetting];
    [(PSUICoreTelephonyDataCache *)v2 ctConnection];
    IsEnabled = _CTServerConnectionGetCellularDataIsEnabled();
    if (IsEnabled)
    {
      v5 = [(PSUICoreTelephonyDataCache *)v2 getLogger];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v10[0] = IsEnabled;
        LOWORD(v10[1]) = 1024;
        *(&v10[1] + 2) = HIDWORD(IsEnabled);
        _os_log_error_impl(&dword_2658DE000, v5, OS_LOG_TYPE_ERROR, "Querying cellular data is enabled setting failed %d (%d)", buf, 0xEu);
      }
    }

    else
    {
      [(PSUICoreTelephonyDataCache *)v2 setCellularDataSetting:v8];
      [(PSUICoreTelephonyDataCache *)v2 setCellularDataSettingInitialized:1];
      v5 = [(PSUICoreTelephonyDataCache *)v2 getLogger];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        if (v8)
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        *buf = 138412290;
        *v10 = v6;
        _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Cellular data is enabled is %@", buf, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCellularDataEnabled
{
  [(PSUICoreTelephonyDataCache *)self fetchCellularDataEnabled];

  return [(PSUICoreTelephonyDataCache *)self cellularDataSetting];
}

- (BOOL)isAirplaneModeEnabled
{
  v2 = [(PSUICoreTelephonyDataCache *)self radioPreferences];
  v3 = [v2 airplaneMode];

  return v3;
}

- (BOOL)isDataFallbackEnabled
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Fetching dynamic data SIM switching support", buf, 2u);
  }

  client = self->_client;
  v12 = 0;
  v5 = [(CoreTelephonyClient *)client getSupportDynamicDataSimSwitchSync:&v12];
  v6 = v12;
  v7 = [(PSUICoreTelephonyDataCache *)self getLogger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_error_impl(&dword_2658DE000, v8, OS_LOG_TYPE_ERROR, "Fetch dynamic data SIM switching failed: %@", buf, 0xCu);
    }

    LOBYTE(v5) = 0;
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v5)
    {
      v9 = @"YES";
    }

    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "Fetching dynamic data SIM switching succeeded: %@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)airplaneModeChanged
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PSUICoreTelephonyDataCache *)self radioPreferences];
    v5 = [v4 airplaneMode];
    v6 = @"NO";
    if (v5)
    {
      v6 = @"YES";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Airplane mode changed to %@", &v9, 0xCu);
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"PSCellularAirplaneModeChangedNotification" object:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchPrivacyProxyStatus:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  client = self->_client;
  v6 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v4];
  v16 = 0;
  LOWORD(v7) = [(CoreTelephonyClient *)client getPrivacyProxyState:v6 error:&v16];
  v8 = v16;

  v9 = [(PSUICoreTelephonyDataCache *)self getLogger];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_error_impl(&dword_2658DE000, v10, OS_LOG_TYPE_ERROR, "Fetch PrivacyProxy status failed: %@", buf, 0xCu);
    }

    v11 = 0;
    v7 = 0;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"NO";
      if (v7)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      if ((v7 & 0x100) != 0)
      {
        v12 = @"YES";
      }

      *buf = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, "Fetch PrivacyProxy status success, feature enabled: %@, user enabled: %@", buf, 0x16u);
    }

    v11 = v7 & 0xFF00;
    v7 = v7;
  }

  v14 = self;
  objc_sync_enter(v14);
  [(PSUICoreTelephonyDataCache *)v14 setPrivacyProxySetting:v7 | v11];
  objc_sync_exit(v14);

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)isUserSubscribedToPrivacyProxy:(id)a3
{
  v4 = a3;
  if (![(PSUICoreTelephonyDataCache *)self privacyProxySettingsFetched])
  {
    [(PSUICoreTelephonyDataCache *)self fetchPrivacyProxyStatus:v4];
  }

  v5 = [(PSUICoreTelephonyDataCache *)self privacyProxySetting];

  return v5 & 1;
}

- (BOOL)isPrivacyProxyEnabled:(id)a3
{
  v4 = a3;
  if (![(PSUICoreTelephonyDataCache *)self privacyProxySettingsFetched])
  {
    [(PSUICoreTelephonyDataCache *)self fetchPrivacyProxyStatus:v4];
  }

  v5 = ([(PSUICoreTelephonyDataCache *)self privacyProxySetting]>> 8) & 1;

  return v5;
}

- (void)fetchPrivateNetworkCapabilities:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonyDataCache *)v6 privateNetworkCapabilities];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (!v8)
  {
    client = v6->_client;
    v15 = 0;
    v10 = [(CoreTelephonyClient *)client getPrivateNetworkCapabilitiesForContext:v4 error:&v15];
    v11 = v15;
    if (v11)
    {
      v12 = [(PSUICoreTelephonyDataCache *)v6 getLogger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v11;
        _os_log_error_impl(&dword_2658DE000, v12, OS_LOG_TYPE_ERROR, "Checking Private Network capabilities failed: %@", buf, 0xCu);
      }
    }

    else
    {
      v13 = [(PSUICoreTelephonyDataCache *)v6 getLogger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "Private Network Capabilities for context slot id [%@]: %@", buf, 0x16u);
      }

      v12 = [(PSUICoreTelephonyDataCache *)v6 privateNetworkCapabilities];
      [v12 setObject:v10 forKeyedSubscript:v5];
    }
  }

  objc_sync_exit(v6);

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPrivateNetworkSIM:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CC3798] contextWithServiceDescriptor:v4];
  [(PSUICoreTelephonyDataCache *)self fetchPrivateNetworkCapabilities:v5];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonyDataCache *)v6 privateNetworkCapabilities];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "slotID")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [(PSUICoreTelephonyDataCache *)v6 privateNetworkCapabilities];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "slotID")}];
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = [v12 isPrivateNetworkSIM];
  }

  else
  {
    v13 = 0;
  }

  objc_sync_exit(v6);

  return v13;
}

- (BOOL)hideDataRoaming:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CC3798] contextWithServiceDescriptor:v4];
  [(PSUICoreTelephonyDataCache *)self fetchPrivateNetworkCapabilities:v5];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(PSUICoreTelephonyDataCache *)v6 privateNetworkCapabilities];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "slotID")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [(PSUICoreTelephonyDataCache *)v6 privateNetworkCapabilities];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "slotID")}];
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = [v12 hideDataRoaming];
  }

  else
  {
    v13 = 0;
  }

  objc_sync_exit(v6);

  return v13;
}

- (id)copyStartDateOfCellularDataUsageRecords
{
  [(PSUICoreTelephonyDataCache *)self ctConnection];
  _CTServerConnectionCopyStartDateOfCellularDataUsageRecords();
  return 0;
}

- (void)eraseCellularDataUsageRecords
{
  v2 = [(PSUICoreTelephonyDataCache *)self ctConnection];

  MEMORY[0x282113248](v2);
}

- (void)fetchCellularUsageStatisticsSetting
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PSUICoreTelephonyDataCache *)v2 cellularStatisticsSettingFetched];
  objc_sync_exit(v2);

  if (!v3)
  {
    client = v2->_client;
    v13 = 0;
    v5 = [(CoreTelephonyClient *)client usageCollectionEnabledSync:&v13];
    v6 = v13;
    if (v6)
    {
      v7 = [(PSUICoreTelephonyDataCache *)v2 getLogger];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v12 = [v6 domain];
        *buf = 138412546;
        v15 = v12;
        v16 = 2112;
        v17 = v6;
        _os_log_error_impl(&dword_2658DE000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch cellular usage statistics setting %@ (%@)", buf, 0x16u);
      }
    }

    else
    {
      v8 = [v5 BOOLValue];
      v9 = [(PSUICoreTelephonyDataCache *)v2 getLogger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = @"NO";
        if (v8)
        {
          v10 = @"YES";
        }

        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "Cellular usage statistics enabled: %@", buf, 0xCu);
      }

      [(PSUICoreTelephonyDataCache *)v2 setCellularStatisticsSetting:v8];
      [(PSUICoreTelephonyDataCache *)v2 setCellularStatisticsSettingFetched:1];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCellularUsageStatisticsEnabled
{
  [(PSUICoreTelephonyDataCache *)self fetchCellularUsageStatisticsSetting];

  return [(PSUICoreTelephonyDataCache *)self cellularStatisticsSetting];
}

void __75__PSUICoreTelephonyDataCache_setCellularUsageStatisticsEnabled_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained getLogger];

  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 48))
      {
        v12 = @"ENABLED";
      }

      else
      {
        v12 = @"DISABLED";
      }

      v13 = [v3 domain];
      v14 = 138412802;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      v18 = 2112;
      v19 = v3;
      _os_log_error_impl(&dword_2658DE000, v5, OS_LOG_TYPE_ERROR, "Failed to set cellular usage statistics to %@, error: %@ (%@)", &v14, 0x20u);
    }

    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 setCellularStatisticsSettingFetched:0];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 48))
      {
        v7 = @"ENABLED";
      }

      else
      {
        v7 = @"DISABLED";
      }

      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Successfully set cellular usage statistics to %@", &v14, 0xCu);
    }

    v8 = *(a1 + 48);
    v9 = objc_loadWeakRetained((a1 + 40));
    [v9 setCellularStatisticsSetting:v8];

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)simStatusDidChange:(id)a3 status:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "Clearing Private network SIM info for context %@", &v13, 0xCu);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "slotID")}];
  v10 = self;
  objc_sync_enter(v10);
  v11 = [(PSUICoreTelephonyDataCache *)v10 privateNetworkCapabilities];
  [v11 setObject:0 forKeyedSubscript:v9];

  objc_sync_exit(v10);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)preferPrivateNetworkCellularOverWiFiDidChange
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Clearing Private network SIM infos due to profile update", buf, 2u);
  }

  v4 = [MEMORY[0x277D4D868] sharedInstance];
  v5 = [v4 subscriptionContexts];

  v6 = self;
  objc_sync_enter(v6);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v14 + 1) + 8 * v10), "slotID", v14)}];
        v12 = [(PSUICoreTelephonyDataCache *)v6 privateNetworkCapabilities];
        [v12 setObject:0 forKeyedSubscript:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
  v13 = *MEMORY[0x277D85DE8];
}

@end