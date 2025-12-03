@interface PSUICoreTelephonyDataCache
+ (PSUICoreTelephonyDataCache)sharedInstance;
- (BOOL)getInternationalDataAccessStatus;
- (BOOL)getInternationalDataAccessStatus:(id)status;
- (BOOL)hideDataRoaming:(id)roaming;
- (BOOL)isAirplaneModeEnabled;
- (BOOL)isCellularDataEnabled;
- (BOOL)isCellularUsageStatisticsEnabled;
- (BOOL)isDataFallbackEnabled;
- (BOOL)isPrivacyProxyEnabled:(id)enabled;
- (BOOL)isPrivateNetworkSIM:(id)m;
- (BOOL)isUserSubscribedToPrivacyProxy:(id)proxy;
- (PSUICoreTelephonyDataCache)init;
- (id)copyStartDateOfCellularDataUsageRecords;
- (id)getDataStatus:(id)status;
- (id)initPrivate;
- (void)airplaneModeChanged;
- (void)dataSettingsChanged:(id)changed;
- (void)dataStatus:(id)status dataStatusInfo:(id)info;
- (void)dealloc;
- (void)eraseCellularDataUsageRecords;
- (void)fetchCellularDataEnabled;
- (void)fetchCellularUsageStatisticsSetting;
- (void)fetchDataStatus;
- (void)fetchInternationalDataAccessStatus:(id)status;
- (void)fetchPrivacyProxyStatus:(id)status;
- (void)fetchPrivateNetworkCapabilities:(id)capabilities;
- (void)preferPrivateNetworkCellularOverWiFiDidChange;
- (void)simStatusDidChange:(id)change status:(id)status;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v2;
}

- (PSUICoreTelephonyDataCache)init
{
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Unsupported initializer called", v3, 2u);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSUICoreTelephonyDataCache;
  [(PSUICoreTelephonyDataCache *)&v4 dealloc];
}

- (void)willEnterForeground
{
  [(PSUICoreTelephonyDataCache *)self setCellularDataSettingInitialized:0];
  [(PSUICoreTelephonyDataCache *)self setCellularStatisticsSettingFetched:0];
  intlDataAccessStatus = [(PSUICoreTelephonyDataCache *)self intlDataAccessStatus];
  [intlDataAccessStatus removeAllObjects];

  [(PSUICoreTelephonyDataCache *)self setDataStatusDict:0];
}

- (void)fetchDataStatus
{
  v31 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Executing fetch for data status", buf, 2u);
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionContexts = [mEMORY[0x277D4D868] subscriptionContexts];

  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = subscriptionContexts;
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
        getLogger2 = [(PSUICoreTelephonyDataCache *)self getLogger];
        v16 = getLogger2;
        if (v14)
        {
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
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
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonyDataCache *)selfCopy setDataStatusDict:v20];
  objc_sync_exit(selfCopy);

  v18 = *MEMORY[0x277D85DE8];
}

- (id)getDataStatus:(id)status
{
  statusCopy = status;
  dataStatusDict = [(PSUICoreTelephonyDataCache *)self dataStatusDict];

  if (!dataStatusDict)
  {
    [(PSUICoreTelephonyDataCache *)self fetchDataStatus];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  dataStatusDict2 = [(PSUICoreTelephonyDataCache *)selfCopy dataStatusDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(statusCopy, "slotID")}];
  v9 = [dataStatusDict2 objectForKeyedSubscript:v8];

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)dataStatus:(id)status dataStatusInfo:(id)info
{
  v16 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  infoCopy = info;
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = statusCopy;
    v14 = 2112;
    v15 = infoCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Updating data status: %@, %@", &v12, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  dataStatusDict = [(PSUICoreTelephonyDataCache *)selfCopy dataStatusDict];
  [dataStatusDict setObject:infoCopy forKeyedSubscript:statusCopy];

  objc_sync_exit(selfCopy);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)dataSettingsChanged:(id)changed
{
  v19 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = changedCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Updating data settings: %@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  cellularDataSetting = [(PSUICoreTelephonyDataCache *)selfCopy cellularDataSetting];
  if (cellularDataSetting != [(__CFString *)changedCopy isCellularDataEnabled])
  {
    getLogger2 = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      cellularDataSetting2 = [(PSUICoreTelephonyDataCache *)selfCopy cellularDataSetting];
      isCellularDataEnabled = [(__CFString *)changedCopy isCellularDataEnabled];
      v11 = @"NO";
      if (cellularDataSetting2)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (isCellularDataEnabled)
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Cellular data changing from %@ to %@", buf, 0x16u);
    }
  }

  [(PSUICoreTelephonyDataCache *)selfCopy setCellularDataSettingInitialized:0];
  objc_sync_exit(selfCopy);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PSUICoreTelephonyDataCache_dataSettingsChanged___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = selfCopy;
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

