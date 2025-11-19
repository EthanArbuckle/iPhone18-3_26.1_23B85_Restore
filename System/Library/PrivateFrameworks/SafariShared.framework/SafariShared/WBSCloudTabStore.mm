@interface WBSCloudTabStore
- (BOOL)_closeTabs:(id)a3 onDevice:(id)a4;
- (BOOL)_writeCloseRequestForTab:(id)a3 onDevice:(id)a4;
- (BOOL)closeAllTabsOnDevice:(id)a3;
- (BOOL)closeTab:(id)a3 onDevice:(id)a4;
- (NSArray)syncedCloudTabDevices;
- (NSError)lastFetchError;
- (WBSCloudTabStore)init;
- (WBSCloudTabStoreDelegate)wbsDelegate;
- (id)_deviceWithTabsWithOutstandingCloseRequestsRemoved:(id)a3 closeRequestsForDevice:(id)a4;
- (id)_devicesByFilteringAndSortingDevices:(id)a3;
- (id)syncedRemoteCloudTabDevicesForProfileWithIdentifier:(id)a3;
- (int64_t)uniqueDeviceMultiplicity;
- (unint64_t)_indexOfDeviceInSyncedCloudTabDevicesFromCloudKit:(id)a3;
- (void)_addCloseRequestDictionary:(id)a3 toDeviceUUIDsToCloseRequestsDictionary:(id)a4 requestUUID:(id)a5;
- (void)_didFetchDeviceDictionariesFromCloudKit:(id)a3 fetchedCloseRequests:(id)a4 fetchedDevicesBySyncing:(BOOL)a5 error:(id)a6;
- (void)_syncAgentProxyConnectionWasInvalidated:(id)a3;
- (void)_tabWasClosed:(id)a3 onDevice:(id)a4;
- (void)_tabsWereClosed:(id)a3 onDevice:(id)a4;
- (void)clearTabsForFirstDuplicateDeviceInCloudKitWithName:(id)a3 passingTest:(id)a4;
- (void)deleteAllDevicesFromCloudKit;
- (void)fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit;
- (void)handleCloseTabRequestsFromCloudKit;
- (void)notifyObserversOfSyncedCloudTabDevicesChanged;
- (void)pruneExpiredDevicesFromCloudKit;
- (void)resetSyncedCloudTabDevicesAndCloseRequestsFromCloudKit;
- (void)saveCurrentCloudTabDeviceDictionaryToCloudKit:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSCloudTabStore

- (WBSCloudTabStore)init
{
  v10.receiver = self;
  v10.super_class = WBSCloudTabStore;
  v2 = [(WBSCloudTabStore *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.SafariShared.WBSCloudTabStore", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;

    v2->_syncAgentIsAvailable = 1;
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v5;

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v2 selector:sel__syncAgentProxyConnectionWasInvalidated_ name:*MEMORY[0x1E69C8D18] object:0];

    v8 = v2;
  }

  return v2;
}

- (void)fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit
{
  if (self->_syncAgentIsAvailable)
  {
    objc_initWeak(location, self);
    v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Fetching data from CloudKit", buf, 2u);
    }

    if (self->_hasAttemptedToFetchDevicesAtLeastOnce)
    {
      v4 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_wbsDelegate);
      v4 = objc_opt_respondsToSelector();
    }

    self->_hasAttemptedToFetchDevicesAtLeastOnce = 1;
    v8 = [MEMORY[0x1E69C8A08] sharedProxy];
    if (v4)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_DEFAULT, "Getting cached CloudTab devices from the sync agent", buf, 2u);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __74__WBSCloudTabStore_fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke;
      v12[3] = &unk_1E7FB88B0;
      objc_copyWeak(&v13, location);
      [v8 getCloudTabDevicesWithCompletionHandler:v12];
      objc_destroyWeak(&v13);
    }

    self->_isFetchingDataFromCloudKit = 1;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__WBSCloudTabStore_fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke_19;
    v10[3] = &unk_1E7FB8900;
    objc_copyWeak(&v11, location);
    [v8 fetchSyncedCloudTabDevicesAndCloseRequestsWithCompletionHandler:v10];
    objc_destroyWeak(&v11);

    objc_destroyWeak(location);
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "Bypassing fetching data from CloudKit because CloudKit syncing of iCloud Tabs is not available", location, 2u);
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
    [(WBSCloudTabStore *)self _didFetchDeviceDictionariesFromCloudKit:0 fetchedCloseRequests:0 error:v6];
  }
}

