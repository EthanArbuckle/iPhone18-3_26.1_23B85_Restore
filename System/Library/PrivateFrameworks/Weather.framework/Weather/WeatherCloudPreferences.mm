@interface WeatherCloudPreferences
- (BOOL)areCloudCities:(id)a3 equalToLocalCities:(id)a4;
- (BOOL)shouldWriteCitiesToCloud:(id)a3;
- (SynchronizedDefaultsDelegate)syncDelegate;
- (WeatherCloudPreferences)initWithLocalPreferences:(id)a3;
- (WeatherCloudPreferences)initWithLocalPreferences:(id)a3 persistence:(id)a4;
- (id)citiesByEnforcingSizeLimitOnResults:(id)a3;
- (id)prepareLocalCitiesForReconciliation:(id)a3 isInitialSync:(BOOL)a4;
- (id)reconcileCloudCities:(id)a3 withLocal:(id)a4 isInitialSync:(BOOL)a5;
- (void)cloudCitiesChangedExternally:(id)a3;
- (void)purgeLegacyCloudCities;
- (void)saveCitiesToCloud:(id)a3;
- (void)setCloudStoreCities:(id)a3;
- (void)setSyncDelegate:(id)a3;
- (void)updateLocalStoreWithRemoteChanges:(id)a3;
@end

@implementation WeatherCloudPreferences

- (WeatherCloudPreferences)initWithLocalPreferences:(id)a3
{
  v4 = a3;
  v5 = [WeatherCloudPersistence cloudPersistenceWithDelegate:self];
  v6 = [(WeatherCloudPreferences *)self initWithLocalPreferences:v4 persistence:v5];

  return v6;
}

- (WeatherCloudPreferences)initWithLocalPreferences:(id)a3 persistence:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[WeatherCloudPersistence processIsWhitelistedForSync]&& (v16.receiver = self, v16.super_class = WeatherCloudPreferences, v8 = [(WeatherCloudPreferences *)&v16 init], (self = v8) != 0))
  {
    [(WeatherCloudPreferences *)v8 setLocalPreferences:v6];
    [(WeatherCloudPreferences *)self setCloudStore:v7];
    [(WeatherCloudPreferences *)self purgeLegacyCloudCities];
    objc_opt_class();
    v9 = v7;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    [v11 setDelegate:self];
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = [(WeatherCloudPreferences *)self cloudStore];
    [v12 addObserver:self selector:sel_cloudCitiesChangedExternally_ name:@"WeatherCloudStoreChangedExternally" object:v13];

    self = self;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)purgeLegacyCloudCities
{
  v3 = [(WeatherCloudPreferences *)self cloudStore];
  v6 = [v3 objectForKey:@"CloudCities"];

  if ([v6 count])
  {
    v4 = [(WeatherCloudPreferences *)self cloudStore];
    [v4 removeObjectForKey:@"CloudCities"];

    v5 = [(WeatherCloudPreferences *)self cloudStore];
    [v5 synchronize];
  }
}

