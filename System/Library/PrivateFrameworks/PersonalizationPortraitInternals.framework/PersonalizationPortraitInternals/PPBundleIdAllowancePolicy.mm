@interface PPBundleIdAllowancePolicy
+ (id)defaultPolicy;
- (BOOL)bundleIdentifierIsAllowed:(id)a3 blocklist:(id)a4 allowlist:(id)a5;
- (BOOL)bundleIdentifierIsAllowedForNotifications:(id)a3;
- (BOOL)bundleIdentifierIsAllowedForSearchableItems:(id)a3;
- (PPBundleIdAllowancePolicy)initWithNotificationBlocklist:(id)a3 notificationAllowlist:(id)a4 searchableItemBlocklist:(id)a5 searchableItemAllowlist:(id)a6;
- (id)_readAssetData:(id)a3;
- (id)init_;
- (void)_loadAssetData;
- (void)_setGuardedDataWithNotificationBlocklist:(id)a3 notificationAllowlist:(id)a4 searchableItemBlocklist:(id)a5 searchableItemAllowlist:(id)a6;
- (void)dealloc;
@end

@implementation PPBundleIdAllowancePolicy

+ (id)defaultPolicy
{
  if (defaultPolicy__pasOnceToken2 != -1)
  {
    dispatch_once(&defaultPolicy__pasOnceToken2, &__block_literal_global_921);
  }

  v3 = defaultPolicy__pasExprOnceResult;

  return v3;
}

- (BOOL)bundleIdentifierIsAllowed:(id)a3 blocklist:(id)a4 allowlist:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (![v8 count] && !objc_msgSend(v9, "count"))
  {
    v12 = 1;
    goto LABEL_10;
  }

  if (![v8 count])
  {
    goto LABEL_7;
  }

  v10 = [v9 count];
  v11 = [v8 containsObject:v7];
  if (!v10)
  {
    v12 = v11 ^ 1;
    goto LABEL_10;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
LABEL_7:
    v12 = [v9 containsObject:v7];
  }

LABEL_10:

  return v12;
}

- (BOOL)bundleIdentifierIsAllowedForSearchableItems:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__891;
  v18 = __Block_byref_object_dispose__892;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__891;
  v12 = __Block_byref_object_dispose__892;
  v13 = 0;
  allowancePolicyLock = self->_allowancePolicyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__PPBundleIdAllowancePolicy_bundleIdentifierIsAllowedForSearchableItems___block_invoke;
  v7[3] = &unk_278971A98;
  v7[4] = &v14;
  v7[5] = &v8;
  [(_PASLock *)allowancePolicyLock runWithLockAcquired:v7];
  LOBYTE(self) = [(PPBundleIdAllowancePolicy *)self bundleIdentifierIsAllowed:v4 blocklist:v15[5] allowlist:v9[5]];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return self;
}

void __73__PPBundleIdAllowancePolicy_bundleIdentifierIsAllowedForSearchableItems___block_invoke(uint64_t a1, id *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2[3]);
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4[4]);
}

- (BOOL)bundleIdentifierIsAllowedForNotifications:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__891;
  v18 = __Block_byref_object_dispose__892;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__891;
  v12 = __Block_byref_object_dispose__892;
  v13 = 0;
  allowancePolicyLock = self->_allowancePolicyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__PPBundleIdAllowancePolicy_bundleIdentifierIsAllowedForNotifications___block_invoke;
  v7[3] = &unk_278971A98;
  v7[4] = &v14;
  v7[5] = &v8;
  [(_PASLock *)allowancePolicyLock runWithLockAcquired:v7];
  LOBYTE(self) = [(PPBundleIdAllowancePolicy *)self bundleIdentifierIsAllowed:v4 blocklist:v15[5] allowlist:v9[5]];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return self;
}

void __71__PPBundleIdAllowancePolicy_bundleIdentifierIsAllowedForNotifications___block_invoke(uint64_t a1, id *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2[1]);
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4[2]);
}

void __46__PPBundleIdAllowancePolicy__resetGuardedData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = v2[1];
  v2[1] = v3;

  v5 = objc_opt_new();
  v6 = v2[2];
  v2[2] = v5;

  v7 = objc_opt_new();
  v8 = v2[3];
  v2[3] = v7;

  v9 = objc_opt_new();
  v10 = v2[4];
  v2[4] = v9;
}

- (void)_setGuardedDataWithNotificationBlocklist:(id)a3 notificationAllowlist:(id)a4 searchableItemBlocklist:(id)a5 searchableItemAllowlist:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  allowancePolicyLock = self->_allowancePolicyLock;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __140__PPBundleIdAllowancePolicy__setGuardedDataWithNotificationBlocklist_notificationAllowlist_searchableItemBlocklist_searchableItemAllowlist___block_invoke;
  v19[3] = &unk_278971A50;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [(_PASLock *)allowancePolicyLock runWithLockAcquired:v19];
}

void __140__PPBundleIdAllowancePolicy__setGuardedDataWithNotificationBlocklist_notificationAllowlist_searchableItemBlocklist_searchableItemAllowlist___block_invoke(id *a1, id *a2)
{
  objc_storeStrong(a2 + 1, a1[4]);
  v4 = a2;
  objc_storeStrong(v4 + 2, a1[5]);
  objc_storeStrong(v4 + 3, a1[6]);
  objc_storeStrong(v4 + 4, a1[7]);
}

