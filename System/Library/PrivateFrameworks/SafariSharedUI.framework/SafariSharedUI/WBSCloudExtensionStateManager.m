@interface WBSCloudExtensionStateManager
+ (BOOL)_determineEnabledStateFromCloudExtensionState:(id)a3 forProfileServerID:(id)a4;
+ (BOOL)test_determineEnabledStateFromCloudExtensionState:(id)a3 forProfileServerID:(id)a4;
+ (WBSCloudExtensionStateManager)sharedManager;
+ (id)_cloudExtensionStatesDictionaryForDeviceWithUUIDString:(id)a3 fromCloudExtensionStates:(id)a4;
+ (id)_determineNewTabPageFromCloudDeviceState:(id)a3;
+ (id)_removeDeviceWithUUIDString:(id)a3 fromCloudDevices:(id)a4;
+ (id)_removeStatesForDeviceWithUUIDString:(id)a3 fromCloudExtensionStates:(id)a4;
+ (id)_singleExtensionStates:(id)a3 withStateRemovedForDeviceWithUUIDString:(id)a4;
+ (id)_uuidStringsOfInactiveCloudDevices:(id)a3 currentDeviceUUIDString:(id)a4;
+ (id)test_cloudExtensionStatesDictionaryForDeviceWithUUIDString:(id)a3 fromCloudExtensionStates:(id)a4;
+ (id)test_determineNewTabPageFromCloudDeviceState:(id)a3;
+ (id)test_removeDeviceWithUUIDString:(id)a3 fromCloudDevices:(id)a4;
+ (id)test_removeStatesForDeviceWithUUIDString:(id)a3 fromCloudExtensionStates:(id)a4;
+ (id)test_uuidStringsOfInactiveCloudDevices:(id)a3 currentDeviceUUIDString:(id)a4;
- (BOOL)_cloudDeviceMatchesLocalDeviceForCurrentDevice;
- (BOOL)_cloudExtensionStatesMatchLocalExtensionStatesForCurrentDevice;
- (BOOL)_cloudStateMatchesLocalStateForCurrentDevice;
- (BOOL)_hasInstalledApplicationWithIdentifier:(id)a3;
- (BOOL)isExtensionEnabledInCloudWithComposedIdentifier:(id)a3 forProfileServerID:(id)a4;
- (WBSCloudExtensionStateManager)init;
- (id)_allComposedIdentifiersAssociatedWithComposedIdentifier:(id)a3;
- (id)_cloudExtensionStateAssociatedWithComposedIdentifier:(id)a3;
- (id)_cloudExtensionStateForComposedIdentifiers:(id)a3;
- (id)_composedIdentifierForBundleIdentifier:(id)a3 relatedToComposedIdentifier:(id)a4;
- (id)_defaultWebExtensionsController;
- (id)_extensionDeviceDictionaryForCurrentDevice;
- (id)_extensionStatesDictionaryForCurrentDevice;
- (id)extensionAppsFromOtherDevices;
- (void)_cloudExtensionStatesWereUpdated;
- (void)_deleteCurrentDeviceFromCloudKit;
- (void)_determineExtensionSyncAvailabilityIgnoringExtensionSyncEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)_ensureCurrentDeviceIsSavedPeriodically;
- (void)_extensionSyncEnabledStateDidChangeDistributedNotificationHandler:(id)a3;
- (void)_getCloudExtensionStatesWithCompletionHandler:(id)a3;
- (void)_getCloudSettingsContainerManateeStateWithCompletionHandler:(id)a3;
- (void)_getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler:(id)a3;
- (void)_managedExtensionStateDidChange:(id)a3;
- (void)_pruneInactiveDevicesFromCloudKitWithCompletionHandler:(id)a3;
- (void)_saveCurrentDeviceToCloudKitWithCompletionHandler:(id)a3;
- (void)_saveExtensionStatesWithDictionaryRepresentation:(id)a3 forDevice:(id)a4 completionHandler:(id)a5;
- (void)_schedulePruningOfInactiveDevices;
- (void)_updateCloudExtensionStatesFromSafariBookmarksSyncAgent:(id)a3;
- (void)_updateLocalStateFromCloudExtensionState;
- (void)_updateStateProvidersFromCloudExtensionState;
- (void)addProvider:(id)a3;
- (void)getLockupViewsForAppsOnOtherDevicesWithCompletionHandler:(id)a3;
- (void)localExtensionStateDidChange;
- (void)setExtensionSyncEnabled:(BOOL)a3;
- (void)setManateeState:(int64_t)a3;
- (void)updateNewTabPageFromCloudDeviceState;
@end

@implementation WBSCloudExtensionStateManager

+ (WBSCloudExtensionStateManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[WBSCloudExtensionStateManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

void __46__WBSCloudExtensionStateManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WBSCloudExtensionStateManager);
  v1 = sharedManager_manager;
  sharedManager_manager = v0;
}

- (WBSCloudExtensionStateManager)init
{
  v11.receiver = self;
  v11.super_class = WBSCloudExtensionStateManager;
  v2 = [(WBSCloudExtensionStateManager *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v2->_extensionSyncEnabled = [v3 safari_BOOLForKey:*MEMORY[0x1E69C9128] defaultValue:1];

    v4 = [MEMORY[0x1E69C88C8] sharedController];
    v5 = [v4 hasAnyExtensionManagement];

    if (v5)
    {
      [(WBSCloudExtensionStateManager *)v2 setExtensionSyncEnabled:0];
    }

    v2->_manateeState = 0;
    v6 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v6 addObserver:v2 selector:sel__updateCloudExtensionStatesFromSafariBookmarksSyncAgent_ name:*MEMORY[0x1E69C8D00] object:0];

    v7 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v7 addObserver:v2 selector:sel__extensionSyncEnabledStateDidChangeDistributedNotificationHandler_ name:@"CloudExtensionSyncStateDidChange" object:0];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v2 selector:sel__managedExtensionStateDidChange_ name:*MEMORY[0x1E69C8C38] object:0];

    [(WBSCloudExtensionStateManager *)v2 _updateCloudExtensionStatesFromSafariBookmarksSyncAgent:0];
    v9 = v2;
  }

  return v2;
}

- (void)_updateLocalStateFromCloudExtensionState
{
  [(WBSCloudExtensionStateManager *)self _updateStateProvidersFromCloudExtensionState];
  [(WBSCloudExtensionStateManager *)self updateNewTabPageFromCloudDeviceState];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"WBSCloudExtensionStateDidChange" object:0];
}