void __74__WBSCloudTabStore_fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__WBSCloudTabStore_fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke_2;
  v5[3] = &unk_1E7FB8888;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __74__WBSCloudTabStore_fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke_19(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__WBSCloudTabStore_fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke_2_20;
  v13[3] = &unk_1E7FB88D8;
  objc_copyWeak(&v17, (a1 + 32));
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

  objc_destroyWeak(&v17);
}

- (NSArray)syncedCloudTabDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  internalQueue = self->_internalQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__WBSCloudTabStore_syncedCloudTabDevices__block_invoke;
  v6[3] = &unk_1E7FB8798;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);
  v3 = v8[5];
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)syncedRemoteCloudTabDevicesForProfileWithIdentifier:(id)a3
{
  v3 = [(WBSCloudTabStore *)self syncedCloudTabDevices];

  return v3;
}

- (BOOL)closeTab:(id)a3 onDevice:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 uuidString];
    v10 = [v7 uuid];
    *buf = 138543618;
    v23 = v9;
    v24 = 2114;
    v25 = v10;
    _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_DEFAULT, "Closing single tab with UUID %{public}@ on device with UUID %{public}@", buf, 0x16u);
  }

  v11 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [v6 description];
    objc_claimAutoreleasedReturnValue();
    [v7 name];
    objc_claimAutoreleasedReturnValue();
    [WBSCloudTabStore closeTab:onDevice:];
  }

  if (([v7 isCloseRequestSupported] & 1) == 0)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1BB6F3000, v16, OS_LOG_TYPE_DEFAULT, "Device doesn't support close requests", v21, 2u);
    }

    goto LABEL_11;
  }

  v12 = [v7 uuid];
  v13 = [v12 length] == 0;

  if (v13 || ![(WBSCloudTabStore *)self _writeCloseRequestForTab:v6 onDevice:v7])
  {
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__WBSCloudTabStore_closeTab_onDevice___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v19 = v6;
  v20 = v7;
  dispatch_sync(internalQueue, block);

  v15 = 1;
LABEL_12:

  return v15;
}

void __38__WBSCloudTabStore_closeTab_onDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _tabWasClosed:*(a1 + 40) onDevice:*(a1 + 48)];
  v2 = [*(a1 + 32) _devicesByFilteringAndSortingDevices:*(*(a1 + 32) + 24)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

- (BOOL)closeAllTabsOnDevice:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    *buf = 138543362;
    v16 = v6;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "Closing all tabs on device with UUID %{public}@", buf, 0xCu);
  }

  v7 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [v4 name];
    objc_claimAutoreleasedReturnValue();
    [WBSCloudTabStore closeAllTabsOnDevice:];
  }

  if (([v4 isCloseRequestSupported] & 1) == 0)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_DEFAULT, "Device doesn't support close requests", v14, 2u);
    }

    goto LABEL_10;
  }

  v8 = [v4 uuid];
  v9 = [v8 length] == 0;

  if (v9)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = [v4 tabs];
  v11 = [(WBSCloudTabStore *)self _closeTabs:v10 onDevice:v4];

LABEL_11:
  return v11;
}

- (void)resetSyncedCloudTabDevicesAndCloseRequestsFromCloudKit
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__WBSCloudTabStore_resetSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_sync(internalQueue, block);
  deviceUUIDsToCloseRequestsFromCloudKit = self->_deviceUUIDsToCloseRequestsFromCloudKit;
  self->_deviceUUIDsToCloseRequestsFromCloudKit = 0;
}

void __74__WBSCloudTabStore_resetSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;
}

- (void)saveCurrentCloudTabDeviceDictionaryToCloudKit:(id)a3 completionHandler:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_DEFAULT, "Saving current device to CloudKit", v15, 2u);
  }

  v9 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [v6 description];
    objc_claimAutoreleasedReturnValue();
    [WBSCloudTabStore saveCurrentCloudTabDeviceDictionaryToCloudKit:completionHandler:];
  }

  v10 = [(WBSCloudTabStore *)self _currentDeviceUUID];
  v11 = [v10 UUIDString];

  v12 = [[WBSCloudTabDevice alloc] initWithDictionary:v6 uuid:v11];
  currentDevice = self->_currentDevice;
  self->_currentDevice = v12;

  v14 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v14 saveTabsForCurrentDeviceWithDictionaryRepresentation:v6 deviceUUIDString:v11 completionHandler:v7];
}