- (void)setSyncDelegate:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_syncDelegate);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_syncDelegate, v4);
    v6 = WALogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_272ACF000, v6, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] CloudPreferences setting syncDelegate to %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)citiesByEnforcingSizeLimitOnResults:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count] <= 0x14)
  {
    v6 = v3;
  }

  else
  {
    v4 = [v3 subarrayWithRange:{20, objc_msgSend(v3, "count") - 20}];
    v5 = WALogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] City list exceeds size limit after sync, dropping %@", &v9, 0xCu);
    }

    v6 = [v3 subarrayWithRange:{0, 20}];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)areCloudCities:(id)a3 equalToLocalCities:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 na_filter:&__block_literal_global_7_0];
  v7 = [v6 copy];

  v8 = [v5 na_map:&__block_literal_global_10];
  v9 = [v8 copy];

  v10 = [v9 count];
  if (v10 == [v7 count])
  {
    if ([v7 count])
    {
      v11 = 0;
      do
      {
        v12 = [v7 objectAtIndexedSubscript:v11];
        v13 = [v9 objectAtIndexedSubscript:v11];
        v14 = [v12 isDuplicateOfCity:v13];

        if ((v14 & 1) == 0)
        {
          break;
        }

        ++v11;
      }

      while (v11 < [v7 count]);
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v15 = WALogForCategory(5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = v9;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_272ACF000, v15, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] Cloud and local cities arrays are different lengths.\nConverted cloud cities: %@\nConverted local cities: %@\n", &v18, 0x16u);
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)cloudCitiesChangedExternally:(id)a3
{
  v4 = a3;
  v5 = WALogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] CloudCitiesChangedExternally received", buf, 2u);
  }

  v6 = MEMORY[0x277CBEB18];
  v7 = [(WeatherCloudPreferences *)self localPreferences];
  v8 = [v7 loadSavedCities];
  v9 = [v6 arrayWithArray:v8];

  v10 = [(WeatherCloudPreferences *)self cloudStore];
  v11 = [v10 objectForKey:@"CloudCities_v2.0"];

  v12 = [v4 userInfo];

  v13 = [v12 objectForKey:@"WeatherCloudStoreIsInitialSyncKey"];
  v14 = [v13 BOOLValue];

  v15 = [(WeatherCloudPreferences *)self reconcileCloudCities:v11 withLocal:v9 isInitialSync:v14];
  if (![(WeatherCloudPreferences *)self areCloudCities:v11 equalToLocalCities:v9]|| v14)
  {
    [(WeatherCloudPreferences *)self updateLocalStoreWithRemoteChanges:v15];
    if (v14)
    {
      [(WeatherCloudPreferences *)self saveCitiesToCloud:v15];
    }
  }

  else
  {
    v16 = WALogForCategory(5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_272ACF000, v16, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] No changes after reconciling cloud with local", v17, 2u);
    }
  }
}

- (void)updateLocalStoreWithRemoteChanges:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WALogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] Updating local store with reconciled changes: %@", &v9, 0xCu);
  }

  v6 = [(WeatherCloudPreferences *)self localPreferences];
  [v6 saveToDiskWithCities:v4 activeCity:0];

  v7 = [(WeatherCloudPreferences *)self syncDelegate];
  [v7 ubiquitousDefaultsDidChange:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)reconcileCloudCities:(id)a3 withLocal:(id)a4 isInitialSync:(BOOL)a5
{
  v5 = a5;
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = WALogForCategory(5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 na_map:&__block_literal_global_13_0];
    *buf = 138412290;
    v37 = v11;
    _os_log_impl(&dword_272ACF000, v10, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] Preparing to reconcile local data with cities from cloud: %@", buf, 0xCu);
  }

  v12 = +[WeatherInternalPreferences sharedInternalPreferences];
  v13 = [v12 BOOLForKey:@"AlwaysUseLocallyAvailableSavedCities"];

  if (v13)
  {
    v14 = WALogForCategory(5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "[WeatherKVS] AlwaysUseLocallyAvailableSavedCities = 1, drop cloud cities and use saved cities.";
LABEL_10:
      _os_log_impl(&dword_272ACF000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (!v8 && v5)
  {
    v14 = WALogForCategory(5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "[WeatherKVS] No cities present in cloud on initial sync. Keeping local cities.";
      goto LABEL_10;
    }

LABEL_11:

    v16 = v9;
    goto LABEL_28;
  }

  if (v8 || v5)
  {
    v18 = [MEMORY[0x277CBEB18] array];
    v19 = [v8 na_map:&__block_literal_global_18];
    if (v5)
    {
      v20 = [(WeatherCloudPreferences *)self prepareLocalCitiesForReconciliation:v9 isInitialSync:1];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __72__WeatherCloudPreferences_reconcileCloudCities_withLocal_isInitialSync___block_invoke_19;
      v34[3] = &unk_279E68380;
      v21 = v19;
      v35 = v21;
      [v20 na_each:v34];
      v22 = WALogForCategory(5);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v20;
        _os_log_impl(&dword_272ACF000, v22, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] Initial sync - merging data from cloud with local cities: %@", buf, 0xCu);
      }

      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __72__WeatherCloudPreferences_reconcileCloudCities_withLocal_isInitialSync___block_invoke_21;
      v32 = &unk_279E68358;
      v23 = v20;
      v33 = v23;
      v24 = [v21 na_filter:&v29];
      [v18 addObjectsFromArray:{v23, v29, v30, v31, v32}];
      [v18 addObjectsFromArray:v24];
      v25 = WALogForCategory(5);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v18;
        _os_log_impl(&dword_272ACF000, v25, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] Initial sync - merge results: %@", buf, 0xCu);
      }

      v16 = [(WeatherCloudPreferences *)self citiesByEnforcingSizeLimitOnResults:v18];
    }

    else
    {
      v26 = WALogForCategory(5);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272ACF000, v26, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] Not initial sync, so replacing local cities with list from cloud", buf, 2u);
      }

      [v18 addObjectsFromArray:v19];
      v16 = [(WeatherCloudPreferences *)self citiesByEnforcingSizeLimitOnResults:v18];
    }
  }

  else
  {
    v17 = WALogForCategory(5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272ACF000, v17, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] All cities deleted from cloud. Resetting local store to the default city list", buf, 2u);
    }

    v18 = [(WeatherCloudPreferences *)self localPreferences];
    v16 = [v18 _defaultCities];
  }