- (id)_readAssetData:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = +[PPTrialWrapper sharedInstance];
  v4 = [v3 plistForFactorName:@"allowancePolicy.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_GLOBAL"];

  if (!v4)
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_23224A000, v5, OS_LOG_TYPE_FAULT, "PPBundleIdAllowancePolicy: no allowance policy found.", buf, 2u);
    }
  }

  v6 = [v4 objectForKeyedSubscript:@"notificationBlocklist"];
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v29 = @"notificationBlocklist";
    _os_log_fault_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Param key not found: %@", buf, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v29 = @"notificationBlocklist";
    _os_log_fault_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Wrong value type for param key: %@", buf, 0xCu);
  }

  v7 = [v4 objectForKeyedSubscript:@"notificationAllowlist"];
  if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v29 = @"notificationAllowlist";
    _os_log_fault_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Param key not found: %@", buf, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v29 = @"notificationAllowlist";
    _os_log_fault_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Wrong value type for param key: %@", buf, 0xCu);
  }

  v8 = [v4 objectForKeyedSubscript:@"searchableItemBlocklist"];
  if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v29 = @"searchableItemBlocklist";
    _os_log_fault_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Param key not found: %@", buf, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v29 = @"searchableItemBlocklist";
    _os_log_fault_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Wrong value type for param key: %@", buf, 0xCu);
  }

  v9 = [v4 objectForKeyedSubscript:@"searchableItemAllowlist"];
  if (!v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v29 = @"searchableItemAllowlist";
    _os_log_fault_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Param key not found: %@", buf, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v29 = @"searchableItemAllowlist";
    _os_log_fault_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Wrong value type for param key: %@", buf, 0xCu);
  }

  v26[0] = @"notificationBlocklist";
  v10 = objc_alloc(MEMORY[0x277CBEB98]);
  v11 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = [v10 initWithArray:{v12, v26[0]}];
  v27[0] = v13;
  v26[1] = @"notificationAllowlist";
  v14 = objc_alloc(MEMORY[0x277CBEB98]);
  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v11;
  }

  v16 = [v14 initWithArray:v15];
  v27[1] = v16;
  v26[2] = @"searchableItemBlocklist";
  v17 = objc_alloc(MEMORY[0x277CBEB98]);
  if (v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = v11;
  }

  v19 = [v17 initWithArray:v18];
  v27[2] = v19;
  v26[3] = @"searchableItemAllowlist";
  v20 = objc_alloc(MEMORY[0x277CBEB98]);
  if (v9)
  {
    v21 = v9;
  }

  else
  {
    v21 = v11;
  }

  v22 = [v20 initWithArray:v21];
  v27[3] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)_loadAssetData
{
  v7 = [(PPBundleIdAllowancePolicy *)self _readAssetData:@"allowancePolicy.plist"];
  v3 = [v7 objectForKeyedSubscript:@"notificationBlocklist"];
  v4 = [v7 objectForKeyedSubscript:@"notificationAllowlist"];
  v5 = [v7 objectForKeyedSubscript:@"searchableItemBlocklist"];
  v6 = [v7 objectForKeyedSubscript:@"searchableItemAllowlist"];
  [(PPBundleIdAllowancePolicy *)self _setGuardedDataWithNotificationBlocklist:v3 notificationAllowlist:v4 searchableItemBlocklist:v5 searchableItemAllowlist:v6];
}

- (PPBundleIdAllowancePolicy)initWithNotificationBlocklist:(id)a3 notificationAllowlist:(id)a4 searchableItemBlocklist:(id)a5 searchableItemAllowlist:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = PPBundleIdAllowancePolicy;
  v14 = [(PPBundleIdAllowancePolicy *)&v20 init];
  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277D425F8]);
    v16 = objc_opt_new();
    v17 = [v15 initWithGuardedData:v16];
    allowancePolicyLock = v14->_allowancePolicyLock;
    v14->_allowancePolicyLock = v17;

    [(PPBundleIdAllowancePolicy *)v14 _setGuardedDataWithNotificationBlocklist:v10 notificationAllowlist:v11 searchableItemBlocklist:v12 searchableItemAllowlist:v13];
  }

  return v14;
}

- (void)dealloc
{
  v3 = +[PPTrialWrapper sharedInstance];
  [v3 removeUpdateHandlerForToken:self->_trialToken];

  v4.receiver = self;
  v4.super_class = PPBundleIdAllowancePolicy;
  [(PPBundleIdAllowancePolicy *)&v4 dealloc];
}

- (id)init_
{
  v14.receiver = self;
  v14.super_class = PPBundleIdAllowancePolicy;
  v2 = [(PPBundleIdAllowancePolicy *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    allowancePolicyLock = v2->_allowancePolicyLock;
    v2->_allowancePolicyLock = v5;

    [(PPBundleIdAllowancePolicy *)v2 _loadAssetData];
    objc_initWeak(&location, v2);
    v7 = +[PPTrialWrapper sharedInstance];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __34__PPBundleIdAllowancePolicy_init___block_invoke;
    v11[3] = &unk_2789797B8;
    objc_copyWeak(&v12, &location);
    v8 = [v7 addUpdateHandlerForNamespaceName:@"PERSONALIZATION_PORTRAIT_GLOBAL" block:v11];
    trialToken = v2->_trialToken;
    v2->_trialToken = v8;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __34__PPBundleIdAllowancePolicy_init___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadAssetData];
}

void __42__PPBundleIdAllowancePolicy_defaultPolicy__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[PPBundleIdAllowancePolicy alloc] init];
  v2 = defaultPolicy__pasExprOnceResult;
  defaultPolicy__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end