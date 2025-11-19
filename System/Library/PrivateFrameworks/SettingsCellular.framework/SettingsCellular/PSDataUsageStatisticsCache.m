@interface PSDataUsageStatisticsCache
+ (id)sharedInstance;
- (BOOL)billingCycleSupported;
- (BOOL)useCalendarMonthBillingCycle;
- (PSDataUsageStatisticsCache)init;
- (PSDataUsageStatisticsCache)initWithCoreTelephonyClient:(id)a3;
- (id)billingCycleEndDate;
- (id)bundleIDsForAppType:(unint64_t)a3;
- (id)displayNameForHotspotClientID:(id)a3;
- (id)displayNamesForBundleIDs:(id)a3 appType:(unint64_t)a4;
- (id)hotspotClientIDsForPeriod:(unint64_t)a3;
- (id)initPrivate;
- (id)previousBillingCycleEndDate;
- (id)totalHiddenAppUsageForPeriod:(unint64_t)a3;
- (id)totalSystemServicesUsageForPeriod:(unint64_t)a3;
- (id)totalUninstalledAppUsageForPeriod:(unint64_t)a3;
- (id)totalWatchOnlyAppUsageForPeriod:(unint64_t)a3;
- (id)usageForBundleID:(id)a3 inPeriod:(unint64_t)a4;
- (id)wifiAssistUsageForPeriod:(unint64_t)a3;
- (unint64_t)totalCellularUsageForPeriod:(unint64_t)a3;
- (unint64_t)totalHotspotClientUsageForPeriod:(unint64_t)a3;
- (unint64_t)totalRoamingUsageForPeriod:(unint64_t)a3;
- (unint64_t)totalSatelliteUsageForPeriod:(unint64_t)a3;
- (unint64_t)usageForHotspotClientID:(id)a3 inPeriod:(unint64_t)a4;
- (void)_clearCache;
- (void)_handleUsageOrInfoChanged;
- (void)dataRatesChanged;
- (void)dealloc;
- (void)fetchDeviceDataUsage;
- (void)fetchDeviceDataUsageWithCompletion:(id)a3;
- (void)fetchHotspotClientsUsage;
- (void)fetchWorkspaceInfo;
- (void)refreshCacheIfNeeded;
- (void)refreshDataUsageUINotification;
- (void)willEnterForeground;
@end

@implementation PSDataUsageStatisticsCache

+ (id)sharedInstance
{
  if (qword_280F75D10 != -1)
  {
    dispatch_once(&qword_280F75D10, &__block_literal_global_0);
  }

  v3 = _MergedGlobals_4;

  return v3;
}