- (void)fetchInternationalDataAccessStatus:(id)status
{
  v22 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  intlDataAccessStatus = [(PSUICoreTelephonyDataCache *)selfCopy intlDataAccessStatus];
  instance = [statusCopy instance];
  v8 = [intlDataAccessStatus objectForKey:instance];

  objc_sync_exit(selfCopy);
  if (!v8)
  {
    getLogger = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Executing fetch for international data access status", buf, 2u);
    }

    client = selfCopy->_client;
    v19 = 0;
    v11 = [(CoreTelephonyClient *)client getInternationalDataAccessSync:statusCopy error:&v19];
    v12 = v19;
    getLogger2 = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
    intlDataAccessStatus2 = getLogger2;
    if (v12)
    {
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v12;
        _os_log_error_impl(&dword_2658DE000, intlDataAccessStatus2, OS_LOG_TYPE_ERROR, "International data access status fetch failed: %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"NO";
        if (v11)
        {
          v15 = @"YES";
        }

        *buf = 138412290;
        v21 = v15;
        _os_log_impl(&dword_2658DE000, intlDataAccessStatus2, OS_LOG_TYPE_DEFAULT, "Fetch for international data access status succeeded: %@", buf, 0xCu);
      }

      intlDataAccessStatus2 = [(PSUICoreTelephonyDataCache *)selfCopy intlDataAccessStatus];
      v16 = [MEMORY[0x277CCABB0] numberWithBool:v11];
      instance2 = [statusCopy instance];
      [intlDataAccessStatus2 setObject:v16 forKey:instance2];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)getInternationalDataAccessStatus
{
  if (+[SettingsCellularUtils isUIDualSIM])
  {
    getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Need a service descriptor, use getInternationalDataAccessStatus:", v7, 2u);
    }
  }

  v4 = +[SettingsCellularUtils singleSIMUIServiceDescriptor];
  v5 = [(PSUICoreTelephonyDataCache *)self getInternationalDataAccessStatus:v4];

  return v5;
}

