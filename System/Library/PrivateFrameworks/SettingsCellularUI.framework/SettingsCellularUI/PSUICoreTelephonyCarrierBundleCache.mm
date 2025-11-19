@interface PSUICoreTelephonyCarrierBundleCache
+ (PSUICoreTelephonyCarrierBundleCache)sharedInstance;
- (BOOL)getCarrierBundleFlagForKey:(id)a3 context:(id)a4;
- (BOOL)isMMSOnWhileRoamingForActiveDataPlan;
- (BOOL)shouldOverride3Gto4G:(id)a3;
- (BOOL)shouldOverrideLTEto4G:(id)a3;
- (BOOL)shouldShowVoiceRoamingSwitchForDefaultVoicePlan;
- (BOOL)shouldShowWifiAssistForActiveDataPlan;
- (PSUICoreTelephonyCarrierBundleCache)init;
- (PSUICoreTelephonyCarrierBundleCache)initWithCoreTelephonyClient:(id)a3 simStatusCache:(id)a4;
- (id)activeDataCarrierName;
- (id)carrierBundleVersion:(id)a3;
- (id)carrierServiceNameForServiceName:(id)a3 context:(id)a4;
- (id)carrierServices:(id)a3;
- (id)carrierServicesMyAccountUrlTitle:(id)a3;
- (id)fetchCarrierBundleValue:(id)a3 context:(id)a4;
- (id)getCarrierBundleArrayForKey:(id)a3 context:(id)a4;
- (id)getCarrierBundleDictForKey:(id)a3 context:(id)a4;
- (id)getCarrierBundleStringForKey:(id)a3 context:(id)a4;
- (id)getCarrierBundleValueForKey:(id)a3 context:(id)a4;
- (id)getDictionaryForSlotID:(int64_t)a3;
- (id)initPrivate;
- (id)mmsInfoTitle:(id)a3;
- (void)_clearCache;
- (void)bulkFetchCarrierServicesNamesForServices:(id)a3 context:(id)a4;
- (void)bulkFetchForKeys:(id)a3 defaultValues:(id)a4;
- (void)carrierBundleChange:(id)a3;
- (void)createKeysAndDefaultValues;
- (void)fetchCarrierBundleVersion;
- (void)resetDictionariesBySlot;
- (void)willEnterForeground;
@end

@implementation PSUICoreTelephonyCarrierBundleCache

+ (PSUICoreTelephonyCarrierBundleCache)sharedInstance
{
  if (qword_28156A7C0 != -1)
  {
    dispatch_once(&qword_28156A7C0, &__block_literal_global_20);
  }

  v3 = _MergedGlobals_75;

  return v3;
}

uint64_t __53__PSUICoreTelephonyCarrierBundleCache_sharedInstance__block_invoke()
{
  _MergedGlobals_75 = [[PSUICoreTelephonyCarrierBundleCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v3 = objc_alloc(MEMORY[0x277CC37B0]);
  v4 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"carrier_bundle"];
  v5 = [v3 initWithQueue:v4];
  v6 = [MEMORY[0x277D4D868] sharedInstance];
  v7 = [(PSUICoreTelephonyCarrierBundleCache *)self initWithCoreTelephonyClient:v5 simStatusCache:v6];

  return v7;
}

- (PSUICoreTelephonyCarrierBundleCache)initWithCoreTelephonyClient:(id)a3 simStatusCache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PSUICoreTelephonyCarrierBundleCache;
  v9 = [(PSUICoreTelephonyCarrierBundleCache *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, a3);
    [(CoreTelephonyClient *)v10->_client setDelegate:v10];
    objc_storeStrong(&v10->_simCache, a4);
    [(PSUICoreTelephonyCarrierBundleCache *)v10 resetDictionariesBySlot];
    [(PSUICoreTelephonyCarrierBundleCache *)v10 createKeysAndDefaultValues];
    [(PSUICoreTelephonyCarrierBundleCache *)v10 _clearCache];
    [(PSUICoreTelephonyCarrierBundleCache *)v10 bulkFetch];
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v10 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v10;
}

- (PSUICoreTelephonyCarrierBundleCache)init
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = [(PSUICoreTelephonyCarrierBundleCache *)self getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[PSUICoreTelephonyCarrierBundleCache init]";
    _os_log_error_impl(&dword_2658DE000, v2, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called: %s", &v3, 0xCu);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)resetDictionariesBySlot
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(PSSimStatusCache *)self->_simCache subscriptionContexts];
  os_unfair_lock_lock(&cacheLock);
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  dictionariesBySlot = self->_dictionariesBySlot;
  self->_dictionariesBySlot = v4;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(PSSimStatusCache *)self->_simCache subscriptionContexts];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = self->_dictionariesBySlot;
        v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "slotID")}];
        [(NSMutableDictionary *)v12 setObject:v13 forKey:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&cacheLock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)createKeysAndDefaultValues
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(&unk_287749280, "count")}];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(&unk_287749280, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__PSUICoreTelephonyCarrierBundleCache_createKeysAndDefaultValues__block_invoke;
  v11[3] = &unk_279BAA950;
  v5 = v3;
  v12 = v5;
  v6 = v4;
  v13 = v6;
  [&unk_287749280 enumerateKeysAndObjectsUsingBlock:v11];
  keys = self->_keys;
  self->_keys = v5;
  v8 = v5;

  defaultValues = self->_defaultValues;
  self->_defaultValues = v6;
  v10 = v6;
}

