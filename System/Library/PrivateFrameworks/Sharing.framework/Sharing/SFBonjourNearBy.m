@interface SFBonjourNearBy
- (BOOL)isLocalEndpoint:(id)a3;
- (BOOL)sendData:(id)a3 toDevice:(id)a4 completionHandler:(id)a5;
- (BOOL)startDiscovery;
- (BOOL)stopAdvertisingForData:(id)a3 completionHandler:(id)a4;
- (SFBonjourNearBy)initWithQueue:(id)a3;
- (id)_endpointForUniqueID:(id)a3;
- (id)getUniqueServiceNameForAdvertiser;
- (id)randomUUID;
- (void)_cleanUp;
- (void)_cleanupAdvertiser;
- (void)_cleanupBrowser;
- (void)_reportCachedDiscoveryResults;
- (void)_sendAdvMessageWithData:(id)a3 isStart:(BOOL)a4 completionHandler:(id)a5;
- (void)_sendMessage:(id)a3 withType:(id)a4 toDevice:(id)a5 completionCallback:(id)a6;
- (void)_sendMessage:(id)a3 withType:(id)a4 toEndpoint:(id)a5 completionCallback:(id)a6;
- (void)_startAdvertiser;
- (void)_startBrowser;
- (void)_stopAdvertising;
- (void)_stopBrowser;
- (void)_updateAdvertiserState;
- (void)_updateBrowserState;
- (void)connectToDevice:(id)a3;
- (void)dealloc;
- (void)disconnectFromDevice:(id)a3;
- (void)handleBrowseResults:(id)a3;
- (void)startAdvertisingWithData:(id)a3 completionHandler:(id)a4;
- (void)stopDiscovery;
@end

@implementation SFBonjourNearBy

- (SFBonjourNearBy)initWithQueue:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v29.receiver = self;
  v29.super_class = SFBonjourNearBy;
  v6 = [(SFBonjourNearBy *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serialQueue, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    advertiserAdvs = v7->_advertiserAdvs;
    v7->_advertiserAdvs = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    advToBrowserNwToSFendpoints = v7->_advToBrowserNwToSFendpoints;
    v7->_advToBrowserNwToSFendpoints = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    advToBrowserUuidToSFendpoints = v7->_advToBrowserUuidToSFendpoints;
    v7->_advToBrowserUuidToSFendpoints = v12;

    v7->_advertiserState = 0;
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    browserToAdvNwToSFendpoints = v7->_browserToAdvNwToSFendpoints;
    v7->_browserToAdvNwToSFendpoints = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    browserToAdvUuidToSFendpoints = v7->_browserToAdvUuidToSFendpoints;
    v7->_browserToAdvUuidToSFendpoints = v16;

    v7->_browserState = 0;
    v18 = [MEMORY[0x1E695DFA8] set];
    resultChanges = v7->_resultChanges;
    v7->_resultChanges = v18;

    v20 = [(SFBonjourNearBy *)v7 randomUUID];
    localAdvertiserUUIDString = v7->_localAdvertiserUUIDString;
    v7->_localAdvertiserUUIDString = v20;

    v22 = [(SFBonjourNearBy *)v7 randomUUID];
    localBrowserUUIDString = v7->_localBrowserUUIDString;
    v7->_localBrowserUUIDString = v22;

    v24 = daemon_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v7->_localAdvertiserUUIDString;
      v26 = v7->_localBrowserUUIDString;
      *buf = 138412546;
      v31 = v25;
      v32 = 2112;
      v33 = v26;
      _os_log_impl(&dword_1A9662000, v24, OS_LOG_TYPE_DEFAULT, "LocalAdvID %@, LocalBrowserID: %@", buf, 0x16u);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)randomUUID
{
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)getUniqueServiceNameForAdvertiser
{
  v2 = [(NSString *)self->_localAdvertiserUUIDString lowercaseString];
  v3 = [v2 substringWithRange:{12, 12}];

  return v3;
}

- (void)_startAdvertiser
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __35__SFBonjourNearBy__startAdvertiser__block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21[0] = 67109120;
      v21[1] = a2;
      _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "advertiser state handler with state %d", v21, 8u);
    }

    if (v6)
    {
      v9 = daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __35__SFBonjourNearBy__startAdvertiser__block_invoke_cold_1();
      }
    }

    switch(a2)
    {
      case 4:
        v14 = daemon_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21[0]) = 0;
          _os_log_impl(&dword_1A9662000, v14, OS_LOG_TYPE_DEFAULT, "advertiser cancelled", v21, 2u);
        }

        [WeakRetained setListener:0];
        [WeakRetained _cleanupAdvertiser];
        v15 = *(*(*(a1 + 32) + 8) + 40);
        if (v15)
        {
          v12 = nw_error_copy_cf_error(v15);
        }

        else
        {
          v12 = 0;
        }

        v16 = [WeakRetained advertisingStateUpdateHandler];

        if (v16)
        {
          v17 = [WeakRetained advertisingStateUpdateHandler];
          v17[2](v17, 0, v12);
        }

        v18 = *(*(a1 + 32) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = 0;

        goto LABEL_26;
      case 3:
        v13 = daemon_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __35__SFBonjourNearBy__startAdvertiser__block_invoke_cold_2();
        }

        objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
        v12 = [WeakRetained listener];
        nw_listener_cancel(v12);
        goto LABEL_26;
      case 2:
        v10 = daemon_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21[0]) = 0;
          _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "advertiser is ready", v21, 2u);
        }

        [WeakRetained setAdvertiserState:2];
        v11 = [WeakRetained advertisingStateUpdateHandler];

        if (v11)
        {
          v12 = [WeakRetained advertisingStateUpdateHandler];
          (*(v12 + 16))(v12, 1, 0);
LABEL_26:
        }

        break;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __35__SFBonjourNearBy__startAdvertiser__block_invoke_147(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _handleConnection:v3 isAdvToBrowserConnection:1];

  v6 = daemon_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "New Adv to browser connection %@ (endpoint %@)", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)startAdvertisingWithData:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SFBonjourNearBy_startAdvertisingWithData_completionHandler___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialQueue, block);
}