- (void)_updateStateProvidersFromCloudExtensionState
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(NSDictionary *)self->_cloudExtensionStates allValues];
  v5 = [v4 firstObject];
  v6 = [v5 firstObject];

  v43 = v6;
  v7 = [v6 objectForKey:*MEMORY[0x1E69C9610]];

  if (v7)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6968000, v8, OS_LOG_TYPE_INFO, "Found cloud data in unexpected format, ignoring", buf, 2u);
    }
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = self->_cloudExtensionStates;
    v9 = [(NSDictionary *)obj countByEnumeratingWithState:&v66 objects:v83 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v67;
      v53 = self;
      v47 = v3;
      v44 = *v67;
      do
      {
        v12 = 0;
        v45 = v10;
        do
        {
          if (*v67 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v66 + 1) + 8 * v12);
          if (([v3 containsObject:v13] & 1) == 0)
          {
            v48 = v12;
            v14 = [(WBSCloudExtensionStateManager *)self _allComposedIdentifiersAssociatedWithComposedIdentifier:v13];
            v15 = [MEMORY[0x1E695DF70] array];
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v52 = v14;
            v50 = [(NSDictionary *)v52 countByEnumeratingWithState:&v62 objects:v82 count:16];
            if (v50)
            {
              v49 = *v63;
              do
              {
                for (i = 0; i != v50; i = i + 1)
                {
                  if (*v63 != v49)
                  {
                    objc_enumerationMutation(v52);
                  }

                  v17 = *(*(&v62 + 1) + 8 * i);
                  v58 = 0u;
                  v59 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v18 = self->_stateProviders;
                  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v58 objects:v81 count:16];
                  if (v19)
                  {
                    v20 = v19;
                    v21 = 0;
                    v22 = *v59;
                    do
                    {
                      for (j = 0; j != v20; ++j)
                      {
                        if (*v59 != v22)
                        {
                          objc_enumerationMutation(v18);
                        }

                        v24 = *(*(&v58 + 1) + 8 * j);
                        if ([v24 hasExtensionWithComposedIdentifier:v17])
                        {
                          v25 = v17;

                          [v15 addObject:v24];
                          v21 = v25;
                        }
                      }

                      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v58 objects:v81 count:16];
                    }

                    while (v20);

                    self = v53;
                    if (v21)
                    {
                      goto LABEL_30;
                    }
                  }

                  else
                  {
                  }
                }

                v50 = [(NSDictionary *)v52 countByEnumeratingWithState:&v62 objects:v82 count:16];
              }

              while (v50);
            }

            v21 = 0;
LABEL_30:
            v26 = v52;

            v27 = [(NSDictionary *)v52 allObjects];
            v3 = v47;
            [v47 addObjectsFromArray:v27];

            if (v21)
            {
              v28 = [(WBSCloudExtensionStateManager *)self _cloudExtensionStateForComposedIdentifiers:v52];
              if ([v28 count])
              {
                v56 = 0u;
                v57 = 0u;
                v54 = 0u;
                v55 = 0u;
                v51 = v15;
                v29 = [v51 countByEnumeratingWithState:&v54 objects:v80 count:16];
                if (v29)
                {
                  v30 = v29;
                  v31 = *v55;
                  do
                  {
                    for (k = 0; k != v30; ++k)
                    {
                      if (*v55 != v31)
                      {
                        objc_enumerationMutation(v51);
                      }

                      v33 = *(*(&v54 + 1) + 8 * k);
                      v34 = [v33 profileServerIDForStateManager:v53];
                      v35 = [objc_opt_class() _determineEnabledStateFromCloudExtensionState:v28 forProfileServerID:v34];
                      v36 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
                      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                      {
                        *buf = 141559043;
                        v37 = @"OFF";
                        if (v35)
                        {
                          v37 = @"ON";
                        }

                        v71 = 1752392040;
                        v72 = 2117;
                        v73 = v52;
                        v74 = 2113;
                        v75 = v37;
                        v76 = 2113;
                        v77 = v34;
                        v78 = 2113;
                        v79 = v28;
                        _os_log_impl(&dword_1C6968000, v36, OS_LOG_TYPE_INFO, "Extensions: %{sensitive, mask.hash}@, cloud state: %{private}@, for profile: %{private}@, computed from: %{private}@", buf, 0x34u);
                      }

                      [v33 setExtensionWithComposedIdentifier:v21 isEnabledInCloud:v35];
                    }

                    v30 = [v51 countByEnumeratingWithState:&v54 objects:v80 count:16];
                  }

                  while (v30);
                }

                v3 = v47;
                v26 = v52;
              }

              else
              {
                v38 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  cloudExtensionStates = v53->_cloudExtensionStates;
                  v40 = v38;
                  v41 = [(NSDictionary *)cloudExtensionStates count];
                  v42 = v53->_cloudExtensionStates;
                  *buf = 134218243;
                  v71 = v41;
                  v72 = 2113;
                  v73 = v42;
                  _os_log_impl(&dword_1C6968000, v40, OS_LOG_TYPE_INFO, "No cloud state found for extension: in %lu item cloud state %{private}@", buf, 0x16u);
                }
              }

              self = v53;
            }

            v11 = v44;
            v10 = v45;
            v12 = v48;
          }

          ++v12;
        }

        while (v12 != v10);
        v10 = [(NSDictionary *)obj countByEnumeratingWithState:&v66 objects:v83 count:16];
      }

      while (v10);
    }
  }
}

- (void)updateNewTabPageFromCloudDeviceState
{
  v37 = *MEMORY[0x1E69E9840];
  if (!self->_extensionSyncEnabled)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v11 = "Skipping updating new tab page from cloud state since sharing across devices isn't enabled";
LABEL_13:
    _os_log_impl(&dword_1C6968000, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
    return;
  }

  if (![(NSArray *)self->_cloudDevices count])
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v11 = "Skipping updating new tab page from cloud state since there aren't any cloud devices";
    goto LABEL_13;
  }

  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [objc_opt_class() _determineNewTabPageFromCloudDeviceState:self->_cloudDevices];
  v5 = [(WBSCloudExtensionStateManager *)self _defaultWebExtensionsController];
  v6 = [v5 tabOverridePreferencesManager];
  v7 = [v6 extensionComposedIdentifierForNewTabPreferenceInDefaults:v3];

  v8 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 141558275;
    v34 = 1752392040;
    v35 = 2117;
    v36 = v4;
    _os_log_impl(&dword_1C6968000, v8, OS_LOG_TYPE_INFO, "Attempting to set local new tab page from sync to %{sensitive, mask.hash}@", buf, 0x16u);
  }

  if (v4 == v7 || [v4 isEqualToString:v7])
  {
    v9 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6968000, v9, OS_LOG_TYPE_INFO, "Skipping setting local new tab page because there would be no change", buf, 2u);
    }
  }

  else
  {
    if ([v4 length])
    {
      [(WBSCloudExtensionStateManager *)self _allComposedIdentifiersAssociatedWithComposedIdentifier:v4];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v12 = v31 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v29;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [v5 extensionWithComposedIdentifier:{*(*(&v28 + 1) + 8 * i), v28}];
            v18 = [v5 webExtensionForExtension:v17];

            if (v18)
            {

              v20 = [v18 newTabOverridePageURL];
              v21 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
              v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
              if (v20)
              {
                if (v22)
                {
                  *buf = 141558275;
                  v34 = 1752392040;
                  v35 = 2117;
                  v36 = v4;
                  _os_log_impl(&dword_1C6968000, v21, OS_LOG_TYPE_INFO, "Setting the new tab page to be existing extension %{sensitive, mask.hash}@ from sync", buf, 0x16u);
                }

                v23 = [v5 tabOverridePreferencesManager];
                v24 = [v18 composedIdentifier];
                [v23 setNewTabBehaviorWithExtensionComposedIdentifier:v24 inDefaults:v3 fromUserGesture:0];

                v25 = [MEMORY[0x1E696AD88] defaultCenter];
                [v25 postNotificationName:@"WBSNewTabPageDidChange" object:0];
              }

              else if (v22)
              {
                *buf = 141558275;
                v34 = 1752392040;
                v35 = 2117;
                v36 = v4;
                _os_log_impl(&dword_1C6968000, v21, OS_LOG_TYPE_INFO, "New tab page extension %{sensitive, mask.hash}@ not set from sync because it doesn't have a new tab page", buf, 0x16u);
              }

              goto LABEL_35;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v19 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 141558275;
        v34 = 1752392040;
        v35 = 2117;
        v36 = v4;
        _os_log_impl(&dword_1C6968000, v19, OS_LOG_TYPE_INFO, "New tab page extension %{sensitive, mask.hash}@ not set from sync because it's not installed on the system", buf, 0x16u);
      }
    }

    else
    {
      v26 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C6968000, v26, OS_LOG_TYPE_INFO, "Clearing local new tab page from sync", buf, 2u);
      }

      v27 = [v5 tabOverridePreferencesManager];
      [v27 clearNewTabBehaviorInDefaults:v3 fromUserGesture:0];

      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 postNotificationName:@"WBSNewTabPageDidChange" object:0];
    }

LABEL_35:
  }
}

- (void)setExtensionSyncEnabled:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_extensionSyncEnabled != a3)
  {
    v3 = a3;
    v5 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = v6;
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1C6968000, v5, OS_LOG_TYPE_INFO, "Changing extension sync enabled to %{public}@", &v11, 0xCu);
    }

    self->_extensionSyncEnabled = v3;
    v8 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v8 setBool:v3 forKey:*MEMORY[0x1E69C9128]];

    if (v3)
    {
      [(WBSCloudExtensionStateManager *)self localExtensionStateDidChange];
    }

    else
    {
      [(WBSPeriodicActivityScheduler *)self->_periodicDeviceSavingScheduler invalidate];
      periodicDeviceSavingScheduler = self->_periodicDeviceSavingScheduler;
      self->_periodicDeviceSavingScheduler = 0;

      [(WBSCloudExtensionStateManager *)self _deleteCurrentDeviceFromCloudKit];
    }

    [(WBSCloudExtensionStateManager *)self _updateCloudExtensionStatesFromSafariBookmarksSyncAgent:0];
    v10 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v10 postNotificationName:@"CloudExtensionSyncStateDidChange" object:0 userInfo:0 deliverImmediately:1];
  }
}

- (void)addProvider:(id)a3
{
  v4 = a3;
  stateProviders = self->_stateProviders;
  v8 = v4;
  if (!stateProviders)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v7 = self->_stateProviders;
    self->_stateProviders = v6;

    v4 = v8;
    stateProviders = self->_stateProviders;
  }

  [(NSMutableArray *)stateProviders addObject:v4];
}

