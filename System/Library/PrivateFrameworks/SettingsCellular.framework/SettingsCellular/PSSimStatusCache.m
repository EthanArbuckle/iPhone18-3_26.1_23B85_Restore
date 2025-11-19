@interface PSSimStatusCache
+ (id)sharedInstance;
- (BOOL)isDualSimCapable;
- (BOOL)isSlotActiveDataSlot:(int64_t)a3;
- (PSSimStatusCache)initWithCoreTelephonyClient:(id)a3;
- (id)activeDataSubscriptionContext;
- (id)defaultVoiceSubscriptionContext;
- (id)initPrivate;
- (id)simStatus:(id)a3;
- (id)subscriptionContextsHasCacheLock:(BOOL)a3;
- (id)subscriptionsInUse;
- (int64_t)simHardwareInfo:(id)a3;
- (void)clearSimHardwareInfoCache;
- (void)clearSubscriptionContextCache;
- (void)clearSubscriptionInfoAndSimStatusCache;
- (void)currentDataSimChanged:(id)a3;
- (void)fetchActiveDataSubscriptionContextIfNeeded;
- (void)fetchDefaultVoiceSubscriptionContextIfNeeded;
- (void)fetchSimHardwareInfoHasCacheLock:(BOOL)a3;
- (void)fetchSimStatusHasCacheLock:(BOOL)a3;
- (void)fetchSubscriptionContextsHasCacheLock:(BOOL)a3;
- (void)preferredDataSimChanged:(id)a3;
- (void)simStatusDidChange:(id)a3 status:(id)a4;
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

- (PSSimStatusCache)initWithCoreTelephonyClient:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PSSimStatusCache;
  v6 = [(PSSimStatusCache *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_cacheLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_coreTelephonyClient, a3);
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
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v7 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v7;
}

- (void)clearSubscriptionInfoAndSimStatusCache
{
  v3 = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Clearing subscription info and sim status cache", v4, 2u);
  }

  os_unfair_lock_lock(&self->_cacheLock);
  [(PSSimStatusCache *)self setSubscriptionInfo:0];
  [(PSSimStatusCache *)self setSimStatusDict:0];
  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)clearSubscriptionContextCache
{
  v3 = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Clearing sim status cache", v4, 2u);
  }

  os_unfair_lock_lock(&self->_cacheLock);
  [(PSSimStatusCache *)self setCurrentDataSubscriptionContext:0];
  [(PSSimStatusCache *)self setUserDefaultVoiceSubscriptionContext:0];
  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)clearSimHardwareInfoCache
{
  v3 = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Clearing sim hardware info cache", v4, 2u);
  }

  os_unfair_lock_lock(&self->_cacheLock);
  [(PSSimStatusCache *)self setSimHardwareTypeDict:0];
  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)willEnterForeground
{
  v3 = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Entering foreground", v4, 2u);
  }

  [(PSSimStatusCache *)self clearSubscriptionInfoAndSimStatusCache];
  [(PSSimStatusCache *)self clearSubscriptionContextCache];
  [(PSSimStatusCache *)self clearSimHardwareInfoCache];
  [(PSSimStatusCache *)self fetchSubscriptionContextsHasCacheLock:0];
  [(PSSimStatusCache *)self fetchSimStatusHasCacheLock:0];
  [(PSSimStatusCache *)self updateIsAnySimPresent];
}

