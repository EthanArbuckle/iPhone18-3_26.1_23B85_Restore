@interface PSUI5GStandaloneCache
+ (PSUI5GStandaloneCache)sharedInstance;
- (BOOL)are5GRATModesUserInteractableForContext:(id)a3;
- (BOOL)is5GSAEnabledForContext:(id)a3;
- (BOOL)is5GSASupportedForContext:(id)a3;
- (BOOL)is5GSASwitchUserInteractableForContext:(id)a3;
- (PSUI5GStandaloneCache)init;
- (PSUI5GStandaloneCache)initWithCoreTelephonyClient:(id)a3 simStatusCache:(id)a4;
- (id)initPrivate;
- (unint64_t)getNSADisableStatusReasonMaskForContext:(id)a3;
- (unint64_t)getSADisableStatusReasonMaskForContext:(id)a3;
- (void)carrierBundleChange:(id)a3;
- (void)clearCache;
- (void)clearCacheAndRefresh;
- (void)currentDataSimChanged:(id)a3;
- (void)dealloc;
- (void)fetch5GSupportAndEnabledStatusIfNeeded;
- (void)fetchNRStatus;
- (void)notifyClientsNeedRefresh;
- (void)nrDisableStatusChanged:(id)a3 status:(id)a4;
@end

@implementation PSUI5GStandaloneCache

+ (PSUI5GStandaloneCache)sharedInstance
{
  if (qword_28156A770 != -1)
  {
    dispatch_once(&qword_28156A770, &__block_literal_global_14);
  }

  v3 = _MergedGlobals_70;

  return v3;
}

uint64_t __39__PSUI5GStandaloneCache_sharedInstance__block_invoke()
{
  _MergedGlobals_70 = [[PSUI5GStandaloneCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v3 = objc_alloc(MEMORY[0x277CC37B0]);
  v4 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"5G_SA_cache"];
  v5 = [v3 initWithQueue:v4];

  v6 = [MEMORY[0x277D4D868] sharedInstance];
  v7 = [(PSUI5GStandaloneCache *)self initWithCoreTelephonyClient:v5 simStatusCache:v6];

  return v7;
}

- (PSUI5GStandaloneCache)initWithCoreTelephonyClient:(id)a3 simStatusCache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PSUI5GStandaloneCache;
  v9 = [(PSUI5GStandaloneCache *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, a3);
    [(CoreTelephonyClient *)v10->_client setDelegate:v10];
    objc_storeStrong(&v10->_simStatusCache, a4);
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v10 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];

    [(PSUI5GStandaloneCache *)v10 clearCache];
    [(PSUI5GStandaloneCache *)v10 fetchNRStatus];
  }

  return v10;
}

- (PSUI5GStandaloneCache)init
{
  v2 = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2658DE000, v2, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called", v3, 2u);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSUI5GStandaloneCache;
  [(PSUI5GStandaloneCache *)&v4 dealloc];
}