- (int64_t)uniqueDeviceMultiplicity
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__WBSCloudTabStore_uniqueDeviceMultiplicity__block_invoke;
  v5[3] = &unk_1E7FB87C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __44__WBSCloudTabStore_uniqueDeviceMultiplicity__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v3 = *(v2 + 24);
    v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v4)
    {
      v5 = *v8;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if (([*(*(&v7 + 1) + 8 * v6) hasDuplicateName] & 1) == 0)
          {
            *(*(*(a1 + 40) + 8) + 24) = 2;

            return;
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }
}

- (NSError)lastFetchError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__WBSCloudTabStore_lastFetchError__block_invoke;
  v5[3] = &unk_1E7FB8798;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)pruneExpiredDevicesFromCloudKit
{
  v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Pruning expired devices from CloudKit", buf, 2u);
  }

  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-5184000.0];
  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  internalQueue = self->_internalQueue;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke;
  v14 = &unk_1E7FB8810;
  v15 = self;
  v18 = buf;
  v7 = v5;
  v16 = v7;
  v8 = v4;
  v17 = v8;
  dispatch_sync(internalQueue, &v11);
  if ([*(v20 + 5) count])
  {
    v9 = [MEMORY[0x1E69C8A08] sharedProxy];
    [v9 deleteDevicesWithUUIDStrings:*(v20 + 5) completionHandler:&__block_literal_global_21];
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(WBSCloudTabStore *)v10 pruneExpiredDevicesFromCloudKit];
    }
  }

  _Block_object_dispose(buf, 8);
}

void __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke_cold_1(a1, v2);
  }

  v3 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke_9;
  v7[3] = &unk_1E7FB87E8;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v4 = [v3 safari_mapAndFilterObjectsUsingBlock:v7];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke_9(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 hasDuplicateName];
  v5 = 40;
  if (v4)
  {
    v5 = 32;
  }

  v6 = *(a1 + v5);
  v7 = [v3 lastModified];
  v8 = [v7 compare:v6];

  if (v8 == -1)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v3 uuid];
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_DEFAULT, "Pruning expired CloudKit device with UUID %{public}@", &v13, 0xCu);
    }

    v9 = [v3 uuid];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke_11_cold_1();
    }
  }
}

- (void)clearTabsForFirstDuplicateDeviceInCloudKitWithName:(id)a3 passingTest:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_DEFAULT, "Clearing tabs for first duplicate device in CloudKit", buf, 2u);
  }

  *buf = 0;
  v31 = buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__6;
  v34 = __Block_byref_object_dispose__6;
  v35 = 0;
  internalQueue = self->_internalQueue;
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __83__WBSCloudTabStore_clearTabsForFirstDuplicateDeviceInCloudKitWithName_passingTest___block_invoke;
  v25 = &unk_1E7FB8860;
  v26 = self;
  v10 = v6;
  v27 = v10;
  v29 = buf;
  v11 = v7;
  v28 = v11;
  dispatch_sync(internalQueue, &v22);
  v12 = *(v31 + 5);
  if (v12)
  {
    v13 = [v12 uuid];
    v14 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 138543362;
      v37 = v13;
      _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_DEFAULT, "Marking device with UUID %{public}@ as a duplicate", v36, 0xCu);
    }

    v15 = [WBSCloudTabDevice alloc];
    v16 = [*(v31 + 5) name];
    v17 = [*(v31 + 5) lastModified];
    v18 = [(WBSCloudTabDevice *)v15 initWithDeviceName:v16 lastModified:v17 hasDuplicateName:1 tabs:0 uuid:v13];
    v19 = *(v31 + 5);
    *(v31 + 5) = v18;

    v20 = [MEMORY[0x1E69C8A08] sharedProxy];
    v21 = [*(v31 + 5) dictionaryRepresentation];
    [v20 saveTabsForCurrentDeviceWithDictionaryRepresentation:v21 deviceUUIDString:v13 completionHandler:0];
  }

  _Block_object_dispose(buf, 8);
}

void __83__WBSCloudTabStore_clearTabsForFirstDuplicateDeviceInCloudKitWithName_passingTest___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) count])
  {
    v2 = *(*(a1 + 32) + 24);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__WBSCloudTabStore_clearTabsForFirstDuplicateDeviceInCloudKitWithName_passingTest___block_invoke_13;
    v8[3] = &unk_1E7FB8838;
    v9 = *(a1 + 40);
    v6 = *(a1 + 48);
    v3 = v6;
    v10 = v6;
    [v2 enumerateObjectsUsingBlock:v8];
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v4 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_DEFAULT, "No eligible device with the same name found when looking for duplicates", buf, 2u);
      }
    }
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __83__WBSCloudTabStore_clearTabsForFirstDuplicateDeviceInCloudKitWithName_passingTest___block_invoke_cold_1(v5);
    }
  }
}

