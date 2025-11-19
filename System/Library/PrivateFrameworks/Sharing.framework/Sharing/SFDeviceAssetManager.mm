@interface SFDeviceAssetManager
- (BOOL)pathInLocalCache:(id)a3;
- (SFDeviceAssetManager)init;
- (id)cacheDirectory;
- (id)hardcodedMappedProducts;
- (id)localCacheWithFileName:(id)a3;
- (id)locallyCachedProductMappings;
- (id)locallyCachedQueryResults;
- (id)onqueue_assetMappedProductTypeForProductType:(id)a3;
- (id)onqueue_mappedProductTypeForProductType:(id)a3;
- (id)onqueue_sharingManagementAsset;
- (void)activate;
- (void)addQueryResultToLocalCache:(id)a3 url:(id)a4 isFallback:(BOOL)a5;
- (void)cacheDirectory;
- (void)clearQueryResultFromLocalCache:(id)a3;
- (void)getAssetBundleForDeviceQuery:(id)a3 withRequestConfiguration:(id)a4;
- (void)invalidate;
- (void)logNetworkStatus;
- (void)mappedProductTypeForProductType:(id)a3 completionHandler:(id)a4;
- (void)onqueue_activate;
- (void)onqueue_downloadAsset:(id)a3 ucat:(LogCategory *)a4 queryLogString:(id)a5 withCompletionHandler:(id)a6;
- (void)onqueue_executeNextMAQueryForTask:(id)a3;
- (void)onqueue_findAssetBundleForAssetQuery:(id)a3 ucat:(LogCategory *)a4 queryType:(id)a5 fallback:(BOOL)a6 retryAttempt:(BOOL)a7 withCompletionHandler:(id)a8;
- (void)onqueue_getAssetBundleForDeviceQuery:(id)a3 withRequestConfiguration:(id)a4;
- (void)onqueue_getCachedAssetBundleForTask:(id)a3;
- (void)onqueue_invalidate;
- (void)onqueue_manuallyFindFallbackAssetBundleMatchingQuery:(id)a3 withCompletionHandler:(id)a4;
- (void)onqueue_purgeAssetsMatchingQuery:(id)a3;
- (void)onqueue_updateMetaDataWithCompletionHandler:(id)a3;
- (void)onqueue_updateSharingManagementAssetIfNecessary;
- (void)onqueue_validateProductTypeInQuery:(id)a3;
- (void)onqueue_variantsMatchingQuery:(id)a3 completionHandler:(id)a4;
- (void)purgeAssetsMatchingQuery:(id)a3;
- (void)setDispatchQueue:(id)a3;
- (void)storeEntries:(id)a3 inLocalCacheWithFileName:(id)a4;
- (void)variantsMatchingQuery:(id)a3 completionHandler:(id)a4;
@end

@implementation SFDeviceAssetManager

- (SFDeviceAssetManager)init
{
  v8.receiver = self;
  v8.super_class = SFDeviceAssetManager;
  v2 = [(SFDeviceAssetManager *)&v8 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = dispatch_queue_create("com.apple.sharingd.device-assets-work-queue", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;
  }

  return v2;
}

- (void)setDispatchQueue:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_activateCalled)
  {
    FatalErrorF();
    __break(1u);
  }

  else
  {
    dispatchQueue = obj->_dispatchQueue;
    obj->_dispatchQueue = v4;

    objc_sync_exit(obj);
  }
}

- (void)activate
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SFDeviceAssetManager_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)onqueue_activate
{
  dispatch_assert_queue_V2(self->_workQueue);
  activateCalled = self->_activateCalled;
  v4 = asset_log();
  v5 = v4;
  if (activateCalled)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SFDeviceAssetManager onqueue_activate];
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Activating", v6, 2u);
    }

    self->_activateCalled = 1;
    [(SFDeviceAssetManager *)self logNetworkStatus];
    if (gSFRunningInSharingD == 1)
    {
      [(SFDeviceAssetManager *)self onqueue_updateMetaDataWithCompletionHandler:0];
    }
  }
}

- (void)logNetworkStatus
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(SFDeviceAssetManager *)self networkStatus];

  if (v3)
  {
    v4 = asset_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(SFDeviceAssetManager *)self networkStatus];
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    if (IsAppleInternalBuild())
    {
      [(CUReachabilityMonitor *)self->_reachabilityMonitor invalidate];
      v6 = objc_opt_new();
      reachabilityMonitor = self->_reachabilityMonitor;
      self->_reachabilityMonitor = v6;

      [(CUReachabilityMonitor *)self->_reachabilityMonitor setTimeout:10.0];
      v8 = [MEMORY[0x1E695DFF8] URLWithString:@"https://basejumper.apple.com/"];
      [(CUReachabilityMonitor *)self->_reachabilityMonitor setDestinationURL:v8];

      [(CUReachabilityMonitor *)self->_reachabilityMonitor setCompletionHandler:&__block_literal_global_26];
      [(CUReachabilityMonitor *)self->_reachabilityMonitor activate];
    }

    goto LABEL_8;
  }

  if (IsAppleInternalBuild())
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__SFDeviceAssetManager_logNetworkStatus__block_invoke_605;
    block[3] = &unk_1E788B198;
    block[4] = self;
    dispatch_async(v9, block);

LABEL_8:
    v10 = *MEMORY[0x1E69E9840];
    return;
  }

  v11 = MGCopyAnswer();
  v12 = v11;
  v13 = @"Production";
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Network status: %@", v14];

  [(SFDeviceAssetManager *)self setNetworkStatus:v15];
  v16 = *MEMORY[0x1E69E9840];

  [(SFDeviceAssetManager *)self logNetworkStatus];
}

void __40__SFDeviceAssetManager_logNetworkStatus__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 code] == -6743)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  v5 = asset_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 localizedDescription];
    v7 = v6;
    v8 = @"Reachable";
    if (v6)
    {
      v8 = v6;
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Basejumper reachability: %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __40__SFDeviceAssetManager_logNetworkStatus__block_invoke_605(uint64_t a1)
{
  v2 = WiFiCopyCurrentNetworkInfo();
  v3 = [v2 objectForKeyedSubscript:@"ssid"];

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Network status: Internal device connected to %@", v3];
  [*(a1 + 32) setNetworkStatus:v4];

  if (gSFRunningInSharingD == 1)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__6;
    v21 = __Block_byref_object_dispose__6;
    v22 = 0;
    v5 = [(objc_class *)getNEConfigurationManagerClass() sharedManager];
    if (v5)
    {
      v6 = dispatch_get_global_queue(0, 0);
      v7 = dispatch_semaphore_create(0);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __40__SFDeviceAssetManager_logNetworkStatus__block_invoke_612;
      v14[3] = &unk_1E788D630;
      v16 = &v17;
      v8 = v7;
      v15 = v8;
      [v5 loadConfigurationsWithCompletionQueue:v6 handler:v14];
      v9 = dispatch_time(0, 2000000000);
      dispatch_semaphore_wait(v8, v9);
    }

    if (v18[5])
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VPN: %@", v18[5]];
    }

    else
    {
      v10 = @"no VPN";
    }

    v11 = MEMORY[0x1E696AEC0];
    v12 = [*(a1 + 32) networkStatus];
    v13 = [v11 stringWithFormat:@"%@ with %@", v12, v10];
    [*(a1 + 32) setNetworkStatus:v13];

    _Block_object_dispose(&v17, 8);
  }

  [*(a1 + 32) logNetworkStatus];
}

