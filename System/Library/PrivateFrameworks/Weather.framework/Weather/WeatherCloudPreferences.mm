@interface WeatherCloudPreferences
- (BOOL)areCloudCities:(id)cities equalToLocalCities:(id)localCities;
- (BOOL)shouldWriteCitiesToCloud:(id)cloud;
- (SynchronizedDefaultsDelegate)syncDelegate;
- (WeatherCloudPreferences)initWithLocalPreferences:(id)preferences;
- (WeatherCloudPreferences)initWithLocalPreferences:(id)preferences persistence:(id)persistence;
- (id)citiesByEnforcingSizeLimitOnResults:(id)results;
- (id)prepareLocalCitiesForReconciliation:(id)reconciliation isInitialSync:(BOOL)sync;
- (id)reconcileCloudCities:(id)cities withLocal:(id)local isInitialSync:(BOOL)sync;
- (void)cloudCitiesChangedExternally:(id)externally;
- (void)purgeLegacyCloudCities;
- (void)saveCitiesToCloud:(id)cloud;
- (void)setCloudStoreCities:(id)cities;
- (void)setSyncDelegate:(id)delegate;
- (void)updateLocalStoreWithRemoteChanges:(id)changes;
@end

@implementation WeatherCloudPreferences

- (WeatherCloudPreferences)initWithLocalPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = [WeatherCloudPersistence cloudPersistenceWithDelegate:self];
  v6 = [(WeatherCloudPreferences *)self initWithLocalPreferences:preferencesCopy persistence:v5];

  return v6;
}

- (WeatherCloudPreferences)initWithLocalPreferences:(id)preferences persistence:(id)persistence
{
  preferencesCopy = preferences;
  persistenceCopy = persistence;
  if (+[WeatherCloudPersistence processIsWhitelistedForSync]&& (v16.receiver = self, v16.super_class = WeatherCloudPreferences, v8 = [(WeatherCloudPreferences *)&v16 init], (self = v8) != 0))
  {
    [(WeatherCloudPreferences *)v8 setLocalPreferences:preferencesCopy];
    [(WeatherCloudPreferences *)self setCloudStore:persistenceCopy];
    [(WeatherCloudPreferences *)self purgeLegacyCloudCities];
    objc_opt_class();
    v9 = persistenceCopy;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    cloudStore = [(WeatherCloudPreferences *)self cloudStore];
    [defaultCenter addObserver:self selector:sel_cloudCitiesChangedExternally_ name:@"WeatherCloudStoreChangedExternally" object:cloudStore];

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)purgeLegacyCloudCities
{
  cloudStore = [(WeatherCloudPreferences *)self cloudStore];
  v6 = [cloudStore objectForKey:@"CloudCities"];

  if ([v6 count])
  {
    cloudStore2 = [(WeatherCloudPreferences *)self cloudStore];
    [cloudStore2 removeObjectForKey:@"CloudCities"];

    cloudStore3 = [(WeatherCloudPreferences *)self cloudStore];
    [cloudStore3 synchronize];
  }
}

- (void)setSyncDelegate:(id)delegate
{
  v10 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_syncDelegate);

  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_syncDelegate, delegateCopy);
    v6 = WALogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = delegateCopy;
      _os_log_impl(&dword_272ACF000, v6, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] CloudPreferences setting syncDelegate to %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)citiesByEnforcingSizeLimitOnResults:(id)results
{
  v11 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  if ([resultsCopy count] <= 0x14)
  {
    v6 = resultsCopy;
  }

  else
  {
    v4 = [resultsCopy subarrayWithRange:{20, objc_msgSend(resultsCopy, "count") - 20}];
    v5 = WALogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] City list exceeds size limit after sync, dropping %@", &v9, 0xCu);
    }

    v6 = [resultsCopy subarrayWithRange:{0, 20}];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)areCloudCities:(id)cities equalToLocalCities:(id)localCities
{
  v22 = *MEMORY[0x277D85DE8];
  citiesCopy = cities;
  v6 = [localCities na_filter:&__block_literal_global_7_0];
  v7 = [v6 copy];

  v8 = [citiesCopy na_map:&__block_literal_global_10];
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

- (void)cloudCitiesChangedExternally:(id)externally
{
  externallyCopy = externally;
  v5 = WALogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] CloudCitiesChangedExternally received", buf, 2u);
  }

  v6 = MEMORY[0x277CBEB18];
  localPreferences = [(WeatherCloudPreferences *)self localPreferences];
  loadSavedCities = [localPreferences loadSavedCities];
  v9 = [v6 arrayWithArray:loadSavedCities];

  cloudStore = [(WeatherCloudPreferences *)self cloudStore];
  v11 = [cloudStore objectForKey:@"CloudCities_v2.0"];

  userInfo = [externallyCopy userInfo];

  v13 = [userInfo objectForKey:@"WeatherCloudStoreIsInitialSyncKey"];
  bOOLValue = [v13 BOOLValue];

  v15 = [(WeatherCloudPreferences *)self reconcileCloudCities:v11 withLocal:v9 isInitialSync:bOOLValue];
  if (![(WeatherCloudPreferences *)self areCloudCities:v11 equalToLocalCities:v9]|| bOOLValue)
  {
    [(WeatherCloudPreferences *)self updateLocalStoreWithRemoteChanges:v15];
    if (bOOLValue)
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

- (void)updateLocalStoreWithRemoteChanges:(id)changes
{
  v11 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v5 = WALogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = changesCopy;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] Updating local store with reconciled changes: %@", &v9, 0xCu);
  }

  localPreferences = [(WeatherCloudPreferences *)self localPreferences];
  [localPreferences saveToDiskWithCities:changesCopy activeCity:0];

  syncDelegate = [(WeatherCloudPreferences *)self syncDelegate];
  [syncDelegate ubiquitousDefaultsDidChange:changesCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)reconcileCloudCities:(id)cities withLocal:(id)local isInitialSync:(BOOL)sync
{
  syncCopy = sync;
  v38 = *MEMORY[0x277D85DE8];
  citiesCopy = cities;
  localCopy = local;
  v10 = WALogForCategory(5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [citiesCopy na_map:&__block_literal_global_13_0];
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

  if (!citiesCopy && syncCopy)
  {
    v14 = WALogForCategory(5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "[WeatherKVS] No cities present in cloud on initial sync. Keeping local cities.";
      goto LABEL_10;
    }

LABEL_11:

    _defaultCities = localCopy;
    goto LABEL_28;
  }

  if (citiesCopy || syncCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v19 = [citiesCopy na_map:&__block_literal_global_18];
    if (syncCopy)
    {
      v20 = [(WeatherCloudPreferences *)self prepareLocalCitiesForReconciliation:localCopy isInitialSync:1];
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
      [array addObjectsFromArray:{v23, v29, v30, v31, v32}];
      [array addObjectsFromArray:v24];
      v25 = WALogForCategory(5);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = array;
        _os_log_impl(&dword_272ACF000, v25, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] Initial sync - merge results: %@", buf, 0xCu);
      }

      _defaultCities = [(WeatherCloudPreferences *)self citiesByEnforcingSizeLimitOnResults:array];
    }

    else
    {
      v26 = WALogForCategory(5);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272ACF000, v26, OS_LOG_TYPE_DEFAULT, "[WeatherKVS] Not initial sync, so replacing local cities with list from cloud", buf, 2u);
      }

      [array addObjectsFromArray:v19];
      _defaultCities = [(WeatherCloudPreferences *)self citiesByEnforcingSizeLimitOnResults:array];
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

    array = [(WeatherCloudPreferences *)self localPreferences];
    _defaultCities = [array _defaultCities];
  }