uint64_t __44__PSDataUsageStatisticsCache_sharedInstance__block_invoke()
{
  _MergedGlobals_4 = [[PSDataUsageStatisticsCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v3 = objc_alloc(MEMORY[0x277CC37B0]);
  v4 = [SettingsCellularSharedUtils createCTClientSerialQueue:@"data_usage"];
  v5 = [v3 initWithQueue:v4];

  v6 = [(PSDataUsageStatisticsCache *)self initWithCoreTelephonyClient:v5];
  return v6;
}

- (PSDataUsageStatisticsCache)initWithCoreTelephonyClient:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PSDataUsageStatisticsCache;
  v6 = [(PSDataUsageStatisticsCache *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(PSDataUsageStatisticsCache *)v6 _clearCache];
    objc_storeStrong(&v7->_client, a3);
    [(CoreTelephonyClient *)v7->_client setDelegate:v7];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v7;
}

- (PSDataUsageStatisticsCache)init
{
  v2 = [(PSDataUsageStatisticsCache *)self getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2658CA000, v2, OS_LOG_TYPE_ERROR, "unsupported initializer called", v3, 2u);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSDataUsageStatisticsCache;
  [(PSDataUsageStatisticsCache *)&v4 dealloc];
}

- (void)willEnterForeground
{
  v3 = [(PSDataUsageStatisticsCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Re-querying usage due to entering foreground", v4, 2u);
  }

  [(PSDataUsageStatisticsCache *)self _handleUsageOrInfoChanged];
}

- (void)_clearCache
{
  v3 = [(PSDataUsageStatisticsCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Clearing data usage stats cache", v5, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  [(PSDataUsageStatisticsCache *)v4 setCachedDeviceDataUsage:0];
  [(PSDataUsageStatisticsCache *)v4 setWorkspaceInfo:0];
  [(PSDataUsageStatisticsCache *)v4 setHotspotClientsUsage:0];
  [(PSDataUsageStatisticsCache *)v4 setCacheNeedsRefresh:1];
  objc_sync_exit(v4);
}

- (void)fetchDeviceDataUsage
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(PSDataUsageStatisticsCache *)v2 refreshInProgress])
  {
    v3 = [(PSDataUsageStatisticsCache *)v2 getLogger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Refresh already in progress", buf, 2u);
    }

    objc_sync_exit(v2);
  }

  else
  {
    [(PSDataUsageStatisticsCache *)v2 setWorkspaceInfo:0];
    [(PSDataUsageStatisticsCache *)v2 setRefreshInProgress:1];
    objc_sync_exit(v2);

    v4 = [(PSDataUsageStatisticsCache *)v2 getLogger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2658CA000, v4, OS_LOG_TYPE_INFO, "Executing fetch", buf, 2u);
    }

    client = v2->_client;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__PSDataUsageStatisticsCache_fetchDeviceDataUsage__block_invoke;
    v6[3] = &unk_279BA84D0;
    v6[4] = v2;
    [(CoreTelephonyClient *)client dataUsageForLastPeriods:2 completion:v6];
  }
}

void __50__PSDataUsageStatisticsCache_fetchDeviceDataUsage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setRefreshInProgress:0];
  v7 = [*(a1 + 32) getLogger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543362;
      v17 = v6;
      _os_log_error_impl(&dword_2658CA000, v8, OS_LOG_TYPE_ERROR, "Fetch failed: %{public}@", &v16, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v5;
      _os_log_impl(&dword_2658CA000, v8, OS_LOG_TYPE_DEFAULT, "Fetch succeeded: %{public}@", &v16, 0xCu);
    }

    [*(a1 + 32) setCachedDeviceDataUsage:v5];
    [*(a1 + 32) setCacheNeedsRefresh:0];
    v9 = [*(a1 + 32) refreshCompletionHandler];

    v10 = *(a1 + 32);
    if (v9)
    {
      v11 = [v10 refreshCompletionHandler];
      v11[2]();

      [*(a1 + 32) setRefreshCompletionHandler:0];
    }

    else
    {
      v12 = [v10 getLogger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        _os_log_error_impl(&dword_2658CA000, v12, OS_LOG_TYPE_ERROR, "Missing completion handler for fetch", &v16, 2u);
      }
    }

    v8 = [MEMORY[0x277CCAB88] notificationWithName:@"PSWirelessDataUsageCacheRefreshedNotification" object:0];
    v13 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "[PSDataUsageStatisticsCache fetchDeviceDataUsage]_block_invoke";
      v18 = 2112;
      v19 = @"PSWirelessDataUsageCacheRefreshedNotification";
      _os_log_impl(&dword_2658CA000, v13, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v16, 0x16u);
    }

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 performSelectorOnMainThread:sel_postNotification_ withObject:v8 waitUntilDone:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fetchDeviceDataUsageWithCompletion:(id)a3
{
  [(PSDataUsageStatisticsCache *)self setRefreshCompletionHandler:a3];

  [(PSDataUsageStatisticsCache *)self fetchDeviceDataUsage];
}

- (void)refreshCacheIfNeeded
{
  if ([(PSDataUsageStatisticsCache *)self cacheNeedsRefresh])
  {

    [(PSDataUsageStatisticsCache *)self fetchDeviceDataUsage];
  }
}