void __62__SFBonjourNearBy_startAdvertisingWithData_completionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) advertiserAdvs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Already advertising for advData %@", &v14, 0xCu);
    }
  }

  else
  {
    v6 = [*(a1 + 32) advertiserAdvs];
    [v6 addObject:*(a1 + 40)];

    v7 = daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, "Starting advertising with advData %@", &v14, 0xCu);
    }

    v9 = [*(a1 + 32) advertiserState];
    v10 = *(a1 + 32);
    if (v9 == 3)
    {
      v10[25] = 1;
    }

    else
    {
      v11 = [v10 advertiserState];
      v12 = *(a1 + 32);
      if (v11 == 2)
      {
        [v12 _sendAdvMessageWithData:*(a1 + 40) isStart:1 completionHandler:*(a1 + 48)];
      }

      else
      {
        [v12 _startAdvertiser];
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_stopAdvertising
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(SFBonjourNearBy *)self advertiserState]== 2)
  {
    [(SFBonjourNearBy *)self setAdvertiserState:3];
    listener = self->_listener;
    v4 = *MEMORY[0x1E69E9840];

    nw_listener_cancel(listener);
  }

  else
  {
    v5 = daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = [(SFBonjourNearBy *)self advertiserState];
      _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Unable to stop advertiser, invalid state : %d", v7, 8u);
    }

    v6 = *MEMORY[0x1E69E9840];
  }
}

- (BOOL)stopAdvertisingForData:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SFBonjourNearBy_stopAdvertisingForData_completionHandler___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialQueue, block);

  return 1;
}