LABEL_28:
  v27 = *MEMORY[0x277D85DE8];

  return _defaultCities;
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

- (id)prepareLocalCitiesForReconciliation:(id)reconciliation isInitialSync:(BOOL)sync
{
  syncCopy = sync;
  reconciliationCopy = reconciliation;
  if (syncCopy && (-[WeatherCloudPreferences localPreferences](self, "localPreferences"), v7 = objc_claimAutoreleasedReturnValue(), -[WeatherCloudPreferences cloudRepresentationFromCities:](self, "cloudRepresentationFromCities:", reconciliationCopy), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 areCitiesDefault:v8], v8, v7, (v9 & 1) != 0))
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v10 = reconciliationCopy;
  }

  return v10;
}

- (void)setCloudStoreCities:(id)cities
{
  v5 = [cities na_filter:&__block_literal_global_28];
  cloudStore = [(WeatherCloudPreferences *)self cloudStore];
  [cloudStore setObject:v5 forKey:@"CloudCities_v2.0"];
}

- (void)saveCitiesToCloud:(id)cloud
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [cloud na_filter:&__block_literal_global_30];
  if ([(WeatherCloudPreferences *)self shouldWriteCitiesToCloud:v4])
  {
    v5 = [(WeatherCloudPreferences *)self cloudRepresentationFromCities:v4];
    [(WeatherCloudPreferences *)self setCloudStoreCities:v5];

    cloudStore = [(WeatherCloudPreferences *)self cloudStore];
    [cloudStore synchronize];

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

- (BOOL)shouldWriteCitiesToCloud:(id)cloud
{
  cloudCopy = cloud;
  localPreferences = [(WeatherCloudPreferences *)self localPreferences];
  v6 = [(WeatherCloudPreferences *)self cloudRepresentationFromCities:cloudCopy];
  v7 = [localPreferences areCitiesDefault:v6];

  if (v7)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    cloudStore = [(WeatherCloudPreferences *)self cloudStore];
    v10 = [cloudStore objectForKey:@"CloudCities_v2.0"];
    v8 = ![(WeatherCloudPreferences *)self areCloudCities:v10 equalToLocalCities:cloudCopy];
  }

  return v8;
}

- (SynchronizedDefaultsDelegate)syncDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_syncDelegate);

  return WeakRetained;
}

@end