void __40__SFDeviceAssetManager_logNetworkStatus__block_invoke_612(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v12 count];
  if (!v5 || v6)
  {
    v8 = [v12 firstObject];
    v9 = [v8 name];
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [v5 localizedDescription];
    v9 = [v7 stringWithFormat:@"Failed to load due to %@", v8];
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)onqueue_updateMetaDataWithCompletionHandler:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = asset_metadata_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[SFDeviceAssetManager onqueue_updateMetaDataWithCompletionHandler:]";
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  getMADownloadOptionsClass();
  v6 = objc_opt_new();
  [v6 setDiscretionary:0];
  [v6 setAllowsCellularAccess:1];
  MAAssetClass = getMAAssetClass();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__SFDeviceAssetManager_onqueue_updateMetaDataWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E788D680;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [(objc_class *)MAAssetClass startCatalogDownload:@"com.apple.MobileAsset.SharingDeviceAssets" options:v6 then:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __68__SFDeviceAssetManager_onqueue_updateMetaDataWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = asset_metadata_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = a2;
    _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Download meta data completed with result %d", buf, 8u);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SFDeviceAssetManager_onqueue_updateMetaDataWithCompletionHandler___block_invoke_635;
  block[3] = &unk_1E788D658;
  v11 = a2;
  block[4] = v6;
  v10 = v5;
  dispatch_async(v7, block);

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __68__SFDeviceAssetManager_onqueue_updateMetaDataWithCompletionHandler___block_invoke_635(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    [*(a1 + 32) onqueue_updateSharingManagementAssetIfNecessary];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)onqueue_updateSharingManagementAssetIfNecessary
{
  v3 = [(SFDeviceAssetManager *)self onqueue_sharingManagementAsset];
  v4 = [v3 attributes];
  v5 = getASAttributeContentVersion();
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  v8 = [objc_alloc(getMAAssetQueryClass()) initWithType:@"com.apple.MobileAsset.SharingDeviceAssets"];
  [v8 returnTypes:0];
  SFDeviceAssetAddKeyValuePair(@"Management", @"YES", v8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke;
  v10[3] = &unk_1E788D6F8;
  v10[4] = self;
  v11 = v8;
  v12 = v7;
  v9 = v8;
  [v9 queryMetaData:v10];
}

void __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_2;
  v6[3] = &unk_1E788D6D0;
  v9 = a2;
  v4 = *(a1 + 40);
  v10 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  dispatch_async(v3, v6);
}

void __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_2(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    v21 = v1;
    v22 = v2;
    v4 = (a1 + 32);
    v5 = [*(a1 + 32) results];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [*v4 results];
      v8 = [v7 count];

      if (v8 >= 2)
      {
        v9 = asset_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_2_cold_1(v4);
        }
      }

      v10 = [*(a1 + 32) results];
      v11 = [v10 firstObject];

      v12 = [v11 attributes];
      v13 = getASAttributeContentVersion();
      v14 = [v12 objectForKeyedSubscript:v13];
      v15 = [v14 integerValue];

      v16 = *(a1 + 56);
      v17 = asset_log();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v15 <= v16)
      {
        if (v18)
        {
          *buf = 0;
          _os_log_impl(&dword_1A9662000, v17, OS_LOG_TYPE_DEFAULT, "Installed management asset is up-to-date", buf, 2u);
        }
      }

      else
      {
        if (v18)
        {
          *buf = 0;
          _os_log_impl(&dword_1A9662000, v17, OS_LOG_TYPE_DEFAULT, "Found new management catalog asset", buf, 2u);
        }

        getMADownloadOptionsClass();
        v17 = objc_opt_new();
        [v17 setDiscretionary:0];
        [v17 setAllowsCellularAccess:1];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_640;
        v19[3] = &unk_1E788D6A8;
        v19[4] = *(a1 + 40);
        [v11 startDownload:v17 then:v19];
      }
    }

    else
    {
      v11 = asset_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_2_cold_2();
      }
    }
  }
}

void __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_640(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = charging_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_640_cold_1();
    }
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_2_641;
    block[3] = &unk_1E788B198;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

void __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_2_641(uint64_t a1)
{
  v2 = asset_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_DEFAULT, "Downloaded new management catalog asset", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;

  v5 = asset_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Updating cached management catalog asset", v6, 2u);
  }

  [*(a1 + 32) onqueue_sharingManagementAsset];
}

- (void)invalidate
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFDeviceAssetManager_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)onqueue_invalidate
{
  dispatch_assert_queue_V2(self->_workQueue);
  if (!self->_invalidateCalled)
  {
    *&self->_invalidateCalled = 257;
  }
}

- (void)variantsMatchingQuery:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = asset_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SFDeviceAssetManager variantsMatchingQuery:completionHandler:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SFDeviceAssetManager_variantsMatchingQuery_completionHandler___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(workQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __64__SFDeviceAssetManager_variantsMatchingQuery_completionHandler___block_invoke(void *a1)
{
  if (*(a1[4] + 16))
  {
    v2 = a1[5];
    v3 = a1[6];
    v4 = a1[4];

    [v4 onqueue_variantsMatchingQuery:v2 completionHandler:v3];
  }

  else
  {
    v5 = __64__SFDeviceAssetManager_variantsMatchingQuery_completionHandler___block_invoke_cold_1();
    [(SFDeviceAssetManager *)v5 onqueue_variantsMatchingQuery:v6 completionHandler:v7, v8];
  }
}

- (void)onqueue_variantsMatchingQuery:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_workQueue);
  [(SFDeviceAssetManager *)self onqueue_validateProductTypeInQuery:v6];
  v8 = [objc_alloc(getMAAssetQueryClass()) initWithType:@"com.apple.MobileAsset.SharingDeviceAssets"];
  [v8 returnTypes:2];
  v9 = [v6 effectiveProductType];
  SFDeviceAssetAddKeyValuePair(@"ProductType", v9, v8);

  if ([v6 legacyAsset])
  {
    if ([v6 h264])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    SFDeviceAssetAddKeyValuePair(@"H264", v10, v8);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke;
  v13[3] = &unk_1E788D748;
  v13[4] = self;
  v14 = v8;
  v15 = v7;
  v11 = v7;
  v12 = v8;
  [v12 queryMetaData:v13];
}

void __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke_2;
  block[3] = &unk_1E788A570;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke_2(id *a1)
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = [a1[4] results];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke_3;
  v19[3] = &unk_1E788D720;
  v5 = v2;
  v20 = v5;
  v6 = v3;
  v21 = v6;
  [v4 enumerateObjectsUsingBlock:v19];

  v7 = [a1[4] results];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke_4;
  v16[3] = &unk_1E788D720;
  v17 = v6;
  v8 = v5;
  v18 = v8;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:v16];

  v10 = [a1[5] dispatchQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke_5;
  v13[3] = &unk_1E788B318;
  v11 = a1[6];
  v14 = v8;
  v15 = v11;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 state] == 5)
  {
    v3 = *(a1 + 32);
    v4 = [v8 attributes];
    [v3 addObject:v4];

    v5 = *(a1 + 40);
    v6 = [v8 attributes];
    v7 = [v6 objectForKeyedSubscript:@"VariantName"];
    [v5 addObject:v7];
  }
}

void __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 attributes];
  v4 = [v3 objectForKeyedSubscript:@"VariantName"];

  if (([*(a1 + 32) containsObject:v4] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [v7 attributes];
    [v5 addObject:v6];
  }
}

