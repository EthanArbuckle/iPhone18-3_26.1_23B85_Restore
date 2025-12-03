@interface PSUICoreTelephonyCarrierBundleCache
+ (PSUICoreTelephonyCarrierBundleCache)sharedInstance;
- (BOOL)getCarrierBundleFlagForKey:(id)key context:(id)context;
- (BOOL)isMMSOnWhileRoamingForActiveDataPlan;
- (BOOL)shouldOverride3Gto4G:(id)g;
- (BOOL)shouldOverrideLTEto4G:(id)g;
- (BOOL)shouldShowVoiceRoamingSwitchForDefaultVoicePlan;
- (BOOL)shouldShowWifiAssistForActiveDataPlan;
- (PSUICoreTelephonyCarrierBundleCache)init;
- (PSUICoreTelephonyCarrierBundleCache)initWithCoreTelephonyClient:(id)client simStatusCache:(id)cache;
- (id)activeDataCarrierName;
- (id)carrierBundleVersion:(id)version;
- (id)carrierServiceNameForServiceName:(id)name context:(id)context;
- (id)carrierServices:(id)services;
- (id)carrierServicesMyAccountUrlTitle:(id)title;
- (id)fetchCarrierBundleValue:(id)value context:(id)context;
- (id)getCarrierBundleArrayForKey:(id)key context:(id)context;
- (id)getCarrierBundleDictForKey:(id)key context:(id)context;
- (id)getCarrierBundleStringForKey:(id)key context:(id)context;
- (id)getCarrierBundleValueForKey:(id)key context:(id)context;
- (id)getDictionaryForSlotID:(int64_t)d;
- (id)initPrivate;
- (id)mmsInfoTitle:(id)title;
- (void)_clearCache;
- (void)bulkFetchCarrierServicesNamesForServices:(id)services context:(id)context;
- (void)bulkFetchForKeys:(id)keys defaultValues:(id)values;
- (void)carrierBundleChange:(id)change;
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
  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  v7 = [(PSUICoreTelephonyCarrierBundleCache *)self initWithCoreTelephonyClient:v5 simStatusCache:mEMORY[0x277D4D868]];

  return v7;
}

- (PSUICoreTelephonyCarrierBundleCache)initWithCoreTelephonyClient:(id)client simStatusCache:(id)cache
{
  clientCopy = client;
  cacheCopy = cache;
  v13.receiver = self;
  v13.super_class = PSUICoreTelephonyCarrierBundleCache;
  v9 = [(PSUICoreTelephonyCarrierBundleCache *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, client);
    [(CoreTelephonyClient *)v10->_client setDelegate:v10];
    objc_storeStrong(&v10->_simCache, cache);
    [(PSUICoreTelephonyCarrierBundleCache *)v10 resetDictionariesBySlot];
    [(PSUICoreTelephonyCarrierBundleCache *)v10 createKeysAndDefaultValues];
    [(PSUICoreTelephonyCarrierBundleCache *)v10 _clearCache];
    [(PSUICoreTelephonyCarrierBundleCache *)v10 bulkFetch];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v10;
}

- (PSUICoreTelephonyCarrierBundleCache)init
{
  v5 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyCarrierBundleCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[PSUICoreTelephonyCarrierBundleCache init]";
    _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called: %s", &v3, 0xCu);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)resetDictionariesBySlot
{
  v21 = *MEMORY[0x277D85DE8];
  subscriptionContexts = [(PSSimStatusCache *)self->_simCache subscriptionContexts];
  os_unfair_lock_lock(&cacheLock);
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(subscriptionContexts, "count")}];
  dictionariesBySlot = self->_dictionariesBySlot;
  self->_dictionariesBySlot = v4;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  subscriptionContexts2 = [(PSSimStatusCache *)self->_simCache subscriptionContexts];
  v7 = [subscriptionContexts2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(subscriptionContexts2);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = self->_dictionariesBySlot;
        v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "slotID")}];
        [(NSMutableDictionary *)v12 setObject:v13 forKey:v14];
      }

      v8 = [subscriptionContexts2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  getLogger = [(PSUICoreTelephonyCarrierBundleCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Clearing carrier bundle cache", v4, 2u);
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

- (id)getDictionaryForSlotID:(int64_t)d
{
  dictionariesBySlot = self->_dictionariesBySlot;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)dictionariesBySlot objectForKey:v6];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = self->_dictionariesBySlot;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:d];
    [(NSMutableDictionary *)v8 setObject:v7 forKey:v9];
  }

  return v7;
}