- (void)localExtensionStateDidChange
{
  if (self->_extensionSyncEnabled)
  {
    v7[9] = v2;
    v7[10] = v3;
    if ([(NSMutableArray *)self->_stateProviders count])
    {
      v5 = [(WBSCloudExtensionStateManager *)self _extensionDeviceDictionaryForCurrentDevice];
      if (v5)
      {
        v6 = [(WBSCloudExtensionStateManager *)self _extensionStatesDictionaryForCurrentDevice];
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __61__WBSCloudExtensionStateManager_localExtensionStateDidChange__block_invoke;
        v7[3] = &unk_1E8283830;
        v7[4] = self;
        [(WBSCloudExtensionStateManager *)self _saveExtensionStatesWithDictionaryRepresentation:v6 forDevice:v5 completionHandler:v7];
      }
    }
  }
}

void __61__WBSCloudExtensionStateManager_localExtensionStateDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__WBSCloudExtensionStateManager_localExtensionStateDidChange__block_invoke_cold_1(v4);
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__WBSCloudExtensionStateManager_localExtensionStateDidChange__block_invoke_25;
    block[3] = &unk_1E8283080;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __61__WBSCloudExtensionStateManager_localExtensionStateDidChange__block_invoke_25(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [MEMORY[0x1E695DF00] now];
  [v2 safari_setDate:v3 forKey:*MEMORY[0x1E69C9180]];

  result = [*(a1 + 32) _ensureCurrentDeviceIsSavedPeriodically];
  if (*(*(a1 + 32) + 64) == 1)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C6968000, v5, OS_LOG_TYPE_INFO, "Performing requested fetch after saving cloud extension states", v6, 2u);
    }

    result = [*(a1 + 32) _updateCloudExtensionStatesFromSafariBookmarksSyncAgent:0];
    *(*(a1 + 32) + 64) = 0;
  }

  return result;
}

- (void)getLockupViewsForAppsOnOtherDevicesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = +[WBSASCLockupViewGenerator sharedGenerator];
  v5 = [(WBSCloudExtensionStateManager *)self extensionAppsFromOtherDevices];
  [v6 generateLockupViewsForAvailableApps:v5 lockupViewType:0 maintainRequestedOrderOfApps:0 completionHandler:v4];
}

- (BOOL)_hasInstalledApplicationWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 intValue];
  v5 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
  v6 = [v5 nextObject];
  if (!v6)
  {
    LOBYTE(v13) = 0;
    goto LABEL_12;
  }

  v7 = v6;
  v8 = v4;
  while (v8)
  {
    v9 = [v7 iTunesMetadata];
    v10 = [v9 storeItemIdentifier];

    if (v10 == v8)
    {
      goto LABEL_10;
    }

LABEL_7:
    v13 = [v5 nextObject];

    v7 = v13;
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  v11 = [v7 applicationIdentifier];
  v12 = [v3 isEqualToString:v11];

  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  LOBYTE(v13) = 1;
LABEL_11:

LABEL_12:
  return v13;
}

- (id)extensionAppsFromOtherDevices
{
  v81 = *MEMORY[0x1E69E9840];
  v49 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E695DFA8] set];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v4 = self->_cloudExtensionStates;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v70;
    v53 = *MEMORY[0x1E69C9600];
    v52 = *MEMORY[0x1E69C9618];
    v50 = *MEMORY[0x1E69C95A8];
    v48 = *MEMORY[0x1E69C9198];
    v51 = self;
    v59 = v3;
    v54 = v4;
    v58 = *v70;
    do
    {
      v8 = 0;
      v60 = v6;
      do
      {
        if (*v70 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v69 + 1) + 8 * v8);
        if (([v3 containsObject:v9] & 1) == 0)
        {
          v61 = [(WBSCloudExtensionStateManager *)self _allComposedIdentifiersAssociatedWithComposedIdentifier:v9];
          v10 = [(WBSCloudExtensionStateManager *)self _cloudExtensionStateForComposedIdentifiers:?];
          v11 = MEMORY[0x1E695DFD8];
          stateProviders = self->_stateProviders;
          v68[0] = MEMORY[0x1E69E9820];
          v68[1] = 3221225472;
          v68[2] = __62__WBSCloudExtensionStateManager_extensionAppsFromOtherDevices__block_invoke;
          v68[3] = &unk_1E8283858;
          v68[4] = self;
          v13 = [(NSMutableArray *)stateProviders safari_mapObjectsUsingBlock:v68];
          v14 = [v11 setWithArray:v13];

          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __62__WBSCloudExtensionStateManager_extensionAppsFromOtherDevices__block_invoke_2;
          v66[3] = &unk_1E8283880;
          v66[4] = self;
          v15 = v10;
          v67 = v15;
          if ([v14 safari_containsObjectPassingTest:v66])
          {
            v57 = v14;
            v16 = v53;
            v17 = v52;
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v56 = v15;
            v18 = v15;
            v19 = [v18 countByEnumeratingWithState:&v62 objects:v79 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v63;
LABEL_10:
              v22 = 0;
              while (1)
              {
                if (*v63 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v62 + 1) + 8 * v22);
                v24 = [v23 safari_stringForKey:v16 returningNilIfEmpty:1];
                if (v24)
                {
                  v27 = v24;

                  v28 = 0;
                  self = v51;
                  goto LABEL_24;
                }

                v25 = [v23 safari_stringForKey:v17 returningNilIfEmpty:1];
                if (v25)
                {
                  break;
                }

                if (v20 == ++v22)
                {
                  v20 = [v18 countByEnumeratingWithState:&v62 objects:v79 count:16];
                  self = v51;
                  if (v20)
                  {
                    goto LABEL_10;
                  }

                  goto LABEL_17;
                }
              }

              v29 = v25;
              v28 = [v23 safari_stringForKey:v50];

              self = v51;
              if (v28)
              {
                goto LABEL_25;
              }
            }

            else
            {
LABEL_17:
            }

            v30 = [v18 firstObject];
            v28 = [v30 safari_stringForKey:v50];

            if ([MEMORY[0x1E69C8880] isInternalInstall])
            {
              v31 = [MEMORY[0x1E695E000] safari_browserDefaults];
              v32 = [v31 dictionaryForKey:v48];
              v27 = [v32 safari_stringForKey:v28];

              if (v27)
              {
LABEL_24:
                v33 = MEMORY[0x1E696AEC0];
                v34 = developerIdentifierFromComposedIdentifier(v9);
                v35 = [v33 stringWithFormat:@"%@.%@", v34, v27];

                v55 = 0;
                goto LABEL_27;
              }
            }

            else
            {
LABEL_25:
              v27 = 0;
            }

            v35 = 0;
            v55 = 1;
LABEL_27:
            if (v35)
            {
              v36 = v35;
            }

            else
            {
              v36 = v28;
            }

            v37 = [(WBSCloudExtensionStateManager *)self _hasInstalledApplicationWithIdentifier:v36];
            v38 = [v61 allObjects];
            [v59 addObjectsFromArray:v38];

            if (v37)
            {
              v39 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
              {
                *buf = 138477827;
                v74 = v9;
                _os_log_impl(&dword_1C6968000, v39, OS_LOG_TYPE_INFO, "Skipping %{private}@ in extensionAppsFromOtherDevices because its containing app is installed", buf, 0xCu);
              }
            }

            else
            {
              if (v55)
              {
                v40 = v28;
              }

              else
              {
                v40 = v27;
              }

              v41 = v40;
              if (v41)
              {
                v42 = [v49 objectForKeyedSubscript:v41];

                if (!v42)
                {
                  v43 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138478339;
                    v74 = v9;
                    v75 = 2113;
                    v76 = v28;
                    v77 = 2113;
                    v78 = v27;
                    _os_log_impl(&dword_1C6968000, v43, OS_LOG_TYPE_INFO, "Creating available app for composed identifier: %{private}@ with adamID: %{private}@, platform specific bundle identifier: %{private}@", buf, 0x20u);
                  }

                  v44 = [[WBSAvailableAppWithExtension alloc] initWithAdamID:v28 platformSpecificBundleID:v27];
                  if ((v55 & 1) == 0)
                  {
                    v45 = developerIdentifierFromComposedIdentifier(v9);
                    [(WBSAvailableAppWithExtension *)v44 setRequiredTeamID:v45];
                  }

                  [v49 setObject:v44 forKeyedSubscript:v41];
                }
              }
            }

            v3 = v59;
            v4 = v54;
            v15 = v56;
            v14 = v57;
          }

          else
          {
            v26 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *buf = 138477827;
              v74 = v9;
              _os_log_impl(&dword_1C6968000, v26, OS_LOG_TYPE_INFO, "Skipping %{private}@ in extensionAppsFromOtherDevices because it isn't enabled", buf, 0xCu);
            }
          }

          v6 = v60;
          v7 = v58;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v69 objects:v80 count:16];
    }

    while (v6);
  }

  v46 = [v49 allValues];

  return v46;
}