uint64_t __60__SFBonjourNearBy_stopAdvertisingForData_completionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 160) containsObject:*(a1 + 40)];
  v3 = daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Stop advertising for advData %@", &v10, 0xCu);
    }

    if ([*(a1 + 32) advertiserState] == 2)
    {
      [*(a1 + 32) _sendAdvMessageWithData:*(a1 + 40) isStart:0 completionHandler:*(a1 + 48)];
    }

    [*(*(a1 + 32) + 160) removeObject:*(a1 + 40)];
    result = [*(*(a1 + 32) + 160) count];
    if (!result)
    {
      v7 = daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, "No more advertisements, stopping advertiser completely.", &v10, 2u);
      }

      *(*(a1 + 32) + 25) = 0;
      result = [*(a1 + 32) _stopAdvertising];
    }
  }

  else
  {
    if (v4)
    {
      v8 = *(a1 + 40);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Unable to stop advertising for advData %@", &v10, 0xCu);
    }

    result = *(a1 + 48);
    if (result)
    {
      result = (*(result + 16))(result, *(a1 + 40), 0);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_cleanupAdvertiser
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(SFBonjourNearBy *)self advertiserState])
  {
    v3 = daemon_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Cleaning up the advertiser", v5, 2u);
    }

    v4 = [(SFBonjourNearBy *)self advToBrowserNwToSFendpoints];
    [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_51];

    [(SFBonjourNearBy *)self _updateAdvertiserState];
  }
}

void __37__SFBonjourNearBy__cleanupAdvertiser__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (([v3 isConnected] & 1) == 0)
  {
    [v3 cancel];
  }
}

- (void)_updateAdvertiserState
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(SFBonjourNearBy *)self advToBrowserNwToSFendpoints];
  v4 = [v3 keysOfEntriesPassingTest:&__block_literal_global_153];

  if (![v4 count] && !self->_listener)
  {
    [(SFBonjourNearBy *)self setAdvertiserState:0];
    if (self->_shouldRestartAdvertising)
    {
      self->_shouldRestartAdvertising = 0;
      [(SFBonjourNearBy *)self _startAdvertiser];
    }
  }
}

- (void)_startBrowser
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __32__SFBonjourNearBy__startBrowser__block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = daemon_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109378;
    v13[1] = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "nw_browser_state_t changed:%d error:%@", v13, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if ((a2 - 2) >= 2)
    {
      if (a2 == 1)
      {
        [WeakRetained setBrowserState:2];
        v9 = daemon_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v13[0]) = 0;
          _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_DEFAULT, "SFbonjourNearbyBrowser successfully started", v13, 2u);
        }

        v10 = [v8 deviceDidStartScanning];

        if (v10)
        {
          v11 = [v8 deviceDidStartScanning];
          v11[2](v11, 0);
        }
      }
    }

    else
    {
      [WeakRetained setBrowser:0];
      [v8 _cleanupBrowser];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __32__SFBonjourNearBy__startBrowser__block_invoke_154(uint64_t a1, void *a2, void *a3, int a4)
{
  old_result = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    changes = nw_browse_result_get_changes(old_result, v7);
    if (changes >= 2)
    {
      v10 = [[SFBonjourBrowserResultChanges alloc] initWithOldResult:old_result freshResult:v7 change:changes];
      v11 = [WeakRetained resultChanges];
      [v11 addObject:v10];

      if (a4)
      {
        v12 = [WeakRetained resultChanges];
        v13 = [v12 copy];

        v14 = [WeakRetained resultChanges];
        [v14 removeAllObjects];

        [WeakRetained handleBrowseResults:v13];
      }
    }
  }
}

- (BOOL)startDiscovery
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFBonjourNearBy_startDiscovery__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(serialQueue, block);
  return 1;
}

_BYTE *__33__SFBonjourNearBy_startDiscovery__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) browserState];
  result = *(a1 + 32);
  if (v2 == 3)
  {
    result[24] = 1;
  }

  else
  {
    v4 = [result browserState];
    v5 = *(a1 + 32);
    if (v4 == 2)
    {

      return [v5 _reportCachedDiscoveryResults];
    }

    else
    {

      return [v5 _startBrowser];
    }
  }

  return result;
}

- (void)_stopBrowser
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(SFBonjourNearBy *)self browserState]== 2)
  {
    [(SFBonjourNearBy *)self setBrowserState:3];
    browser = self->_browser;
    v4 = *MEMORY[0x1E69E9840];

    nw_browser_cancel(browser);
  }

  else
  {
    v5 = daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = [(SFBonjourNearBy *)self browserState];
      _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "StopBrowser is not stopping. current browser state %d", v7, 8u);
    }

    v6 = *MEMORY[0x1E69E9840];
  }
}