void __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)getAssetBundleForDeviceQuery:(id)a3 withRequestConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (*[v6 ucat] <= 50)
  {
    if (*[v6 ucat] != -1 || (objc_msgSend(v6, "ucat"), _LogCategory_Initialize()))
    {
      [SFDeviceAssetManager getAssetBundleForDeviceQuery:v6 withRequestConfiguration:?];
    }
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__SFDeviceAssetManager_getAssetBundleForDeviceQuery_withRequestConfiguration___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workQueue, block);
}

void __78__SFDeviceAssetManager_getAssetBundleForDeviceQuery_withRequestConfiguration___block_invoke(void *a1)
{
  if (*(a1[4] + 16))
  {
    v2 = a1[5];
    v3 = a1[6];
    v4 = a1[4];

    [v4 onqueue_getAssetBundleForDeviceQuery:v2 withRequestConfiguration:v3];
  }

  else
  {
    v5 = __78__SFDeviceAssetManager_getAssetBundleForDeviceQuery_withRequestConfiguration___block_invoke_cold_1();
    [(SFDeviceAssetManager *)v5 onqueue_getCachedAssetBundleForTask:v6, v7];
  }
}

- (void)onqueue_getCachedAssetBundleForTask:(id)a3
{
  v20 = a3;
  v4 = [(SFDeviceAssetManager *)self locallyCachedQueryResults];
  v5 = [v20 deviceAssetQuery];
  v6 = [v5 stringIdentifier];
  v7 = [v4 objectForKey:v6];

  if (v7)
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
    v9 = [v20 updateTaskWithAssetURL:v8 error:0 isFallback:1 isImperfectMatch:0 isCached:1];

    [v20 completeIfPossible];
    v10 = [v20 deviceAssetQuery];
    v11 = *[v10 ucat];
    if (v9)
    {
      if (v11 <= 50)
      {
        v12 = [v20 deviceAssetQuery];
        if (*[v12 ucat] == -1)
        {
          v16 = [v20 deviceAssetQuery];
          [v16 ucat];
          v17 = _LogCategory_Initialize();

          if (!v17)
          {
            goto LABEL_21;
          }

          goto LABEL_15;
        }

        goto LABEL_5;
      }

      goto LABEL_20;
    }

    if (v11 <= 90)
    {
      v13 = [v20 deviceAssetQuery];
      if (*[v13 ucat] == -1)
      {
        v18 = [v20 deviceAssetQuery];
        [v18 ucat];
        v19 = _LogCategory_Initialize();

        if (!v19)
        {
LABEL_19:
          v10 = [v20 deviceAssetQuery];
          [(SFDeviceAssetManager *)self clearQueryResultFromLocalCache:v10];
          goto LABEL_20;
        }
      }

      else
      {
      }

      v10 = [v20 deviceAssetQuery];
      [v10 ucat];
      LogPrintF();
    }

    goto LABEL_19;
  }

  v10 = [v20 deviceAssetQuery];
  if (*[v10 ucat] <= 50)
  {
    v12 = [v20 deviceAssetQuery];
    if (*[v12 ucat] == -1)
    {
      v14 = [v20 deviceAssetQuery];
      [v14 ucat];
      v15 = _LogCategory_Initialize();

      if (!v15)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    }

LABEL_5:

LABEL_15:
    v10 = [v20 deviceAssetQuery];
    [v10 ucat];
    LogPrintF();
  }

LABEL_20:

LABEL_21:
}

- (void)onqueue_getAssetBundleForDeviceQuery:(id)a3 withRequestConfiguration:(id)a4
{
  v6 = a3;
  workQueue = self->_workQueue;
  v8 = a4;
  dispatch_assert_queue_V2(workQueue);
  [(SFDeviceAssetManager *)self onqueue_validateProductTypeInQuery:v6];
  v9 = [SFDeviceAssetTask alloc];
  v10 = [(SFDeviceAssetManager *)self dispatchQueue];
  v11 = [(SFDeviceAssetTask *)v9 initWithDeviceQuery:v6 requestConfiguration:v8 dispatchQueue:v10 useProcessLocalCache:[(SFDeviceAssetManager *)self useProcessLocalCache]];

  if ([(SFDeviceAssetManager *)self useProcessLocalCache])
  {
    [(SFDeviceAssetManager *)self onqueue_getCachedAssetBundleForTask:v11];
  }

  if ([(SFDeviceAssetManager *)self canUseMobileAssetSPI])
  {
    [(SFDeviceAssetManager *)self onqueue_executeNextMAQueryForTask:v11];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __86__SFDeviceAssetManager_onqueue_getAssetBundleForDeviceQuery_withRequestConfiguration___block_invoke;
    v12[3] = &unk_1E788D770;
    v13 = v11;
    [(SFDeviceAssetManager *)self onqueue_manuallyFindFallbackAssetBundleMatchingQuery:v6 withCompletionHandler:v12];
  }
}

void __86__SFDeviceAssetManager_onqueue_getAssetBundleForDeviceQuery_withRequestConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  [*(a1 + 32) cancelTimeout];
  v6 = [*(a1 + 32) deviceAssetQuery];
  if (*[v6 ucat] <= 50)
  {
    v7 = [*(a1 + 32) deviceAssetQuery];
    if (*[v7 ucat] == -1)
    {
      v8 = [*(a1 + 32) deviceAssetQuery];
      [v8 ucat];
      v9 = _LogCategory_Initialize();

      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v6 = [*(a1 + 32) deviceAssetQuery];
    [v6 ucat];
    LogPrintF();
  }

LABEL_7:
  [*(a1 + 32) updateTaskWithAssetBundleURL:v10 error:v5 isFallback:0 isImperfectMatch:0 isCached:0];
  [*(a1 + 32) completeIfPossible];
}

- (void)purgeAssetsMatchingQuery:(id)a3
{
  v4 = a3;
  if (*[v4 ucat] <= 50)
  {
    if (*[v4 ucat] != -1 || (objc_msgSend(v4, "ucat"), _LogCategory_Initialize()))
    {
      [SFDeviceAssetManager purgeAssetsMatchingQuery:v4];
    }
  }

  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SFDeviceAssetManager_purgeAssetsMatchingQuery___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __49__SFDeviceAssetManager_purgeAssetsMatchingQuery___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 32);

    [v3 onqueue_purgeAssetsMatchingQuery:v2];
  }

  else
  {
    v4 = __49__SFDeviceAssetManager_purgeAssetsMatchingQuery___block_invoke_cold_1();
    [(SFDeviceAssetManager *)v4 onqueue_purgeAssetsMatchingQuery:v5, v6];
  }
}

- (void)onqueue_purgeAssetsMatchingQuery:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  [(SFDeviceAssetManager *)self onqueue_validateProductTypeInQuery:v4];
  v5 = objc_opt_new();
  v6 = [[SFDeviceQueryParameters alloc] initWithDeviceAssetQuery:v4 installedOnly:1 imperfectMatch:0 fallback:0];
  v7 = [(SFDeviceQueryParameters *)v6 maQuery];
  SFDeviceAssetAddKeyValuePairsForStrictMatch(v4, v7);

  v18 = v6;
  [v5 addObject:v6];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 maQuery];
        v14 = [v4 ucat];
        v15 = [v12 queryType];
        v16 = [v12 fallback];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke;
        v20[3] = &unk_1E788D798;
        v21 = v4;
        [(SFDeviceAssetManager *)self onqueue_findAssetBundleForAssetQuery:v13 ucat:v14 queryType:v15 fallback:v16 retryAttempt:0 withCompletionHandler:v20];
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = (a1 + 32);
  v9 = *[v8 ucat];
  if (v5)
  {
    if (v9 <= 50)
    {
      if (*[*v7 ucat] != -1 || (objc_msgSend(*v7, "ucat"), _LogCategory_Initialize()))
      {
        __57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke_cold_1(v7);
      }
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke_2;
    v10[3] = &unk_1E788D6A8;
    v11 = *v7;
    [v5 purge:v10];
  }

  else if (v9 <= 10)
  {
    if (*[*v7 ucat] != -1 || (objc_msgSend(*v7, "ucat"), _LogCategory_Initialize()))
    {
      __57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke_cold_2(v7);
    }
  }
}