void __83__WBSCloudTabStore_clearTabsForFirstDuplicateDeviceInCloudKitWithName_passingTest___block_invoke_13(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (([v6 isEphemeralDevice] & 1) == 0)
  {
    v7 = [v6 name];
    v8 = [v7 isEqualToString:a1[4]];

    if ((v8 & 1) != 0 && ([v6 hasDuplicateName] & 1) == 0)
    {
      if (*(*(a1[6] + 8) + 40))
      {
        v9 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v6 uuid];
          v24 = 138543362;
          v25 = v10;
          _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_DEFAULT, "Found more than one device with the same name when looking for duplicates, second device has UUID %{public}@", &v24, 0xCu);
        }

        v11 = *(a1[6] + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = 0;

        *a4 = 1;
      }

      else
      {
        v13 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v6 uuid];
          v24 = 138543362;
          v25 = v14;
          _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_DEFAULT, "Found device with UUID %{public}@ with the same name as this device when looking for duplicates", &v24, 0xCu);
        }

        v15 = [WBSCloudTabDevice alloc];
        v16 = [v6 dictionaryRepresentation];
        v17 = [v6 uuid];
        v18 = [(WBSCloudTabDevice *)v15 initWithDictionary:v16 uuid:v17];
        v19 = *(a1[6] + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;

        v21 = a1[5];
        if (v21 && ((*(v21 + 16))(v21, *(*(a1[6] + 8) + 40)) & 1) == 0)
        {
          v22 = *(a1[6] + 8);
          v23 = *(v22 + 40);
          *(v22 + 40) = 0;
        }
      }
    }
  }
}

void __74__WBSCloudTabStore_fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_DEFAULT, "Received cached CloudTab devices from the sync agent", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didFetchDeviceDictionariesFromCloudKit:*(a1 + 32) fetchedCloseRequests:0 fetchedDevicesBySyncing:0 error:0];
}

void __74__WBSCloudTabStore_fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit__block_invoke_2_20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _didFetchDeviceDictionariesFromCloudKit:*(a1 + 32) fetchedCloseRequests:*(a1 + 40) error:*(a1 + 48)];
}

- (void)handleCloseTabRequestsFromCloudKit
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Handling close requests from CloudKit", buf, 2u);
  }

  deviceUUIDsToCloseRequestsFromCloudKit = self->_deviceUUIDsToCloseRequestsFromCloudKit;
  v5 = [(WBSCloudTabStore *)self _currentDeviceUUID];
  v6 = [v5 UUIDString];
  v7 = [(NSMutableDictionary *)deviceUUIDsToCloseRequestsFromCloudKit objectForKeyedSubscript:v6];

  if ([v7 count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          [(WBSCloudTabStore *)self _closeRequestedTabIfPossible:v13, v18];
          v14 = [v13 requestUUID];
          v15 = [v14 UUIDString];
          [v8 addObject:v15];
        }

        v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    v16 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v16, OS_LOG_TYPE_DEFAULT, "Deleting close requests for this device from CloudKit", buf, 2u);
    }

    v17 = [MEMORY[0x1E69C8A08] sharedProxy];
    [v17 deleteCloudTabCloseRequestsWithUUIDStrings:v8 completionHandler:&__block_literal_global_24_0];
  }
}

void __54__WBSCloudTabStore_handleCloseTabRequestsFromCloudKit__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __54__WBSCloudTabStore_handleCloseTabRequestsFromCloudKit__block_invoke_cold_1();
    }
  }

  v4 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_DEFAULT, "Finished deleting close requests for this device from CloudKit", v5, 2u);
  }
}

- (void)deleteAllDevicesFromCloudKit
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Deleting all devices from CloudKit", buf, 2u);
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke;
  block[3] = &unk_1E7FB87C0;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(internalQueue, block);
  currentDevice = self->_currentDevice;
  if (currentDevice)
  {
    v6 = *(v18 + 5);
    v7 = [(WBSCloudTabDevice *)currentDevice uuid];
    if (v6)
    {
      [v6 arrayByAddingObject:v7];
    }

    else
    {
      v23[0] = v7;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    }
    v8 = ;
    v9 = *(v18 + 5);
    *(v18 + 5) = v8;
  }

  if ([*(v18 + 5) count])
  {
    objc_initWeak(location, self);
    v10 = [MEMORY[0x1E69C8A08] sharedProxy];
    v11 = *(v18 + 5);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke_28;
    v13[3] = &unk_1E7FB8970;
    objc_copyWeak(&v14, location);
    [v10 deleteDevicesWithUUIDStrings:v11 completionHandler:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_DEFAULT, "No devices found in CloudKit to delete", location, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
}

void __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) count])
  {
    v2 = [*(*(a1 + 32) + 24) safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_26_0];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

id __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];

  return v2;
}