- (void)stopDiscovery
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SFBonjourNearBy_stopDiscovery__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_reportCachedDiscoveryResults
{
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SFBonjourNearBy__reportCachedDiscoveryResults__block_invoke;
  v4[3] = &unk_1E788B4D0;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __48__SFBonjourNearBy__reportCachedDiscoveryResults__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && [WeakRetained browserState] == 2)
  {
    v3 = [v2 browserToAdvNwToSFendpoints];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __48__SFBonjourNearBy__reportCachedDiscoveryResults__block_invoke_2;
    v4[3] = &unk_1E788FC58;
    v4[4] = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:v4];
  }
}

void __48__SFBonjourNearBy__reportCachedDiscoveryResults__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [*(a1 + 32) deviceFoundHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) deviceFoundHandler];
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = [v11 remoteUniqueIDString];
    v8 = [v6 initWithUUIDString:v7];
    v9 = [v11 remoteAdvDataSet];
    v10 = [v9 allObjects];
    (v5)[2](v5, v8, v10);
  }
}

- (void)_cleanupBrowser
{
  if ([(SFBonjourNearBy *)self browserState])
  {
    v3 = daemon_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Cleaning up browser", v7, 2u);
    }

    v4 = [(SFBonjourNearBy *)self browserToAdvNwToSFendpoints];
    [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_158_0];

    [(SFBonjourNearBy *)self _updateBrowserState];
    v5 = [(SFBonjourNearBy *)self deviceDidStopScanning];

    if (v5)
    {
      v6 = [(SFBonjourNearBy *)self deviceDidStopScanning];
      v6[2](v6, 0);
    }
  }
}

void __34__SFBonjourNearBy__cleanupBrowser__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (([v3 isConnected] & 1) == 0)
  {
    [v3 cancel];
  }
}

- (void)_updateBrowserState
{
  v3 = [(SFBonjourNearBy *)self browserToAdvNwToSFendpoints];
  v4 = [v3 keysOfEntriesPassingTest:&__block_literal_global_160];

  if (![v4 count] && !self->_browser)
  {
    [(SFBonjourNearBy *)self setBrowserState:0];
    if (self->_shouldRestartBrowsing)
    {
      self->_shouldRestartBrowsing = 0;
      [(SFBonjourNearBy *)self _startBrowser];
    }
  }
}

- (void)handleBrowseResults:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v26;
    *&v6 = 138412290;
    v24 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if (([v10 change] & 2) != 0)
        {
          v16 = [v10 freshResult];
          v12 = nw_browse_result_copy_endpoint(v16);

          if (![(SFBonjourNearBy *)self isLocalEndpoint:v12])
          {
            v17 = [(SFBonjourNearBy *)self browserToAdvNwToSFendpoints];
            v18 = [v17 objectForKey:v12];

            v14 = daemon_log();
            v19 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
            if (v18)
            {
              if (v19)
              {
                *buf = v24;
                v30 = v12;
                _os_log_impl(&dword_1A9662000, v14, OS_LOG_TYPE_DEFAULT, "Ignoring duplicate endpoint %@", buf, 0xCu);
              }
            }

            else
            {
              if (v19)
              {
                *buf = 138412546;
                v30 = v12;
                v31 = 2048;
                v32 = v12;
                _os_log_impl(&dword_1A9662000, v14, OS_LOG_TYPE_DEFAULT, "Found endpoint %@, (%p)", buf, 0x16u);
              }

              v20 = +[SFBonjourEndpoint createConnectionParameters];
              v14 = nw_connection_create(v12, v20);

              v21 = [(SFBonjourNearBy *)self _handleConnection:v14 isAdvToBrowserConnection:0];
              v22 = daemon_log();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v30 = v14;
                v31 = 2112;
                v32 = v21;
                _os_log_impl(&dword_1A9662000, v22, OS_LOG_TYPE_DEFAULT, "New Browser to Adv connection %@ (endpoint %@)", buf, 0x16u);
              }
            }

            goto LABEL_21;
          }
        }

        else
        {
          if (([v10 change] & 4) == 0)
          {
            continue;
          }

          v11 = [v10 oldResult];
          v12 = nw_browse_result_copy_endpoint(v11);

          if (![(SFBonjourNearBy *)self isLocalEndpoint:v12])
          {
            v13 = [(SFBonjourNearBy *)self browserToAdvNwToSFendpoints];
            v14 = [v13 objectForKey:v12];

            v15 = daemon_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v30 = v12;
              v31 = 2112;
              v32 = v14;
              _os_log_impl(&dword_1A9662000, v15, OS_LOG_TYPE_DEFAULT, "Removing endpoint %@ %@", buf, 0x16u);
            }

            [v14 cancel];
LABEL_21:
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v7);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (v3 && WeakRetained)
  {
    v4 = [WeakRetained remoteUniqueIDString];

    v5 = daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      if (v6)
      {
        __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_cold_2();
      }

      goto LABEL_13;
    }

    if (v6)
    {
      __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_cold_1(WeakRetained);
    }

    if (*(a1 + 48) == 1)
    {
      [v3 advToBrowserUuidToSFendpoints];
    }

    else
    {
      [v3 browserToAdvUuidToSFendpoints];
    }
    v7 = ;
    v8 = [WeakRetained remoteUniqueIDString];
    [v7 setObject:WeakRetained forKey:v8];

    if ([WeakRetained isAdvToBrowserConnection])
    {
      v5 = [v3[20] allObjects];
      v9 = [WeakRetained remoteUniqueIDString];
      [v3 _sendMessage:v5 withType:@"SFBonjourNearbyMessageTypeStartAdvertiseData" toDevice:v9 completionCallback:&__block_literal_global_173_0];

LABEL_13:
    }
  }
}

