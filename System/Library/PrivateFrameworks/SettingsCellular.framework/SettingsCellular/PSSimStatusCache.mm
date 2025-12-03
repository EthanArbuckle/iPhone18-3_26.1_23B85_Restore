@interface PSSimStatusCache
+ (id)sharedInstance;
- (BOOL)isDualSimCapable;
- (BOOL)isSlotActiveDataSlot:(int64_t)slot;
- (PSSimStatusCache)initWithCoreTelephonyClient:(id)client;
- (id)activeDataSubscriptionContext;
- (id)defaultVoiceSubscriptionContext;
- (id)initPrivate;
- (id)simStatus:(id)status;
- (id)subscriptionContextsHasCacheLock:(BOOL)lock;
- (id)subscriptionsInUse;
- (int64_t)simHardwareInfo:(id)info;
- (void)clearSimHardwareInfoCache;
- (void)clearSubscriptionContextCache;
- (void)clearSubscriptionInfoAndSimStatusCache;
- (void)currentDataSimChanged:(id)changed;
- (void)fetchActiveDataSubscriptionContextIfNeeded;
- (void)fetchDefaultVoiceSubscriptionContextIfNeeded;
- (void)fetchSimHardwareInfoHasCacheLock:(BOOL)lock;
- (void)fetchSimStatusHasCacheLock:(BOOL)lock;
- (void)fetchSubscriptionContextsHasCacheLock:(BOOL)lock;
- (void)preferredDataSimChanged:(id)changed;
- (void)simStatusDidChange:(id)change status:(id)status;
- (void)subscriptionInfoDidChange;
- (void)updateIsAnySimPresent;
- (void)willEnterForeground;
@end

@implementation PSSimStatusCache

+ (id)sharedInstance
{
  if (qword_280F75D20 != -1)
  {
    dispatch_once(&qword_280F75D20, &__block_literal_global_1);
  }

  v3 = _MergedGlobals_5;

  return v3;
}

uint64_t __34__PSSimStatusCache_sharedInstance__block_invoke()
{
  _MergedGlobals_5 = [[PSSimStatusCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v3 = objc_alloc(MEMORY[0x277CC37B0]);
  v4 = [SettingsCellularSharedUtils createCTClientSerialQueue:@"sim_status"];
  v5 = [v3 initWithQueue:v4];

  v6 = [(PSSimStatusCache *)self initWithCoreTelephonyClient:v5];
  return v6;
}

- (PSSimStatusCache)initWithCoreTelephonyClient:(id)client
{
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = PSSimStatusCache;
  v6 = [(PSSimStatusCache *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_cacheLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_coreTelephonyClient, client);
    [(CoreTelephonyClient *)v7->_coreTelephonyClient setDelegate:v7];
    subscriptionInfo = v7->_subscriptionInfo;
    v7->_subscriptionInfo = 0;

    simStatusDict = v7->_simStatusDict;
    v7->_simStatusDict = 0;

    currentDataSubscriptionContext = v7->_currentDataSubscriptionContext;
    v7->_currentDataSubscriptionContext = 0;

    userDefaultVoiceSubscriptionContext = v7->_userDefaultVoiceSubscriptionContext;
    v7->_userDefaultVoiceSubscriptionContext = 0;

    simHardwareTypeDict = v7->_simHardwareTypeDict;
    v7->_simHardwareTypeDict = 0;

    [(PSSimStatusCache *)v7 updateIsAnySimPresent];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v7;
}

- (void)clearSubscriptionInfoAndSimStatusCache
{
  getLogger = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Clearing subscription info and sim status cache", v4, 2u);
  }

  os_unfair_lock_lock(&self->_cacheLock);
  [(PSSimStatusCache *)self setSubscriptionInfo:0];
  [(PSSimStatusCache *)self setSimStatusDict:0];
  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)clearSubscriptionContextCache
{
  getLogger = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Clearing sim status cache", v4, 2u);
  }

  os_unfair_lock_lock(&self->_cacheLock);
  [(PSSimStatusCache *)self setCurrentDataSubscriptionContext:0];
  [(PSSimStatusCache *)self setUserDefaultVoiceSubscriptionContext:0];
  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)clearSimHardwareInfoCache
{
  getLogger = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Clearing sim hardware info cache", v4, 2u);
  }

  os_unfair_lock_lock(&self->_cacheLock);
  [(PSSimStatusCache *)self setSimHardwareTypeDict:0];
  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)willEnterForeground
{
  getLogger = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Entering foreground", v4, 2u);
  }

  [(PSSimStatusCache *)self clearSubscriptionInfoAndSimStatusCache];
  [(PSSimStatusCache *)self clearSubscriptionContextCache];
  [(PSSimStatusCache *)self clearSimHardwareInfoCache];
  [(PSSimStatusCache *)self fetchSubscriptionContextsHasCacheLock:0];
  [(PSSimStatusCache *)self fetchSimStatusHasCacheLock:0];
  [(PSSimStatusCache *)self updateIsAnySimPresent];
}

