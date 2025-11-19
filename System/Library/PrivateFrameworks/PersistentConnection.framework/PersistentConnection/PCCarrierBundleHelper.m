@interface PCCarrierBundleHelper
+ (id)helper;
- (BOOL)BOOLValueFromPushBundleForKey:(id)a3 error:(id *)a4;
- (PCCarrierBundleHelper)init;
- (id)copyValueForKey:(id)a3 error:(id *)a4;
- (id)copyValueFromPushBundleForKey:(id)a3 error:(id *)a4;
- (void)_processCarrierBundleChange:(id)a3;
- (void)_updateCurrentDataSimContext:(id)a3;
- (void)addDelegate:(id)a3;
- (void)currentDataSimChanged:(id)a3;
- (void)operatorBundleChange:(id)a3;
- (void)removeDelegate:(id)a3;
@end

@implementation PCCarrierBundleHelper

+ (id)helper
{
  if (helper_onceToken != -1)
  {
    +[PCCarrierBundleHelper helper];
  }

  v3 = helper_sInstance;

  return v3;
}

uint64_t __31__PCCarrierBundleHelper_helper__block_invoke()
{
  helper_sInstance = objc_alloc_init(PCCarrierBundleHelper);

  return MEMORY[0x2821F96F8]();
}

- (PCCarrierBundleHelper)init
{
  v21 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = PCCarrierBundleHelper;
  v2 = [(PCCarrierBundleHelper *)&v18 init];
  if (v2)
  {
    v3 = PCCreateQueue("PCCarrierBundleHelper-ctQueue");
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v2->_queue];
    ctClient = v2->_ctClient;
    v2->_ctClient = v5;

    v7 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:2];
    bundle = v2->_bundle;
    v2->_bundle = v7;

    [(CoreTelephonyClient *)v2->_ctClient setDelegate:v2];
    v9 = v2->_ctClient;
    v17 = 0;
    v10 = [(CoreTelephonyClient *)v9 getCurrentDataSubscriptionContextSync:&v17];
    v11 = v17;
    if (v11 || !v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&dword_25E3EF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to get currentDataSimContext. {error: %@}", buf, 0xCu);
      }
    }

    else
    {
      v12 = [v10 copy];
      currentDataContext = v2->_currentDataContext;
      v2->_currentDataContext = v12;
    }

    cachedPushSettings = v2->_cachedPushSettings;
    v2->_cachedPushSettings = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)copyValueForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(CTXPCServiceSubscriptionContext *)v7->_currentDataContext copy];
  objc_sync_exit(v7);

  if (v8)
  {
    if (a4)
    {
      *a4 = 0;
    }

    ctClient = v7->_ctClient;
    bundle = v7->_bundle;
    v15 = 0;
    v11 = [(CoreTelephonyClient *)ctClient copyCarrierBundleValue:v8 key:v6 bundleType:bundle error:&v15];
    v12 = v15;
    if (v12)
    {

      if (a4)
      {
        v13 = v12;
        *a4 = v12;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [PCCarrierBundleHelper copyValueForKey:v6 error:v12];
      }

      v11 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E3EF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Trying to copy carrier bundle value but we don't have a valid CTXPCServiceSubscriptionContext yet", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)copyValueFromPushBundleForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v7 = self;
  objc_sync_enter(v7);
  cachedPushSettings = v7->_cachedPushSettings;
  if (cachedPushSettings)
  {
    v9 = [(NSDictionary *)cachedPushSettings objectForKey:v6];
    v10 = [v9 copy];

    objc_sync_exit(v7);
  }

  else
  {
    objc_sync_exit(v7);

    v22 = 0;
    v11 = [(PCCarrierBundleHelper *)v7 copyValueForKey:@"PushSettings" error:&v22];
    v12 = v22;
    v13 = v12;
    if (a4)
    {
      v14 = v12;
      *a4 = v13;
    }

    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = v11;
      v16 = v7;
      objc_sync_enter(v16);
      v17 = v7->_cachedPushSettings;
      v7->_cachedPushSettings = v15;
      v18 = v15;

      objc_sync_exit(v16);
      v19 = [(NSDictionary *)v18 objectForKey:v6];

      v20 = [v19 copy];
    }

    else
    {
      v20 = 0;
    }

    v10 = v20;
  }

  return v10;
}

- (BOOL)BOOLValueFromPushBundleForKey:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  v5 = a3;
  v6 = +[PCCarrierBundleHelper helper];
  v12 = 0;
  v7 = [v6 copyValueFromPushBundleForKey:v5 error:&v12];

  v8 = v12;
  if (a4)
  {
    v9 = v8;
    *a4 = v8;
  }

  v10 = [v7 BOOLValue];

  return v10;
}

- (void)addDelegate:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = v9;
  delegates = v4->_delegates;
  if (!delegates)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
    v8 = v4->_delegates;
    v4->_delegates = v7;

    delegates = v4->_delegates;
    v5 = v9;
  }

  [(NSHashTable *)delegates addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeDelegate:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSHashTable *)v4->_delegates removeObject:v6];
  if (![(NSHashTable *)v4->_delegates count])
  {
    delegates = v4->_delegates;
    v4->_delegates = 0;
  }

  objc_sync_exit(v4);
}

- (void)_processCarrierBundleChange:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = 0;
  if (v4 && v5->_currentDataContext)
  {
    v7 = [v4 slotID];
    v6 = v7 == [(CTXPCServiceSubscriptionContext *)v5->_currentDataContext slotID];
  }

  v8 = [(NSHashTable *)v5->_delegates copy];
  cachedPushSettings = v5->_cachedPushSettings;
  v5->_cachedPushSettings = 0;

  objc_sync_exit(v5);
  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * v13++) carrierBundleDidChange];
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateCurrentDataSimContext:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  currentDataContext = obj->_currentDataContext;
  obj->_currentDataContext = v4;

  objc_sync_exit(obj);
}

- (void)operatorBundleChange:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_25E3EF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "operatorBundleChange - context %@", &v6, 0xCu);
  }

  [(PCCarrierBundleHelper *)self _processCarrierBundleChange:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)currentDataSimChanged:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_25E3EF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "currentDataSimChanged - context %@", &v6, 0xCu);
  }

  [(PCCarrierBundleHelper *)self _updateCurrentDataSimContext:v4];
  [(PCCarrierBundleHelper *)self _processCarrierBundleChange:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)copyValueForKey:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_25E3EF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to copy carrier bundle value. {key: %@, error: %@}", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end