void __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (!WeakRetained || !v3)
  {
    goto LABEL_20;
  }

  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_2_cold_1(v4);
  }

  v6 = [v4 remoteUniqueIDString];

  if (v6)
  {
    v7 = [WeakRetained deviceDidDisconnectHandler];
    if (v7)
    {
      v8 = v7;
      v9 = [v4 isConnected];

      if (v9)
      {
        v10 = [WeakRetained deviceDidDisconnectHandler];
        v11 = objc_alloc(MEMORY[0x1E696AFB0]);
        v12 = [v4 remoteUniqueIDString];
        v13 = [v11 initWithUUIDString:v12];
        (v10)[2](v10, v13);
LABEL_12:

        goto LABEL_13;
      }
    }

    v14 = [WeakRetained deviceLostHandler];
    if (v14)
    {
      v15 = v14;
      v16 = [v4 isAdvToBrowserConnection];

      if ((v16 & 1) == 0)
      {
        v10 = [WeakRetained deviceLostHandler];
        v17 = objc_alloc(MEMORY[0x1E696AFB0]);
        v12 = [v4 remoteUniqueIDString];
        v13 = [v17 initWithUUIDString:v12];
        (v10[2])(v10, v13, 0);
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  if ([v4 isAdvToBrowserConnection])
  {
    v18 = [WeakRetained advToBrowserNwToSFendpoints];
    v19 = [v4 remoteEndpoint];
    [v18 removeObjectForKey:v19];

    v20 = [v4 remoteUniqueIDString];

    if (v20)
    {
      v21 = [WeakRetained advToBrowserUuidToSFendpoints];
      v22 = [v4 remoteUniqueIDString];
      [v21 removeObjectForKey:v22];
    }

    [WeakRetained _updateAdvertiserState];
  }

  else
  {
    v23 = [WeakRetained browserToAdvNwToSFendpoints];
    v24 = [v4 remoteEndpoint];
    [v23 removeObjectForKey:v24];

    v25 = [v4 remoteUniqueIDString];

    if (v25)
    {
      v26 = [WeakRetained browserToAdvUuidToSFendpoints];
      v27 = [v4 remoteUniqueIDString];
      [v26 removeObjectForKey:v27];
    }

    [WeakRetained _updateBrowserState];
  }

LABEL_20:
}

void __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_174(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (WeakRetained && v5)
  {
    v35 = 0;
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:&v35 error:0];
    if (!v7)
    {
      v10 = daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_174_cold_2();
      }

      goto LABEL_20;
    }

    v8 = [v6 remoteUniqueIDString];

    v9 = daemon_log();
    v10 = v9;
    if (!v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_174_cold_1();
      }

      goto LABEL_20;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = v7;
      v38 = 2112;
      v39 = v6;
      _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "Received browser endpoint message %@ from endpoint %@", buf, 0x16u);
    }

    v10 = [v7 objectForKeyedSubscript:@"SFBonjourNearbyMessageType"];
    if ([v10 isEqualToString:@"SFBonjourNearbyMessageTypeStartAdvertiseData"])
    {
      v11 = [v6 remoteAdvDataSet];
      v12 = [v7 objectForKeyedSubscript:@"SFBonjourNearbyMessageValue"];
      [v11 addObjectsFromArray:v12];

      v13 = [WeakRetained deviceFoundHandler];

      if (v13)
      {
        v14 = [WeakRetained deviceFoundHandler];
LABEL_17:
        v20 = v14;
        v21 = objc_alloc(MEMORY[0x1E696AFB0]);
        v22 = [v6 remoteUniqueIDString];
        v23 = [v21 initWithUUIDString:v22];
        v24 = [v7 objectForKeyedSubscript:@"SFBonjourNearbyMessageValue"];
        (*(v20 + 16))(v20, v23, v24);

        goto LABEL_18;
      }
    }

    else
    {
      if (![v10 isEqualToString:@"SFBonjourNearbyMessageTypeStopAdvertiseData"])
      {
        if ([v10 isEqualToString:@"SFBonjourNearbyMessageTypeConnect"])
        {
          [v6 setIsConnected:1];
          v26 = [WeakRetained deviceDidConnectHandler];

          if (!v26)
          {
            goto LABEL_20;
          }

          v20 = [WeakRetained deviceDidConnectHandler];
          v27 = objc_alloc(MEMORY[0x1E696AFB0]);
          v22 = [v6 remoteUniqueIDString];
          v23 = [v27 initWithUUIDString:v22];
          (*(v20 + 16))(v20, v23, 0);
        }

        else
        {
          if (![v10 isEqualToString:@"SFBonjourNearbyMessageTypeDisconnect"])
          {
            if ([v10 isEqualToString:@"SFBonjourNearbyMessageTypeDataPacket"])
            {
              v30 = [WeakRetained deviceDidReceiveDataHandler];

              if (!v30)
              {
                goto LABEL_20;
              }

              v20 = [v7 objectForKeyedSubscript:@"SFBonjourNearbyMessageValue"];
              v31 = [WeakRetained deviceDidReceiveDataHandler];
              v32 = objc_alloc(MEMORY[0x1E696AFB0]);
              v33 = [v6 remoteUniqueIDString];
              v34 = [v32 initWithUUIDString:v33];
              (v31)[2](v31, v34, v20);
            }

            else
            {
              v20 = daemon_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v37 = v10;
                _os_log_impl(&dword_1A9662000, v20, OS_LOG_TYPE_DEFAULT, "SFBonjourNearBy unknown message type:%@", buf, 0xCu);
              }
            }

            goto LABEL_19;
          }

          [v6 setIsConnected:0];
          v28 = [WeakRetained deviceDidDisconnectHandler];

          if (!v28)
          {
            goto LABEL_20;
          }

          v20 = [WeakRetained deviceDidDisconnectHandler];
          v29 = objc_alloc(MEMORY[0x1E696AFB0]);
          v22 = [v6 remoteUniqueIDString];
          v23 = [v29 initWithUUIDString:v22];
          (*(v20 + 16))(v20, v23);
        }

LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v15 = [v6 remoteAdvDataSet];
      v16 = MEMORY[0x1E695DFD8];
      v17 = [v7 objectForKeyedSubscript:@"SFBonjourNearbyMessageValue"];
      v18 = [v16 setWithArray:v17];
      [v15 minusSet:v18];

      v19 = [WeakRetained deviceLostHandler];

      if (v19)
      {
        v14 = [WeakRetained deviceLostHandler];
        goto LABEL_17;
      }
    }