- (BOOL)getInternationalDataAccessStatus:(id)status
{
  statusCopy = status;
  [(PSUICoreTelephonyDataCache *)self fetchInternationalDataAccessStatus:statusCopy];
  intlDataAccessStatus = [(PSUICoreTelephonyDataCache *)self intlDataAccessStatus];
  instance = [statusCopy instance];

  v7 = [intlDataAccessStatus objectForKey:instance];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cellularDataSettingInitialized = [(PSUICoreTelephonyDataCache *)selfCopy cellularDataSettingInitialized];
  objc_sync_exit(selfCopy);

  if (!cellularDataSettingInitialized)
  {
    cellularDataSetting = [(PSUICoreTelephonyDataCache *)selfCopy cellularDataSetting];
    [(PSUICoreTelephonyDataCache *)selfCopy ctConnection];
    IsEnabled = _CTServerConnectionGetCellularDataIsEnabled();
    if (IsEnabled)
    {
      getLogger = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v10[0] = IsEnabled;
        LOWORD(v10[1]) = 1024;
        *(&v10[1] + 2) = HIDWORD(IsEnabled);
        _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Querying cellular data is enabled setting failed %d (%d)", buf, 0xEu);
      }
    }

    else
    {
      [(PSUICoreTelephonyDataCache *)selfCopy setCellularDataSetting:cellularDataSetting];
      [(PSUICoreTelephonyDataCache *)selfCopy setCellularDataSettingInitialized:1];
      getLogger = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
      {
        if (cellularDataSetting)
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        *buf = 138412290;
        *v10 = v6;
        _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Cellular data is enabled is %@", buf, 0xCu);
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
  radioPreferences = [(PSUICoreTelephonyDataCache *)self radioPreferences];
  airplaneMode = [radioPreferences airplaneMode];

  return airplaneMode;
}

- (BOOL)isDataFallbackEnabled
{
  v15 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Fetching dynamic data SIM switching support", buf, 2u);
  }

  client = self->_client;
  v12 = 0;
  v5 = [(CoreTelephonyClient *)client getSupportDynamicDataSimSwitchSync:&v12];
  v6 = v12;
  getLogger2 = [(PSUICoreTelephonyDataCache *)self getLogger];
  v8 = getLogger2;
  if (v6)
  {
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_error_impl(&dword_2658DE000, v8, OS_LOG_TYPE_ERROR, "Fetch dynamic data SIM switching failed: %@", buf, 0xCu);
    }

    LOBYTE(v5) = 0;
  }

  else if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
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
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    radioPreferences = [(PSUICoreTelephonyDataCache *)self radioPreferences];
    airplaneMode = [radioPreferences airplaneMode];
    v6 = @"NO";
    if (airplaneMode)
    {
      v6 = @"YES";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Airplane mode changed to %@", &v9, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"PSCellularAirplaneModeChangedNotification" object:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchPrivacyProxyStatus:(id)status
{
  v21 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  client = self->_client;
  v6 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:statusCopy];
  v16 = 0;
  LOWORD(v7) = [(CoreTelephonyClient *)client getPrivacyProxyState:v6 error:&v16];
  v8 = v16;

  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  v10 = getLogger;
  if (v8)
  {
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
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
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonyDataCache *)selfCopy setPrivacyProxySetting:v7 | v11];
  objc_sync_exit(selfCopy);

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)isUserSubscribedToPrivacyProxy:(id)proxy
{
  proxyCopy = proxy;
  if (![(PSUICoreTelephonyDataCache *)self privacyProxySettingsFetched])
  {
    [(PSUICoreTelephonyDataCache *)self fetchPrivacyProxyStatus:proxyCopy];
  }

  privacyProxySetting = [(PSUICoreTelephonyDataCache *)self privacyProxySetting];

  return privacyProxySetting & 1;
}

- (BOOL)isPrivacyProxyEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (![(PSUICoreTelephonyDataCache *)self privacyProxySettingsFetched])
  {
    [(PSUICoreTelephonyDataCache *)self fetchPrivacyProxyStatus:enabledCopy];
  }

  v5 = ([(PSUICoreTelephonyDataCache *)self privacyProxySetting]>> 8) & 1;

  return v5;
}

- (void)fetchPrivateNetworkCapabilities:(id)capabilities
{
  v20 = *MEMORY[0x277D85DE8];
  capabilitiesCopy = capabilities;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(capabilitiesCopy, "slotID")}];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  privateNetworkCapabilities = [(PSUICoreTelephonyDataCache *)selfCopy privateNetworkCapabilities];
  v8 = [privateNetworkCapabilities objectForKeyedSubscript:v5];

  if (!v8)
  {
    client = selfCopy->_client;
    v15 = 0;
    v10 = [(CoreTelephonyClient *)client getPrivateNetworkCapabilitiesForContext:capabilitiesCopy error:&v15];
    v11 = v15;
    if (v11)
    {
      getLogger = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v11;
        _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Checking Private Network capabilities failed: %@", buf, 0xCu);
      }
    }

    else
    {
      getLogger2 = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Private Network Capabilities for context slot id [%@]: %@", buf, 0x16u);
      }

      getLogger = [(PSUICoreTelephonyDataCache *)selfCopy privateNetworkCapabilities];
      [getLogger setObject:v10 forKeyedSubscript:v5];
    }
  }

  objc_sync_exit(selfCopy);

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPrivateNetworkSIM:(id)m
{
  mCopy = m;
  v5 = [MEMORY[0x277CC3798] contextWithServiceDescriptor:mCopy];
  [(PSUICoreTelephonyDataCache *)self fetchPrivateNetworkCapabilities:v5];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  privateNetworkCapabilities = [(PSUICoreTelephonyDataCache *)selfCopy privateNetworkCapabilities];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "slotID")}];
  v9 = [privateNetworkCapabilities objectForKeyedSubscript:v8];

  if (v9)
  {
    privateNetworkCapabilities2 = [(PSUICoreTelephonyDataCache *)selfCopy privateNetworkCapabilities];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "slotID")}];
    v12 = [privateNetworkCapabilities2 objectForKeyedSubscript:v11];
    isPrivateNetworkSIM = [v12 isPrivateNetworkSIM];
  }

  else
  {
    isPrivateNetworkSIM = 0;
  }

  objc_sync_exit(selfCopy);

  return isPrivateNetworkSIM;
}