- (void)fetchSubscriptionContextsHasCacheLock:(BOOL)lock
{
  v15 = *MEMORY[0x277D85DE8];
  getLogger = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "executing fetch", buf, 2u);
  }

  if (!lock)
  {
    os_unfair_lock_lock(&self->_cacheLock);
  }

  coreTelephonyClient = self->_coreTelephonyClient;
  v12 = 0;
  v7 = [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfoWithError:&v12];
  v8 = v12;
  getLogger2 = [(PSSimStatusCache *)self getLogger];
  v10 = getLogger2;
  if (v8)
  {
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_error_impl(&dword_2658CA000, v10, OS_LOG_TYPE_ERROR, "fetch failed: %@", buf, 0xCu);
    }

    if (!lock)
    {
LABEL_9:
      os_unfair_lock_unlock(&self->_cacheLock);
    }
  }

  else
  {
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_2658CA000, v10, OS_LOG_TYPE_DEFAULT, "fetch succeeded: %@", buf, 0xCu);
    }

    [(PSSimStatusCache *)self setSubscriptionInfo:v7];
    if (!lock)
    {
      goto LABEL_9;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)fetchActiveDataSubscriptionContextIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_cacheLock);
  currentDataSubscriptionContext = [(PSSimStatusCache *)self currentDataSubscriptionContext];

  getLogger = [(PSSimStatusCache *)self getLogger];
  v5 = os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT);
  if (currentDataSubscriptionContext)
  {
    if (v5)
    {
      currentDataSubscriptionContext2 = [(PSSimStatusCache *)self currentDataSubscriptionContext];
      *buf = 138412290;
      v15 = currentDataSubscriptionContext2;
      _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "No fetch needed, active data subscription context is: %@", buf, 0xCu);
    }

    os_unfair_lock_unlock(&self->_cacheLock);
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Executing fetch for active data subscription", buf, 2u);
    }

    coreTelephonyClient = self->_coreTelephonyClient;
    v13 = 0;
    v8 = [(CoreTelephonyClient *)coreTelephonyClient getCurrentDataSubscriptionContextSync:&v13];
    v9 = v13;
    getLogger2 = [(PSSimStatusCache *)self getLogger];
    v11 = getLogger2;
    if (v9)
    {
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_error_impl(&dword_2658CA000, v11, OS_LOG_TYPE_ERROR, "Fetch failed: %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v8;
        _os_log_impl(&dword_2658CA000, v11, OS_LOG_TYPE_DEFAULT, "Fetch succeeded: %@", buf, 0xCu);
      }

      [(PSSimStatusCache *)self setCurrentDataSubscriptionContext:v8];
    }

    os_unfair_lock_unlock(&self->_cacheLock);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)fetchDefaultVoiceSubscriptionContextIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_cacheLock);
  userDefaultVoiceSubscriptionContext = [(PSSimStatusCache *)self userDefaultVoiceSubscriptionContext];

  getLogger = [(PSSimStatusCache *)self getLogger];
  v5 = os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT);
  if (userDefaultVoiceSubscriptionContext)
  {
    if (v5)
    {
      userDefaultVoiceSubscriptionContext2 = [(PSSimStatusCache *)self userDefaultVoiceSubscriptionContext];
      *buf = 138412290;
      v15 = userDefaultVoiceSubscriptionContext2;
      _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "No fetch needed, default voice subscription context is: %@", buf, 0xCu);
    }

    os_unfair_lock_unlock(&self->_cacheLock);
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Executing fetch for default voice subscription", buf, 2u);
    }

    coreTelephonyClient = self->_coreTelephonyClient;
    v13 = 0;
    v8 = [(CoreTelephonyClient *)coreTelephonyClient getUserDefaultVoiceSubscriptionContext:&v13];
    v9 = v13;
    getLogger2 = [(PSSimStatusCache *)self getLogger];
    v11 = getLogger2;
    if (v9)
    {
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_error_impl(&dword_2658CA000, v11, OS_LOG_TYPE_ERROR, "Fetch failed: %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v8;
        _os_log_impl(&dword_2658CA000, v11, OS_LOG_TYPE_DEFAULT, "Fetch succeeded: %@", buf, 0xCu);
      }

      [(PSSimStatusCache *)self setUserDefaultVoiceSubscriptionContext:v8];
    }

    os_unfair_lock_unlock(&self->_cacheLock);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)subscriptionContextsHasCacheLock:(BOOL)lock
{
  if (!lock)
  {
    os_unfair_lock_lock(&self->_cacheLock);
  }

  subscriptionInfo = [(PSSimStatusCache *)self subscriptionInfo];

  if (!subscriptionInfo)
  {
    [(PSSimStatusCache *)self fetchSubscriptionContextsHasCacheLock:1];
  }

  subscriptionInfo2 = [(PSSimStatusCache *)self subscriptionInfo];
  subscriptions = [subscriptionInfo2 subscriptions];

  if (!lock)
  {
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  return subscriptions;
}

- (id)subscriptionsInUse
{
  os_unfair_lock_lock(&self->_cacheLock);
  subscriptionInfo = [(PSSimStatusCache *)self subscriptionInfo];

  if (!subscriptionInfo)
  {
    [(PSSimStatusCache *)self fetchSubscriptionContextsHasCacheLock:1];
  }

  subscriptionInfo2 = [(PSSimStatusCache *)self subscriptionInfo];
  subscriptionsInUse = [subscriptionInfo2 subscriptionsInUse];

  os_unfair_lock_unlock(&self->_cacheLock);

  return subscriptionsInUse;
}

- (void)subscriptionInfoDidChange
{
  getLogger = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Subscription info changed", v4, 2u);
  }

  [(PSSimStatusCache *)self fetchSubscriptionContextsHasCacheLock:0];
}

