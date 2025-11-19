@interface WBSDigitalHealthManager
+ (id)_webUsageController;
+ (void)_updateWebpageUsage:(id)a3 withDigitalHealthManagerUsageState:(unint64_t)a4 withCompletionHandler:(id)a5;
+ (void)deleteAllUsageHistoryWithProfileIdentifier:(id)a3;
+ (void)deleteUsageHistoryForURLs:(id)a3 profileIdentifier:(id)a4 completionHandler:(id)a5;
+ (void)deleteUsageHistoryFromDate:(id)a3 toDate:(id)a4 profileIdentifier:(id)a5;
- (WBSDigitalHealthManager)init;
- (WBSDigitalHealthManagerDelegate)delegate;
- (void)_historyItemsWereRemoved:(id)a3;
- (void)_historyWasCleared:(id)a3;
- (void)_requestPoliciesForWebsites:(id)a3 completionHandler:(id)a4;
- (void)_startObserving;
- (void)_stopObserving;
- (void)_stopUsageTrackingForURL:(id)a3 profileIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)_updateUsageTrackingForURL:(id)a3 withBundleIdentifier:(id)a4 profileIdentifier:(id)a5 toState:(unint64_t)a6;
- (void)dealloc;
- (void)getOverlayStateForURLs:(id)a3 withCompletionHandler:(id)a4;
- (void)startObserving;
- (void)stopObservingWithCompletionHandler:(id)a3;
- (void)stopUsageTrackingForURL:(id)a3 profileIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)updateUsageTrackingForURL:(id)a3 withBundleIdentifier:(id)a4 profileIdentifier:(id)a5 toState:(unint64_t)a6;
@end

@implementation WBSDigitalHealthManager

void __41__WBSDigitalHealthManager_startObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _startObserving];
    WeakRetained = v2;
  }
}

- (void)_startObserving
{
  if (!self->_monitor)
  {
    objc_initWeak(&location, self);
    v3 = objc_alloc(MEMORY[0x1E6999F60]);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __42__WBSDigitalHealthManager__startObserving__block_invoke;
    v11 = &unk_1E7FB86B8;
    objc_copyWeak(&v12, &location);
    v4 = [v3 initWithPolicyChangeHandler:&v8];
    monitor = self->_monitor;
    self->_monitor = v4;

    v6 = [MEMORY[0x1E695DF90] dictionary];
    trackedUrlsProfileIdentifierPairToUsageState = self->_trackedUrlsProfileIdentifierPairToUsageState;
    self->_trackedUrlsProfileIdentifierPairToUsageState = v6;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (WBSDigitalHealthManager)init
{
  v6.receiver = self;
  v6.super_class = WBSDigitalHealthManager;
  v2 = [(WBSDigitalHealthManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__historyItemsWereRemoved_ name:@"WBSHistoryItemsWereRemovedNotification" object:0];
    [v3 addObserver:v2 selector:sel__historyWasCleared_ name:@"WBSHistoryWasClearedNotification" object:0];
    v4 = v2;
  }

  return v2;
}

- (void)startObserving
{
  objc_initWeak(&location, self);
  v2 = digitalHealthManagerGlobalQueue();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__WBSDigitalHealthManager_startObserving__block_invoke;
  v3[3] = &unk_1E7FB86B8;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WBSDigitalHealthManager;
  [(WBSDigitalHealthManager *)&v4 dealloc];
}

void __42__WBSDigitalHealthManager__startObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v2 policyDidChangeForDigitalHealthManager:v3];
    }

    WeakRetained = v3;
  }
}

- (void)stopObservingWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = digitalHealthManagerGlobalQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__WBSDigitalHealthManager_stopObservingWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7FC54E0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __62__WBSDigitalHealthManager_stopObservingWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _stopObserving];
    v3 = v5;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v3 = v5;
  }
}

- (void)_stopObserving
{
  monitor = self->_monitor;
  self->_monitor = 0;

  trackedUrlsProfileIdentifierPairToUsageState = self->_trackedUrlsProfileIdentifierPairToUsageState;
  self->_trackedUrlsProfileIdentifierPairToUsageState = 0;
}

- (void)_requestPoliciesForWebsites:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = digitalHealthManagerGlobalQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__WBSDigitalHealthManager__requestPoliciesForWebsites_completionHandler___block_invoke;
  block[3] = &unk_1E7FB6E08;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __73__WBSDigitalHealthManager__requestPoliciesForWebsites_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _startObserving];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 48);

  return [v3 requestPoliciesForWebsites:v2 completionHandler:v4];
}