- (void)fetchHotspotClientsUsage
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBECE8];
  v4 = WiFiManagerClientCreate();
  if (v4)
  {
    v5 = v4;
    v6 = WiFiManagerClientCopyProperty();
    [(PSDataUsageStatisticsCache *)self setHotspotClientsUsage:v6];

    v7 = [(PSDataUsageStatisticsCache *)self getLogger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(PSDataUsageStatisticsCache *)self hotspotClientsUsage];
      v11 = 138543362;
      v12 = v10;
      _os_log_debug_impl(&dword_2658CA000, v7, OS_LOG_TYPE_DEBUG, "Hotspot usage: %{public}@", &v11, 0xCu);
    }

    CFRelease(v5);
  }

  else
  {
    v8 = [(PSDataUsageStatisticsCache *)self getLogger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&dword_2658CA000, v8, OS_LOG_TYPE_ERROR, "Could not create WiFiManagerClient", &v11, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)bundleIDsForAppType:(unint64_t)a3
{
  v31 = *MEMORY[0x277D85DE8];
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  v5 = objc_opt_new();
  v6 = 0;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3uLL:
        v10 = [(PSDataUsageStatisticsCache *)self hotspotClientsUsage];

        if (!v10)
        {
          [(PSDataUsageStatisticsCache *)self fetchHotspotClientsUsage];
        }

        v7 = MEMORY[0x277CBEA60];
        v8 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
        v9 = [v8 systemServiceDataUsageForPeriod:0];
        goto LABEL_15;
      case 4uLL:
        v22 = [(PSDataUsageStatisticsCache *)self hotspotClientIDsForPeriod:0];
        goto LABEL_28;
      case 5uLL:
        v7 = MEMORY[0x277CBEA60];
        v8 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
        v9 = [v8 hiddenAppDataUsageForPeriod:0];
        goto LABEL_15;
    }
  }

  else
  {
    switch(a3)
    {
      case 0uLL:
        v7 = MEMORY[0x277CBEA60];
        v8 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
        v9 = [v8 appDataUsageForPeriod:0];
        goto LABEL_15;
      case 1uLL:
        v7 = MEMORY[0x277CBEA60];
        v8 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
        v9 = [v8 uninstalledAppDataUsageForPeriod:0];
        goto LABEL_15;
      case 2uLL:
        v7 = MEMORY[0x277CBEA60];
        v8 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
        v9 = [v8 proxiedOnlyAppDataUsageForPeriod:0];
LABEL_15:
        v11 = v9;
        v6 = [v7 arrayWithArray:v9];

        break;
    }
  }

  v25 = self;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        if (a3 == 3)
        {
          v18 = [*(*(&v26 + 1) + 8 * i) bundleId];
          v19 = [v18 isEqualToString:@"com.apple.datausage.personalhotspot"];

          if (v19)
          {
            v20 = [(PSDataUsageStatisticsCache *)v25 hotspotClientsUsage];

            if (v20)
            {
              continue;
            }
          }
        }

        v21 = [v17 bundleId];
        [v5 addObject:v21];
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v22 = [v5 allObjects];

LABEL_28:
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)displayNamesForBundleIDs:(id)a3 appType:(unint64_t)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v31 = self;
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v32 = 0;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_13;
      }

      v8 = MEMORY[0x277CBEA60];
      v9 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
      v10 = [v9 uninstalledAppDataUsageForPeriod:0];
    }

    else
    {
      v8 = MEMORY[0x277CBEA60];
      v9 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
      v10 = [v9 appDataUsageForPeriod:0];
    }
  }

  else
  {
    switch(a4)
    {
      case 2uLL:
        v8 = MEMORY[0x277CBEA60];
        v9 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
        v10 = [v9 proxiedOnlyAppDataUsageForPeriod:0];
        break;
      case 3uLL:
        v8 = MEMORY[0x277CBEA60];
        v9 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
        v10 = [v9 systemServiceDataUsageForPeriod:0];
        break;
      case 5uLL:
        v8 = MEMORY[0x277CBEA60];
        v9 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
        v10 = [v9 hiddenAppDataUsageForPeriod:0];
        break;
      default:
        goto LABEL_13;
    }
  }

  v11 = v10;
  v32 = [v8 arrayWithArray:v10];