- (void)fetchSubscriptionContextsHasCacheLock:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658CA000, v5, OS_LOG_TYPE_DEFAULT, "executing fetch", buf, 2u);
  }

  if (!a3)
  {
    os_unfair_lock_lock(&self->_cacheLock);
  }

  coreTelephonyClient = self->_coreTelephonyClient;
  v12 = 0;
  v7 = [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfoWithError:&v12];
  v8 = v12;
  v9 = [(PSSimStatusCache *)self getLogger];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_error_impl(&dword_2658CA000, v10, OS_LOG_TYPE_ERROR, "fetch failed: %@", buf, 0xCu);
    }

    if (!a3)
    {
LABEL_9:
      os_unfair_lock_unlock(&self->_cacheLock);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_2658CA000, v10, OS_LOG_TYPE_DEFAULT, "fetch succeeded: %@", buf, 0xCu);
    }

    [(PSSimStatusCache *)self setSubscriptionInfo:v7];
    if (!a3)
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
  v3 = [(PSSimStatusCache *)self currentDataSubscriptionContext];

  v4 = [(PSSimStatusCache *)self getLogger];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [(PSSimStatusCache *)self currentDataSubscriptionContext];
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_2658CA000, v4, OS_LOG_TYPE_DEFAULT, "No fetch needed, active data subscription context is: %@", buf, 0xCu);
    }

    os_unfair_lock_unlock(&self->_cacheLock);
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_2658CA000, v4, OS_LOG_TYPE_DEFAULT, "Executing fetch for active data subscription", buf, 2u);
    }

    coreTelephonyClient = self->_coreTelephonyClient;
    v13 = 0;
    v8 = [(CoreTelephonyClient *)coreTelephonyClient getCurrentDataSubscriptionContextSync:&v13];
    v9 = v13;
    v10 = [(PSSimStatusCache *)self getLogger];
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_error_impl(&dword_2658CA000, v11, OS_LOG_TYPE_ERROR, "Fetch failed: %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
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
  v3 = [(PSSimStatusCache *)self userDefaultVoiceSubscriptionContext];

  v4 = [(PSSimStatusCache *)self getLogger];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [(PSSimStatusCache *)self userDefaultVoiceSubscriptionContext];
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_2658CA000, v4, OS_LOG_TYPE_DEFAULT, "No fetch needed, default voice subscription context is: %@", buf, 0xCu);
    }

    os_unfair_lock_unlock(&self->_cacheLock);
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_2658CA000, v4, OS_LOG_TYPE_DEFAULT, "Executing fetch for default voice subscription", buf, 2u);
    }

    coreTelephonyClient = self->_coreTelephonyClient;
    v13 = 0;
    v8 = [(CoreTelephonyClient *)coreTelephonyClient getUserDefaultVoiceSubscriptionContext:&v13];
    v9 = v13;
    v10 = [(PSSimStatusCache *)self getLogger];
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_error_impl(&dword_2658CA000, v11, OS_LOG_TYPE_ERROR, "Fetch failed: %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
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

- (id)subscriptionContextsHasCacheLock:(BOOL)a3
{
  if (!a3)
  {
    os_unfair_lock_lock(&self->_cacheLock);
  }

  v5 = [(PSSimStatusCache *)self subscriptionInfo];

  if (!v5)
  {
    [(PSSimStatusCache *)self fetchSubscriptionContextsHasCacheLock:1];
  }

  v6 = [(PSSimStatusCache *)self subscriptionInfo];
  v7 = [v6 subscriptions];

  if (!a3)
  {
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  return v7;
}

- (id)subscriptionsInUse
{
  os_unfair_lock_lock(&self->_cacheLock);
  v3 = [(PSSimStatusCache *)self subscriptionInfo];

  if (!v3)
  {
    [(PSSimStatusCache *)self fetchSubscriptionContextsHasCacheLock:1];
  }

  v4 = [(PSSimStatusCache *)self subscriptionInfo];
  v5 = [v4 subscriptionsInUse];

  os_unfair_lock_unlock(&self->_cacheLock);

  return v5;
}

- (void)subscriptionInfoDidChange
{
  v3 = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Subscription info changed", v4, 2u);
  }

  [(PSSimStatusCache *)self fetchSubscriptionContextsHasCacheLock:0];
}

- (id)defaultVoiceSubscriptionContext
{
  [(PSSimStatusCache *)self fetchDefaultVoiceSubscriptionContextIfNeeded];
  os_unfair_lock_lock(&self->_cacheLock);
  v3 = [(PSSimStatusCache *)self userDefaultVoiceSubscriptionContext];
  os_unfair_lock_unlock(&self->_cacheLock);

  return v3;
}

- (id)activeDataSubscriptionContext
{
  [(PSSimStatusCache *)self fetchActiveDataSubscriptionContextIfNeeded];
  os_unfair_lock_lock(&self->_cacheLock);
  v3 = [(PSSimStatusCache *)self currentDataSubscriptionContext];
  os_unfair_lock_unlock(&self->_cacheLock);

  return v3;
}

- (BOOL)isSlotActiveDataSlot:(int64_t)a3
{
  [(PSSimStatusCache *)self fetchActiveDataSubscriptionContextIfNeeded];
  os_unfair_lock_lock(&self->_cacheLock);
  v5 = [(PSSimStatusCache *)self currentDataSubscriptionContext];
  LOBYTE(a3) = [v5 slotID] == a3;

  os_unfair_lock_unlock(&self->_cacheLock);
  return a3;
}

- (void)fetchSimStatusHasCacheLock:(BOOL)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658CA000, v5, OS_LOG_TYPE_DEFAULT, "Fetching SIM status", buf, 2u);
  }

  v20 = a3;
  if (!a3)
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
        v17 = [(PSSimStatusCache *)self getLogger];
        v18 = v17;
        if (v16)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
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
  if (!v20)
  {
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)simStatus:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  v5 = [(PSSimStatusCache *)self simStatusDict];

  if (!v5)
  {
    [(PSSimStatusCache *)self fetchSimStatusHasCacheLock:1];
  }

  simStatusDict = self->_simStatusDict;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v8 = [(NSMutableDictionary *)simStatusDict objectForKeyedSubscript:v7];

  os_unfair_lock_unlock(&self->_cacheLock);

  return v8;
}