int *__57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  result = [*(a1 + 32) ucat];
  if (*result <= 50)
  {
    if (*[*v1 ucat] != -1)
    {
      return __57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke_2_cold_1(v1);
    }

    [*v1 ucat];
    result = _LogCategory_Initialize();
    if (result)
    {
      return __57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke_2_cold_1(v1);
    }
  }

  return result;
}

- (id)cacheDirectory
{
  v22[1] = *MEMORY[0x1E69E9840];
  cacheDirectory = self->_cacheDirectory;
  if (!cacheDirectory)
  {
    v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v5 = [v4 firstObject];
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:1];
    v7 = [v6 URLByAppendingPathComponent:@"com.apple.sharing" isDirectory:1];

    v20 = 0;
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v7 path];
    v10 = [v8 fileExistsAtPath:v9 isDirectory:&v20];
    v11 = v20;

    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      goto LABEL_11;
    }

    [v8 removeItemAtURL:v7 error:0];
    v21 = *MEMORY[0x1E696A3A8];
    v22[0] = MEMORY[0x1E695E118];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19 = 0;
    [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:v13 error:&v19];
    v14 = v19;

    if (v14)
    {
      v15 = asset_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SFDeviceAssetManager cacheDirectory];
      }
    }

    else
    {
LABEL_11:
      v16 = v7;
      v14 = self->_cacheDirectory;
      self->_cacheDirectory = v16;
    }

    cacheDirectory = self->_cacheDirectory;
  }

  v17 = *MEMORY[0x1E69E9840];

  return cacheDirectory;
}

- (id)locallyCachedProductMappings
{
  cachedProductMappingsTable = self->_cachedProductMappingsTable;
  if (!cachedProductMappingsTable)
  {
    v4 = [(SFDeviceAssetManager *)self localCacheWithFileName:@"DeviceMapping.plist"];
    v5 = self->_cachedProductMappingsTable;
    self->_cachedProductMappingsTable = v4;

    cachedProductMappingsTable = self->_cachedProductMappingsTable;
  }

  return cachedProductMappingsTable;
}

- (id)locallyCachedQueryResults
{
  cachedQueryPaths = self->_cachedQueryPaths;
  if (!cachedQueryPaths)
  {
    v4 = objc_opt_new();
    v5 = self->_cachedQueryPaths;
    self->_cachedQueryPaths = v4;

    v6 = self->_cachedQueryPaths;
    v7 = [(SFDeviceAssetManager *)self localCacheWithFileName:@"QueryResults.plist"];
    [(NSMutableDictionary *)v6 addEntriesFromDictionary:v7];

    cachedQueryPaths = self->_cachedQueryPaths;
  }

  return cachedQueryPaths;
}

- (void)addQueryResultToLocalCache:(id)a3 url:(id)a4 isFallback:(BOOL)a5
{
  v14 = a3;
  v8 = [a4 path];
  if (v8)
  {
    cachedQueryPaths = self->_cachedQueryPaths;
    v10 = [v14 stringIdentifier];
    v11 = [(NSMutableDictionary *)cachedQueryPaths objectForKeyedSubscript:v10];

    if (v11)
    {
      if (a5 || v11 == v8 || ([v11 isEqual:v8] & 1) != 0)
      {
        goto LABEL_14;
      }

      if (*[v14 ucat] > 50 || *objc_msgSend(v14, "ucat") == -1 && (objc_msgSend(v14, "ucat"), !_LogCategory_Initialize()))
      {
LABEL_13:
        v12 = self->_cachedQueryPaths;
        v13 = [v14 stringIdentifier];
        [(NSMutableDictionary *)v12 setObject:v8 forKeyedSubscript:v13];

        [(SFDeviceAssetManager *)self storeEntries:self->_cachedQueryPaths inLocalCacheWithFileName:@"QueryResults.plist"];
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      if (*[v14 ucat] > 50)
      {
        goto LABEL_13;
      }

      if (*[v14 ucat] == -1)
      {
        [v14 ucat];
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }
      }
    }

    [SFDeviceAssetManager addQueryResultToLocalCache:v14 url:? isFallback:?];
    goto LABEL_13;
  }

LABEL_15:
}

- (void)clearQueryResultFromLocalCache:(id)a3
{
  v4 = a3;
  cachedQueryPaths = self->_cachedQueryPaths;
  v10 = v4;
  v6 = [v4 stringIdentifier];
  v7 = [(NSMutableDictionary *)cachedQueryPaths objectForKeyedSubscript:v6];

  if (v7)
  {
    if (*[v10 ucat] <= 50)
    {
      if (*[v10 ucat] != -1 || (objc_msgSend(v10, "ucat"), _LogCategory_Initialize()))
      {
        [SFDeviceAssetManager clearQueryResultFromLocalCache:v10];
      }
    }

    v8 = self->_cachedQueryPaths;
    v9 = [v10 stringIdentifier];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:v9];

    [(SFDeviceAssetManager *)self storeEntries:self->_cachedQueryPaths inLocalCacheWithFileName:@"QueryResults.plist"];
  }
}