uint64_t __62__WBSCloudExtensionStateManager_extensionAppsFromOtherDevices__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _determineEnabledStateFromCloudExtensionState:*(a1 + 40) forProfileServerID:v3];

  return v4;
}

- (BOOL)isExtensionEnabledInCloudWithComposedIdentifier:(id)a3 forProfileServerID:(id)a4
{
  v6 = a4;
  if (self->_extensionSyncEnabled)
  {
    v7 = [(WBSCloudExtensionStateManager *)self _cloudExtensionStateAssociatedWithComposedIdentifier:a3];
    if ([v7 count])
    {
      v8 = [objc_opt_class() _determineEnabledStateFromCloudExtensionState:v7 forProfileServerID:v6];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setManateeState:(int64_t)a3
{
  if (self->_manateeState != a3)
  {
    self->_manateeState = a3;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"WBSCloudExtensionManateeStateDidChange" object:0];
  }
}

- (void)_determineExtensionSyncAvailabilityIgnoringExtensionSyncEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = v6;
  if ((a3 || self->_extensionSyncEnabled) && self->_manateeState != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __115__WBSCloudExtensionStateManager__determineExtensionSyncAvailabilityIgnoringExtensionSyncEnabled_completionHandler___block_invoke;
    v8[3] = &unk_1E82838A8;
    v8[4] = self;
    v9 = v6;
    [(WBSCloudExtensionStateManager *)self _getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler:v8];
  }

  else
  {
    self->_hasSuccessfullyUpdatedCloudExtensionStatesAtLeastOnce = 0;
    (*(v6 + 2))(v6, 0);
  }
}

uint64_t __115__WBSCloudExtensionStateManager__determineExtensionSyncAvailabilityIgnoringExtensionSyncEnabled_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(a1 + 40) + 16))();
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3[9] == 1)
  {
    return (*(v4 + 16))(v4, 1);
  }

  else
  {
    return [v3 _getCloudSettingsContainerManateeStateWithCompletionHandler:v4];
  }
}

- (void)_getCloudSettingsContainerManateeStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69C8A08] sharedProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__WBSCloudExtensionStateManager__getCloudSettingsContainerManateeStateWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E82838F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 getCloudSettingsContainerManateeStateWithCompletionHandler:v7];
}

void __93__WBSCloudExtensionStateManager__getCloudSettingsContainerManateeStateWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__WBSCloudExtensionStateManager__getCloudSettingsContainerManateeStateWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E82838D0;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __93__WBSCloudExtensionStateManager__getCloudSettingsContainerManateeStateWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 48))
    {
      v3 = @"is";
    }

    else
    {
      v3 = @"is not";
    }

    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1C6968000, v2, OS_LOG_TYPE_INFO, "Encryption %{public}@ supported for cloud extension state", &v6, 0xCu);
  }

  if (*(a1 + 48))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [*(a1 + 32) setManateeState:v4];
  return (*(*(a1 + 40) + 16))();
}

- (void)_getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69C89D0] sharedObserver];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__WBSCloudExtensionStateManager__getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E82838F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler:v7];
}

void __98__WBSCloudExtensionStateManager__getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__WBSCloudExtensionStateManager__getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E82838D0;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __98__WBSCloudExtensionStateManager__getPrimaryAppleAccountHasSafariSyncEnabledWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    *(*(a1 + 32) + 8) = 0;
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)_extensionDeviceDictionaryForCurrentDevice
{
  v16[2] = *MEMORY[0x1E69E9840];
  v2 = [(WBSCloudExtensionStateManager *)self _defaultWebExtensionsController];
  v3 = [v2 _deviceUUIDString];
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E69C8860] currentDevice];
    v5 = [v4 userAssignedName];

    if (![(__CFString *)v5 length])
    {
      v6 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [WBSCloudExtensionStateManager _extensionDeviceDictionaryForCurrentDevice];
      }

      v5 = &stru_1F4646D10;
    }

    v7 = *MEMORY[0x1E69C95D8];
    v15[0] = *MEMORY[0x1E69C95B8];
    v15[1] = v7;
    v16[0] = v5;
    v16[1] = v3;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v9 = [v2 tabOverridePreferencesManager];
    v10 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v11 = [v9 cloudExtensionStateForDefaults:v10];
    v12 = [v8 safari_dictionaryByMergingWithDictionary:v11];
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WBSCloudExtensionStateManager _extensionDeviceDictionaryForCurrentDevice];
    }

    v12 = 0;
  }

  return v12;
}

- (id)_extensionStatesDictionaryForCurrentDevice
{
  v49 = *MEMORY[0x1E69E9840];
  v37 = [MEMORY[0x1E695DF90] dictionary];
  stateProviders = self->_stateProviders;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __75__WBSCloudExtensionStateManager__extensionStatesDictionaryForCurrentDevice__block_invoke;
  v46[3] = &unk_1E8283920;
  v46[4] = self;
  [(NSMutableArray *)stateProviders sortedArrayUsingComparator:v46];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v45 = 0u;
  v29 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v29)
  {
    v28 = *v43;
    v36 = *MEMORY[0x1E69C9628];
    v27 = self;
    do
    {
      v4 = 0;
      do
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v42 + 1) + 8 * v4);
        v6 = [v5 cloudExtensionStateForStateManager:self];
        if (filteredStateDictionaryForExtensionState_once != -1)
        {
          [WBSCloudExtensionStateManager _extensionStatesDictionaryForCurrentDevice];
        }

        v32 = [v6 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_186];
        v7 = [v5 profileServerIDForStateManager:self];
        if (v7)
        {
          v31 = v4;
          v34 = v7;
          v33 = [WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:?];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v30 = v6;
          v8 = v6;
          v9 = [v8 countByEnumeratingWithState:&v38 objects:v47 count:16];
          if (!v9)
          {
            goto LABEL_25;
          }

          v10 = v9;
          v35 = *v39;
          while (1)
          {
            v11 = 0;
            do
            {
              if (*v39 != v35)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v38 + 1) + 8 * v11);
              v13 = [v8 safari_dictionaryForKey:v12];
              v14 = [v37 safari_dictionaryForKey:v12];
              if (!v14)
              {
                if (!v33)
                {
                  goto LABEL_23;
                }

                v14 = [v32 safari_dictionaryForKey:v12];
              }

              v15 = [v14 safari_dictionaryForKey:v36];
              if (v15)
              {
                v16 = v15;
              }

              else
              {
                v16 = MEMORY[0x1E695E0F8];
              }

              v17 = [v16 mutableCopy];
              v18 = filteredStateDictionaryForEnabledState_once;
              v19 = v13;
              if (v18 != -1)
              {
                [WBSCloudExtensionStateManager _extensionStatesDictionaryForCurrentDevice];
              }

              v20 = [v19 safari_mapAndFilterKeysUsingBlock:&__block_literal_global_193];

              [v17 setObject:v20 forKeyedSubscript:v34];
              v21 = [v14 mutableCopy];
              v22 = [v17 copy];
              [v21 setObject:v22 forKeyedSubscript:v36];

              v23 = [v21 copy];
              [v37 setObject:v23 forKeyedSubscript:v12];

LABEL_23:
              ++v11;
            }

            while (v10 != v11);
            v10 = [v8 countByEnumeratingWithState:&v38 objects:v47 count:16];
            if (!v10)
            {
LABEL_25:

              self = v27;
              v6 = v30;
              v4 = v31;
              v7 = v34;
              break;
            }
          }
        }

        ++v4;
      }

      while (v4 != v29);
      v29 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v29);
  }

  v24 = [v37 copy];

  return v24;
}

uint64_t __75__WBSCloudExtensionStateManager__extensionStatesDictionaryForCurrentDevice__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 profileServerIDForStateManager:v5];
  v8 = [WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:v7];
  v9 = [v6 profileServerIDForStateManager:*(a1 + 32)];

  v10 = [WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:v9];
  if (v8 && !v10)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (!v8 && !v10)
  {
    v11 = [v7 compare:v9];
  }

  return v11;
}

- (void)_saveExtensionStatesWithDictionaryRepresentation:(id)a3 forDevice:(id)a4 completionHandler:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138478083;
    v20 = v8;
    v21 = 2113;
    v22 = v9;
    _os_log_impl(&dword_1C6968000, v11, OS_LOG_TYPE_INFO, "Saving extension state to cloud: %{private}@, for device: %{private}@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __110__WBSCloudExtensionStateManager__saveExtensionStatesWithDictionaryRepresentation_forDevice_completionHandler___block_invoke;
  v15[3] = &unk_1E8283948;
  v17 = v9;
  v18 = v10;
  v16 = v8;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  [(WBSCloudExtensionStateManager *)self _determineExtensionSyncAvailabilityWithCompletionHandler:v15];
}