LABEL_20:
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_sendMessage:(id)a3 withType:(id)a4 toEndpoint:(id)a5 completionCallback:(id)a6
{
  v32[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_serialQueue);
  v31[0] = @"SFBonjourNearbyMessageType";
  v31[1] = @"SFBonjourNearbyMessageValue";
  v32[0] = v11;
  v32[1] = v10;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v15 = [MEMORY[0x1E696AE40] dataWithPropertyList:v14 format:200 options:0 error:0];
  v16 = daemon_log();
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v14;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_1A9662000, v17, OS_LOG_TYPE_DEFAULT, "Sending payload %@ to endpoint %@", buf, 0x16u);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__SFBonjourNearBy__sendMessage_withType_toEndpoint_completionCallback___block_invoke;
    v23[3] = &unk_1E788B6D8;
    v24 = v13;
    [v12 sendDataMessage:v15 completion:v23];
    v18 = v24;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [SFBonjourNearBy _sendMessage:withType:toEndpoint:completionCallback:];
  }

  if (v13)
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A768];
    v29 = *MEMORY[0x1E696A578];
    v30 = @"Unable to send message, failed to serialize payload";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v18 = [v19 errorWithDomain:v20 code:-6700 userInfo:v21];

    (*(v13 + 2))(v13, v18);