- (BOOL)pathInLocalCache:(id)a3
{
  v4 = a3;
  v5 = [(SFDeviceAssetManager *)self locallyCachedQueryResults];
  v6 = [v5 allValues];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (void)onqueue_manuallyFindFallbackAssetBundleMatchingQuery:(id)a3 withCompletionHandler:(id)a4
{
  v35[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v26 = a4;
  if (*[v5 ucat] <= 50)
  {
    if (*[v5 ucat] != -1 || (objc_msgSend(v5, "ucat"), _LogCategory_Initialize()))
    {
      [SFDeviceAssetManager onqueue_manuallyFindFallbackAssetBundleMatchingQuery:v5 withCompletionHandler:?];
    }
  }

  v25 = v5;
  v6 = [v5 effectiveProductType];
  v7 = [v6 stringByReplacingOccurrencesOfString:@" withString:{", @"_"}];

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/PreinstalledAssetsV2/RequiredByOs/com_apple_MobileAsset_SharingDeviceAssets/" isDirectory:1];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = *MEMORY[0x1E695DC30];
  v11 = *MEMORY[0x1E695DB78];
  v35[0] = *MEMORY[0x1E695DC30];
  v35[1] = v11;
  v35[2] = *MEMORY[0x1E695DBA0];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
  v24 = v8;
  v13 = [v9 enumeratorAtURL:v8 includingPropertiesForKeys:v12 options:6 errorHandler:0];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    do
    {
      v18 = 0;
      v27 = v16;
      do
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v30 + 1) + 8 * v18);
        v29 = 0;
        [v19 getResourceValue:&v29 forKey:v11 error:0];
        v20 = v29;
        v28 = 0;
        [v19 getResourceValue:&v28 forKey:v10 error:0];
        v21 = v28;
        if ([v20 BOOLValue] && objc_msgSend(v21, "hasPrefix:", v7))
        {
          if (*[v25 ucat] <= 50)
          {
            if (*[v25 ucat] != -1 || (objc_msgSend(v25, "ucat"), _LogCategory_Initialize()))
            {
              [SFDeviceAssetManager onqueue_manuallyFindFallbackAssetBundleMatchingQuery:v25 withCompletionHandler:?];
            }
          }

          v26[2](v26, v19, 0);
          v16 = v27;
        }

        ++v18;
      }

      while (v16 != v18);
      v22 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      v16 = v22;
    }

    while (v22);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)onqueue_executeNextMAQueryForTask:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = [v4 deviceAssetQuery];
  v6 = [v4 deviceQueryParameters];
  v7 = [v6 firstObject];

  v8 = [v4 deviceQueryParameters];
  [v8 removeObject:v7];

  if (v7)
  {
    v9 = [v7 queryType];
    v10 = [v7 fallback];
    v11 = [v7 maQuery];
    v12 = [v5 ucat];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __58__SFDeviceAssetManager_onqueue_executeNextMAQueryForTask___block_invoke;
    v19[3] = &unk_1E788D7C0;
    v20 = v5;
    v21 = self;
    v24 = v10;
    v22 = v4;
    v23 = v7;
    [(SFDeviceAssetManager *)self onqueue_findAssetBundleForAssetQuery:v11 ucat:v12 queryType:v9 fallback:v10 retryAttempt:0 withCompletionHandler:v19];
  }

  else
  {
    if (*[v5 ucat] <= 50)
    {
      if (*[v5 ucat] != -1 || (objc_msgSend(v5, "ucat"), _LogCategory_Initialize()))
      {
        [SFDeviceAssetManager onqueue_executeNextMAQueryForTask:v5];
      }
    }

    if (([v4 queryResultCalled] & 1) == 0)
    {
      v13 = [v4 fallbackBundle];

      if (!v13)
      {
        v14 = MEMORY[0x1E696ABC0];
        v15 = *MEMORY[0x1E696A798];
        v25 = *MEMORY[0x1E696A578];
        v26[0] = @"No assets found";
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
        v17 = [v14 errorWithDomain:v15 code:22 userInfo:v16];
        [v4 updateTaskWithBundle:0 error:v17 isFallback:0 isImperfectMatch:0 isCached:0];

        [v4 completeWithBundle:0 isFallback:0 isCached:0];
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __58__SFDeviceAssetManager_onqueue_executeNextMAQueryForTask___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 getLocalFileUrl];
  if (v5)
  {
    v8 = (a1 + 32);
    if (*[*(a1 + 32) ucat] <= 50)
    {
      if (*[*v8 ucat] != -1 || (objc_msgSend(*v8, "ucat"), _LogCategory_Initialize()))
      {
        __58__SFDeviceAssetManager_onqueue_executeNextMAQueryForTask___block_invoke_cold_1((a1 + 32), v5);
      }
    }
  }

  if ([*(a1 + 40) useProcessLocalCache])
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [*(a1 + 40) addQueryResultToLocalCache:*(a1 + 32) url:v7 isFallback:*(a1 + 64)];
  }

  [*(a1 + 48) updateTaskWithAssetURL:v7 error:v6 isFallback:*(a1 + 64) isImperfectMatch:objc_msgSend(*(a1 + 56) isCached:{"imperfectMatch"), 0}];

  if ([*(a1 + 48) completeIfPossible])
  {
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(v11 + 8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__SFDeviceAssetManager_onqueue_executeNextMAQueryForTask___block_invoke_2;
    v13[3] = &unk_1E788A658;
    v13[4] = v11;
    v14 = v10;
    dispatch_async(v12, v13);
  }
}

- (void)onqueue_findAssetBundleForAssetQuery:(id)a3 ucat:(LogCategory *)a4 queryType:(id)a5 fallback:(BOOL)a6 retryAttempt:(BOOL)a7 withCompletionHandler:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a8;
  v30 = 0;
  var4 = a4->var4;
  v18 = LogCategoryCreateEx();
  v19 = v18;
  if (*v18 <= 50 && (*v18 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  dispatch_assert_queue_V2(self->_workQueue);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke;
  v23[3] = &unk_1E788D888;
  v23[4] = self;
  v24 = v14;
  v26 = v16;
  v27 = v19;
  v25 = v15;
  v28 = a6;
  v29 = a7;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  [v22 queryMetaData:v23];
}

void __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E788D860;
  v12 = a2;
  v4 = *(a1 + 40);
  v13 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = *(a1 + 32);
  *(&v7 + 1) = v6;
  v14 = *(a1 + 72);
  *&v8 = v4;
  *(&v8 + 1) = v5;
  v10 = v8;
  v11 = v7;
  dispatch_async(v3, block);
}

void __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v61[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    v2 = [*(a1 + 32) results];
    v3 = [v2 count];

    if (!v3)
    {
      v7 = *(a1 + 64);
      if (v7 != 5)
      {
        if (v7 != 2 || (*(a1 + 81) & 1) != 0)
        {
          v8 = **(a1 + 72);
          if (v8 <= 90)
          {
            if (v8 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_24;
              }

              v7 = *(a1 + 64);
              v42 = *(a1 + 72);
            }

            v45 = *(a1 + 40);
            v46 = v7;
            LogPrintF();
          }

LABEL_24:
          v26 = 14;
LABEL_27:
          v28 = MEMORY[0x1E696ABC0];
          v29 = *MEMORY[0x1E696A798];
          v58 = *MEMORY[0x1E696A578];
          v30 = *(a1 + 56);
          v31 = [MEMORY[0x1E696AD98] numberWithInteger:{*(a1 + 64), v45, v46}];
          v59 = v31;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          v33 = [v28 errorWithDomain:v29 code:v26 userInfo:v32];
          (*(v30 + 16))(v30, 0, v33);

          goto LABEL_28;
        }

        v25 = **(a1 + 72);
        if (v25 <= 50)
        {
          if (v25 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_30;
            }

            v44 = *(a1 + 72);
          }

          LogPrintF();
        }

LABEL_30:
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke_5;
        v47[3] = &unk_1E788D838;
        v35 = *(a1 + 48);
        v36 = *(a1 + 32);
        v50 = *(a1 + 72);
        v37 = *(a1 + 40);
        v52 = *(a1 + 80);
        v38 = *(a1 + 56);
        *&v39 = v37;
        *(&v39 + 1) = v38;
        *&v40 = v35;
        *(&v40 + 1) = v36;
        v48 = v40;
        v49 = v39;
        v51 = *(a1 + 64);
        [v35 onqueue_updateMetaDataWithCompletionHandler:v47];

        v18 = *(&v48 + 1);
        goto LABEL_15;
      }

      v24 = **(a1 + 72);
      if (v24 <= 90)
      {
        if (v24 == -1)
        {
          v27 = *(a1 + 72);
          if (!_LogCategory_Initialize())
          {
            goto LABEL_26;
          }

          v43 = *(a1 + 72);
        }

        v45 = [*(a1 + 32) assetType];
        LogPrintF();
      }

LABEL_26:
      v26 = 80;
      goto LABEL_27;
    }
  }

  v4 = **(a1 + 72);
  if (v4 <= 50)
  {
    if (v4 == -1)
    {
      v9 = *(a1 + 72);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v41 = *(a1 + 72);
    }

    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) results];
    v45 = v5;
    v46 = [v6 count];
    LogPrintF();
  }