void __110__WBSCloudExtensionStateManager__saveExtensionStatesWithDictionaryRepresentation_forDevice_completionHandler___block_invoke(void *a1, char a2)
{
  if (a2)
  {
    v4 = [MEMORY[0x1E69C8A08] sharedProxy];
    [v4 saveExtensionStatesWithDictionaryRepresentation:a1[4] forDevice:a1[5] completionHandler:a1[6]];
  }

  else
  {
    v3 = a1[6];
    v4 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"WBSCloudExtensionStateManagerErrorDomain" code:0 privacyPreservingDescription:@"Extension syncing is not available"];
    (*(v3 + 16))(v3);
  }
}

- (void)_saveCurrentDeviceToCloudKitWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C6968000, v5, OS_LOG_TYPE_DEFAULT, "Doing periodic save of current device to CloudKit", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__WBSCloudExtensionStateManager__saveCurrentDeviceToCloudKitWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E82838A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(WBSCloudExtensionStateManager *)self _determineExtensionSyncAvailabilityWithCompletionHandler:v7];
}

void __83__WBSCloudExtensionStateManager__saveCurrentDeviceToCloudKitWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = [*(a1 + 32) _extensionDeviceDictionaryForCurrentDevice];
    if (v6)
    {
      v3 = [MEMORY[0x1E69C8A08] sharedProxy];
      [v3 saveExtensionDeviceWithDictionaryRepresentation:v6 completionHandler:*(a1 + 40)];
    }

    else
    {
      v5 = *(a1 + 40);
      v3 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"WBSCloudExtensionStateManagerErrorDomain" code:1 privacyPreservingDescription:@"Could not compute cloud extension device dictionary"];
      (*(v5 + 16))(v5, v3);
    }
  }

  else
  {
    v4 = *(a1 + 40);
    v6 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"WBSCloudExtensionStateManagerErrorDomain" code:0 privacyPreservingDescription:@"Extension syncing is not available"];
    (*(v4 + 16))(v4, v6);
  }
}

- (void)_deleteCurrentDeviceFromCloudKit
{
  v3 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C6968000, v3, OS_LOG_TYPE_DEFAULT, "Deleting current device from CloudKit", buf, 2u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__WBSCloudExtensionStateManager__deleteCurrentDeviceFromCloudKit__block_invoke;
  v4[3] = &unk_1E8283970;
  v4[4] = self;
  [(WBSCloudExtensionStateManager *)self _determineExtensionSyncAvailabilityIgnoringExtensionSyncEnabled:1 completionHandler:v4];
}

void __65__WBSCloudExtensionStateManager__deleteCurrentDeviceFromCloudKit__block_invoke(uint64_t a1, char a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = [*(a1 + 32) _defaultWebExtensionsController];
    v3 = [v2 _deviceUUIDString];

    if ([v3 length])
    {
      v4 = [MEMORY[0x1E69C8A08] sharedProxy];
      v8[0] = v3;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      [v4 deleteCloudExtensionDevicesWithUUIDStrings:v5 completionHandler:&__block_literal_global_60];
    }

    else
    {
      v7 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __65__WBSCloudExtensionStateManager__deleteCurrentDeviceFromCloudKit__block_invoke_cold_2();
      }
    }
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __65__WBSCloudExtensionStateManager__deleteCurrentDeviceFromCloudKit__block_invoke_cold_1();
    }
  }
}

void __65__WBSCloudExtensionStateManager__deleteCurrentDeviceFromCloudKit__block_invoke_58(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __65__WBSCloudExtensionStateManager__deleteCurrentDeviceFromCloudKit__block_invoke_58_cold_1(v3);
    }
  }
}

- (void)_getCloudExtensionStatesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C6968000, v5, OS_LOG_TYPE_INFO, "Fetching cloud extension state", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__WBSCloudExtensionStateManager__getCloudExtensionStatesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8283998;
  v8 = v4;
  v6 = v4;
  [(WBSCloudExtensionStateManager *)self _determineExtensionSyncAvailabilityIgnoringExtensionSyncEnabled:1 completionHandler:v7];
}

void __79__WBSCloudExtensionStateManager__getCloudExtensionStatesWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = [MEMORY[0x1E69C8A08] sharedProxy];
    [v4 getCloudExtensionStatesWithCompletionHandler:*(a1 + 32)];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"WBSCloudExtensionStateManagerErrorDomain" code:0 privacyPreservingDescription:@"Extension syncing is not available"];
    (*(v3 + 16))(v3, 0, 0);
  }
}

- (id)_composedIdentifierForBundleIdentifier:(id)a3 relatedToComposedIdentifier:(id)a4
{
  v5 = a3;
  v6 = developerIdentifierFromComposedIdentifier(a4);
  v7 = [WBSWebExtensionsController _composedIdentifierForStateOfExtensionWithBundleIdentifier:v5 developerIdentifier:v6];

  return v7;
}

- (id)_allComposedIdentifiersAssociatedWithComposedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] setWithObject:v4];
  cloudExtensionStates = self->_cloudExtensionStates;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__WBSCloudExtensionStateManager__allComposedIdentifiersAssociatedWithComposedIdentifier___block_invoke;
  v14[3] = &unk_1E82839C0;
  v7 = v4;
  v15 = v7;
  v8 = v5;
  v16 = v8;
  v17 = self;
  [(NSDictionary *)cloudExtensionStates enumerateKeysAndObjectsUsingBlock:v14];
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v9 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v10 = [v9 dictionaryForKey:*MEMORY[0x1E69C91A0]];
    v11 = [v10 safari_stringForKey:v7];

    if ([v11 length])
    {
      [v8 addObject:v11];
    }
  }

  v12 = [v8 copy];

  return v12;
}

void __89__WBSCloudExtensionStateManager__allComposedIdentifiersAssociatedWithComposedIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v30 = a4;
  v42 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v31 = v6;
  if ([v6 isEqualToString:*(a1 + 32)])
  {
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      v12 = *MEMORY[0x1E69C9620];
      v13 = *MEMORY[0x1E69C9608];
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v16 = [v15 safari_stringForKey:v12 returningNilIfEmpty:{1, v30}];
          if (!v16)
          {
            v16 = [v15 safari_stringForKey:v13 returningNilIfEmpty:1];
            if (!v16)
            {
              continue;
            }
          }

          v26 = v16;
          v28 = *(a1 + 40);
          v29 = [*(a1 + 48) _composedIdentifierForBundleIdentifier:v16 relatedToComposedIdentifier:*(a1 + 32)];
          [v28 addObject:v29];

          *v30 = 1;
          goto LABEL_26;
        }

        v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v17 = v7;
    v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      v21 = *MEMORY[0x1E69C9620];
      v22 = *MEMORY[0x1E69C9608];
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v24 = *(*(&v32 + 1) + 8 * j);
          v25 = [v24 safari_stringForKey:v21 returningNilIfEmpty:{1, v30}];
          if (!v25)
          {
            v25 = [v24 safari_stringForKey:v22 returningNilIfEmpty:1];
            if (!v25)
            {
              continue;
            }
          }

          v26 = v25;
          v27 = [*(a1 + 48) _composedIdentifierForBundleIdentifier:v25 relatedToComposedIdentifier:*(a1 + 32)];
          if ([v27 isEqualToString:*(a1 + 32)])
          {
            [*(a1 + 40) addObject:v31];
            *v30 = 1;

LABEL_26:
            goto LABEL_27;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_27:
}

- (id)_cloudExtensionStateForComposedIdentifiers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSDictionary *)self->_cloudExtensionStates safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)_cloudExtensionStateAssociatedWithComposedIdentifier:(id)a3
{
  v4 = [(WBSCloudExtensionStateManager *)self _allComposedIdentifiersAssociatedWithComposedIdentifier:a3];
  v5 = [(WBSCloudExtensionStateManager *)self _cloudExtensionStateForComposedIdentifiers:v4];

  return v5;
}

- (void)_cloudExtensionStatesWereUpdated
{
  if ([(WBSCloudExtensionStateManager *)self _cloudStateMatchesLocalStateForCurrentDevice])
  {

    [(WBSCloudExtensionStateManager *)self _updateLocalStateFromCloudExtensionState];
  }

  else
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1C6968000, v3, OS_LOG_TYPE_INFO, "Cloud state doesn't match local state at fetch time, saving local state to the cloud and fetching again", v4, 2u);
    }

    self->_performFetchAfterNextSave = 1;
    [(WBSCloudExtensionStateManager *)self localExtensionStateDidChange];
  }
}