- (id)defaultVoiceSubscriptionContext
{
  [(PSSimStatusCache *)self fetchDefaultVoiceSubscriptionContextIfNeeded];
  os_unfair_lock_lock(&self->_cacheLock);
  userDefaultVoiceSubscriptionContext = [(PSSimStatusCache *)self userDefaultVoiceSubscriptionContext];
  os_unfair_lock_unlock(&self->_cacheLock);

  return userDefaultVoiceSubscriptionContext;
}

- (id)activeDataSubscriptionContext
{
  [(PSSimStatusCache *)self fetchActiveDataSubscriptionContextIfNeeded];
  os_unfair_lock_lock(&self->_cacheLock);
  currentDataSubscriptionContext = [(PSSimStatusCache *)self currentDataSubscriptionContext];
  os_unfair_lock_unlock(&self->_cacheLock);

  return currentDataSubscriptionContext;
}

- (BOOL)isSlotActiveDataSlot:(int64_t)slot
{
  [(PSSimStatusCache *)self fetchActiveDataSubscriptionContextIfNeeded];
  os_unfair_lock_lock(&self->_cacheLock);
  currentDataSubscriptionContext = [(PSSimStatusCache *)self currentDataSubscriptionContext];
  LOBYTE(slot) = [currentDataSubscriptionContext slotID] == slot;

  os_unfair_lock_unlock(&self->_cacheLock);
  return slot;
}