void __65__PSUICoreTelephonyCarrierBundleCache_createKeysAndDefaultValues__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:a2];
  [*(a1 + 40) addObject:v6];
}

- (void)_clearCache
{
  v3 = [(PSUICoreTelephonyCarrierBundleCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Clearing carrier bundle cache", v4, 2u);
  }

  os_unfair_lock_lock(&cacheLock);
  [(PSUICoreTelephonyCarrierBundleCache *)self setCarrierBundleVersionDict:0];
  os_unfair_lock_unlock(&cacheLock);
  [(PSUICoreTelephonyCarrierBundleCache *)self resetDictionariesBySlot];
}

- (void)willEnterForeground
{
  [(PSUICoreTelephonyCarrierBundleCache *)self _clearCache];

  [(PSUICoreTelephonyCarrierBundleCache *)self bulkFetch];
}

- (id)getDictionaryForSlotID:(int64_t)a3
{
  dictionariesBySlot = self->_dictionariesBySlot;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)dictionariesBySlot objectForKey:v6];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = self->_dictionariesBySlot;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableDictionary *)v8 setObject:v7 forKey:v9];
  }

  return v7;
}

- (void)bulkFetchForKeys:(id)a3 defaultValues:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(PSSimStatusCache *)self->_simCache subscriptionContexts];
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        client = self->_client;
        v14 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __70__PSUICoreTelephonyCarrierBundleCache_bulkFetchForKeys_defaultValues___block_invoke;
        v17[3] = &unk_279BAA978;
        v17[4] = self;
        v17[5] = v12;
        v18 = v6;
        [(CoreTelephonyClient *)client copyCarrierBundleValues:v12 keys:v18 defaultValues:v7 bundleType:v14 withFallbackBundleCheck:1 completion:v17];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __70__PSUICoreTelephonyCarrierBundleCache_bulkFetchForKeys_defaultValues___block_invoke(id *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = [a1[4] getLogger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[5];
      v14 = [v13 uuid];
      v15 = 136316162;
      v16 = "[PSUICoreTelephonyCarrierBundleCache bulkFetchForKeys:defaultValues:]_block_invoke";
      v17 = 2112;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      v21 = 2114;
      v22 = MEMORY[0x277CBEBF8];
      v23 = 2114;
      v24 = v7;
      _os_log_error_impl(&dword_2658DE000, v8, OS_LOG_TYPE_ERROR, "%s bulk fetch from: %@ with UUID:%{public}@ for keys: %{public}@ failed. Error: %{public}@", &v15, 0x34u);
    }
  }

  else
  {
    os_unfair_lock_lock(&cacheLock);
    v8 = [a1[4] getDictionaryForSlotID:{objc_msgSend(a1[5], "slotID")}];
    if ([a1[6] count])
    {
      v9 = 0;
      do
      {
        v10 = [v5 objectAtIndexedSubscript:v9];
        v11 = [a1[6] objectAtIndexedSubscript:v9];
        [v8 setObject:v10 forKey:v11];

        ++v9;
      }

      while ([a1[6] count] > v9);
    }

    os_unfair_lock_unlock(&cacheLock);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)fetchCarrierBundleValue:(id)a3 context:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSUICoreTelephonyCarrierBundleCache *)self getLogger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[PSUICoreTelephonyCarrierBundleCache fetchCarrierBundleValue:context:]";
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "%s executing fetch %@ %@", buf, 0x20u);
  }

  client = self->_client;
  v18 = 0;
  v10 = [(CoreTelephonyClient *)client context:v7 getCarrierBundleValue:v6 error:&v18];
  v11 = v18;
  v12 = [(PSUICoreTelephonyCarrierBundleCache *)self getLogger];
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = [v7 uuid];
      *buf = 136316162;
      v20 = "[PSUICoreTelephonyCarrierBundleCache fetchCarrierBundleValue:context:]";
      v21 = 2112;
      v22 = v7;
      v23 = 2114;
      v24 = v17;
      v25 = 2114;
      v26 = v6;
      v27 = 2114;
      v28 = v11;
      _os_log_error_impl(&dword_2658DE000, v13, OS_LOG_TYPE_ERROR, "%s fetch from: %@ with UUID:%{public}@ for key hierarchy: %{public}@ failed. Error: %{public}@", buf, 0x34u);
    }

    v13 = v10;
    v10 = 0;
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v7 uuid];
    *buf = 136316162;
    v20 = "[PSUICoreTelephonyCarrierBundleCache fetchCarrierBundleValue:context:]";
    v21 = 2112;
    v22 = v7;
    v23 = 2114;
    v24 = v14;
    v25 = 2114;
    v26 = v6;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "%s fetch from: %@ with UUID:%{public}@ for key hierarchy: %{public}@ successful. Value:%{public}@", buf, 0x34u);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)getCarrierBundleValueForKey:(id)a3 context:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&cacheLock);
  v8 = -[PSUICoreTelephonyCarrierBundleCache getDictionaryForSlotID:](self, "getDictionaryForSlotID:", [v7 slotID]);
  v9 = [v8 objectForKey:v6];
  if (!v9)
  {
    v13[0] = v6;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v9 = [(PSUICoreTelephonyCarrierBundleCache *)self fetchCarrierBundleValue:v10 context:v7];

    if (v9)
    {
      [v8 setObject:v9 forKey:v6];
    }
  }

  os_unfair_lock_unlock(&cacheLock);

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)getCarrierBundleStringForKey:(id)a3 context:(id)a4
{
  v4 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleValueForKey:a3 context:a4];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)getCarrierBundleFlagForKey:(id)a3 context:(id)a4
{
  v4 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleValueForKey:a3 context:a4];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getCarrierBundleArrayForKey:(id)a3 context:(id)a4
{
  v4 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleValueForKey:a3 context:a4];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getCarrierBundleDictForKey:(id)a3 context:(id)a4
{
  v4 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleValueForKey:a3 context:a4];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)activeDataCarrierName
{
  v3 = [(PSSimStatusCache *)self->_simCache activeDataSubscriptionContext];
  v4 = [(PSUICoreTelephonyCarrierBundleCache *)self carrierName:v3];

  return v4;
}