void __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke_28(uint64_t a1, void *a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke_28_cold_1();
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke_29;
  block[3] = &unk_1E7FB8948;
  objc_copyWeak(v6, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v6);
}

void __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke_29(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_DEFAULT, "Fetching data from CloudKit after deleting all devices", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit];
}

- (void)notifyObserversOfSyncedCloudTabDevicesChanged
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    v6 = *MEMORY[0x1E69C8B58];
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 cloudTabDeviceProvider:self didUpdateCloudTabsInProfileWithIdentifier:v6];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (BOOL)_writeCloseRequestForTab:(id)a3 onDevice:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v24 = a4;
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [(WBSCloudTabStore *)self _currentDeviceUUID];
  v9 = objc_alloc(MEMORY[0x1E696AFB0]);
  v10 = [v24 uuid];
  v11 = [v9 initWithUUIDString:v10];

  v12 = [WBSCloudTabCloseRequest alloc];
  v13 = [v6 url];
  v14 = [v6 uuidString];
  v15 = [MEMORY[0x1E695DF00] date];
  v16 = [(WBSCloudTabCloseRequest *)v12 initWithURL:v13 tabUUIDString:v14 lastModified:v15 sourceDeviceUUID:v8 destinationDeviceUUID:v11 requestUUID:v7];
  v17 = [(WBSCloudTabCloseRequest *)v16 dictionaryRepresentation];

  if (v17)
  {
    v18 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v11 UUIDString];
      *buf = 138543362;
      v27 = v19;
      _os_log_impl(&dword_1BB6F3000, v18, OS_LOG_TYPE_DEFAULT, "Writing close request to CloudKit for device with UUID %{public}@", buf, 0xCu);
    }

    v20 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [v11 UUIDString];
      objc_claimAutoreleasedReturnValue();
      [v6 url];
      objc_claimAutoreleasedReturnValue();
      [WBSCloudTabStore _writeCloseRequestForTab:onDevice:];
    }

    v21 = [MEMORY[0x1E69C8A08] sharedProxy];
    v22 = [v7 UUIDString];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __54__WBSCloudTabStore__writeCloseRequestForTab_onDevice___block_invoke;
    v25[3] = &unk_1E7FB78D8;
    v25[4] = self;
    [v21 saveCloudTabCloseRequestWithDictionaryRepresentation:v17 closeRequestUUIDString:v22 completionHandler:v25];
  }

  return v17 != 0;
}

void __54__WBSCloudTabStore__writeCloseRequestForTab_onDevice___block_invoke(uint64_t a1, void *a2)
{
  block[8] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __54__WBSCloudTabStore__writeCloseRequestForTab_onDevice___block_invoke_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__WBSCloudTabStore__writeCloseRequestForTab_onDevice___block_invoke_34;
    block[3] = &unk_1E7FB6F80;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __54__WBSCloudTabStore__writeCloseRequestForTab_onDevice___block_invoke_34(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __54__WBSCloudTabStore__writeCloseRequestForTab_onDevice___block_invoke_34_cold_1(v2);
  }

  return [*(a1 + 32) fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit];
}

- (BOOL)_closeTabs:(id)a3 onDevice:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([(WBSCloudTabStore *)self _writeCloseRequestForTab:v13 onDevice:v7])
        {
          [v8 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v14 = [v8 count];
  if (v14)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__WBSCloudTabStore__closeTabs_onDevice___block_invoke;
    block[3] = &unk_1E7FB7DD0;
    block[4] = self;
    v18 = v8;
    v19 = v7;
    dispatch_sync(internalQueue, block);
  }

  return v14 != 0;
}