LABEL_13:
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v6;
  v12 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    v28 = *v39;
    v29 = a4;
    do
    {
      v15 = 0;
      v30 = v13;
      do
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v38 + 1) + 8 * v15);
        if (a4 == 4)
        {
          v17 = [(PSDataUsageStatisticsCache *)v31 displayNameForHotspotClientID:*(*(&v38 + 1) + 8 * v15)];
          [v7 setObject:v17 forKey:v16];
        }

        else
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v17 = v32;
          v18 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v35;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v35 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v34 + 1) + 8 * i);
                v23 = [v22 bundleId];
                v24 = [v16 isEqualToString:v23];

                if (v24)
                {
                  v25 = [v22 displayName];
                  [v7 setObject:v25 forKey:v16];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v19);
            v14 = v28;
            a4 = v29;
            v13 = v30;
          }
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v13);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)totalWatchOnlyAppUsageForPeriod:(unint64_t)a3
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  v5 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v6 = [v5 totalProxiedOnlyAppDataUsedForPeriod:a3];

  return v6;
}

- (id)totalSystemServicesUsageForPeriod:(unint64_t)a3
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  v5 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v6 = [v5 totalSystemServiceDataUsedForPeriod:a3];

  return v6;
}

- (id)totalUninstalledAppUsageForPeriod:(unint64_t)a3
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  v5 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v6 = [v5 totalUninstalledAppDataUsedForPeriod:a3];

  return v6;
}

- (id)hotspotClientIDsForPeriod:(unint64_t)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = [(PSDataUsageStatisticsCache *)self totalHotspotClientUsageForPeriod:?];
  v6 = [(PSDataUsageStatisticsCache *)self hotspotClientsUsage];

  if (!v6)
  {
    [(PSDataUsageStatisticsCache *)self fetchHotspotClientsUsage];
  }

  v7 = objc_opt_new();
  v8 = [(PSDataUsageStatisticsCache *)self hotspotClientsUsage];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v10 = [v9 stringValue];
  v11 = [v8 objectForKeyedSubscript:v10];

  if (v11 && [v11 count])
  {
    v28 = v11;
    v29 = v5;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v11;
    v33 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    v12 = 0;
    if (v33)
    {
      v32 = *v43;
      v31 = *MEMORY[0x277D29940];
      v37 = *MEMORY[0x277D29948];
      v36 = *MEMORY[0x277D29928];
      v13 = *MEMORY[0x277D29908];
      do
      {
        v14 = 0;
        do
        {
          if (*v43 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = v14;
          v15 = [*(*(&v42 + 1) + 8 * v14) objectForKey:{v31, v28, v29}];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v35 = v15;
          v16 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v39;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v39 != v18)
                {
                  objc_enumerationMutation(v35);
                }

                v20 = *(*(&v38 + 1) + 8 * i);
                v21 = [v20 objectForKey:v37];
                v22 = [v20 objectForKey:v36];
                v23 = [v22 unsignedIntegerValue];
                v12 += v23 + [v21 unsignedIntegerValue];
                v24 = [v20 objectForKey:v13];
                [v7 addObject:v24];
              }

              v17 = [v35 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v17);
          }

          v14 = v34 + 1;
        }

        while (v34 + 1 != v33);
        v33 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v33);
    }

    v11 = v28;
    v5 = v29;
  }

  else
  {
    v12 = 0;
  }

  if (v5 > v12)
  {
    [v7 addObject:@"Others"];
  }

  if (v7)
  {
    v25 = [v7 allObjects];
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)displayNameForHotspotClientID:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSDataUsageStatisticsCache *)self hotspotClientsUsage];

  if (!v5)
  {
    [(PSDataUsageStatisticsCache *)self fetchHotspotClientsUsage];
  }

  v6 = [(PSDataUsageStatisticsCache *)self hotspotClientsUsage];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v8 = [v7 stringValue];
  v9 = [v6 objectForKeyedSubscript:v8];

  if (v9 && [v9 count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v26 = v9;
    obj = v9;
    v31 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    v10 = 0;
    if (v31)
    {
      v30 = *v37;
      v29 = *MEMORY[0x277D29940];
      v11 = *MEMORY[0x277D29908];
      v28 = *MEMORY[0x277D29920];
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [*(*(&v36 + 1) + 8 * i) objectForKey:{v29, v26}];
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v33;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v33 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v32 + 1) + 8 * j);
                v20 = [v19 objectForKey:v11];
                if ([v20 isEqualToString:v4])
                {
                  v21 = [v19 objectForKey:v28];

                  v10 = v21;
                  goto LABEL_20;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

LABEL_20:
        }

        v31 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v31);
    }

    v9 = v26;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v22 = v10;
  }

  else
  {
    v22 = v4;
  }

  v23 = v22;

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