- (void)fetchCarrierBundleVersion
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICoreTelephonyCarrierBundleCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[PSUICoreTelephonyCarrierBundleCache fetchCarrierBundleVersion]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  v4 = [(PSSimStatusCache *)self->_simCache subscriptionContexts];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v22;
    *&v8 = 136315650;
    v19 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        client = self->_client;
        v20 = 0;
        v14 = [(CoreTelephonyClient *)client copyCarrierBundleVersion:v12 error:&v20, v19];
        v15 = v20;
        v16 = [(PSUICoreTelephonyCarrierBundleCache *)self getLogger];
        v17 = v16;
        if (v15)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v26 = "[PSUICoreTelephonyCarrierBundleCache fetchCarrierBundleVersion]";
            v27 = 2112;
            v28 = v12;
            v29 = 2112;
            v30 = v15;
            _os_log_error_impl(&dword_2658DE000, v17, OS_LOG_TYPE_ERROR, "%s fetch failed: %@, %@", buf, 0x20u);
          }
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v26 = "[PSUICoreTelephonyCarrierBundleCache fetchCarrierBundleVersion]";
            v27 = 2112;
            v28 = v12;
            v29 = 2112;
            v30 = v14;
            _os_log_impl(&dword_2658DE000, v17, OS_LOG_TYPE_DEFAULT, "%s fetched succeeded: %@, %@", buf, 0x20u);
          }

          v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "slotID")}];
          [v5 setObject:v14 forKeyedSubscript:v17];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v9);
  }

  os_unfair_lock_lock(&cacheLock);
  [(PSUICoreTelephonyCarrierBundleCache *)self setCarrierBundleVersionDict:v5];
  os_unfair_lock_unlock(&cacheLock);

  v18 = *MEMORY[0x277D85DE8];
}

- (id)carrierBundleVersion:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyCarrierBundleCache *)self carrierBundleVersionDict];

  if (!v5)
  {
    [(PSUICoreTelephonyCarrierBundleCache *)self fetchCarrierBundleVersion];
  }

  os_unfair_lock_lock(&cacheLock);
  v6 = [(PSUICoreTelephonyCarrierBundleCache *)self carrierBundleVersionDict];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v4 slotID];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 objectForKeyedSubscript:v9];

  os_unfair_lock_unlock(&cacheLock);

  return v10;
}

- (BOOL)shouldOverride3Gto4G:(id)a3
{
  v3 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleStringForKey:@"DataIndicatorOverride" context:a3];
  v4 = [v3 isEqualToString:@"4G"];

  return v4;
}