- (BOOL)hideDataRoaming:(id)roaming
{
  roamingCopy = roaming;
  v5 = [MEMORY[0x277CC3798] contextWithServiceDescriptor:roamingCopy];
  [(PSUICoreTelephonyDataCache *)self fetchPrivateNetworkCapabilities:v5];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  privateNetworkCapabilities = [(PSUICoreTelephonyDataCache *)selfCopy privateNetworkCapabilities];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "slotID")}];
  v9 = [privateNetworkCapabilities objectForKeyedSubscript:v8];

  if (v9)
  {
    privateNetworkCapabilities2 = [(PSUICoreTelephonyDataCache *)selfCopy privateNetworkCapabilities];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "slotID")}];
    v12 = [privateNetworkCapabilities2 objectForKeyedSubscript:v11];
    hideDataRoaming = [v12 hideDataRoaming];
  }

  else
  {
    hideDataRoaming = 0;
  }

  objc_sync_exit(selfCopy);

  return hideDataRoaming;
}

- (id)copyStartDateOfCellularDataUsageRecords
{
  [(PSUICoreTelephonyDataCache *)self ctConnection];
  _CTServerConnectionCopyStartDateOfCellularDataUsageRecords();
  return 0;
}

- (void)eraseCellularDataUsageRecords
{
  ctConnection = [(PSUICoreTelephonyDataCache *)self ctConnection];

  MEMORY[0x282113248](ctConnection);
}

- (void)fetchCellularUsageStatisticsSetting
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cellularStatisticsSettingFetched = [(PSUICoreTelephonyDataCache *)selfCopy cellularStatisticsSettingFetched];
  objc_sync_exit(selfCopy);

  if (!cellularStatisticsSettingFetched)
  {
    client = selfCopy->_client;
    v13 = 0;
    v5 = [(CoreTelephonyClient *)client usageCollectionEnabledSync:&v13];
    v6 = v13;
    if (v6)
    {
      getLogger = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
      {
        domain = [v6 domain];
        *buf = 138412546;
        v15 = domain;
        v16 = 2112;
        v17 = v6;
        _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Failed to fetch cellular usage statistics setting %@ (%@)", buf, 0x16u);
      }
    }

    else
    {
      bOOLValue = [v5 BOOLValue];
      getLogger2 = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        v10 = @"NO";
        if (bOOLValue)
        {
          v10 = @"YES";
        }

        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Cellular usage statistics enabled: %@", buf, 0xCu);
      }

      [(PSUICoreTelephonyDataCache *)selfCopy setCellularStatisticsSetting:bOOLValue];
      [(PSUICoreTelephonyDataCache *)selfCopy setCellularStatisticsSettingFetched:1];
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

- (void)simStatusDidChange:(id)change status:(id)status
{
  v15 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  statusCopy = status;
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = changeCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Clearing Private network SIM info for context %@", &v13, 0xCu);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(changeCopy, "slotID")}];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  privateNetworkCapabilities = [(PSUICoreTelephonyDataCache *)selfCopy privateNetworkCapabilities];
  [privateNetworkCapabilities setObject:0 forKeyedSubscript:v9];

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)preferPrivateNetworkCellularOverWiFiDidChange
{
  v20 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Clearing Private network SIM infos due to profile update", buf, 2u);
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionContexts = [mEMORY[0x277D4D868] subscriptionContexts];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = subscriptionContexts;
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
        privateNetworkCapabilities = [(PSUICoreTelephonyDataCache *)selfCopy privateNetworkCapabilities];
        [privateNetworkCapabilities setObject:0 forKeyedSubscript:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);
  v13 = *MEMORY[0x277D85DE8];
}

@end