- (unint64_t)totalHotspotClientUsageForPeriod:(unint64_t)a3
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  v5 = [(PSDataUsageStatisticsCache *)self usageForBundleID:@"com.apple.datausage.personalhotspot" inPeriod:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 native];
    v8 = [v7 cellularHome];
    v9 = [v6 native];
    v10 = [v9 cellularRoaming] + v8;
    v11 = [v6 proxied];
    v12 = [v11 cellularHome];
    v13 = [v6 proxied];
    v14 = v10 + v12 + [v13 cellularRoaming];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)usageForHotspotClientID:(id)a3 inPeriod:(unint64_t)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v6 = [(PSDataUsageStatisticsCache *)self totalHotspotClientUsageForPeriod:a4];
  v7 = [(PSDataUsageStatisticsCache *)self hotspotClientsUsage];

  if (!v7)
  {
    [(PSDataUsageStatisticsCache *)self fetchHotspotClientsUsage];
  }

  v8 = [(PSDataUsageStatisticsCache *)self hotspotClientsUsage];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v10 = [v9 stringValue];
  v11 = [v8 objectForKeyedSubscript:v10];

  if (v11 && [v11 count])
  {
    v30 = v11;
    v31 = v6;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v11;
    v35 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    v12 = 0;
    if (v35)
    {
      v36 = 0;
      v34 = *v46;
      v33 = *MEMORY[0x277D29940];
      v39 = *MEMORY[0x277D29908];
      v38 = *MEMORY[0x277D29948];
      v13 = *MEMORY[0x277D29928];
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [*(*(&v45 + 1) + 8 * i) objectForKey:v33];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v17)
          {
            v18 = v17;
            v37 = i;
            v19 = *v42;
            while (2)
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v42 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v41 + 1) + 8 * j);
                v22 = [v21 objectForKey:v39];
                v23 = [v21 objectForKey:v38];
                v24 = [v21 objectForKey:v13];
                v25 = [v24 unsignedIntegerValue];
                v12 += v25 + [v23 unsignedIntegerValue];
                if ([v22 isEqualToString:v40])
                {
                  v26 = [v24 unsignedIntegerValue];
                  v36 += v26 + [v23 unsignedIntegerValue];

                  goto LABEL_20;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v41 objects:v49 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }

LABEL_20:
            i = v37;
          }
        }

        v35 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v35);
    }

    else
    {
      v36 = 0;
    }

    v11 = v30;
    v6 = v31;
    v27 = v36;
  }

  else
  {
    v12 = 0;
    v27 = 0;
  }

  if (([v40 isEqualToString:@"Others"] & (v6 > v12)) != 0)
  {
    v27 = v6 - v12;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (id)totalHiddenAppUsageForPeriod:(unint64_t)a3
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  v5 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v6 = [v5 totalHiddenAppDataUsedForPeriod:a3];

  return v6;
}