- (BOOL)shouldOverrideLTEto4G:(id)a3
{
  v3 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleStringForKey:@"DataIndicatorOverrideForLTE" context:a3];
  v4 = [v3 isEqualToString:@"4G"];

  return v4;
}

- (void)bulkFetchCarrierServicesNamesForServices:(id)a3 context:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  os_unfair_lock_lock(&cacheLock);
  v19 = v7;
  v18 = self;
  v8 = -[PSUICoreTelephonyCarrierBundleCache getDictionaryForSlotID:](self, "getDictionaryForSlotID:", [v7 slotID]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v22 + 1) + 8 * i) objectForKey:@"ServiceName"];
        if (v14)
        {
          v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_SERVICE_NAME", v14];
          v16 = [v8 objectForKey:v15];
          if (!v16)
          {
            [v21 addObject:v15];
            [v20 addObject:&stru_287733598];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  os_unfair_lock_unlock(&cacheLock);
  if ([v21 count])
  {
    [(PSUICoreTelephonyCarrierBundleCache *)v18 bulkFetchForKeys:v21 defaultValues:v20];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)carrierServices:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleArrayForKey:@"Services" context:v4];
  [(PSUICoreTelephonyCarrierBundleCache *)self bulkFetchCarrierServicesNamesForServices:v5 context:v4];

  return v5;
}

- (id)carrierServiceNameForServiceName:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%@_SERVICE_NAME", v8];

  v10 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleStringForKey:v9 context:v7];

  return v10;
}

- (id)carrierServicesMyAccountUrlTitle:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleStringForKey:@"MyAccountURLTitle" context:v4];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_MYACCOUNTURLTITLE", v5];
    if (v7)
    {
      v8 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleStringForKey:v7 context:v4];
      if (v8 && ([v7 isEqualToString:v8] & 1) == 0)
      {
        v9 = v8;

        v6 = v9;
      }
    }
  }

  else
  {
    v6 = [(PSUICoreTelephonyCarrierBundleCache *)self carrierName:v4];
  }

  return v6;
}

- (id)mmsInfoTitle:(id)a3
{
  v4 = a3;
  v5 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleStringForKey:@"MMSInformationURLTitle" context:v4];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_MMSINFORMATIONURLTITLE", v5];
    if (v7)
    {
      v8 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleStringForKey:v7 context:v4];
      if (v8 && ([v7 isEqualToString:v8] & 1) == 0)
      {
        v9 = v8;

        v6 = v9;
      }
    }
  }

  else
  {
    v6 = [(PSUICoreTelephonyCarrierBundleCache *)self carrierName:v4];
  }

  return v6;
}

- (BOOL)shouldShowVoiceRoamingSwitchForDefaultVoicePlan
{
  v3 = [(PSSimStatusCache *)self->_simCache defaultVoiceSubscriptionContext];
  if (v3)
  {
    v4 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleFlagForKey:@"ShowVoiceRoamingSwitch" context:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isMMSOnWhileRoamingForActiveDataPlan
{
  v3 = [(PSSimStatusCache *)self->_simCache activeDataSubscriptionContext];
  if (v3)
  {
    os_unfair_lock_lock(&cacheLock);
    v4 = -[PSUICoreTelephonyCarrierBundleCache getDictionaryForSlotID:](self, "getDictionaryForSlotID:", [v3 slotID]);
    v5 = [v4 objectForKey:@"OnWhileRoaming"];
    if (!v5)
    {
      v6 = [(PSUICoreTelephonyCarrierBundleCache *)self fetchCarrierBundleValue:&unk_287749308 context:v3];
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v5 = v6;
      }

      else
      {
        v5 = MEMORY[0x277CBEC28];
      }

      [v4 setObject:v5 forKey:@"OnWhileRoaming"];
    }

    os_unfair_lock_unlock(&cacheLock);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 BOOLValue];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldShowWifiAssistForActiveDataPlan
{
  v3 = [(PSSimStatusCache *)self->_simCache activeDataSubscriptionContext];
  if (v3)
  {
    v4 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleDictForKey:@"ReliableNetworkFallback" context:v3];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKeyedSubscript:@"UserCanEdit"];
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v7 = [v6 BOOLValue];
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)carrierBundleChange:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUICoreTelephonyCarrierBundleCache *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PSUICoreTelephonyCarrierBundleCache carrierBundleChange:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s updating cached values for: %@", &v7, 0x16u);
  }

  [(PSUICoreTelephonyCarrierBundleCache *)self _clearCache];
  [(PSUICoreTelephonyCarrierBundleCache *)self bulkFetch];

  v6 = *MEMORY[0x277D85DE8];
}

@end