- (BOOL)is5GSASupportedForContext:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_INFO, "5GSA Support status request for context: %@", &v16, 0xCu);
  }

  [(PSUI5GStandaloneCache *)self fetchNRStatus];
  v6 = self;
  objc_sync_enter(v6);
  NRStatusDict = v6->_NRStatusDict;
  v8 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v4];
  v9 = [v8 instance];
  v10 = [(NSMutableDictionary *)NRStatusDict objectForKeyedSubscript:v9];

  v11 = [v10 isSASwitchVisible];
  objc_sync_exit(v6);

  v12 = [(PSUI5GStandaloneCache *)v6 getLogger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = @"NOT SUPPORTED";
    if (v11)
    {
      v13 = @"SUPPORTED";
    }

    v16 = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_2658DE000, v12, OS_LOG_TYPE_INFO, "5GSA %@ for context: %@", &v16, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)is5GSAEnabledForContext:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_INFO, "5GSA Enabled status request for context: %@", &v15, 0xCu);
  }

  [(PSUI5GStandaloneCache *)self fetch5GSupportAndEnabledStatusIfNeeded];
  v6 = self;
  objc_sync_enter(v6);
  SAEnabledDict = v6->_SAEnabledDict;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[__CFString slotID](v4, "slotID")}];
  v9 = [(NSMutableDictionary *)SAEnabledDict objectForKeyedSubscript:v8];
  v10 = [v9 BOOLValue];

  objc_sync_exit(v6);
  v11 = [(PSUI5GStandaloneCache *)v6 getLogger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = @"DISABLED";
    if (v10)
    {
      v12 = @"ENABLED";
    }

    v15 = 138412546;
    v16 = v12;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_INFO, "5GSA %@ for context: %@", &v15, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)is5GSASwitchUserInteractableForContext:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_INFO, "5GSA Switch User Interactive status request for context: %@", &v16, 0xCu);
  }

  v6 = self;
  objc_sync_enter(v6);
  NRStatusDict = v6->_NRStatusDict;
  v8 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v4];
  v9 = [v8 instance];
  v10 = [(NSMutableDictionary *)NRStatusDict objectForKeyedSubscript:v9];

  v11 = [v10 isSASwitchConfigurable];
  objc_sync_exit(v6);

  v12 = [(PSUI5GStandaloneCache *)v6 getLogger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = @"NOT INTERACTABLE";
    if (v11)
    {
      v13 = @"INTERACTABLE";
    }

    v16 = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_2658DE000, v12, OS_LOG_TYPE_INFO, "5GSA Switch is User Interactive %@ for context: %@", &v16, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (unint64_t)getSADisableStatusReasonMaskForContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  NRStatusDict = v5->_NRStatusDict;
  v7 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v4];
  v8 = [v7 instance];
  v9 = [(NSMutableDictionary *)NRStatusDict objectForKeyedSubscript:v8];

  v10 = [v9 saDisabledReasonMask];
  objc_sync_exit(v5);

  v11 = [(PSUI5GStandaloneCache *)v5 getLogger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 134218242;
    v15 = v10;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_INFO, "5GSA Switch reasonMask %lu for context: %@", &v14, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)are5GRATModesUserInteractableForContext:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_INFO, "5G RAT Modes User Interactive status request for context: %@", &v16, 0xCu);
  }

  v6 = self;
  objc_sync_enter(v6);
  NRStatusDict = v6->_NRStatusDict;
  v8 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v4];
  v9 = [v8 instance];
  v10 = [(NSMutableDictionary *)NRStatusDict objectForKeyedSubscript:v9];

  v11 = [v10 are5GRATModeCellsUserInteractable];
  objc_sync_exit(v6);

  v12 = [(PSUI5GStandaloneCache *)v6 getLogger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = @"NOT INTERACTABLE";
    if (v11)
    {
      v13 = @"INTERACTABLE";
    }

    v16 = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_2658DE000, v12, OS_LOG_TYPE_INFO, "5G RAT Modes User Interactive %@ for context: %@", &v16, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (unint64_t)getNSADisableStatusReasonMaskForContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  NRStatusDict = v5->_NRStatusDict;
  v7 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v4];
  v8 = [v7 instance];
  v9 = [(NSMutableDictionary *)NRStatusDict objectForKeyedSubscript:v8];

  v10 = [v9 nsaDisabledReasonMask];
  objc_sync_exit(v5);

  v11 = [(PSUI5GStandaloneCache *)v5 getLogger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 134218242;
    v15 = v10;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_INFO, "5G NSA reasonMask %lu for context: %@", &v14, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)fetch5GSupportAndEnabledStatusIfNeeded
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  cacheNeedsRefresh = v2->_cacheNeedsRefresh;
  objc_sync_exit(v2);

  if (cacheNeedsRefresh)
  {
    v4 = [(PSUI5GStandaloneCache *)v2 getLogger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "Fetching SA Support and Enabled Status", buf, 2u);
    }

    v5 = [(PSSimStatusCache *)v2->_simStatusCache subscriptionContexts];
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v6)
    {
      v8 = *v27;
      *&v7 = 138412546;
      v22 = v7;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:{v10, v22}];
          client = v2->_client;
          v25 = 0;
          v13 = [(CoreTelephonyClient *)client getSupports5GStandalone:v11 error:&v25];
          v14 = v25;
          v15 = [v13 BOOLValue];

          v16 = [(PSUI5GStandaloneCache *)v2 getLogger];
          v17 = v16;
          if (v14)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = v22;
              v31 = v10;
              v32 = 2112;
              v33 = v14;
              _os_log_error_impl(&dword_2658DE000, v17, OS_LOG_TYPE_ERROR, "SA Support and Enabled Status Fetch failed for context: %@, %@", buf, 0x16u);
            }
          }

          else
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v22;
              v18 = @"DISABLED";
              if (v15)
              {
                v18 = @"ENABLED";
              }

              v31 = v10;
              v32 = 2112;
              v33 = v18;
              _os_log_impl(&dword_2658DE000, v17, OS_LOG_TYPE_DEFAULT, "SA Support and Enabled Status Fetch succeeded for context: %@, %@", buf, 0x16u);
            }

            v17 = [MEMORY[0x277CCABB0] numberWithBool:v15];
            v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "slotID")}];
            [v23 setObject:v17 forKeyedSubscript:v19];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v6);
    }

    v20 = v2;
    objc_sync_enter(v20);
    [(PSUI5GStandaloneCache *)v20 setSAEnabledDict:v23];
    v2->_cacheNeedsRefresh = 0;
    objc_sync_exit(v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)fetchNRStatus
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Fetching NR status", buf, 2u);
  }

  v4 = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v5)
  {
    v7 = *v26;
    *&v6 = 138412546;
    v21 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        client = self->_client;
        v11 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:{v9, v21}];
        v24 = 0;
        v12 = [(CoreTelephonyClient *)client getNRStatus:v11 error:&v24];
        v13 = v24;

        if (v13)
        {
          v14 = [(PSUI5GStandaloneCache *)self getLogger];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v30 = v9;
            v31 = 2112;
            v32 = v13;
            _os_log_error_impl(&dword_2658DE000, v14, OS_LOG_TYPE_ERROR, "NR status fetch failed for context: %@, %@", buf, 0x16u);
          }
        }

        else
        {
          v14 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v9];
          v15 = [(PSUI5GStandaloneCache *)self getLogger];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v12 isSADisabled];
            *buf = v21;
            v17 = @"SA ENABLED";
            if (v16)
            {
              v17 = @"SA DISABLED";
            }

            v30 = v9;
            v31 = 2112;
            v32 = v17;
            _os_log_impl(&dword_2658DE000, v15, OS_LOG_TYPE_DEFAULT, "NR status fetch succeeded for context: %@, %@", buf, 0x16u);
          }

          v18 = [v14 instance];
          [v22 setObject:v12 forKeyedSubscript:v18];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v5);
  }

  v19 = self;
  objc_sync_enter(v19);
  [(PSUI5GStandaloneCache *)v19 setNRStatusDict:v22];
  objc_sync_exit(v19);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)clearCache
{
  v3 = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Clearing SA Status cache", v7, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  v4->_cacheNeedsRefresh = 1;
  NRStatusDict = v4->_NRStatusDict;
  v4->_NRStatusDict = 0;

  SAEnabledDict = v4->_SAEnabledDict;
  v4->_SAEnabledDict = 0;

  objc_sync_exit(v4);
}

