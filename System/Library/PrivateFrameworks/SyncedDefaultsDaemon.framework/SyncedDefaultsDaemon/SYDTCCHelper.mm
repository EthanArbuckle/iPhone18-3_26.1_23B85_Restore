@interface SYDTCCHelper
+ (id)sharedHelper;
- (BOOL)isUbiquityDisabledForStoreIdentifier:(id)identifier;
- (SYDTCCHelper)init;
- (id)findDisabledStoreIdentifiers;
- (void)dealloc;
- (void)enableUbiquityIfNecessaryForAuditToken:(id *)token;
- (void)startListeningToTCCAccessChangedNotifications;
- (void)stopListeningToTCCAccessChangedNotifications;
@end

@implementation SYDTCCHelper

+ (id)sharedHelper
{
  if (sharedHelper_onceToken != -1)
  {
    +[SYDTCCHelper sharedHelper];
  }

  v3 = sharedHelper_helper;

  return v3;
}

uint64_t __28__SYDTCCHelper_sharedHelper__block_invoke()
{
  sharedHelper_helper = objc_alloc_init(SYDTCCHelper);

  return MEMORY[0x2821F96F8]();
}

- (SYDTCCHelper)init
{
  v7.receiver = self;
  v7.super_class = SYDTCCHelper;
  v2 = [(SYDTCCHelper *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.kvs.tcc", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v2->_notifyToken = -1;
    [(SYDTCCHelper *)v2 startListeningToTCCAccessChangedNotifications];
  }

  return v2;
}

- (void)dealloc
{
  [(SYDTCCHelper *)self stopListeningToTCCAccessChangedNotifications];
  v3.receiver = self;
  v3.super_class = SYDTCCHelper;
  [(SYDTCCHelper *)&v3 dealloc];
}

- (BOOL)isUbiquityDisabledForStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = [(SYDTCCHelper *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SYDTCCHelper_isUbiquityDisabledForStoreIdentifier___block_invoke;
  block[3] = &unk_279D2F560;
  v9 = identifierCopy;
  selfCopy = self;
  v11 = &v12;
  v6 = identifierCopy;
  dispatch_sync(queue, block);

  LOBYTE(identifierCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return identifierCopy;
}

void __53__SYDTCCHelper_isUbiquityDisabledForStoreIdentifier___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = SYDGetTCCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__SYDTCCHelper_isUbiquityDisabledForStoreIdentifier___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 40) cachedDisabledStoreIdentifiers];

  if (!v3)
  {
    v4 = [*(a1 + 40) findDisabledStoreIdentifiers];
    [*(a1 + 40) setCachedDisabledStoreIdentifiers:v4];

    v5 = SYDGetTCCLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 40) cachedDisabledStoreIdentifiers];
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_26C384000, v5, OS_LOG_TYPE_INFO, "Caching disabled store identifiers: %@", &v11, 0xCu);
    }
  }

  v7 = [*(a1 + 40) cachedDisabledStoreIdentifiers];
  v8 = [v7 containsObject:*(a1 + 32)];

  if (v8)
  {
    v9 = SYDGetTCCLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __53__SYDTCCHelper_isUbiquityDisabledForStoreIdentifier___block_invoke_cold_2((a1 + 32));
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)findDisabledStoreIdentifiers
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = SYDGetTCCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26C384000, v2, OS_LOG_TYPE_INFO, "Finding list of disabled store identifiers", buf, 2u);
  }

  v24 = [MEMORY[0x277CBEB58] set];
  v3 = *MEMORY[0x277D6C230];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = TCCAccessCopyBundleIdentifiersDisabledForService();
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v28;
    v9 = 0x277CC1000uLL;
    *&v6 = 138412546;
    v23 = v6;
    v25 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = *(v9 + 3728);
        v26 = 0;
        v13 = [v12 bundleRecordWithBundleIdentifier:v11 allowPlaceholder:0 error:{&v26, v23}];
        v14 = v26;
        if (v14)
        {
          v15 = SYDGetTCCLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v14;
            _os_log_error_impl(&dword_26C384000, v15, OS_LOG_TYPE_ERROR, "Error getting bundle record: %@", buf, 0xCu);
          }
        }

        else if (v13)
        {
          v16 = v4;
          v15 = [objc_alloc(MEMORY[0x277D6B878]) initWithBundleRecord:v13];
          storeIdentifiers = [v15 storeIdentifiers];
          v18 = [storeIdentifiers count];
          v19 = SYDGetTCCLog();
          v20 = v19;
          if (v18)
          {
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = v23;
              v32 = v11;
              v33 = 2112;
              v34 = storeIdentifiers;
              _os_log_impl(&dword_26C384000, v20, OS_LOG_TYPE_INFO, "Bundle %@ has Ubiquity disabled and is entitled to store identifiers: %@", buf, 0x16u);
            }

            [v24 addObjectsFromArray:storeIdentifiers];
          }

          else
          {
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v32 = v11;
              _os_log_debug_impl(&dword_26C384000, v20, OS_LOG_TYPE_DEBUG, "Bundle %@ has Ubiquity disabled, but is not entitled to any KVS stores", buf, 0xCu);
            }
          }

          v4 = v16;

          v8 = v25;
          v9 = 0x277CC1000;
        }

        else
        {
          v15 = SYDGetTCCLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v32 = v11;
            _os_log_impl(&dword_26C384000, v15, OS_LOG_TYPE_INFO, "Couldn't find bundle record for disabled bundle %@", buf, 0xCu);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)enableUbiquityIfNecessaryForAuditToken:(id *)token
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = SYDGetTCCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SYDTCCHelper enableUbiquityIfNecessaryForAuditToken:];
  }

  v30 = 0;
  v5 = *&token->var0[4];
  *buf = *token->var0;
  v33 = v5;
  v6 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:buf error:&v30];
  v7 = v30;
  bundleIdentifier = [v6 bundleIdentifier];
  if (bundleIdentifier)
  {
    v25 = v7;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = TCCAccessCopyInformationForBundleId();
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    v11 = MEMORY[0x277D6C230];
    if (v10)
    {
      v12 = v10;
      v13 = *v27;
      v14 = MEMORY[0x277D6C0E8];
LABEL_6:
      v15 = 0;
      while (1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v26 + 1) + 8 * v15);
        v17 = [v16 objectForKeyedSubscript:*v14];
        if ([v17 isEqualToString:*v11])
        {
          break;
        }

        if (v12 == ++v15)
        {
          v12 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v12)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v18 = [v16 objectForKeyedSubscript:*MEMORY[0x277D6C0D0]];

      if (!v18)
      {
        goto LABEL_17;
      }

      bOOLValue = [v18 BOOLValue];
      v20 = SYDGetTCCLog();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
      if (bOOLValue)
      {
        if (v21)
        {
          [SYDTCCHelper enableUbiquityIfNecessaryForAuditToken:];
        }
      }

      else if (v21)
      {
        [SYDTCCHelper enableUbiquityIfNecessaryForAuditToken:];
      }
    }

    else
    {
LABEL_12:

LABEL_17:
      v22 = SYDGetTCCLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = bundleIdentifier;
        _os_log_impl(&dword_26C384000, v22, OS_LOG_TYPE_INFO, "Enabling TCC for %@", buf, 0xCu);
      }

      v23 = *v11;
      TCCAccessSetForBundleId();
    }

    v7 = v25;
  }

  else
  {
    v9 = SYDGetTCCLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SYDTCCHelper enableUbiquityIfNecessaryForAuditToken:];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)startListeningToTCCAccessChangedNotifications
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __61__SYDTCCHelper_startListeningToTCCAccessChangedNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = SYDGetTCCLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __61__SYDTCCHelper_startListeningToTCCAccessChangedNotifications__block_invoke_cold_1();
    }

    [WeakRetained setCachedDisabledStoreIdentifiers:0];
  }
}

- (void)stopListeningToTCCAccessChangedNotifications
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __53__SYDTCCHelper_isUbiquityDisabledForStoreIdentifier___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__SYDTCCHelper_isUbiquityDisabledForStoreIdentifier___block_invoke_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)enableUbiquityIfNecessaryForAuditToken:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)enableUbiquityIfNecessaryForAuditToken:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)enableUbiquityIfNecessaryForAuditToken:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)enableUbiquityIfNecessaryForAuditToken:.cold.4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __61__SYDTCCHelper_startListeningToTCCAccessChangedNotifications__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end