LABEL_13:
  v10 = [*(a1 + 32) results];
  v11 = [v10 count];

  if (!v11)
  {
    v19 = *(a1 + 56);
    v20 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A798];
    v60 = *MEMORY[0x1E696A578];
    v61[0] = @"Failed to find any assets";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
    v23 = [v20 errorWithDomain:v21 code:2 userInfo:v22];
    (*(v19 + 16))(v19, 0, v23);

    goto LABEL_28;
  }

  v12 = [*(a1 + 32) results];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke_3;
  v53[3] = &unk_1E788D810;
  v56 = *(a1 + 72);
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v57 = *(a1 + 80);
  v15 = *(a1 + 56);
  *&v16 = *(a1 + 48);
  *(&v16 + 1) = v15;
  *&v17 = v13;
  *(&v17 + 1) = v14;
  v54 = v17;
  v55 = v16;
  [v12 enumerateObjectsUsingBlock:v53];

  v18 = v54;
LABEL_15:

LABEL_28:
  v34 = *MEMORY[0x1E69E9840];
}

void __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = **(a1 + 64);
  if (v8 <= 50)
  {
    if (v8 != -1)
    {
LABEL_3:
      v9 = *(a1 + 32);
      v10 = [v7 assetId];
      v11 = [v7 state];
      v12 = [v7 attributes];
      SFCompactStringFromCollection(v12);
      v48 = v47 = v11;
      v40 = v9;
      v44 = v10;
      LogPrintF();

      goto LABEL_5;
    }

    v13 = *(a1 + 64);
    if (_LogCategory_Initialize())
    {
      v37 = *(a1 + 64);
      goto LABEL_3;
    }
  }

LABEL_5:
  [v7 logAsset];
  v14 = [*(a1 + 40) results];
  v15 = [v14 count];

  v16 = [v7 state];
  if (v16 == 5)
  {
    goto LABEL_13;
  }

  v17 = v15 - 1;
  if (v16 == 3)
  {
    v19 = **(a1 + 64);
    if (v19 <= 50)
    {
      if (v19 == -1)
      {
        v21 = *(a1 + 64);
        if (!_LogCategory_Initialize())
        {
          goto LABEL_23;
        }

        v38 = *(a1 + 64);
      }

      v20 = [v7 attributes];
      v41 = SFCompactStringFromCollection(v20);
      LogPrintF();
    }

LABEL_23:
    v22 = [v7 getLocalFileUrl];
    v23 = [v22 path];

    if (!v23 || ![*(a1 + 48) useProcessLocalCache] || !objc_msgSend(*(a1 + 48), "pathInLocalCache:", v23))
    {
      v25 = *(a1 + 64);
      if (*v25 <= 50)
      {
        if (*v25 != -1 || (v26 = _LogCategory_Initialize(), v25 = *(a1 + 64), v26))
        {
          LogPrintF();
          v25 = *(a1 + 64);
        }
      }

      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke_4;
      v49[3] = &unk_1E788D7E8;
      v51 = v25;
      v50 = v7;
      [v50 purge:v49];

      goto LABEL_34;
    }

    v24 = **(a1 + 64);
    if (v24 <= 50)
    {
      if (v24 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_34;
        }

        v36 = *(a1 + 64);
      }

      LogPrintF();
    }

LABEL_34:
    if (v17 == a3)
    {
      v27 = *(a1 + 56);
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A798];
      v52 = *MEMORY[0x1E696A578];
      v53[0] = @"Failed to find any still valid assets";
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
      v31 = [v28 errorWithDomain:v29 code:79 userInfo:v30];
      (*(v27 + 16))(v27, 0, v31);
    }

    goto LABEL_37;
  }

  if (v16 != 2)
  {
    [*(a1 + 48) onqueue_downloadAsset:v7 ucat:*(a1 + 64) queryLogString:*(a1 + 32) withCompletionHandler:*(a1 + 56)];
    goto LABEL_18;
  }

  if (*(a1 + 72) != 1)
  {
LABEL_13:
    (*(*(a1 + 56) + 16))();
LABEL_18:
    *a4 = 1;
    goto LABEL_37;
  }

  v18 = **(a1 + 64);
  if (v17 == a3)
  {
    if (v18 <= 90)
    {
      if (v18 == -1)
      {
        v33 = *(a1 + 64);
        if (!_LogCategory_Initialize())
        {
          goto LABEL_39;
        }

        v39 = *(a1 + 64);
      }

      v42 = [v7 assetId];
      v45 = *(a1 + 32);
      LogPrintF();
    }

LABEL_39:
    (*(*(a1 + 56) + 16))(*(a1 + 56), v7);
    goto LABEL_37;
  }

  if (v18 <= 50)
  {
    if (v18 == -1)
    {
      v34 = *(a1 + 64);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_37;
      }

      v35 = *(a1 + 64);
    }

    v43 = [v7 assetId];
    v46 = *(a1 + 32);
    LogPrintF();
  }

LABEL_37:

  v32 = *MEMORY[0x1E69E9840];
}

void __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  v1 = **(a1 + 40);
  if (v1 <= 50)
  {
    if (v1 == -1)
    {
      v3 = *(a1 + 40);
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v4 = *(a1 + 40);
    }

    v5 = [*(a1 + 32) assetId];
    LogPrintF();
  }
}

void __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke_5(uint64_t a1, int a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v10 = **(a1 + 64);
    if (v10 <= 60)
    {
      if (v10 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        v18 = *(a1 + 64);
      }

      LogPrintF();
    }

LABEL_9:
    v11 = *(a1 + 56);
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A798];
    v19 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 72)];
    v20[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v16 = [v12 errorWithDomain:v13 code:6 userInfo:v15];
    (*(v11 + 16))(v11, 0, v16);

    v17 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 48);
  v9 = *MEMORY[0x1E69E9840];

  [v3 onqueue_findAssetBundleForAssetQuery:v4 ucat:v5 queryType:v8 fallback:v7 retryAttempt:1 withCompletionHandler:v6];
}

- (void)onqueue_downloadAsset:(id)a3 ucat:(LogCategory *)a4 queryLogString:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  dispatch_assert_queue_V2(self->_workQueue);
  if (a4->var0 <= 50 && (a4->var0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  getMADownloadOptionsClass();
  v13 = objc_opt_new();
  [v13 setDiscretionary:0];
  [v13 setAllowsCellularAccess:1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__SFDeviceAssetManager_onqueue_downloadAsset_ucat_queryLogString_withCompletionHandler___block_invoke;
  v17[3] = &unk_1E788D8D8;
  v20 = v12;
  v21 = a4;
  v17[4] = self;
  v18 = v11;
  v19 = v10;
  v14 = v10;
  v15 = v12;
  v16 = v11;
  [v14 startDownload:v13 then:v17];
}

void __88__SFDeviceAssetManager_onqueue_downloadAsset_ucat_queryLogString_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__SFDeviceAssetManager_onqueue_downloadAsset_ucat_queryLogString_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E788D8B0;
  v4 = *(a1 + 64);
  v9 = a2;
  v10 = v4;
  v6 = *(a1 + 40);
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  dispatch_async(v3, block);
}

void __88__SFDeviceAssetManager_onqueue_downloadAsset_ucat_queryLogString_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = **(a1 + 64);
  if (v2)
  {
    if (v3 <= 90)
    {
      if (v3 == -1)
      {
        v4 = _LogCategory_Initialize();
        v2 = *(a1 + 56);
        if (!v4)
        {
          goto LABEL_9;
        }

        v15 = *(a1 + 64);
      }

      v18 = *(a1 + 32);
      v19 = v2;
      LogPrintF();
      v2 = *(a1 + 56);
    }

LABEL_9:
    v5 = *(a1 + 48);
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A798];
    v21 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{v2, v18, v19}];
    v22[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v10 = [v6 errorWithDomain:v7 code:35 userInfo:v9];
    (*(v5 + 16))(v5, 0, v10);

    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  if (v3 <= 50)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v16 = *(a1 + 64);
      v17 = *(a1 + 56);
    }

    v20 = *(a1 + 32);
    LogPrintF();
  }