LABEL_9:
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __71__SFBonjourNearBy__sendMessage_withType_toEndpoint_completionCallback___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_sendMessage:(id)a3 withType:(id)a4 toDevice:(id)a5 completionCallback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__SFBonjourNearBy__sendMessage_withType_toDevice_completionCallback___block_invoke;
  v19[3] = &unk_1E788FCF8;
  objc_copyWeak(&v24, &location);
  v20 = v12;
  v21 = v11;
  v22 = v10;
  v23 = v13;
  v15 = v13;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  dispatch_async(serialQueue, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __69__SFBonjourNearBy__sendMessage_withType_toDevice_completionCallback___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _endpointForUniqueID:*(a1 + 32)];
    if (v4 && *(a1 + 40) && *(a1 + 48))
    {
      v5 = *(a1 + 56);
      [v3 _sendMessage:? withType:? toEndpoint:? completionCallback:?];
    }

    else
    {
      v6 = daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __69__SFBonjourNearBy__sendMessage_withType_toDevice_completionCallback___block_invoke_cold_1(a1, (a1 + 32));
      }

      if (*(a1 + 56))
      {
        v7 = MEMORY[0x1E696ABC0];
        v8 = *MEMORY[0x1E696A768];
        v12 = *MEMORY[0x1E696A578];
        v13[0] = @"Unable to send message, invalid params";
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
        v10 = [v7 errorWithDomain:v8 code:-6705 userInfo:v9];

        (*(*(a1 + 56) + 16))();
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_sendAdvMessageWithData:(id)a3 isStart:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = @"SFBonjourNearbyMessageTypeStopAdvertiseData";
  if (v6)
  {
    v10 = @"SFBonjourNearbyMessageTypeStartAdvertiseData";
  }

  v11 = v10;
  v12 = [(SFBonjourNearBy *)self advToBrowserUuidToSFendpoints];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__SFBonjourNearBy__sendAdvMessageWithData_isStart_completionHandler___block_invoke;
  v16[3] = &unk_1E788FD20;
  v16[4] = self;
  v13 = v8;
  v17 = v13;
  v18 = v11;
  v14 = v9;
  v19 = v14;
  v15 = v11;
  [v12 enumerateKeysAndObjectsUsingBlock:v16];

  if (v14)
  {
    (*(v14 + 2))(v14, v13, 0);
  }
}

void __69__SFBonjourNearBy__sendAdvMessageWithData_isStart_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v12[0] = *(a1 + 40);
  v4 = MEMORY[0x1E695DEC8];
  v5 = a2;
  v6 = [v4 arrayWithObjects:v12 count:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__SFBonjourNearBy__sendAdvMessageWithData_isStart_completionHandler___block_invoke_2;
  v9[3] = &unk_1E788CB38;
  v7 = *(a1 + 48);
  v11 = *(a1 + 56);
  v10 = *(a1 + 40);
  [v3 _sendMessage:v6 withType:v7 toDevice:v5 completionCallback:v9];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __69__SFBonjourNearBy__sendAdvMessageWithData_isStart_completionHandler___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
    if (v2)
    {
      return (*(v2 + 16))(*(result + 40), *(result + 32), a2);
    }
  }

  return result;
}

- (void)connectToDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 UUIDString];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__SFBonjourNearBy_connectToDevice___block_invoke;
  v7[3] = &unk_1E788B520;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(SFBonjourNearBy *)self _sendMessage:MEMORY[0x1E695E0F8] withType:@"SFBonjourNearbyMessageTypeConnect" toDevice:v5 completionCallback:v7];
}