LABEL_28:
  v27 = *MEMORY[0x277D85DE8];

  return v16;
}

id __72__WeatherCloudPreferences_reconcileCloudCities_withLocal_isInitialSync___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = [CityPersistenceConversions cityFromCloudDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __72__WeatherCloudPreferences_reconcileCloudCities_withLocal_isInitialSync___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 searchTitle];

  if (!v4)
  {
    v5 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__WeatherCloudPreferences_reconcileCloudCities_withLocal_isInitialSync___block_invoke_2;
    v11[3] = &unk_279E68358;
    v6 = v3;
    v12 = v6;
    v7 = [v5 na_firstObjectPassingTest:v11];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 searchTitle];
      [v6 setSearchTitle:v9];

      v10 = [v8 searchSubtitle];
      [v6 setSearchSubtitle:v10];
    }
  }
}

BOOL __72__WeatherCloudPreferences_reconcileCloudCities_withLocal_isInitialSync___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isDuplicateOfCity:*(a1 + 32)])
  {
    v4 = [v3 searchTitle];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __72__WeatherCloudPreferences_reconcileCloudCities_withLocal_isInitialSync___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__WeatherCloudPreferences_reconcileCloudCities_withLocal_isInitialSync___block_invoke_2_22;
  v7[3] = &unk_279E68358;
  v8 = v3;
  v5 = v3;
  LODWORD(v4) = [v4 na_any:v7];

  return v4 ^ 1;
}

- (id)prepareLocalCitiesForReconciliation:(id)a3 isInitialSync:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 && (-[WeatherCloudPreferences localPreferences](self, "localPreferences"), v7 = objc_claimAutoreleasedReturnValue(), -[WeatherCloudPreferences cloudRepresentationFromCities:](self, "cloudRepresentationFromCities:", v6), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 areCitiesDefault:v8], v8, v7, (v9 & 1) != 0))
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

- (void)setCloudStoreCities:(id)a3
{
  v5 = [a3 na_filter:&__block_literal_global_28];
  v4 = [(WeatherCloudPreferences *)self cloudStore];
  [v4 setObject:v5 forKey:@"CloudCities_v2.0"];
}

- (void)saveCitiesToCloud:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [a3 na_filter:&__block_literal_global_30];
  if ([(WeatherCloudPreferences *)self shouldWriteCitiesToCloud:v4])
  {
    v5 = [(WeatherCloudPreferences *)self cloudRepresentationFromCities:v4];
    [(WeatherCloudPreferences *)self setCloudStoreCities:v5];

    v6 = [(WeatherCloudPreferences *)self cloudStore];
    [v6 synchronize];

    v7 = WALogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      v8 = "[WeatherKVS] Saved cities to cloud store: %@";
      v9 = v7;
      v10 = 12;
LABEL_6:
      _os_log_impl(&dword_272ACF000, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
    }
  }

  else
  {
    v7 = WALogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      v8 = "[WeatherKVS] Skipping cloud save request - cloud already matches local.";
      v9 = v7;
      v10 = 2;
      goto LABEL_6;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldWriteCitiesToCloud:(id)a3
{
  v4 = a3;
  v5 = [(WeatherCloudPreferences *)self localPreferences];
  v6 = [(WeatherCloudPreferences *)self cloudRepresentationFromCities:v4];
  v7 = [v5 areCitiesDefault:v6];

  if (v7)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = [(WeatherCloudPreferences *)self cloudStore];
    v10 = [v9 objectForKey:@"CloudCities_v2.0"];
    v8 = ![(WeatherCloudPreferences *)self areCloudCities:v10 equalToLocalCities:v4];
  }

  return v8;
}

- (SynchronizedDefaultsDelegate)syncDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_syncDelegate);

  return WeakRetained;
}

@end