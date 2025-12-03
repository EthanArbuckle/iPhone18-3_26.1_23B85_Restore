@interface PCCarrierBundleHelper
+ (id)helper;
- (BOOL)BOOLValueFromPushBundleForKey:(id)key error:(id *)error;
- (PCCarrierBundleHelper)init;
- (id)copyValueForKey:(id)key error:(id *)error;
- (id)copyValueFromPushBundleForKey:(id)key error:(id *)error;
- (void)_processCarrierBundleChange:(id)change;
- (void)_updateCurrentDataSimContext:(id)context;
- (void)addDelegate:(id)delegate;
- (void)currentDataSimChanged:(id)changed;
- (void)operatorBundleChange:(id)change;
- (void)removeDelegate:(id)delegate;
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

- (id)copyValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(CTXPCServiceSubscriptionContext *)selfCopy->_currentDataContext copy];
  objc_sync_exit(selfCopy);

  if (v8)
  {
    if (error)
    {
      *error = 0;
    }

    ctClient = selfCopy->_ctClient;
    bundle = selfCopy->_bundle;
    v15 = 0;
    v11 = [(CoreTelephonyClient *)ctClient copyCarrierBundleValue:v8 key:keyCopy bundleType:bundle error:&v15];
    v12 = v15;
    if (v12)
    {

      if (error)
      {
        v13 = v12;
        *error = v12;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [PCCarrierBundleHelper copyValueForKey:keyCopy error:v12];
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

- (id)copyValueFromPushBundleForKey:(id)key error:(id *)error
{
  keyCopy = key;
  if (error)
  {
    *error = 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedPushSettings = selfCopy->_cachedPushSettings;
  if (cachedPushSettings)
  {
    v9 = [(NSDictionary *)cachedPushSettings objectForKey:keyCopy];
    v10 = [v9 copy];

    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    v22 = 0;
    v11 = [(PCCarrierBundleHelper *)selfCopy copyValueForKey:@"PushSettings" error:&v22];
    v12 = v22;
    v13 = v12;
    if (error)
    {
      v14 = v12;
      *error = v13;
    }

    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = v11;
      v16 = selfCopy;
      objc_sync_enter(v16);
      v17 = selfCopy->_cachedPushSettings;
      selfCopy->_cachedPushSettings = v15;
      v18 = v15;

      objc_sync_exit(v16);
      v19 = [(NSDictionary *)v18 objectForKey:keyCopy];

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

- (BOOL)BOOLValueFromPushBundleForKey:(id)key error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  keyCopy = key;
  v6 = +[PCCarrierBundleHelper helper];
  v12 = 0;
  v7 = [v6 copyValueFromPushBundleForKey:keyCopy error:&v12];

  v8 = v12;
  if (error)
  {
    v9 = v8;
    *error = v8;
  }

  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = delegateCopy;
  delegates = selfCopy->_delegates;
  if (!delegates)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
    v8 = selfCopy->_delegates;
    selfCopy->_delegates = v7;

    delegates = selfCopy->_delegates;
    v5 = delegateCopy;
  }

  [(NSHashTable *)delegates addObject:v5];
  objc_sync_exit(selfCopy);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_delegates removeObject:delegateCopy];
  if (![(NSHashTable *)selfCopy->_delegates count])
  {
    delegates = selfCopy->_delegates;
    selfCopy->_delegates = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)_processCarrierBundleChange:(id)change
{
  v20 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = 0;
  if (changeCopy && selfCopy->_currentDataContext)
  {
    slotID = [changeCopy slotID];
    v6 = slotID == [(CTXPCServiceSubscriptionContext *)selfCopy->_currentDataContext slotID];
  }

  v8 = [(NSHashTable *)selfCopy->_delegates copy];
  cachedPushSettings = selfCopy->_cachedPushSettings;
  selfCopy->_cachedPushSettings = 0;

  objc_sync_exit(selfCopy);
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

- (void)_updateCurrentDataSimContext:(id)context
{
  contextCopy = context;
  obj = self;
  objc_sync_enter(obj);
  currentDataContext = obj->_currentDataContext;
  obj->_currentDataContext = contextCopy;

  objc_sync_exit(obj);
}

- (void)operatorBundleChange:(id)change
{
  v8 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changeCopy;
    _os_log_impl(&dword_25E3EF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "operatorBundleChange - context %@", &v6, 0xCu);
  }

  [(PCCarrierBundleHelper *)self _processCarrierBundleChange:changeCopy];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)currentDataSimChanged:(id)changed
{
  v8 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changedCopy;
    _os_log_impl(&dword_25E3EF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "currentDataSimChanged - context %@", &v6, 0xCu);
  }

  [(PCCarrierBundleHelper *)self _updateCurrentDataSimContext:changedCopy];
  [(PCCarrierBundleHelper *)self _processCarrierBundleChange:changedCopy];

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