void __35__SFBonjourNearBy_connectToDevice___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) UUIDString];
  v5 = [v3 _endpointForUniqueID:v4];

  if (!v8)
  {
    [v5 setIsConnected:1];
  }

  v6 = [*(a1 + 32) deviceDidConnectHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) deviceDidConnectHandler];
    (v7)[2](v7, *(a1 + 40), v8);
  }
}

- (void)disconnectFromDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 UUIDString];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SFBonjourNearBy_disconnectFromDevice___block_invoke;
  v7[3] = &unk_1E788B520;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(SFBonjourNearBy *)self _sendMessage:MEMORY[0x1E695E0F8] withType:@"SFBonjourNearbyMessageTypeDisconnect" toDevice:v5 completionCallback:v7];
}

void __40__SFBonjourNearBy_disconnectFromDevice___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) UUIDString];
  v10 = [v2 _endpointForUniqueID:v3];

  [v10 setIsConnected:0];
  v4 = [*(a1 + 32) deviceDidDisconnectHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) deviceDidDisconnectHandler];
    v5[2](v5, *(a1 + 40));
  }

  v6 = [*(a1 + 32) deviceLostHandler];
  if (v6)
  {
    v7 = v6;
    v8 = [v10 isAdvToBrowserConnection];

    if ((v8 & 1) == 0)
    {
      v9 = [*(a1 + 32) deviceLostHandler];
      v9[2](v9, *(a1 + 40), 0);
    }
  }
}

- (BOOL)sendData:(id)a3 toDevice:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 UUIDString];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__SFBonjourNearBy_sendData_toDevice_completionHandler___block_invoke;
  v16[3] = &unk_1E788FD48;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(SFBonjourNearBy *)self _sendMessage:v14 withType:@"SFBonjourNearbyMessageTypeDataPacket" toDevice:v11 completionCallback:v16];

  return 1;
}

void __55__SFBonjourNearBy_sendData_toDevice_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__SFBonjourNearBy_sendData_toDevice_completionHandler___block_invoke_cold_1(a1);
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (BOOL)isLocalEndpoint:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_endpoint_get_bonjour_service_name(a3)];
  v5 = [(SFBonjourNearBy *)self getUniqueServiceNameForAdvertiser];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (id)_endpointForUniqueID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v8 = daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SFBonjourNearBy _endpointForUniqueID:];
    }

    goto LABEL_8;
  }

  v5 = [(SFBonjourNearBy *)self advToBrowserUuidToSFendpoints];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [(SFBonjourNearBy *)self browserToAdvUuidToSFendpoints];
    v6 = [v7 objectForKeyedSubscript:v4];

    if (!v6)
    {
      v8 = daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SFBonjourNearBy _endpointForUniqueID:];
      }

LABEL_8:

      v6 = 0;
    }
  }

  return v6;
}

- (void)_cleanUp
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SFBonjourNearBy__cleanUp__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

uint64_t __27__SFBonjourNearBy__cleanUp__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopBrowser];
  v2 = *(a1 + 32);

  return [v2 _stopAdvertising];
}

- (void)dealloc
{
  [(SFBonjourNearBy *)self _cleanUp];
  v3.receiver = self;
  v3.super_class = SFBonjourNearBy;
  [(SFBonjourNearBy *)&v3 dealloc];
}

void __35__SFBonjourNearBy__startAdvertiser__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __35__SFBonjourNearBy__startAdvertiser__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleConnection:isAdvToBrowserConnection:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_handleConnection:isAdvToBrowserConnection:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 isAdvToBrowserConnection];
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_5_4(&dword_1A9662000, v1, v2, "Established [%@] connection for endpoint %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_2_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 isAdvToBrowserConnection];
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_5_4(&dword_1A9662000, v1, v2, "[%@] connection closed for endpoint %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_174_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_174_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_sendMessage:withType:toEndpoint:completionCallback:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __69__SFBonjourNearBy__sendMessage_withType_toDevice_completionCallback___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *a2;
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_2_12();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
  v10 = *MEMORY[0x1E69E9840];
}

void __55__SFBonjourNearBy_sendData_toDevice_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_2_12();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_endpointForUniqueID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_endpointForUniqueID:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end