- (void)bulkFetchForKeys:(id)keys defaultValues:(id)values
{
  v24 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  valuesCopy = values;
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
        v18 = keysCopy;
        [(CoreTelephonyClient *)client copyCarrierBundleValues:v12 keys:v18 defaultValues:valuesCopy bundleType:v14 withFallbackBundleCheck:1 completion:v17];

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

- (id)fetchCarrierBundleValue:(id)value context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  contextCopy = context;
  getLogger = [(PSUICoreTelephonyCarrierBundleCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[PSUICoreTelephonyCarrierBundleCache fetchCarrierBundleValue:context:]";
    v21 = 2112;
    v22 = contextCopy;
    v23 = 2112;
    v24 = valueCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s executing fetch %@ %@", buf, 0x20u);
  }

  client = self->_client;
  v18 = 0;
  v10 = [(CoreTelephonyClient *)client context:contextCopy getCarrierBundleValue:valueCopy error:&v18];
  v11 = v18;
  getLogger2 = [(PSUICoreTelephonyCarrierBundleCache *)self getLogger];
  v13 = getLogger2;
  if (v11)
  {
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      uuid = [contextCopy uuid];
      *buf = 136316162;
      v20 = "[PSUICoreTelephonyCarrierBundleCache fetchCarrierBundleValue:context:]";
      v21 = 2112;
      v22 = contextCopy;
      v23 = 2114;
      v24 = uuid;
      v25 = 2114;
      v26 = valueCopy;
      v27 = 2114;
      v28 = v11;
      _os_log_error_impl(&dword_2658DE000, v13, OS_LOG_TYPE_ERROR, "%s fetch from: %@ with UUID:%{public}@ for key hierarchy: %{public}@ failed. Error: %{public}@", buf, 0x34u);
    }

    v13 = v10;
    v10 = 0;
  }

  else if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
  {
    uuid2 = [contextCopy uuid];
    *buf = 136316162;
    v20 = "[PSUICoreTelephonyCarrierBundleCache fetchCarrierBundleValue:context:]";
    v21 = 2112;
    v22 = contextCopy;
    v23 = 2114;
    v24 = uuid2;
    v25 = 2114;
    v26 = valueCopy;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "%s fetch from: %@ with UUID:%{public}@ for key hierarchy: %{public}@ successful. Value:%{public}@", buf, 0x34u);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)getCarrierBundleValueForKey:(id)key context:(id)context
{
  v13[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  contextCopy = context;
  os_unfair_lock_lock(&cacheLock);
  v8 = -[PSUICoreTelephonyCarrierBundleCache getDictionaryForSlotID:](self, "getDictionaryForSlotID:", [contextCopy slotID]);
  v9 = [v8 objectForKey:keyCopy];
  if (!v9)
  {
    v13[0] = keyCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v9 = [(PSUICoreTelephonyCarrierBundleCache *)self fetchCarrierBundleValue:v10 context:contextCopy];

    if (v9)
    {
      [v8 setObject:v9 forKey:keyCopy];
    }
  }

  os_unfair_lock_unlock(&cacheLock);

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)getCarrierBundleStringForKey:(id)key context:(id)context
{
  v4 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleValueForKey:key context:context];
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

- (BOOL)getCarrierBundleFlagForKey:(id)key context:(id)context
{
  v4 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleValueForKey:key context:context];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)getCarrierBundleArrayForKey:(id)key context:(id)context
{
  v4 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleValueForKey:key context:context];
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

- (id)getCarrierBundleDictForKey:(id)key context:(id)context
{
  v4 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleValueForKey:key context:context];
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
  activeDataSubscriptionContext = [(PSSimStatusCache *)self->_simCache activeDataSubscriptionContext];
  v4 = [(PSUICoreTelephonyCarrierBundleCache *)self carrierName:activeDataSubscriptionContext];

  return v4;
}

- (void)fetchCarrierBundleVersion
{
  v32 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyCarrierBundleCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[PSUICoreTelephonyCarrierBundleCache fetchCarrierBundleVersion]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  subscriptionContexts = [(PSSimStatusCache *)self->_simCache subscriptionContexts];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = subscriptionContexts;
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
        getLogger2 = [(PSUICoreTelephonyCarrierBundleCache *)self getLogger];
        v17 = getLogger2;
        if (v15)
        {
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
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
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
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

- (id)carrierBundleVersion:(id)version
{
  versionCopy = version;
  carrierBundleVersionDict = [(PSUICoreTelephonyCarrierBundleCache *)self carrierBundleVersionDict];

  if (!carrierBundleVersionDict)
  {
    [(PSUICoreTelephonyCarrierBundleCache *)self fetchCarrierBundleVersion];
  }

  os_unfair_lock_lock(&cacheLock);
  carrierBundleVersionDict2 = [(PSUICoreTelephonyCarrierBundleCache *)self carrierBundleVersionDict];
  v7 = MEMORY[0x277CCABB0];
  slotID = [versionCopy slotID];

  v9 = [v7 numberWithInteger:slotID];
  v10 = [carrierBundleVersionDict2 objectForKeyedSubscript:v9];

  os_unfair_lock_unlock(&cacheLock);

  return v10;
}

- (BOOL)shouldOverride3Gto4G:(id)g
{
  v3 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleStringForKey:@"DataIndicatorOverride" context:g];
  v4 = [v3 isEqualToString:@"4G"];

  return v4;
}

- (BOOL)shouldOverrideLTEto4G:(id)g
{
  v3 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleStringForKey:@"DataIndicatorOverrideForLTE" context:g];
  v4 = [v3 isEqualToString:@"4G"];

  return v4;
}