- (id)usageForBundleID:(id)a3 inPeriod:(unint64_t)a4
{
  v87 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  v7 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v8 = [v7 appDataUsageForPeriod:a4];

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v78 objects:v86 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v79;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v79 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v78 + 1) + 8 * i);
        v15 = [v14 bundleId];
        v16 = [v6 isEqualToString:v15];

        if (v16)
        {
          v50 = [v14 used];
          v19 = v9;
          goto LABEL_52;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v78 objects:v86 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v59 = a4;
  v18 = [v17 proxiedOnlyAppDataUsageForPeriod:a4];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v74 objects:v85 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v75;
    while (2)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v75 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v74 + 1) + 8 * j);
        v25 = [v24 bundleId];
        v26 = [v6 isEqualToString:v25];

        if (v26)
        {
          v50 = [v24 used];
          v56 = v19;
          goto LABEL_51;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v74 objects:v85 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v27 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v28 = [v27 systemServiceDataUsageForPeriod:v59];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v29 = v28;
  v30 = [v29 countByEnumeratingWithState:&v70 objects:v84 count:16];
  obj = v29;
  if (v30)
  {
    v31 = v30;
    v32 = *v71;
    while (2)
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v71 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v70 + 1) + 8 * k);
        v35 = [v34 bundleId];
        v36 = [v6 isEqualToString:v35];

        if (v36)
        {
          v50 = [v34 used];
          v56 = obj;
          v46 = obj;
          goto LABEL_50;
        }
      }

      v29 = obj;
      v31 = [obj countByEnumeratingWithState:&v70 objects:v84 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  v37 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v38 = [v37 uninstalledAppDataUsageForPeriod:v59];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v60 = v38;
  v39 = [v60 countByEnumeratingWithState:&v66 objects:v83 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v67;
    while (2)
    {
      for (m = 0; m != v40; ++m)
      {
        if (*v67 != v41)
        {
          objc_enumerationMutation(v60);
        }

        v43 = *(*(&v66 + 1) + 8 * m);
        v44 = [v43 bundleId];
        v45 = [v6 isEqualToString:v44];

        if (v45)
        {
          v50 = [v43 used];
          v46 = v60;
          v49 = v60;
          goto LABEL_49;
        }
      }

      v40 = [v60 countByEnumeratingWithState:&v66 objects:v83 count:16];
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  v46 = v60;

  v47 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v48 = [v47 hiddenAppDataUsageForPeriod:v59];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v49 = v48;
  v50 = [v49 countByEnumeratingWithState:&v62 objects:v82 count:16];
  if (v50)
  {
    v51 = *v63;
    while (2)
    {
      for (n = 0; n != v50; n = n + 1)
      {
        if (*v63 != v51)
        {
          objc_enumerationMutation(v49);
        }

        v53 = *(*(&v62 + 1) + 8 * n);
        v54 = [v53 bundleId];
        v55 = [v6 isEqualToString:v54];

        if (v55)
        {
          v50 = [v53 used];
          goto LABEL_47;
        }
      }

      v50 = [v49 countByEnumeratingWithState:&v62 objects:v82 count:16];
      if (v50)
      {
        continue;
      }

      break;
    }

LABEL_47:
    v46 = v60;
  }

LABEL_49:
  v56 = obj;

LABEL_50:
LABEL_51:

LABEL_52:
  v57 = *MEMORY[0x277D85DE8];

  return v50;
}

- (id)wifiAssistUsageForPeriod:(unint64_t)a3
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  v5 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v6 = [v5 totalWifiAssistUsageForPeriod:a3];

  return v6;
}

- (unint64_t)totalCellularUsageForPeriod:(unint64_t)a3
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  v5 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v6 = [v5 totalDataUsedForPeriod:a3];

  v7 = [v6 native];
  v8 = [v7 cellularHome];
  v9 = [v6 native];
  v10 = [v9 cellularRoaming] + v8;
  v11 = [v6 proxied];
  v12 = [v11 cellularHome];
  v13 = [v6 proxied];
  v14 = v12 + [v13 cellularRoaming];

  return v10 + v14;
}

- (unint64_t)totalRoamingUsageForPeriod:(unint64_t)a3
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  v5 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v6 = [v5 totalDataUsedForPeriod:a3];

  v7 = [v6 native];
  v8 = [v7 cellularRoaming];
  v9 = [v6 proxied];
  v10 = [v9 cellularRoaming];

  return v10 + v8;
}