- (void)getOverlayStateForURLs:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 safari_filterObjectsUsingBlock:&__block_literal_global_45];
  if ([v8 count])
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__WBSDigitalHealthManager_getOverlayStateForURLs_withCompletionHandler___block_invoke_2;
    v9[3] = &unk_1E7FC5528;
    objc_copyWeak(&v11, &location);
    v10 = v7;
    [(WBSDigitalHealthManager *)self _requestPoliciesForWebsites:v8 completionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __72__WBSDigitalHealthManager_getOverlayStateForURLs_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

- (void)updateUsageTrackingForURL:(id)a3 withBundleIdentifier:(id)a4 profileIdentifier:(id)a5 toState:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = digitalHealthManagerGlobalQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__WBSDigitalHealthManager_updateUsageTrackingForURL_withBundleIdentifier_profileIdentifier_toState___block_invoke;
  block[3] = &unk_1E7FC5550;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

- (void)_updateUsageTrackingForURL:(id)a3 withBundleIdentifier:(id)a4 profileIdentifier:(id)a5 toState:(unint64_t)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  if ([v17 safari_isHTTPFamilyURL])
  {
    v12 = [objc_alloc(MEMORY[0x1E69C88F0]) initWithFirst:v17 second:v11];
    v13 = [(NSMutableDictionary *)self->_trackedUrlsProfileIdentifierPairToUsageState objectForKeyedSubscript:v12];
    v14 = v13;
    if (!a6 || v13)
    {
      if (!a6)
      {
        [(WBSDigitalHealthManager *)self _stopUsageTrackingForURL:v17 profileIdentifier:v11 withCompletionHandler:0];
        goto LABEL_7;
      }
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x1E69DEFE8]);
      v16 = convertSafariProfileIdentifierToScreenTimeProfileIdentifier(v11);
      v14 = [v15 initWithURL:v17 bundleIdentifier:v10 profileIdentifier:v16];

      [(NSMutableDictionary *)self->_trackedUrlsProfileIdentifierPairToUsageState setObject:v14 forKeyedSubscript:v12];
    }

    [objc_opt_class() _updateWebpageUsage:v14 withDigitalHealthManagerUsageState:a6 withCompletionHandler:0];
LABEL_7:
  }
}

- (void)stopUsageTrackingForURL:(id)a3 profileIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = digitalHealthManagerGlobalQueue();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__WBSDigitalHealthManager_stopUsageTrackingForURL_profileIdentifier_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E7FC51C0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_stopUsageTrackingForURL:(id)a3 profileIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v13 = a5;
  v8 = MEMORY[0x1E69C88F0];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithFirst:v10 second:v9];

  v12 = [(NSMutableDictionary *)self->_trackedUrlsProfileIdentifierPairToUsageState objectForKeyedSubscript:v11];
  if (v12)
  {
    [(NSMutableDictionary *)self->_trackedUrlsProfileIdentifierPairToUsageState removeObjectForKey:v11];
    [objc_opt_class() _updateWebpageUsage:v12 withDigitalHealthManagerUsageState:0 withCompletionHandler:v13];
  }

  else if (v13)
  {
    v13[2]();
  }
}

- (void)_historyItemsWereRemoved:(id)a3
{
  v9 = a3;
  v3 = [v9 userInfo];
  v4 = [v3 safari_arrayForKey:@"WBSHistoryItemsKey"];

  if ([v4 count])
  {
    v5 = [v4 safari_mapObjectsUsingBlock:&__block_literal_global_17];
    v6 = [v9 object];
    v7 = objc_opt_class();
    v8 = [v6 profileLocalIdentifier];
    [v7 deleteUsageHistoryForURLs:v5 profileIdentifier:v8 completionHandler:0];
  }
}

- (void)_historyWasCleared:(id)a3
{
  v5 = [a3 object];
  v3 = objc_opt_class();
  v4 = [v5 profileLocalIdentifier];
  [v3 deleteAllUsageHistoryWithProfileIdentifier:v4];
}