void __40__WBSCloudTabStore__closeTabs_onDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _tabsWereClosed:*(a1 + 40) onDevice:*(a1 + 48)];
  v2 = [*(a1 + 32) _devicesByFilteringAndSortingDevices:*(*(a1 + 32) + 24)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

- (id)_deviceWithTabsWithOutstandingCloseRequestsRemoved:(id)a3 closeRequestsForDevice:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v25 = a4;
  if ([v25 count])
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v23 uuid];
      *buf = 138543362;
      v33 = v6;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "Removing tabs with outstanding close requests for device with UUID %{public}@", buf, 0xCu);
    }

    v7 = [v23 tabs];
    v8 = [v7 count];

    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = [v23 tabs];
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __94__WBSCloudTabStore__deviceWithTabsWithOutstandingCloseRequestsRemoved_closeRequestsForDevice___block_invoke;
          v26[3] = &unk_1E7FB8998;
          v26[4] = v13;
          if ([v25 indexOfObjectPassingTest:v26] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v24 addObject:v13];
          }

          else
          {
            v14 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = [v13 uuid];
              *buf = 138543362;
              v33 = v15;
              _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_DEFAULT, "Removing tab with outstanding close request with UUID %{public}@", buf, 0xCu);
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }

    if ([v24 count])
    {
      v16 = [WBSCloudTabDeviceParameters parametersWithDevice:v23];
      [v16 setTabs:v24];
      v17 = [WBSCloudTabDevice alloc];
      v18 = [v23 uuid];
      v19 = [(WBSCloudTabDevice *)v17 initWithParameters:v16 uuid:v18];
    }

    else
    {
      v19 = 0;
    }

    v20 = v23;
    v23 = v19;
  }

  else
  {
    v20 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v23 uuid];
      *buf = 138543362;
      v33 = v21;
      _os_log_impl(&dword_1BB6F3000, v20, OS_LOG_TYPE_DEFAULT, "No outstanding close requests for device with UUID %{public}@", buf, 0xCu);
    }
  }

  return v23;
}

- (void)_addCloseRequestDictionary:(id)a3 toDeviceUUIDsToCloseRequestsDictionary:(id)a4 requestUUID:(id)a5
{
  v15 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [WBSCloudTabCloseRequest alloc];
  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
  v11 = [(WBSCloudTabCloseRequest *)v9 initWithDictionary:v15 requestUUID:v10];

  if (v11)
  {
    v12 = [(WBSCloudTabCloseRequest *)v11 destinationDeviceUUID];
    v13 = [v12 UUIDString];

    v14 = [v7 objectForKeyedSubscript:v13];
    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v7 setObject:v14 forKeyedSubscript:v13];
    }

    [v14 addObject:v11];
  }
}

- (unint64_t)_indexOfDeviceInSyncedCloudTabDevicesFromCloudKit:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  syncedCloudTabDevicesFromCloudKit = self->_syncedCloudTabDevicesFromCloudKit;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__WBSCloudTabStore__indexOfDeviceInSyncedCloudTabDevicesFromCloudKit___block_invoke;
  v10[3] = &unk_1E7FB89C0;
  v11 = v5;
  v7 = v5;
  v8 = [(NSMutableArray *)syncedCloudTabDevicesFromCloudKit indexOfObjectPassingTest:v10];

  return v8;
}

uint64_t __70__WBSCloudTabStore__indexOfDeviceInSyncedCloudTabDevicesFromCloudKit___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)_tabWasClosed:(id)a3 onDevice:(id)a4
{
  v9 = a3;
  v6 = [(WBSCloudTabStore *)self _indexOfDeviceInSyncedCloudTabDevicesFromCloudKit:a4];
  v7 = [(NSMutableArray *)self->_syncedCloudTabDevicesFromCloudKit objectAtIndexedSubscript:v6];
  v8 = [v7 deviceByRemovingTab:v9];
  [(NSMutableArray *)self->_syncedCloudTabDevicesFromCloudKit replaceObjectAtIndex:v6 withObject:v8];
}

- (void)_tabsWereClosed:(id)a3 onDevice:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(WBSCloudTabStore *)self _indexOfDeviceInSyncedCloudTabDevicesFromCloudKit:v6];
  v8 = [v6 deviceByRemovingTabs:v9];
  [(NSMutableArray *)self->_syncedCloudTabDevicesFromCloudKit replaceObjectAtIndex:v7 withObject:v8];
}