- (unint64_t)totalSatelliteUsageForPeriod:(unint64_t)a3
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  v5 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v6 = [v5 totalDataUsedForPeriod:a3];

  v7 = [v6 native];
  v8 = [v7 satellite];
  v9 = [v6 proxied];
  v10 = [v9 satellite];

  return v10 + v8;
}

- (void)fetchWorkspaceInfo
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(PSDataUsageStatisticsCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEBUG, "Fetching workspace info", buf, 2u);
  }

  client = self->_client;
  v9 = 0;
  v5 = [(CoreTelephonyClient *)client getCellularUsageWorkspaceInfo:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = [(PSDataUsageStatisticsCache *)self getLogger];
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_error_impl(&dword_2658CA000, &v7->super, OS_LOG_TYPE_ERROR, "Failed to get the data usage workspace information with error: %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = self;
    objc_sync_enter(v7);
    [(PSDataUsageStatisticsCache *)v7 setWorkspaceInfo:v5];
    objc_sync_exit(v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)billingCycleSupported
{
  v3 = [(PSDataUsageStatisticsCache *)self workspaceInfo];

  if (!v3)
  {
    [(PSDataUsageStatisticsCache *)self fetchWorkspaceInfo];
  }

  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PSDataUsageStatisticsCache *)v4 workspaceInfo];
  v6 = [v5 billingCycleSupported];
  v7 = [v6 BOOLValue];

  objc_sync_exit(v4);
  return v7;
}

- (BOOL)useCalendarMonthBillingCycle
{
  v3 = [(PSDataUsageStatisticsCache *)self workspaceInfo];

  if (!v3)
  {
    [(PSDataUsageStatisticsCache *)self fetchWorkspaceInfo];
  }

  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PSDataUsageStatisticsCache *)v4 workspaceInfo];
  v6 = [v5 billingCycleSupported];
  v7 = [v6 BOOLValue];

  v8 = [(PSDataUsageStatisticsCache *)v4 workspaceInfo];
  v9 = [v8 carrierSpaceSupported];
  v10 = [v9 BOOLValue];

  objc_sync_exit(v4);
  return v7 & (v10 ^ 1);
}

- (id)billingCycleEndDate
{
  v3 = [(PSDataUsageStatisticsCache *)self workspaceInfo];

  if (!v3)
  {
    [(PSDataUsageStatisticsCache *)self fetchWorkspaceInfo];
  }

  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PSDataUsageStatisticsCache *)v4 workspaceInfo];
  v6 = [v5 billingCycleEndDate];

  objc_sync_exit(v4);

  return v6;
}

- (id)previousBillingCycleEndDate
{
  v3 = [(PSDataUsageStatisticsCache *)self workspaceInfo];

  if (!v3)
  {
    [(PSDataUsageStatisticsCache *)self fetchWorkspaceInfo];
  }

  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PSDataUsageStatisticsCache *)v4 workspaceInfo];
  v6 = [v5 previousBillingCycleDate];

  objc_sync_exit(v4);

  return v6;
}

- (void)_handleUsageOrInfoChanged
{
  v11 = *MEMORY[0x277D85DE8];
  [(PSDataUsageStatisticsCache *)self _clearCache];
  v3 = [MEMORY[0x277CCAB88] notificationWithName:@"PSWirelessDataUsageChangedNotification" object:0];
  v4 = [(PSDataUsageStatisticsCache *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PSDataUsageStatisticsCache _handleUsageOrInfoChanged]";
    v9 = 2112;
    v10 = @"PSWirelessDataUsageChangedNotification";
    _os_log_impl(&dword_2658CA000, v4, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v7, 0x16u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 performSelectorOnMainThread:sel_postNotification_ withObject:v3 waitUntilDone:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)refreshDataUsageUINotification
{
  v3 = [(PSDataUsageStatisticsCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Received notification to refresh data usage UI", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__PSDataUsageStatisticsCache_refreshDataUsageUINotification__block_invoke;
  block[3] = &unk_279BA84F8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)dataRatesChanged
{
  v3 = [(PSDataUsageStatisticsCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Data Rates Changed.", v4, 2u);
  }

  [(PSDataUsageStatisticsCache *)self refreshDataUsageUINotification];
}

@end