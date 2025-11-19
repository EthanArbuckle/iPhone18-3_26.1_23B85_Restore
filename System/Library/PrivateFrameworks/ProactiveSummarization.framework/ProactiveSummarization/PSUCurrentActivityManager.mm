@interface PSUCurrentActivityManager
+ (PSUCurrentActivityManager)sharedInstance;
- (BOOL)_hasLayoutInfo;
- (BOOL)_isAppVisibleWithBundleId:(id)a3;
- (PSUCurrentActivityManager)init;
- (void)_visibilityForAppWithBundleId:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)fetchUserActivityContentIdentifiersForBundleId:(id)a3 completionHandler:(id)a4;
@end

@implementation PSUCurrentActivityManager

- (BOOL)_isAppVisibleWithBundleId:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [(FBSDisplayLayoutMonitor *)self->_monitor currentLayout];
  v5 = [v4 elements];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v24 = *v26;
    v9 = *MEMORY[0x277D0ABA0];
    v10 = *MEMORY[0x277D0ABA8];
    v23 = *MEMORY[0x277D0AB88];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 identifier];
        if ([v13 isEqualToString:v9])
        {
          goto LABEL_15;
        }

        v14 = [v12 identifier];
        if ([v14 isEqualToString:v10])
        {

LABEL_15:
          goto LABEL_16;
        }

        v15 = [v12 identifier];
        v16 = [v15 isEqualToString:v23];

        if (v16)
        {
          goto LABEL_16;
        }

        if ([v12 conformsToProtocol:&unk_284702678])
        {
          v17 = [v12 bundleIdentifier];
          v18 = [v17 isEqualToString:v21];

          v8 |= v18;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_16:
    v8 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (BOOL)_hasLayoutInfo
{
  v2 = [(FBSDisplayLayoutMonitor *)self->_monitor currentLayout];
  v3 = v2 != 0;

  return v3;
}

- (void)_visibilityForAppWithBundleId:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PSUCurrentActivityManager *)self _hasLayoutInfo])
  {
    v7[2](v7, [(PSUCurrentActivityManager *)self _isAppVisibleWithBundleId:v6]);
  }

  else
  {
    v8 = dispatch_time(0, 1000000000);
    v9 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__PSUCurrentActivityManager__visibilityForAppWithBundleId_completionHandler___block_invoke;
    block[3] = &unk_2789476C8;
    v12 = v7;
    block[4] = self;
    v11 = v6;
    dispatch_after(v8, v9, block);
  }
}

uint64_t __77__PSUCurrentActivityManager__visibilityForAppWithBundleId_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _isAppVisibleWithBundleId:*(a1 + 40)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)fetchUserActivityContentIdentifiersForBundleId:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__PSUCurrentActivityManager_fetchUserActivityContentIdentifiersForBundleId_completionHandler___block_invoke;
  v10[3] = &unk_278947678;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v6;
  v9 = v7;
  [(PSUCurrentActivityManager *)self _visibilityForAppWithBundleId:v8 completionHandler:v10];
}

void __94__PSUCurrentActivityManager_fetchUserActivityContentIdentifiersForBundleId_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277CC1EF0];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __94__PSUCurrentActivityManager_fetchUserActivityContentIdentifiersForBundleId_completionHandler___block_invoke_2;
    v8[3] = &unk_2789476A0;
    v11 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9 = v4;
    v10 = v5;
    [v3 _currentUserActivityProxiesWithOptions:0 matching:0 completionHandler:v8];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = objc_opt_new();
    (*(v6 + 16))(v6, v7, 0);
  }
}