- (void)fetchSimStatusHasCacheLock:(BOOL)lock
{
  v31 = *MEMORY[0x277D85DE8];
  getLogger = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Fetching SIM status", buf, 2u);
  }

  lockCopy = lock;
  if (!lock)
  {
    os_unfair_lock_lock(&self->_cacheLock);
  }

  v6 = [(PSSimStatusCache *)self subscriptionContextsHasCacheLock:1];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        coreTelephonyClient = self->_coreTelephonyClient;
        v21 = 0;
        v15 = [(CoreTelephonyClient *)coreTelephonyClient getSIMStatus:v13 error:&v21];
        v16 = v21;
        getLogger2 = [(PSSimStatusCache *)self getLogger];
        v18 = getLogger2;
        if (v16)
        {
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v27 = v13;
            v28 = 2114;
            v29 = v16;
            _os_log_error_impl(&dword_2658CA000, v18, OS_LOG_TYPE_ERROR, "Fetch failed: %@, %{public}@", buf, 0x16u);
          }
        }

        else
        {
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v27 = v13;
            v28 = 2114;
            v29 = v15;
            _os_log_impl(&dword_2658CA000, v18, OS_LOG_TYPE_DEFAULT, "Fetch succeeded: %@, %{public}@", buf, 0x16u);
          }

          v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "slotID")}];
          [v7 setObject:v15 forKeyedSubscript:v18];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v10);
  }

  [(PSSimStatusCache *)self setSimStatusDict:v7];
  if (!lockCopy)
  {
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)simStatus:(id)status
{
  statusCopy = status;
  os_unfair_lock_lock(&self->_cacheLock);
  simStatusDict = [(PSSimStatusCache *)self simStatusDict];

  if (!simStatusDict)
  {
    [(PSSimStatusCache *)self fetchSimStatusHasCacheLock:1];
  }

  simStatusDict = self->_simStatusDict;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(statusCopy, "slotID")}];
  v8 = [(NSMutableDictionary *)simStatusDict objectForKeyedSubscript:v7];

  os_unfair_lock_unlock(&self->_cacheLock);

  return v8;
}

- (void)fetchSimHardwareInfoHasCacheLock:(BOOL)lock
{
  v32 = *MEMORY[0x277D85DE8];
  getLogger = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Fetching SIM hardware info", buf, 2u);
  }

  lockCopy = lock;
  if (!lock)
  {
    os_unfair_lock_lock(&self->_cacheLock);
  }

  v6 = [(PSSimStatusCache *)self subscriptionContextsHasCacheLock:1];
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        coreTelephonyClient = self->_coreTelephonyClient;
        v22 = 0;
        v14 = [(CoreTelephonyClient *)coreTelephonyClient getSimHardwareInfo:v12 error:&v22];
        v15 = v22;
        getLogger2 = [(PSSimStatusCache *)self getLogger];
        v17 = getLogger2;
        if (v15)
        {
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v28 = v12;
            v29 = 2114;
            v30 = v15;
            _os_log_error_impl(&dword_2658CA000, v17, OS_LOG_TYPE_ERROR, "Fetch failed: %@, %{public}@", buf, 0x16u);
          }
        }

        else
        {
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v28 = v12;
            v29 = 2114;
            v30 = v14;
            _os_log_impl(&dword_2658CA000, v17, OS_LOG_TYPE_DEFAULT, "Fetch succeeded: %@, %{public}@", buf, 0x16u);
          }

          v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "hardwareType")}];
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "slotID")}];
          [v21 setObject:v17 forKeyedSubscript:v18];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v9);
  }

  [(PSSimStatusCache *)self setSimHardwareTypeDict:v21];
  if (!lockCopy)
  {
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (int64_t)simHardwareInfo:(id)info
{
  infoCopy = info;
  os_unfair_lock_lock(&self->_cacheLock);
  simHardwareTypeDict = [(PSSimStatusCache *)self simHardwareTypeDict];

  if (!simHardwareTypeDict)
  {
    [(PSSimStatusCache *)self fetchSimHardwareInfoHasCacheLock:1];
  }

  simHardwareTypeDict = self->_simHardwareTypeDict;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(infoCopy, "slotID")}];
  v8 = [(NSMutableDictionary *)simHardwareTypeDict objectForKeyedSubscript:v7];

  intValue = [v8 intValue];
  if (intValue == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (intValue == 2);
  }

  os_unfair_lock_unlock(&self->_cacheLock);

  return v10;
}