- (void)bulkFetchCarrierServicesNamesForServices:(id)services context:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  contextCopy = context;
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  os_unfair_lock_lock(&cacheLock);
  v19 = contextCopy;
  selfCopy = self;
  v8 = -[PSUICoreTelephonyCarrierBundleCache getDictionaryForSlotID:](self, "getDictionaryForSlotID:", [contextCopy slotID]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = servicesCopy;
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
    [(PSUICoreTelephonyCarrierBundleCache *)selfCopy bulkFetchForKeys:v21 defaultValues:v20];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)carrierServices:(id)services
{
  servicesCopy = services;
  v5 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleArrayForKey:@"Services" context:servicesCopy];
  [(PSUICoreTelephonyCarrierBundleCache *)self bulkFetchCarrierServicesNamesForServices:v5 context:servicesCopy];

  return v5;
}

- (id)carrierServiceNameForServiceName:(id)name context:(id)context
{
  v6 = MEMORY[0x277CCACA8];
  contextCopy = context;
  nameCopy = name;
  nameCopy = [[v6 alloc] initWithFormat:@"%@_SERVICE_NAME", nameCopy];

  v10 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleStringForKey:nameCopy context:contextCopy];

  return v10;
}

- (id)carrierServicesMyAccountUrlTitle:(id)title
{
  titleCopy = title;
  v5 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleStringForKey:@"MyAccountURLTitle" context:titleCopy];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_MYACCOUNTURLTITLE", v5];
    if (v7)
    {
      v8 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleStringForKey:v7 context:titleCopy];
      if (v8 && ([v7 isEqualToString:v8] & 1) == 0)
      {
        v9 = v8;

        v6 = v9;
      }
    }
  }

  else
  {
    v6 = [(PSUICoreTelephonyCarrierBundleCache *)self carrierName:titleCopy];
  }

  return v6;
}

- (id)mmsInfoTitle:(id)title
{
  titleCopy = title;
  v5 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleStringForKey:@"MMSInformationURLTitle" context:titleCopy];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_MMSINFORMATIONURLTITLE", v5];
    if (v7)
    {
      v8 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleStringForKey:v7 context:titleCopy];
      if (v8 && ([v7 isEqualToString:v8] & 1) == 0)
      {
        v9 = v8;

        v6 = v9;
      }
    }
  }

  else
  {
    v6 = [(PSUICoreTelephonyCarrierBundleCache *)self carrierName:titleCopy];
  }

  return v6;
}

- (BOOL)shouldShowVoiceRoamingSwitchForDefaultVoicePlan
{
  defaultVoiceSubscriptionContext = [(PSSimStatusCache *)self->_simCache defaultVoiceSubscriptionContext];
  if (defaultVoiceSubscriptionContext)
  {
    v4 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleFlagForKey:@"ShowVoiceRoamingSwitch" context:defaultVoiceSubscriptionContext];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isMMSOnWhileRoamingForActiveDataPlan
{
  activeDataSubscriptionContext = [(PSSimStatusCache *)self->_simCache activeDataSubscriptionContext];
  if (activeDataSubscriptionContext)
  {
    os_unfair_lock_lock(&cacheLock);
    v4 = -[PSUICoreTelephonyCarrierBundleCache getDictionaryForSlotID:](self, "getDictionaryForSlotID:", [activeDataSubscriptionContext slotID]);
    v5 = [v4 objectForKey:@"OnWhileRoaming"];
    if (!v5)
    {
      v6 = [(PSUICoreTelephonyCarrierBundleCache *)self fetchCarrierBundleValue:&unk_287749308 context:activeDataSubscriptionContext];
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
      bOOLValue = [v5 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)shouldShowWifiAssistForActiveDataPlan
{
  activeDataSubscriptionContext = [(PSSimStatusCache *)self->_simCache activeDataSubscriptionContext];
  if (activeDataSubscriptionContext)
  {
    v4 = [(PSUICoreTelephonyCarrierBundleCache *)self getCarrierBundleDictForKey:@"ReliableNetworkFallback" context:activeDataSubscriptionContext];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKeyedSubscript:@"UserCanEdit"];
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        bOOLValue = [v6 BOOLValue];
      }

      else
      {
        bOOLValue = 1;
      }
    }

    else
    {
      bOOLValue = 1;
    }
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)carrierBundleChange:(id)change
{
  v11 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  getLogger = [(PSUICoreTelephonyCarrierBundleCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PSUICoreTelephonyCarrierBundleCache carrierBundleChange:]";
    v9 = 2112;
    v10 = changeCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s updating cached values for: %@", &v7, 0x16u);
  }

  [(PSUICoreTelephonyCarrierBundleCache *)self _clearCache];
  [(PSUICoreTelephonyCarrierBundleCache *)self bulkFetch];

  v6 = *MEMORY[0x277D85DE8];
}

@end