- (void)_updateCloudExtensionStatesFromSafariBookmarksSyncAgent:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1C6968000, v5, OS_LOG_TYPE_INFO, "Updating cloud extension states from notification: %@", buf, 0xCu);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__WBSCloudExtensionStateManager__updateCloudExtensionStatesFromSafariBookmarksSyncAgent___block_invoke;
  v6[3] = &unk_1E8283A10;
  v6[4] = self;
  [(WBSCloudExtensionStateManager *)self _getCloudExtensionStatesWithCompletionHandler:v6];
}

void __89__WBSCloudExtensionStateManager__updateCloudExtensionStatesFromSafariBookmarksSyncAgent___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__WBSCloudExtensionStateManager__updateCloudExtensionStatesFromSafariBookmarksSyncAgent___block_invoke_2;
  v14[3] = &unk_1E82839E8;
  v10 = *(a1 + 32);
  v15 = v9;
  v16 = v10;
  v17 = v8;
  v18 = v7;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __89__WBSCloudExtensionStateManager__updateCloudExtensionStatesFromSafariBookmarksSyncAgent___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  if (*(a1 + 32))
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __89__WBSCloudExtensionStateManager__updateCloudExtensionStatesFromSafariBookmarksSyncAgent___block_invoke_2_cold_1(v2, v3);
    }

    v4 = *(a1 + 40);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;

    v6 = *(a1 + 40);
    v7 = *(v6 + 32);
    *(v6 + 32) = 0;

    *(*(a1 + 40) + 40) = 0;
    v8 = *(a1 + 40);
    if (v8[65] == 1)
    {
      [v8 _updateLocalStateFromCloudExtensionState];
    }
  }

  else
  {
    *(*(a1 + 40) + 40) = 1;
    v9 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      v24 = 138477827;
      v25 = v10;
      _os_log_impl(&dword_1C6968000, v9, OS_LOG_TYPE_INFO, "Received cloud devices: %{private}@", &v24, 0xCu);
    }

    v11 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 56);
      v24 = 138477827;
      v25 = v12;
      _os_log_impl(&dword_1C6968000, v11, OS_LOG_TYPE_INFO, "Received cloud extension state: %{private}@", &v24, 0xCu);
    }

    v13 = [*(a1 + 56) copy];
    v14 = *(a1 + 40);
    v15 = *(v14 + 24);
    *(v14 + 24) = v13;

    v16 = [*(a1 + 48) copy];
    v17 = *(a1 + 40);
    v18 = *(v17 + 32);
    *(v17 + 32) = v16;

    v19 = *(a1 + 40);
    if (*(v19 + 65))
    {
      if (!*(v19 + 48))
      {
        [v19 _schedulePruningOfInactiveDevices];
        v19 = *(a1 + 40);
      }

      [v19 _cloudExtensionStatesWereUpdated];
      v20 = *(a1 + 40);
      if ((*(v20 + 8) & 1) == 0)
      {
        *(v20 + 8) = 1;
        if (([*(a1 + 40) _cloudStateMatchesLocalStateForCurrentDevice] & 1) == 0)
        {
          v21 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            LOWORD(v24) = 0;
            _os_log_impl(&dword_1C6968000, v21, OS_LOG_TYPE_INFO, "Cloud state for the current device doesn't match local state, saving extension state to cloud", &v24, 2u);
          }

          [*(a1 + 40) localExtensionStateDidChange];
        }
      }

      v22 = *(a1 + 40);
      if (*(v22 + 65) == 1 && !*(v22 + 56))
      {
        [v22 _ensureCurrentDeviceIsSavedPeriodically];
      }
    }

    else
    {
      v23 = [MEMORY[0x1E696AD88] defaultCenter];
      [v23 postNotificationName:@"WBSCloudExtensionStateDidChange" object:0];
    }
  }
}

- (void)_ensureCurrentDeviceIsSavedPeriodically
{
  [(WBSPeriodicActivityScheduler *)self->_periodicDeviceSavingScheduler invalidate];
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [v3 safari_dateForKey:*MEMORY[0x1E69C9180]];

  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E69C8FD0]);
  if (saveCurrentDeviceTimeInterval_onceToken != -1)
  {
    [WBSCloudExtensionStateManager _ensureCurrentDeviceIsSavedPeriodically];
  }

  v6 = *&saveCurrentDeviceTimeInterval_saveCurrentDeviceTimeInterval;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__WBSCloudExtensionStateManager__ensureCurrentDeviceIsSavedPeriodically__block_invoke;
  v9[3] = &unk_1E8283A38;
  objc_copyWeak(&v10, &location);
  v7 = [v5 initWithInterval:v4 minimumDelay:v9 lastFireDate:v6 block:1.0];
  periodicDeviceSavingScheduler = self->_periodicDeviceSavingScheduler;
  self->_periodicDeviceSavingScheduler = v7;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __72__WBSCloudExtensionStateManager__ensureCurrentDeviceIsSavedPeriodically__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__WBSCloudExtensionStateManager__ensureCurrentDeviceIsSavedPeriodically__block_invoke_2;
  block[3] = &unk_1E8283A38;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __72__WBSCloudExtensionStateManager__ensureCurrentDeviceIsSavedPeriodically__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _saveCurrentDeviceToCloudKitWithCompletionHandler:&__block_literal_global_72_0];
    WeakRetained = v2;
  }
}

void __72__WBSCloudExtensionStateManager__ensureCurrentDeviceIsSavedPeriodically__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __72__WBSCloudExtensionStateManager__ensureCurrentDeviceIsSavedPeriodically__block_invoke_3_cold_1(v3);
    }
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_75);
  }
}

void __72__WBSCloudExtensionStateManager__ensureCurrentDeviceIsSavedPeriodically__block_invoke_73()
{
  v1 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v0 = [MEMORY[0x1E695DF00] now];
  [v1 safari_setDate:v0 forKey:*MEMORY[0x1E69C9180]];
}

- (void)_schedulePruningOfInactiveDevices
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [v3 safari_dateForKey:*MEMORY[0x1E69C9178]];

  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E69C8FD0]);
  if (pruneInactiveDevicesTimeInterval_onceToken != -1)
  {
    [WBSCloudExtensionStateManager _schedulePruningOfInactiveDevices];
  }

  v6 = *&pruneInactiveDevicesTimeInterval_pruneInactiveDevicesTimeInterval;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__WBSCloudExtensionStateManager__schedulePruningOfInactiveDevices__block_invoke;
  v9[3] = &unk_1E8283A38;
  objc_copyWeak(&v10, &location);
  v7 = [v5 initWithInterval:v4 minimumDelay:v9 lastFireDate:v6 block:1.0];
  inactiveDevicePruningScheduler = self->_inactiveDevicePruningScheduler;
  self->_inactiveDevicePruningScheduler = v7;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __66__WBSCloudExtensionStateManager__schedulePruningOfInactiveDevices__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__WBSCloudExtensionStateManager__schedulePruningOfInactiveDevices__block_invoke_2;
  block[3] = &unk_1E8283A38;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __66__WBSCloudExtensionStateManager__schedulePruningOfInactiveDevices__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __66__WBSCloudExtensionStateManager__schedulePruningOfInactiveDevices__block_invoke_3;
    v3[3] = &unk_1E8283A60;
    v3[4] = WeakRetained;
    [WeakRetained _pruneInactiveDevicesFromCloudKitWithCompletionHandler:v3];
  }
}

void __66__WBSCloudExtensionStateManager__schedulePruningOfInactiveDevices__block_invoke_3(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v5 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v6 = [MEMORY[0x1E695DF00] now];
    [v5 safari_setDate:v6 forKey:*MEMORY[0x1E69C9178]];

    if (a3)
    {
      v7 = *(a1 + 32);

      [v7 _cloudExtensionStatesWereUpdated];
    }
  }
}

+ (id)_uuidStringsOfInactiveCloudDevices:(id)a3 currentDeviceUUIDString:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF00];
  v7 = timeIntervalBeforeAssumingDeviceHasBecomeInactive_onceToken;
  v8 = a3;
  if (v7 != -1)
  {
    +[WBSCloudExtensionStateManager _uuidStringsOfInactiveCloudDevices:currentDeviceUUIDString:];
  }

  v9 = [v6 dateWithTimeIntervalSinceNow:-*&timeIntervalBeforeAssumingDeviceHasBecomeInactive_timeIntervalBeforeAssumingDeviceHasBecomeInactive];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__WBSCloudExtensionStateManager__uuidStringsOfInactiveCloudDevices_currentDeviceUUIDString___block_invoke;
  v14[3] = &unk_1E8283A88;
  v15 = v5;
  v16 = v9;
  v10 = v9;
  v11 = v5;
  v12 = [v8 safari_mapAndFilterObjectsUsingBlock:v14];

  return v12;
}