LABEL_11:
  v12 = *(a1 + 40);
  v13 = *(*(a1 + 48) + 16);
  v14 = *MEMORY[0x1E69E9840];

  v13();
}

- (void)onqueue_validateProductTypeInQuery:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  v6 = [v5 productType];
  v8 = [(SFDeviceAssetManager *)self onqueue_mappedProductTypeForProductType:v6];

  if ([v8 length])
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  [v5 setMappedProductType:v7];
}

- (void)mappedProductTypeForProductType:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = asset_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SFDeviceAssetManager mappedProductTypeForProductType:completionHandler:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SFDeviceAssetManager_mappedProductTypeForProductType_completionHandler___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(workQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __74__SFDeviceAssetManager_mappedProductTypeForProductType_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[16])
  {
    v9 = [v2 onqueue_mappedProductTypeForProductType:a1[5]];
    v3 = a1[6];
    v4 = [v9 length];
    v5 = v9;
    if (!v4)
    {
      v5 = a1[5];
    }

    (*(v3 + 16))(v3, v5);
  }

  else
  {
    v6 = __74__SFDeviceAssetManager_mappedProductTypeForProductType_completionHandler___block_invoke_cold_1();
    [(SFDeviceAssetManager *)v6 onqueue_mappedProductTypeForProductType:v7, v8];
  }
}

- (id)onqueue_mappedProductTypeForProductType:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = [(SFDeviceAssetManager *)self hardcodedMappedProducts];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = asset_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v6;
      v8 = "Mapped product type using hardcoded mapping %@ => %@";
LABEL_11:
      _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, v8, &v12, 0x16u);
    }
  }

  else if (-[SFDeviceAssetManager useProcessLocalCache](self, "useProcessLocalCache") && (-[SFDeviceAssetManager locallyCachedProductMappings](self, "locallyCachedProductMappings"), v9 = objc_claimAutoreleasedReturnValue(), [v9 objectForKey:v4], v6 = objc_claimAutoreleasedReturnValue(), v9, v6))
  {
    v7 = asset_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v6;
      v8 = "Mapped product type using cached mapping %@ => %@";
      goto LABEL_11;
    }
  }

  else
  {
    v6 = [(SFDeviceAssetManager *)self onqueue_assetMappedProductTypeForProductType:v4];
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = asset_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v6;
      v8 = "Mapped product type using remote mapping %@ => %@";
      goto LABEL_11;
    }
  }

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)onqueue_sharingManagementAsset
{
  dispatch_assert_queue_V2(self->_workQueue);
  deviceAssetManagement = self->_deviceAssetManagement;
  if (deviceAssetManagement)
  {
LABEL_6:
    v7 = deviceAssetManagement;
    goto LABEL_7;
  }

  if ([(SFDeviceAssetManager *)self canUseMobileAssetSPI])
  {
    v4 = [objc_alloc(getMAAssetQueryClass()) initWithType:@"com.apple.MobileAsset.SharingDeviceAssets"];
    [v4 returnTypes:1];
    SFDeviceAssetAddKeyValuePair(@"Management", @"YES", v4);
    if (![v4 queryMetaDataSync])
    {
      v5 = [v4 results];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__SFDeviceAssetManager_onqueue_sharingManagementAsset__block_invoke;
      v10[3] = &unk_1E788D900;
      v10[4] = self;
      [v5 enumerateObjectsUsingBlock:v10];

      v6 = [v4 results];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __54__SFDeviceAssetManager_onqueue_sharingManagementAsset__block_invoke_2;
      v9[3] = &unk_1E788D900;
      v9[4] = self;
      [v6 enumerateObjectsUsingBlock:v9];
    }

    deviceAssetManagement = self->_deviceAssetManagement;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

void __54__SFDeviceAssetManager_onqueue_sharingManagementAsset__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v4 = [*(*(a1 + 32) + 24) attributes];
  v5 = getASAttributeContentVersion();
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  v8 = [v12 attributes];
  v9 = getASAttributeContentVersion();
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v10 integerValue];

  if (v11 > v7)
  {
    objc_storeStrong((*(a1 + 32) + 24), a2);
  }
}

void __54__SFDeviceAssetManager_onqueue_sharingManagementAsset__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isEqual:*(*(a1 + 32) + 24)] & 1) == 0 && objc_msgSend(v3, "state") != 5)
  {
    [v3 purge:&__block_literal_global_718];
  }
}

void __54__SFDeviceAssetManager_onqueue_sharingManagementAsset__block_invoke_3(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = asset_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Purging of old management asset completed with result %d", v5, 8u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)onqueue_assetMappedProductTypeForProductType:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  productTypesMappingTable = self->_productTypesMappingTable;
  if (!productTypesMappingTable)
  {
    v6 = [(SFDeviceAssetManager *)self onqueue_sharingManagementAsset];
    v7 = [(SFDeviceAssetManager *)self hardcodedMappedProducts];
    v8 = [v7 mutableCopy];

    v9 = [v6 getLocalFileUrl];
    v10 = [v9 URLByAppendingPathComponent:@"DeviceMapping.plist" isDirectory:0];
    if (v10)
    {
      v20 = v6;
      v22 = 0;
      v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v10 options:0 error:&v22];
      v12 = v22;
      if (v11)
      {
        v21 = 0;
        v13 = [MEMORY[0x1E696AE40] propertyListWithData:v11 options:0 format:0 error:&v21];
        v14 = v21;

        if (v13)
        {
          [v8 addEntriesFromDictionary:v13];
          v15 = asset_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v13 count];
            *buf = 136315394;
            v24 = "[SFDeviceAssetManager onqueue_assetMappedProductTypeForProductType:]";
            v25 = 1024;
            v26 = v16;
            _os_log_impl(&dword_1A9662000, v15, OS_LOG_TYPE_DEFAULT, "%s Loaded mapping table with %d entries", buf, 0x12u);
          }
        }

        else
        {
          v15 = asset_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [SFDeviceAssetManager onqueue_assetMappedProductTypeForProductType:];
          }
        }
      }

      else
      {
        v13 = asset_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [SFDeviceAssetManager onqueue_assetMappedProductTypeForProductType:];
        }

        v14 = v12;
      }

      v6 = v20;
    }

    else
    {
      v11 = asset_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SFDeviceAssetManager onqueue_assetMappedProductTypeForProductType:];
      }

      v14 = 0;
    }

    objc_storeStrong(&self->_productTypesMappingTable, v8);
    if ([(SFDeviceAssetManager *)self useProcessLocalCache])
    {
      [(SFDeviceAssetManager *)self storeProductMappingsInLocalCache:v8];
    }

    productTypesMappingTable = self->_productTypesMappingTable;
  }

  v17 = [(NSDictionary *)productTypesMappingTable objectForKeyedSubscript:v4];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)hardcodedMappedProducts
{
  if (hardcodedMappedProducts_onceToken != -1)
  {
    [SFDeviceAssetManager hardcodedMappedProducts];
  }

  v3 = hardcodedMappedProducts_hardcodedMappedProducts;

  return v3;
}