- (BOOL)isDualSimCapable
{
  v2 = [(PSSimStatusCache *)self subscriptionContextsHasCacheLock:0];
  v3 = [v2 count] > 1;

  return v3;
}

- (void)updateIsAnySimPresent
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(PSSimStatusCache *)self subscriptionContextsHasCacheLock:0];
  self->_isAnySimPresent = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    v9 = *MEMORY[0x277CC3ED8];
    v10 = *MEMORY[0x277CC3F00];
    *&v6 = 138412546;
    v18 = v6;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [(PSSimStatusCache *)self simStatus:v12, v18, v19];
        getLogger = [(PSSimStatusCache *)self getLogger];
        if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v18;
          v24 = v12;
          v25 = 2114;
          v26 = v13;
          _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "SIM status fetch succeeded: %@, %{public}@", buf, 0x16u);
        }

        if (([v9 isEqualToString:v13] & 1) == 0)
        {
          self->_isAnySimPresent = 1;
        }

        if ([v10 isEqualToString:v13])
        {
          getLogger2 = [(PSSimStatusCache *)self getLogger];
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v24 = "[PSSimStatusCache updateIsAnySimPresent]";
            v25 = 2112;
            v26 = @"PSSimStatusChangedToReadyNotification";
            _os_log_impl(&dword_2658CA000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s posting notification %@", buf, 0x16u);
          }

          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:@"PSSimStatusChangedToReadyNotification" object:0];

          goto LABEL_17;
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  v18 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  statusCopy = status;
  getLogger = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = changeCopy;
    v16 = 2114;
    v17 = statusCopy;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Context: %@, status: %{public}@", &v14, 0x16u);
  }

  os_unfair_lock_lock(&self->_cacheLock);
  simStatusDict = self->_simStatusDict;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[__CFString slotID](changeCopy, "slotID")}];
  [(NSMutableDictionary *)simStatusDict setObject:statusCopy forKeyedSubscript:v10];

  os_unfair_lock_unlock(&self->_cacheLock);
  [(PSSimStatusCache *)self clearSubscriptionContextCache];
  [(PSSimStatusCache *)self clearSimHardwareInfoCache];
  [(PSSimStatusCache *)self updateIsAnySimPresent];
  getLogger2 = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = @"PSSimStatusChangedNotification";
    _os_log_impl(&dword_2658CA000, getLogger2, OS_LOG_TYPE_DEFAULT, "Posting notification %@", &v14, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"PSSimStatusChangedNotification" object:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)preferredDataSimChanged:(id)changed
{
  getLogger = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Received Preferred Data SIM Changed, clearing cached subscription contexts", v5, 2u);
  }

  [(PSSimStatusCache *)self clearSubscriptionContextCache];
}

- (void)currentDataSimChanged:(id)changed
{
  getLogger = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Recieved Current Data SIM Changed, clearing cached subscription contexts", v5, 2u);
  }

  [(PSSimStatusCache *)self clearSubscriptionContextCache];
}

@end