+ (void)deleteAllUsageHistoryWithProfileIdentifier:(id)a3
{
  v3 = a3;
  v4 = digitalHealthManagerGlobalQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__WBSDigitalHealthManager_deleteAllUsageHistoryWithProfileIdentifier___block_invoke;
  block[3] = &unk_1E7FB6D90;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __70__WBSDigitalHealthManager_deleteAllUsageHistoryWithProfileIdentifier___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXDigitalHealth();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __70__WBSDigitalHealthManager_deleteAllUsageHistoryWithProfileIdentifier___block_invoke_cold_1(a1, v2);
  }

  v3 = +[WBSDigitalHealthManager _webUsageController];
  v4 = [MEMORY[0x1E696AAE8] safari_safariApplicationPlatformBundleIdentifier];
  v5 = convertSafariProfileIdentifierToScreenTimeProfileIdentifier(*(a1 + 32));
  [v3 deleteAllWebHistoryForApplication:v4 profileIdentifier:v5 completionHandler:&__block_literal_global_23];
}

void __70__WBSDigitalHealthManager_deleteAllUsageHistoryWithProfileIdentifier___block_invoke_20(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXDigitalHealth();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __70__WBSDigitalHealthManager_deleteAllUsageHistoryWithProfileIdentifier___block_invoke_20_cold_1(v3);
    }
  }
}

+ (void)deleteUsageHistoryFromDate:(id)a3 toDate:(id)a4 profileIdentifier:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E696AB80];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithStartDate:v10 endDate:v9];

  v12 = digitalHealthManagerGlobalQueue();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__WBSDigitalHealthManager_deleteUsageHistoryFromDate_toDate_profileIdentifier___block_invoke;
  v15[3] = &unk_1E7FB6E30;
  v16 = v7;
  v17 = v11;
  v13 = v11;
  v14 = v7;
  dispatch_async(v12, v15);
}

void __79__WBSDigitalHealthManager_deleteUsageHistoryFromDate_toDate_profileIdentifier___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXDigitalHealth();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __79__WBSDigitalHealthManager_deleteUsageHistoryFromDate_toDate_profileIdentifier___block_invoke_cold_1(a1, v2);
  }

  v3 = +[WBSDigitalHealthManager _webUsageController];
  v4 = [MEMORY[0x1E696AAE8] safari_safariApplicationPlatformBundleIdentifier];
  v5 = *(a1 + 40);
  v6 = convertSafariProfileIdentifierToScreenTimeProfileIdentifier(*(a1 + 32));
  [v3 deleteWebHistoryDuringInterval:v5 application:v4 profileIdentifier:v6 completionHandler:&__block_literal_global_27_0];
}

void __79__WBSDigitalHealthManager_deleteUsageHistoryFromDate_toDate_profileIdentifier___block_invoke_25(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXDigitalHealth();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __79__WBSDigitalHealthManager_deleteUsageHistoryFromDate_toDate_profileIdentifier___block_invoke_25_cold_1(v3);
    }
  }
}

+ (id)_webUsageController
{
  if (_webUsageController_onceToken != -1)
  {
    +[WBSDigitalHealthManager _webUsageController];
  }

  v3 = _webUsageController_controller;

  return v3;
}

void __46__WBSDigitalHealthManager__webUsageController__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69C9DE8]);
  v1 = _webUsageController_controller;
  _webUsageController_controller = v0;
}

+ (void)deleteUsageHistoryForURLs:(id)a3 profileIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 copy];
  v10 = digitalHealthManagerGlobalQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__WBSDigitalHealthManager_deleteUsageHistoryForURLs_profileIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E7FB6E08;
  v15 = v7;
  v16 = v9;
  v17 = v8;
  v11 = v8;
  v12 = v9;
  v13 = v7;
  dispatch_async(v10, block);
}