void __47__SFDeviceAssetManager_hardcodedMappedProducts__block_invoke()
{
  v28[31] = *MEMORY[0x1E69E9840];
  v27[0] = @"AudioAccessory1,1";
  v27[1] = @"Device1,8194";
  v28[0] = &stru_1F1D30528;
  v28[1] = @"AirPods1,1";
  v27[2] = @"Device1,8195";
  v27[3] = @"Device1,8197";
  v28[2] = @"PowerBeats3,1";
  v28[3] = @"BeatsX1,1";
  v27[4] = @"Device1,8198";
  v27[5] = @"Device1,8199";
  v28[4] = @"BeatsSolo3,1";
  v28[5] = @"BeatsStudio3,1";
  v27[6] = @"Device1,8201";
  v27[7] = @"Device1,8203";
  v28[6] = @"BeatsStudio3,2";
  v28[7] = @"PowerbeatsPro1,1";
  v27[8] = @"Device1,8206";
  v27[9] = @"Device1,8207";
  v28[8] = @"AirPodsPro1,1";
  v28[9] = @"AirPods1,2";
  v27[10] = @"Device1,8209";
  v27[11] = @"Device1,65536";
  v28[10] = @"BeatsStudioBuds1,1";
  v28[11] = @"AirPods1,2";
  v27[12] = @"Device1,8205";
  v27[13] = @"AirTag1,1";
  v28[12] = @"Powerbeats4,1";
  v28[13] = @"AirTag1,1";
  v27[14] = @"Device1,8204";
  v27[15] = @"Device1,8202";
  v28[14] = @"BeatsSoloPro1,1";
  v28[15] = @"AirPodsMax1,1";
  v27[16] = @"Device1,8208";
  v27[17] = @"AudioAccessory5,1";
  v28[16] = @"BeatsX2,1";
  v28[17] = &stru_1F1D30528;
  v26 = +[SFHeadphoneProduct b688];
  v25 = [v26 bluetoothModel];
  v27[18] = v25;
  v28[18] = @"AirPods1,3";
  v24 = +[SFHeadphoneProduct b768e];
  v23 = [v24 bluetoothModel];
  v27[19] = v23;
  v28[19] = @"AirPods1,4";
  v22 = +[SFHeadphoneProduct b768m];
  v21 = [v22 bluetoothModel];
  v27[20] = v21;
  v28[20] = @"AirPods1,5";
  v20 = +[SFHeadphoneProduct b494];
  v19 = [v20 bluetoothModel];
  v27[21] = v19;
  v28[21] = @"BeatsFitPro1,1";
  v18 = +[SFHeadphoneProduct b698];
  v17 = [v18 bluetoothModel];
  v27[22] = v17;
  v27[23] = @"Device1,8228";
  v28[22] = @"AirPodsPro1,2";
  v28[23] = @"AirPodsPro1,2";
  v16 = +[SFHeadphoneProduct b788];
  v15 = [v16 bluetoothModel];
  v27[24] = v15;
  v28[24] = @"AirPodsPro1,3";
  v14 = +[SFHeadphoneProduct b607];
  v13 = [v14 bluetoothModel];
  v27[25] = v13;
  v28[25] = @"BeatsStudioBuds1,2";
  v0 = +[SFHeadphoneProduct b463];
  v1 = [v0 bluetoothModel];
  v27[26] = v1;
  v28[26] = @"BeatsSoloBuds1,1";
  v2 = +[SFHeadphoneProduct b453];
  v3 = [v2 bluetoothModel];
  v27[27] = v3;
  v28[27] = @"BeatsStudioPro1,1";
  v4 = +[SFHeadphoneProduct b465];
  v5 = [v4 bluetoothModel];
  v27[28] = v5;
  v28[28] = @"BeatsSolo4,1";
  v6 = +[SFHeadphoneProduct b487];
  v7 = [v6 bluetoothModel];
  v27[29] = v7;
  v28[29] = @"BeatsPill1,2";
  v8 = +[SFHeadphoneProduct b498];
  v9 = [v8 bluetoothModel];
  v27[30] = v9;
  v28[30] = @"PowerbeatsPro2,1";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:31];
  v11 = hardcodedMappedProducts_hardcodedMappedProducts;
  hardcodedMappedProducts_hardcodedMappedProducts = v10;

  v12 = *MEMORY[0x1E69E9840];
}

- (id)localCacheWithFileName:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SFDeviceAssetManager *)self cacheDirectory];
  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:0];

  v19 = 0;
  CanAccessURL = SFDeviceAssetProcessCanAccessURL(v6, &v19);
  v8 = v19;
  if (CanAccessURL)
  {
    v18 = v8;
    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v6 options:0 error:&v18];
    v10 = v18;

    if (v9)
    {
      v16 = 0;
      v17 = 0;
      v11 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:0 format:&v17 error:&v16];
      v8 = v16;

      if ([v11 count])
      {
        v12 = asset_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v11 count];
          *buf = 67109378;
          v21 = v13;
          v22 = 2112;
          v23 = v4;
          _os_log_impl(&dword_1A9662000, v12, OS_LOG_TYPE_DEFAULT, "Loaded %d %@ entries from cache", buf, 0x12u);
        }

        goto LABEL_18;
      }
    }

    else
    {
      v8 = v10;
    }
  }

  if (!v8 || [v8 code] == -1100 || objc_msgSend(v8, "code") == 260 || objc_msgSend(v8, "code") == 4)
  {
    v11 = 0;
    goto LABEL_19;
  }

  v9 = asset_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [SFDeviceAssetManager localCacheWithFileName:];
  }

  v11 = 0;
LABEL_18:

LABEL_19:
  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)storeEntries:(id)a3 inLocalCacheWithFileName:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = asset_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v20 = [v6 count];
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "Persisting %d entries to %@ cache", buf, 0x12u);
  }

  v9 = [(SFDeviceAssetManager *)self cacheDirectory];
  v10 = [v9 URLByAppendingPathComponent:v7 isDirectory:0];

  v18 = 0;
  v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:200 options:0 error:&v18];
  v12 = v11;
  if (v11)
  {
    v17 = 0;
    [v11 writeToURL:v10 options:0x10000000 error:&v17];
    v13 = v17;
    if (v13)
    {
      v14 = v13;
      v15 = asset_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SFDeviceAssetManager storeEntries:inLocalCacheWithFileName:];
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_2_cold_1(id *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*a1 results];
  [v1 count];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);

  v7 = *MEMORY[0x1E69E9840];
}

void __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_640_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke_cold_1(id *a1)
{
  [*a1 ucat];

  return LogPrintF();
}

- (void)cacheDirectory
{
  OUTLINED_FUNCTION_3_6();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 path];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (uint64_t)addQueryResultToLocalCache:(void *)a1 url:isFallback:.cold.1(void *a1)
{
  [a1 ucat];

  return LogPrintF();
}

- (uint64_t)clearQueryResultFromLocalCache:(void *)a1 .cold.1(void *a1)
{
  [a1 ucat];

  return LogPrintF();
}

void __58__SFDeviceAssetManager_onqueue_executeNextMAQueryForTask___block_invoke_cold_1(id *a1, void *a2)
{
  [*a1 ucat];
  v4 = [a2 attributes];
  v3 = [v4 objectForKeyedSubscript:@"VariantName"];
  LogPrintF();
}

- (void)onqueue_assetMappedProductTypeForProductType:.cold.1()
{
  OUTLINED_FUNCTION_3_6();
  v7 = *MEMORY[0x1E69E9840];
  [v0 length];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)onqueue_assetMappedProductTypeForProductType:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)onqueue_assetMappedProductTypeForProductType:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)localCacheWithFileName:.cold.1()
{
  OUTLINED_FUNCTION_3_6();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 path];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)storeEntries:inLocalCacheWithFileName:.cold.1()
{
  OUTLINED_FUNCTION_3_6();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 path];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end