- (void)fetchSimHardwareInfoHasCacheLock:(BOOL)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658CA000, v5, OS_LOG_TYPE_DEFAULT, "Fetching SIM hardware info", buf, 2u);
  }

  v20 = a3;
  if (!a3)
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
        v16 = [(PSSimStatusCache *)self getLogger];
        v17 = v16;
        if (v15)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
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
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
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
  if (!v20)
  {
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (int64_t)simHardwareInfo:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  v5 = [(PSSimStatusCache *)self simHardwareTypeDict];

  if (!v5)
  {
    [(PSSimStatusCache *)self fetchSimHardwareInfoHasCacheLock:1];
  }

  simHardwareTypeDict = self->_simHardwareTypeDict;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v8 = [(NSMutableDictionary *)simHardwareTypeDict objectForKeyedSubscript:v7];

  v9 = [v8 intValue];
  if (v9 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (v9 == 2);
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
        v14 = [(PSSimStatusCache *)self getLogger];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v18;
          v24 = v12;
          v25 = 2114;
          v26 = v13;
          _os_log_impl(&dword_2658CA000, v14, OS_LOG_TYPE_DEFAULT, "SIM status fetch succeeded: %@, %{public}@", buf, 0x16u);
        }

        if (([v9 isEqualToString:v13] & 1) == 0)
        {
          self->_isAnySimPresent = 1;
        }

        if ([v10 isEqualToString:v13])
        {
          v15 = [(PSSimStatusCache *)self getLogger];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v24 = "[PSSimStatusCache updateIsAnySimPresent]";
            v25 = 2112;
            v26 = @"PSSimStatusChangedToReadyNotification";
            _os_log_impl(&dword_2658CA000, v15, OS_LOG_TYPE_DEFAULT, "%s posting notification %@", buf, 0x16u);
          }

          v16 = [MEMORY[0x277CCAB98] defaultCenter];
          [v16 postNotificationName:@"PSSimStatusChangedToReadyNotification" object:0];

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

- (void)simStatusDidChange:(id)a3 status:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_2658CA000, v8, OS_LOG_TYPE_DEFAULT, "Context: %@, status: %{public}@", &v14, 0x16u);
  }

  os_unfair_lock_lock(&self->_cacheLock);
  simStatusDict = self->_simStatusDict;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[__CFString slotID](v6, "slotID")}];
  [(NSMutableDictionary *)simStatusDict setObject:v7 forKeyedSubscript:v10];

  os_unfair_lock_unlock(&self->_cacheLock);
  [(PSSimStatusCache *)self clearSubscriptionContextCache];
  [(PSSimStatusCache *)self clearSimHardwareInfoCache];
  [(PSSimStatusCache *)self updateIsAnySimPresent];
  v11 = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = @"PSSimStatusChangedNotification";
    _os_log_impl(&dword_2658CA000, v11, OS_LOG_TYPE_DEFAULT, "Posting notification %@", &v14, 0xCu);
  }

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:@"PSSimStatusChangedNotification" object:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)preferredDataSimChanged:(id)a3
{
  v4 = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658CA000, v4, OS_LOG_TYPE_DEFAULT, "Received Preferred Data SIM Changed, clearing cached subscription contexts", v5, 2u);
  }

  [(PSSimStatusCache *)self clearSubscriptionContextCache];
}

- (void)currentDataSimChanged:(id)a3
{
  v4 = [(PSSimStatusCache *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658CA000, v4, OS_LOG_TYPE_DEFAULT, "Recieved Current Data SIM Changed, clearing cached subscription contexts", v5, 2u);
  }

  [(PSSimStatusCache *)self clearSubscriptionContextCache];
}

@end