- (void)_syncAgentProxyConnectionWasInvalidated:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__WBSCloudTabStore__syncAgentProxyConnectionWasInvalidated___block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__WBSCloudTabStore__syncAgentProxyConnectionWasInvalidated___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_DEFAULT, "CloudKit syncing of iCloud Tabs is not available", v6, 2u);
  }

  *(*(a1 + 32) + 72) = 0;
  v3 = *(a1 + 32);
  if (v3[16] == 1)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
    [v3 _didFetchDeviceDictionariesFromCloudKit:0 fetchedCloseRequests:0 error:v4];
  }

  else
  {
    [*(a1 + 32) resetSyncedCloudTabDevicesAndCloseRequestsFromCloudKit];
    v5 = *(a1 + 32);
    v4 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

- (void)_didFetchDeviceDictionariesFromCloudKit:(id)a3 fetchedCloseRequests:(id)a4 fetchedDevicesBySyncing:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218243;
    v25 = [v10 count];
    v26 = 2113;
    v27 = v10;
    _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_DEFAULT, "Fetched %lu devices from CloudKit: %{private}@", buf, 0x16u);
  }

  self->_isFetchingDataFromCloudKit = !v7;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__WBSCloudTabStore__didFetchDeviceDictionariesFromCloudKit_fetchedCloseRequests_fetchedDevicesBySyncing_error___block_invoke;
  block[3] = &unk_1E7FB89E8;
  block[4] = self;
  v23 = v7;
  v15 = v12;
  v20 = v15;
  v16 = v10;
  v21 = v16;
  v17 = v11;
  v22 = v17;
  dispatch_sync(internalQueue, block);
  WeakRetained = objc_loadWeakRetained(&self->_wbsDelegate);
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained didUpdateDevicesAndCloseRequestsFromCloudKitForCloudTabStore:self error:v15];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [WeakRetained didGetCachedDevicesFromCloudKitForCloudTabStore:self];
  }
}

void __111__WBSCloudTabStore__didFetchDeviceDictionariesFromCloudKit_fetchedCloseRequests_fetchedDevicesBySyncing_error___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (*(a1 + 64) == 1)
  {
    objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  }

  v9 = [*(a1 + 32) _currentDeviceUUID];
  v41 = [v9 UUIDString];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = *(a1 + 48);
  v10 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v10)
  {
    v12 = *v48;
    *&v11 = 134218498;
    v40 = v11;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v47 + 1) + 8 * i);
        v15 = [v14 deviceOrCloseRequestDictionary];
        if ([WBSCloudTabDevice isCloudTabDeviceDictionary:v15])
        {
          v16 = [v14 uuidString];
          v17 = [[WBSCloudTabDevice alloc] initWithDictionary:v15 uuid:v16];
          if (v17)
          {
            [*(*(a1 + 32) + 24) addObject:v17];
            if ([v16 isEqualToString:v41])
            {
              objc_storeStrong((*(a1 + 32) + 40), v17);
            }

            v18 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [(WBSCloudTabDevice *)v17 tabs];
              v20 = [v19 count];
              v21 = @"another";
              if (*(*(a1 + 32) + 40) == v17)
              {
                v21 = @"current";
              }

              *buf = v40;
              v53 = v20;
              v54 = 2114;
              v55 = v21;
              v56 = 2114;
              v57 = v16;
              _os_log_impl(&dword_1BB6F3000, v18, OS_LOG_TYPE_DEFAULT, "Fetched %lu tabs from CloudKit for %{public}@ device with UUID %{public}@", buf, 0x20u);
            }
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
    }

    while (v10);
  }

  v22 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [*(a1 + 56) count];
    v24 = *(a1 + 56);
    *buf = 134218243;
    v53 = v23;
    v54 = 2113;
    v55 = v24;
    _os_log_impl(&dword_1BB6F3000, v22, OS_LOG_TYPE_DEFAULT, "Fetched %lu close requests from CloudKit: %{private}@", buf, 0x16u);
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26 = *(a1 + 32);
  v27 = *(v26 + 48);
  *(v26 + 48) = v25;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v28 = *(a1 + 56);
  v29 = [v28 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v29)
  {
    v30 = *v44;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v43 + 1) + 8 * j);
        v33 = [v32 deviceOrCloseRequestDictionary];
        if ([WBSCloudTabCloseRequest isCloudTabCloseRequestDictionary:v33])
        {
          v34 = *(a1 + 32);
          v35 = v34[6];
          v36 = [v32 uuidString];
          [v34 _addCloseRequestDictionary:v33 toDeviceUUIDsToCloseRequestsDictionary:v35 requestUUID:v36];
        }
      }

      v29 = [v28 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v29);
  }

  v37 = [*(a1 + 32) _devicesByFilteringAndSortingDevices:*(*(a1 + 32) + 24)];
  v38 = *(a1 + 32);
  v39 = *(v38 + 32);
  *(v38 + 32) = v37;
}