id __92__WBSCloudExtensionStateManager__uuidStringsOfInactiveCloudDevices_currentDeviceUUIDString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 safari_stringForKey:*MEMORY[0x1E69C95D8]];
  if ([v4 length] && (objc_msgSend(v4, "isEqualToString:", *(a1 + 32)) & 1) == 0)
  {
    v6 = [v3 safari_dateForKey:*MEMORY[0x1E69C95B0]];
    v7 = v6;
    if (v6 && [v6 compare:*(a1 + 40)] == -1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_removeDeviceWithUUIDString:(id)a3 fromCloudDevices:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__WBSCloudExtensionStateManager__removeDeviceWithUUIDString_fromCloudDevices___block_invoke;
  v10[3] = &unk_1E8283AB0;
  v12 = v13;
  v7 = v5;
  v11 = v7;
  v8 = [v6 safari_mapAndFilterObjectsUsingBlock:v10];

  _Block_object_dispose(v13, 8);

  return v8;
}

id __78__WBSCloudExtensionStateManager__removeDeviceWithUUIDString_fromCloudDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v3 safari_stringForKey:*MEMORY[0x1E69C95D8]];
    if ([v6 length] && objc_msgSend(*(a1 + 32), "isEqualToString:", v6))
    {
      v5 = 0;
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v5 = v4;
    }
  }

  return v5;
}

+ (id)_removeStatesForDeviceWithUUIDString:(id)a3 fromCloudExtensionStates:(id)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__WBSCloudExtensionStateManager__removeStatesForDeviceWithUUIDString_fromCloudExtensionStates___block_invoke;
  v10[3] = &unk_1E8283AD8;
  v11 = v6;
  v12 = a1;
  v7 = v6;
  v8 = [a4 safari_mapAndFilterKeysAndObjectsUsingBlock:v10];

  return v8;
}

id __95__WBSCloudExtensionStateManager__removeStatesForDeviceWithUUIDString_fromCloudExtensionStates___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 40) _singleExtensionStates:a3 withStateRemovedForDeviceWithUUIDString:*(a1 + 32)];
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_singleExtensionStates:(id)a3 withStateRemovedForDeviceWithUUIDString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__WBSCloudExtensionStateManager__singleExtensionStates_withStateRemovedForDeviceWithUUIDString___block_invoke;
  v10[3] = &unk_1E8283AB0;
  v12 = v13;
  v7 = v6;
  v11 = v7;
  v8 = [v5 safari_mapAndFilterObjectsUsingBlock:v10];

  _Block_object_dispose(v13, 8);

  return v8;
}

id __96__WBSCloudExtensionStateManager__singleExtensionStates_withStateRemovedForDeviceWithUUIDString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v3 safari_stringForKey:*MEMORY[0x1E69C95D8]];
    if ([v6 length] && objc_msgSend(*(a1 + 32), "isEqualToString:", v6))
    {
      v5 = 0;
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v5 = v4;
    }
  }

  return v5;
}

- (void)_pruneInactiveDevicesFromCloudKitWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C6968000, v5, OS_LOG_TYPE_DEFAULT, "Pruning inactive extension devices from CloudKit", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__WBSCloudExtensionStateManager__pruneInactiveDevicesFromCloudKitWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E82838A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(WBSCloudExtensionStateManager *)self _determineExtensionSyncAvailabilityWithCompletionHandler:v7];
}

void __88__WBSCloudExtensionStateManager__pruneInactiveDevicesFromCloudKitWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 32);
    v5 = v4[4];
    v6 = [v4 _defaultWebExtensionsController];
    v7 = [v6 _deviceUUIDString];
    v8 = [v3 _uuidStringsOfInactiveCloudDevices:v5 currentDeviceUUIDString:v7];

    v9 = [v8 count];
    v10 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v32 = v8;
        _os_log_impl(&dword_1C6968000, v11, OS_LOG_TYPE_DEFAULT, "Pruning inactive extension devices with UUIDs: %{public}@", buf, 0xCu);
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v27;
        do
        {
          v16 = 0;
          do
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v26 + 1) + 8 * v16);
            v18 = [objc_opt_class() _removeDeviceWithUUIDString:v17 fromCloudDevices:{*(*(a1 + 32) + 32), v26}];
            v19 = *(a1 + 32);
            v20 = *(v19 + 32);
            *(v19 + 32) = v18;

            v21 = [objc_opt_class() _removeStatesForDeviceWithUUIDString:v17 fromCloudExtensionStates:*(*(a1 + 32) + 24)];
            v22 = *(a1 + 32);
            v23 = *(v22 + 24);
            *(v22 + 24) = v21;

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v14);
      }

      v24 = [MEMORY[0x1E69C8A08] sharedProxy];
      [v24 deleteCloudExtensionDevicesWithUUIDStrings:v12 completionHandler:&__block_literal_global_82];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __88__WBSCloudExtensionStateManager__pruneInactiveDevicesFromCloudKitWithCompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v25 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6968000, v25, OS_LOG_TYPE_DEFAULT, "Skipping pruning inactive extension devices from CloudKit because extension sync is off", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __88__WBSCloudExtensionStateManager__pruneInactiveDevicesFromCloudKitWithCompletionHandler___block_invoke_80(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __88__WBSCloudExtensionStateManager__pruneInactiveDevicesFromCloudKitWithCompletionHandler___block_invoke_80_cold_1(v3);
    }
  }
}

+ (id)_determineNewTabPageFromCloudDeviceState:(id)a3
{
  v3 = [a3 sortedArrayUsingComparator:&__block_literal_global_85];
  v4 = [v3 firstObject];
  v5 = [v4 safari_stringForKey:*MEMORY[0x1E69C95C0] returningNilIfEmpty:1];

  return v5;
}

uint64_t __74__WBSCloudExtensionStateManager__determineNewTabPageFromCloudDeviceState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = *MEMORY[0x1E69C95D0];
  v7 = [v4 safari_BOOLForKey:*MEMORY[0x1E69C95D0]];
  if (v7 == [v5 safari_BOOLForKey:v6])
  {
    v9 = *MEMORY[0x1E69C95C8];
    v10 = [v5 safari_dateForKey:*MEMORY[0x1E69C95C8]];
    v11 = [v4 safari_dateForKey:v9];
    v8 = [v10 compare:v11];
  }

  else if (v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)_determineEnabledStateFromCloudExtensionState:(id)a3 forProfileServerID:(id)a4
{
  v5 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __98__WBSCloudExtensionStateManager__determineEnabledStateFromCloudExtensionState_forProfileServerID___block_invoke;
  v13[3] = &unk_1E8283B20;
  v14 = v5;
  v6 = v5;
  v7 = [a3 sortedArrayUsingComparator:v13];
  v8 = [v7 firstObject];
  v9 = [v8 safari_dictionaryForKey:*MEMORY[0x1E69C9628]];
  v10 = [v9 safari_dictionaryForKey:v6];
  v11 = [v10 safari_BOOLForKey:*MEMORY[0x1E69C95F0]];

  return v11;
}