void __94__PSUCurrentActivityManager_fetchUserActivityContentIdentifiersForBundleId_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);
    v6 = *MEMORY[0x277D85DE8];

    v5();
  }

  else
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __94__PSUCurrentActivityManager_fetchUserActivityContentIdentifiersForBundleId_completionHandler___block_invoke_3;
    v37[3] = &unk_278947628;
    v38 = *(a1 + 32);
    v8 = [a2 _pas_filteredArrayWithTest:v37];
    if ([v8 count])
    {
      v25 = a1;
      v9 = dispatch_group_create();
      v10 = objc_opt_new();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = v8;
      v11 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v34;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v34 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v33 + 1) + 8 * i);
            dispatch_group_enter(v9);
            v16 = MEMORY[0x277CC1EF0];
            v17 = [v15 uuid];
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __94__PSUCurrentActivityManager_fetchUserActivityContentIdentifiersForBundleId_completionHandler___block_invoke_4;
            v30[3] = &unk_278947650;
            v30[4] = v15;
            v31 = v10;
            v32 = v9;
            [v16 _fetchUserActivityWithUUID:v17 completionHandler:v30];
          }

          v12 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v12);
      }

      v18 = MEMORY[0x277D425A0];
      v19 = qos_class_self();
      v20 = dispatch_get_global_queue(v19, 0);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __94__PSUCurrentActivityManager_fetchUserActivityContentIdentifiersForBundleId_completionHandler___block_invoke_15;
      v27[3] = &unk_278947678;
      v21 = *(v25 + 48);
      v28 = v10;
      v29 = v21;
      v27[4] = *(v25 + 40);
      v22 = v10;
      [v18 notifyGroup:v9 onQueue:v20 withTimeout:v27 block:5.0];
    }

    else
    {
      v23 = *(a1 + 48);
      v9 = objc_opt_new();
      (*(v23 + 16))(v23, v9, 0);
    }

    v24 = *MEMORY[0x277D85DE8];
  }
}

uint64_t __94__PSUCurrentActivityManager_fetchUserActivityContentIdentifiersForBundleId_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __94__PSUCurrentActivityManager_fetchUserActivityContentIdentifiersForBundleId_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PSUSummarizationLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) uuid];
      v14 = 138412546;
      v15 = v13;
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&dword_231CAE000, v7, OS_LOG_TYPE_ERROR, "Could not fetch user activity for UUID: %@; error: %@", &v14, 0x16u);
    }
  }

  v8 = [v5 targetContentIdentifier];

  if (v8)
  {
    v9 = *(a1 + 40);
    objc_sync_enter(v9);
    v10 = *(a1 + 40);
    v11 = [v5 targetContentIdentifier];
    [v10 addObject:v11];

    objc_sync_exit(v9);
  }

  dispatch_group_leave(*(a1 + 48));

  v12 = *MEMORY[0x277D85DE8];
}

void __94__PSUCurrentActivityManager_fetchUserActivityContentIdentifiersForBundleId_completionHandler___block_invoke_15(uint64_t a1, char a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    obj = *(a1 + 40);
    objc_sync_enter(obj);
    v3 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
    objc_sync_exit(obj);
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = MEMORY[0x277CCA9B8];
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"Timed out";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v11 = [v6 errorWithDomain:v9 code:-1 userInfo:v10];
    (*(v5 + 16))(v5, 0, v11);

    v12 = *MEMORY[0x277D85DE8];
  }
}

- (void)dealloc
{
  [(FBSDisplayLayoutMonitor *)self->_monitor invalidate];
  v3.receiver = self;
  v3.super_class = PSUCurrentActivityManager;
  [(PSUCurrentActivityManager *)&v3 dealloc];
}

- (PSUCurrentActivityManager)init
{
  v7.receiver = self;
  v7.super_class = PSUCurrentActivityManager;
  v2 = [(PSUCurrentActivityManager *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    v4 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v3];
    monitor = v2->_monitor;
    v2->_monitor = v4;
  }

  return v2;
}

+ (PSUCurrentActivityManager)sharedInstance
{
  if (sharedInstance__pasOnceToken2 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2, &__block_literal_global_25);
  }

  v3 = sharedInstance__pasExprOnceResult;

  return v3;
}

void __43__PSUCurrentActivityManager_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end