void __89__WBSDigitalHealthManager_deleteUsageHistoryForURLs_profileIdentifier_completionHandler___block_invoke(void **a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXDigitalHealth();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __89__WBSDigitalHealthManager_deleteUsageHistoryForURLs_profileIdentifier_completionHandler___block_invoke_cold_1(a1, v2);
  }

  v3 = +[WBSDigitalHealthManager _webUsageController];
  v4 = [MEMORY[0x1E696AAE8] safari_safariApplicationPlatformBundleIdentifier];
  if (objc_opt_respondsToSelector())
  {
    v5 = a1[5];
    v6 = convertSafariProfileIdentifierToScreenTimeProfileIdentifier(a1[4]);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __89__WBSDigitalHealthManager_deleteUsageHistoryForURLs_profileIdentifier_completionHandler___block_invoke_33;
    v21[3] = &unk_1E7FB8300;
    v22 = a1[6];
    [v3 deleteWebHistoryForURLs:v5 application:v4 profileIdentifier:v6 completionHandler:v21];

    v7 = v22;
  }

  else
  {
    v8 = v3;
    if (a1[6])
    {
      v7 = dispatch_group_create();
    }

    else
    {
      v7 = 0;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = a1[5];
    v9 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if (v7)
          {
            dispatch_group_enter(v7);
          }

          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __89__WBSDigitalHealthManager_deleteUsageHistoryForURLs_profileIdentifier_completionHandler___block_invoke_34;
          v15[3] = &unk_1E7FB8278;
          v16 = v7;
          [v8 deleteWebHistoryForURL:v13 application:v4 completionHandler:v15];
        }

        v10 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v10);
    }

    if (a1[6])
    {
      dispatch_group_notify(v7, MEMORY[0x1E69E96A0], a1[6]);
    }

    v3 = v8;
  }
}

void __89__WBSDigitalHealthManager_deleteUsageHistoryForURLs_profileIdentifier_completionHandler___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXDigitalHealth();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __89__WBSDigitalHealthManager_deleteUsageHistoryForURLs_profileIdentifier_completionHandler___block_invoke_33_cold_1(v4);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void __89__WBSDigitalHealthManager_deleteUsageHistoryForURLs_profileIdentifier_completionHandler___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXDigitalHealth();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __89__WBSDigitalHealthManager_deleteUsageHistoryForURLs_profileIdentifier_completionHandler___block_invoke_33_cold_1(v4);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_group_leave(v5);
  }
}

+ (void)_updateWebpageUsage:(id)a3 withDigitalHealthManagerUsageState:(unint64_t)a4 withCompletionHandler:(id)a5
{
  v7 = a5;
  if (a4 != 2)
  {
    a4 = a4 == 1;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __104__WBSDigitalHealthManager__updateWebpageUsage_withDigitalHealthManagerUsageState_withCompletionHandler___block_invoke;
  v9[3] = &unk_1E7FB8300;
  v10 = v7;
  v8 = v7;
  [a3 changeState:a4 completionHandler:v9];
}

void __104__WBSDigitalHealthManager__updateWebpageUsage_withDigitalHealthManagerUsageState_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXDigitalHealth();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __104__WBSDigitalHealthManager__updateWebpageUsage_withDigitalHealthManagerUsageState_withCompletionHandler___block_invoke_cold_1(v4);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (WBSDigitalHealthManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __70__WBSDigitalHealthManager_deleteAllUsageHistoryWithProfileIdentifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "Deleting all Screen Time usage history in profile (%{public}@).", &v3, 0xCu);
}

void __70__WBSDigitalHealthManager_deleteAllUsageHistoryWithProfileIdentifier___block_invoke_20_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v4, v5, "Unable to delete all Digital Health usage history: %{public}@", v6, v7, v8, v9, v10);
}

void __79__WBSDigitalHealthManager_deleteUsageHistoryFromDate_toDate_profileIdentifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v2;
  v6 = 2114;
  v7 = v3;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "Deleting Screen Time usage history in profile (%{public}@) for specified time interval (%{public}@).", &v4, 0x16u);
}

void __79__WBSDigitalHealthManager_deleteUsageHistoryFromDate_toDate_profileIdentifier___block_invoke_25_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v4, v5, "Unable to delete Digital Health usage history over time range: %{public}@", v6, v7, v8, v9, v10);
}

void __89__WBSDigitalHealthManager_deleteUsageHistoryForURLs_profileIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = 138543618;
  v6 = v3;
  v7 = 2048;
  v8 = [OUTLINED_FUNCTION_2_0() count];
  _os_log_debug_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_DEBUG, "Deleting Screen Time usage history in profile (%{public}@) for %lu URLs.", &v5, 0x16u);
}

void __89__WBSDigitalHealthManager_deleteUsageHistoryForURLs_profileIdentifier_completionHandler___block_invoke_33_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v4, v5, "Unable to delete URL-specific Digital Health usage history: %{public}@", v6, v7, v8, v9, v10);
}

void __104__WBSDigitalHealthManager__updateWebpageUsage_withDigitalHealthManagerUsageState_withCompletionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v4, v5, "Unable to update Digital Health usage state: %{public}@", v6, v7, v8, v9, v10);
}

@end