uint64_t __98__WBSCloudExtensionStateManager__determineEnabledStateFromCloudExtensionState_forProfileServerID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *MEMORY[0x1E69C9628];
  v6 = a3;
  v7 = [a2 safari_dictionaryForKey:v5];
  v8 = [v7 safari_dictionaryForKey:*(a1 + 32)];

  v9 = [v6 safari_dictionaryForKey:v5];

  v10 = [v9 safari_dictionaryForKey:*(a1 + 32)];

  v11 = *MEMORY[0x1E69C95E8];
  v12 = [v8 safari_BOOLForKey:*MEMORY[0x1E69C95E8]];
  if (v12 == [v10 safari_BOOLForKey:v11])
  {
    v14 = *MEMORY[0x1E69C9610];
    v15 = [v10 safari_dateForKey:*MEMORY[0x1E69C9610]];
    v16 = [v8 safari_dateForKey:v14];
    v13 = [v15 compare:v16];
  }

  else if (v12)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)_cloudDeviceMatchesLocalDeviceForCurrentDevice
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(WBSCloudExtensionStateManager *)self _extensionDeviceDictionaryForCurrentDevice];
  if (v3)
  {
    v4 = [(WBSCloudExtensionStateManager *)self _defaultWebExtensionsController];
    v5 = [v4 _deviceUUIDString];

    if ([v5 length])
    {
      cloudDevices = self->_cloudDevices;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __79__WBSCloudExtensionStateManager__cloudDeviceMatchesLocalDeviceForCurrentDevice__block_invoke;
      v17[3] = &unk_1E8283B48;
      v18 = v5;
      v7 = [(NSArray *)cloudDevices safari_firstObjectPassingTest:v17];
      if (!v7)
      {
        v8 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C6968000, v8, OS_LOG_TYPE_INFO, "Current extension device doesn't exist in cloud", buf, 2u);
        }
      }

      v9 = extensionDeviceDictionaryToUseForComparison_once;
      v10 = v7;
      if (v9 != -1)
      {
        [WBSCloudExtensionStateManager _cloudDeviceMatchesLocalDeviceForCurrentDevice];
      }

      v11 = [v10 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_217];

      v12 = [v11 isEqualToDictionary:v3];
      if ((v12 & 1) == 0)
      {
        v13 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C6968000, v13, OS_LOG_TYPE_INFO, "Cloud extension device doesn't match local device", buf, 2u);
        }

        v14 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138477827;
          v20 = v3;
          _os_log_impl(&dword_1C6968000, v14, OS_LOG_TYPE_INFO, "Local extension device: %{private}@", buf, 0xCu);
        }

        v15 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138477827;
          v20 = v11;
          _os_log_impl(&dword_1C6968000, v15, OS_LOG_TYPE_INFO, "Cloud extension device: %{private}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

uint64_t __79__WBSCloudExtensionStateManager__cloudDeviceMatchesLocalDeviceForCurrentDevice__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 safari_stringForKey:*MEMORY[0x1E69C95D8]];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

+ (id)_cloudExtensionStatesDictionaryForDeviceWithUUIDString:(id)a3 fromCloudExtensionStates:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __113__WBSCloudExtensionStateManager__cloudExtensionStatesDictionaryForDeviceWithUUIDString_fromCloudExtensionStates___block_invoke;
  v9[3] = &unk_1E8283B70;
  v10 = v5;
  v6 = v5;
  v7 = [a4 safari_mapAndFilterKeysAndObjectsUsingBlock:v9];

  return v7;
}

id __113__WBSCloudExtensionStateManager__cloudExtensionStatesDictionaryForDeviceWithUUIDString_fromCloudExtensionStates___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = *MEMORY[0x1E69C95D8];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 safari_stringForKey:{v8, v14}];
        if ([*(a1 + 32) isEqualToString:v11])
        {
          v12 = v10;

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)_cloudExtensionStatesMatchLocalExtensionStatesForCurrentDevice
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(WBSCloudExtensionStateManager *)self _extensionStatesDictionaryForCurrentDevice];
  v4 = extensionsStatesDictionaryToUseForComparison(v3);

  v5 = [(WBSCloudExtensionStateManager *)self _defaultWebExtensionsController];
  v6 = [v5 _deviceUUIDString];

  v7 = [objc_opt_class() _cloudExtensionStatesDictionaryForDeviceWithUUIDString:v6 fromCloudExtensionStates:self->_cloudExtensionStates];
  v8 = extensionsStatesDictionaryToUseForComparison(v7);

  v9 = [v4 isEqualToDictionary:v8];
  v10 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      LOWORD(v18) = 0;
      v12 = "Cloud extension states for the current devices matches local states";
      v13 = v10;
      v14 = 2;
LABEL_10:
      _os_log_impl(&dword_1C6968000, v13, OS_LOG_TYPE_INFO, v12, &v18, v14);
    }
  }

  else
  {
    if (v11)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1C6968000, v10, OS_LOG_TYPE_INFO, "Cloud extension states for the current device doesn't match local states", &v18, 2u);
    }

    v15 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = 138477827;
      v19 = v4;
      _os_log_impl(&dword_1C6968000, v15, OS_LOG_TYPE_INFO, "Local extension states: %{private}@", &v18, 0xCu);
    }

    v16 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = 138477827;
      v19 = v8;
      v12 = "Cloud extension states: %{private}@";
      v13 = v16;
      v14 = 12;
      goto LABEL_10;
    }
  }

  return v9;
}

- (BOOL)_cloudStateMatchesLocalStateForCurrentDevice
{
  v3 = [(WBSCloudExtensionStateManager *)self _cloudDeviceMatchesLocalDeviceForCurrentDevice];
  if (v3)
  {

    LOBYTE(v3) = [(WBSCloudExtensionStateManager *)self _cloudExtensionStatesMatchLocalExtensionStatesForCurrentDevice];
  }

  return v3;
}

- (void)_extensionSyncEnabledStateDidChangeDistributedNotificationHandler:(id)a3
{
  v4 = MEMORY[0x1E695E000];
  v6 = a3;
  v5 = [v4 safari_browserDefaults];
  self->_extensionSyncEnabled = [v5 safari_BOOLForKey:*MEMORY[0x1E69C9128] defaultValue:1];

  [(WBSCloudExtensionStateManager *)self _updateCloudExtensionStatesFromSafariBookmarksSyncAgent:v6];
}

- (id)_defaultWebExtensionsController
{
  stateProviders = self->_stateProviders;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__WBSCloudExtensionStateManager__defaultWebExtensionsController__block_invoke;
  v5[3] = &unk_1E8283B98;
  v5[4] = self;
  v3 = [(NSMutableArray *)stateProviders safari_firstObjectPassingTest:v5];

  return v3;
}

BOOL __64__WBSCloudExtensionStateManager__defaultWebExtensionsController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 profileServerIDForStateManager:*(a1 + 32)];
    v5 = [WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_managedExtensionStateDidChange:(id)a3
{
  v4 = [MEMORY[0x1E69C88C8] sharedController];
  v5 = [v4 hasAnyExtensionManagement];

  if (v5)
  {

    [(WBSCloudExtensionStateManager *)self setExtensionSyncEnabled:0];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__WBSCloudExtensionStateManager__managedExtensionStateDidChange___block_invoke;
    v6[3] = &unk_1E8283970;
    v6[4] = self;
    [(WBSCloudExtensionStateManager *)self _determineExtensionSyncAvailabilityIgnoringExtensionSyncEnabled:1 completionHandler:v6];
  }
}

uint64_t __65__WBSCloudExtensionStateManager__managedExtensionStateDidChange___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _updateCloudExtensionStatesFromSafariBookmarksSyncAgent:0];
  }

  return result;
}

+ (BOOL)test_determineEnabledStateFromCloudExtensionState:(id)a3 forProfileServerID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v8 = [a1 _determineEnabledStateFromCloudExtensionState:v6 forProfileServerID:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)test_determineNewTabPageFromCloudDeviceState:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v5 = [a1 _determineNewTabPageFromCloudDeviceState:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)test_uuidStringsOfInactiveCloudDevices:(id)a3 currentDeviceUUIDString:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v8 = [a1 _uuidStringsOfInactiveCloudDevices:v6 currentDeviceUUIDString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)test_removeDeviceWithUUIDString:(id)a3 fromCloudDevices:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v8 = [a1 _removeDeviceWithUUIDString:v6 fromCloudDevices:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)test_removeStatesForDeviceWithUUIDString:(id)a3 fromCloudExtensionStates:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v8 = [a1 _removeStatesForDeviceWithUUIDString:v6 fromCloudExtensionStates:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)test_cloudExtensionStatesDictionaryForDeviceWithUUIDString:(id)a3 fromCloudExtensionStates:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v8 = [a1 _cloudExtensionStatesDictionaryForDeviceWithUUIDString:v6 fromCloudExtensionStates:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __61__WBSCloudExtensionStateManager_localExtensionStateDidChange__block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C6968000, v4, v5, "Saving cloud extension states failed with error %{public}@", v6, v7, v8, v9, v10);
}

void __65__WBSCloudExtensionStateManager__deleteCurrentDeviceFromCloudKit__block_invoke_58_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C6968000, v4, v5, "Deleting current device failed with error %{public}@", v6, v7, v8, v9, v10);
}

void __89__WBSCloudExtensionStateManager__updateCloudExtensionStatesFromSafariBookmarksSyncAgent___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Fetching cloud extension states failed with error %{public}@", v7, v8, v9, v10, v11);
}

void __72__WBSCloudExtensionStateManager__ensureCurrentDeviceIsSavedPeriodically__block_invoke_3_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C6968000, v4, v5, "Periodic save of current device to CloudKit failed with error %{public}@", v6, v7, v8, v9, v10);
}

void __88__WBSCloudExtensionStateManager__pruneInactiveDevicesFromCloudKitWithCompletionHandler___block_invoke_80_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C6968000, v4, v5, "Deleting inactive extension devices failed with error %{public}@", v6, v7, v8, v9, v10);
}

@end