- (void)notifyClientsNeedRefresh
{
  v2 = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658DE000, v2, OS_LOG_TYPE_DEFAULT, "Notifying SA Cache Clients should refresh", v4, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"PSUI5GStandaloneCacheRefreshNotification" object:0];
}

- (void)clearCacheAndRefresh
{
  [(PSUI5GStandaloneCache *)self clearCache];
  [(PSUI5GStandaloneCache *)self fetchNRStatus];

  [(PSUI5GStandaloneCache *)self notifyClientsNeedRefresh];
}

- (void)nrDisableStatusChanged:(id)a3 status:(id)a4
{
  v5 = [(PSUI5GStandaloneCache *)self getLogger:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Recieved NR Disable Status Changed, updating SA Option Enabled status", v6, 2u);
  }

  [(PSUI5GStandaloneCache *)self clearCacheAndRefresh];
}

- (void)currentDataSimChanged:(id)a3
{
  v4 = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "Recieved Current Data Sim Changed, updating all info.", v5, 2u);
  }

  [(PSUI5GStandaloneCache *)self clearCacheAndRefresh];
}

- (void)carrierBundleChange:(id)a3
{
  v4 = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "Recieved Carrier Bundle Changed, updating all info.", v5, 2u);
  }

  [(PSUI5GStandaloneCache *)self clearCacheAndRefresh];
}

@end