- (id)_devicesByFilteringAndSortingDevices:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = v26;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        deviceUUIDsToCloseRequestsFromCloudKit = self->_deviceUUIDsToCloseRequestsFromCloudKit;
        v11 = [v9 uuid];
        v12 = [(NSMutableDictionary *)deviceUUIDsToCloseRequestsFromCloudKit objectForKeyedSubscript:v11];
        v13 = [(WBSCloudTabStore *)self _deviceWithTabsWithOutstandingCloseRequestsRemoved:v9 closeRequestsForDevice:v12];

        v14 = [v13 tabs];
        LOBYTE(v12) = [v14 count] == 0;

        if ((v12 & 1) == 0)
        {
          v15 = [v13 name];
          v16 = [v4 objectForKeyedSubscript:v15];

          if (!v16)
          {
            v17 = [MEMORY[0x1E695DF70] array];
            v18 = [v13 name];
            [v4 setObject:v17 forKeyedSubscript:v18];

            v16 = v17;
          }

          [v16 addObject:v13];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  v19 = [(WBSCloudTabStore *)self _currentDeviceUUID];
  v20 = [v19 UUIDString];

  v21 = [MEMORY[0x1E695DF70] array];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __57__WBSCloudTabStore__devicesByFilteringAndSortingDevices___block_invoke;
  v27[3] = &unk_1E7FB8A58;
  v22 = v20;
  v28 = v22;
  v23 = v21;
  v29 = v23;
  [v4 enumerateKeysAndObjectsUsingBlock:v27];
  [v23 sortUsingComparator:&__block_literal_global_56];
  v24 = [v23 copy];

  return v24;
}

void __57__WBSCloudTabStore__devicesByFilteringAndSortingDevices___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = [v5 uuid];
    v7 = [v6 isEqualToString:*(a1 + 32)];

    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 40);
      v9 = [v4 firstObject];
      [v8 addObject:v9];
    }
  }

  else
  {
    [v4 sortUsingComparator:&__block_literal_global_49];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__WBSCloudTabStore__devicesByFilteringAndSortingDevices___block_invoke_3;
    v10[3] = &unk_1E7FB8A30;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v4 enumerateObjectsUsingBlock:v10];
  }
}

uint64_t __57__WBSCloudTabStore__devicesByFilteringAndSortingDevices___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 uuid];
  v6 = [v4 uuid];
  v7 = [v5 compare:v6];

  return v7;
}

void __57__WBSCloudTabStore__devicesByFilteringAndSortingDevices___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v5 = [v13 uuid];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if ((v6 & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = MEMORY[0x1E696AEC0];
    v9 = _WBSLocalizedString();
    v10 = [v13 name];
    v11 = [v8 localizedStringWithFormat:v9, v10, a3 + 1];
    v12 = [v13 deviceBySettingDisambiguatedName:v11];
    [v7 addObject:v12];
  }
}

uint64_t __57__WBSCloudTabStore__devicesByFilteringAndSortingDevices___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 lastModified];
  v6 = [v4 lastModified];
  v7 = [v5 compare:v6];

  return v7;
}

- (WBSCloudTabStoreDelegate)wbsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wbsDelegate);

  return WeakRetained;
}

- (void)closeTab:onDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2(v2, v3, v4, 5.8081e-34);
  _os_log_debug_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_DEBUG, "Closing single tab %{private}@ on %{private}@", v5, 0x16u);
}

- (void)closeAllTabsOnDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.808e-34);
  _os_log_debug_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEBUG, "Closing all tabs on %{private}@", v4, 0xCu);
}

- (void)saveCurrentCloudTabDeviceDictionaryToCloudKit:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.808e-34);
  _os_log_debug_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEBUG, "Saving current device to CloudKit with dictionary: %{private}@", v4, 0xCu);
}

void __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v3 = 138477827;
  v4 = v2;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "Current CloudKit devices: %{private}@", &v3, 0xCu);
}

void __51__WBSCloudTabStore_pruneExpiredDevicesFromCloudKit__block_invoke_11_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Deleting expired devices failed with error %{public}@", v5);
}

void __54__WBSCloudTabStore_handleCloseTabRequestsFromCloudKit__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Deleting close requests for this device failed with error %{public}@", v5);
}

void __48__WBSCloudTabStore_deleteAllDevicesFromCloudKit__block_invoke_28_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Deleting all devices in CloudKit failed with error %{public}@", v5);
}

- (void)_writeCloseRequestForTab:onDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2(v2, v3, v4, 5.8382e-34);
  _os_log_debug_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_DEBUG, "Writing close request to CloudKit for device with UUID %{public}@ and tab URL %{private}@", v5, 0x16u);
}

void __54__WBSCloudTabStore__writeCloseRequestForTab_onDevice___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Writing close request failed with error %{public}@", v5);
}

@end