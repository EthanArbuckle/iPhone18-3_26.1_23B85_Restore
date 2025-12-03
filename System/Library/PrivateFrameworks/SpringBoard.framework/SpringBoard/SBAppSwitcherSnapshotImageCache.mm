@interface SBAppSwitcherSnapshotImageCache
- (BOOL)_isValidAppLayout:(id)layout withSnapshot:(id)snapshot givenCachableAppLayouts:(id)layouts;
- (BOOL)_isValidSnapshotRequest:(id)request;
- (BOOL)_keepGoingForRequest:(id)request;
- (NSArray)cachableAppLayouts;
- (NSArray)fullSizeCachableAppLayouts;
- (NSString)description;
- (SBAppSwitcherSnapshotImageCache)init;
- (SBAppSwitcherSnapshotImageCache)initWithDelegate:(id)delegate;
- (SBAppSwitcherSnapshotImageCacheDelegate)delegate;
- (id)_cachableAppLayoutsRequiringFullSizeSnapshots;
- (id)_createSnapshotRequestWithDisplayItem:(id)item inAppLayout:(id)layout forFullSizeSnapshot:(BOOL)snapshot;
- (id)_initWithDelegate:(id)delegate applicationController:(id)controller orientationLockManager:(id)manager settings:(id)settings;
- (id)_representedApplicationSceneEntityForDisplayItem:(id)item;
- (int64_t)_orientationForAppLayout:(id)layout;
- (void)_addCacheEntryForImage:(id)image fromRequest:(id)request;
- (void)_addObserver:(id)observer forDisplayItem:(id)item inAppLayout:(id)layout;
- (void)_asynchronouslyLoadSnapshotFromRequest:(id)request;
- (void)_cacheSnapshotForRequest:(id)request withDisplayItem:(id)item inAppLayout:(id)layout;
- (void)_createDownscaledVariantForRequest:(id)request snapshot:(id)snapshot displayItem:(id)item sceneHandle:(id)handle application:(id)application;
- (void)_enqueueNextSnapshotRequestIfNecessary;
- (void)_enqueueSnapshotRequestsForCachableAppLayouts:(id)layouts forFullSizeSnapshots:(BOOL)snapshots;
- (void)_loadSnapshotForRequest:(id)request withDisplayItem:(id)item inAppLayout:(id)layout;
- (void)_purgeAllSnapshotRequests;
- (void)_purgeAllSnapshots;
- (void)_purgeLowPriorityFullSizeSnapshotRequests;
- (void)_purgeLowPriorityFullSizeSnapshots;
- (void)_purgeLowPrioritySnapshotRequests;
- (void)_purgeLowPrioritySnapshots;
- (void)_purgeSnapshotRequest:(id)request withReason:(id)reason;
- (void)_purgeSnapshotRequestsForDisplayItem:(id)item withReason:(id)reason;
- (void)_purgeSnapshotsForKey:(id)key;
- (void)_setShouldPurgeNilEntry:(BOOL)entry;
- (void)_setSnapshotNeedsUpdateForDisplayItem:(id)item;
- (void)_snapshotChanged:(id)changed;
- (void)_snapshotImage:(id)image finishedLoadingForRequest:(id)request;
- (void)_updateActiveOrientationObservingIfNeeded;
- (void)_updateCache;
- (void)_updateCacheForDisplayItem:(id)item;
- (void)_updateObserversForDisplayItem:(id)item inAppLayout:(id)layout withCacheEntry:(id)entry;
- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation;
- (void)addSnapshotUpdateObserver:(id)observer forDisplayItem:(id)item inAppLayout:(id)layout;
- (void)dealloc;
- (void)reloadSnapshotsForInterfaceStyleChange:(int64_t)change;
- (void)removeSnapshotObserver:(id)observer;
- (void)setCachableAppLayouts:(id)layouts;
- (void)setDebugName:(id)name;
- (void)setDelegate:(id)delegate;
- (void)setFullSizeCachableAppLayouts:(id)layouts;
- (void)setReloadsSnapshotsForActiveInterfaceOrientationChange:(BOOL)change;
@end

@implementation SBAppSwitcherSnapshotImageCache

- (void)_updateCache
{
  BSDispatchQueueAssert();
  [(SBAppSwitcherSnapshotImageCache *)self _purgeLowPriorityFullSizeSnapshots];
  [(SBAppSwitcherSnapshotImageCache *)self _purgeLowPriorityFullSizeSnapshotRequests];
  [(SBAppSwitcherSnapshotImageCache *)self _purgeLowPrioritySnapshots];
  [(SBAppSwitcherSnapshotImageCache *)self _purgeLowPrioritySnapshotRequests];

  [(SBAppSwitcherSnapshotImageCache *)self _enqueueNextSnapshotRequestIfNecessary];
}

- (void)_purgeLowPriorityFullSizeSnapshots
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_42();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "\n|\n|— [%{public}@] [Purging] low priority full screen display items: %{public}@\n|");
}

- (id)_cachableAppLayoutsRequiringFullSizeSnapshots
{
  BSDispatchQueueAssert();
  queue_fullSizeCachableAppLayouts = self->_queue_fullSizeCachableAppLayouts;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__SBAppSwitcherSnapshotImageCache__cachableAppLayoutsRequiringFullSizeSnapshots__block_invoke;
  v6[3] = &unk_2783A8CB8;
  v6[4] = self;
  v4 = [(NSArray *)queue_fullSizeCachableAppLayouts bs_filter:v6];

  return v4;
}

- (void)_purgeLowPriorityFullSizeSnapshotRequests
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_42();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "\n|\n|— [%{public}@] [Purging] low priority full screen sequenceID-s %{public}@\n|");
}

- (void)_purgeLowPrioritySnapshots
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_42();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "\n|\n|— [%{public}@] [Purging] low priority display items: %{public}@\n|");
}

- (void)_purgeLowPrioritySnapshotRequests
{
  v2 = [OUTLINED_FUNCTION_10_5(self a2)];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(&dword_21ED4E000, v3, v4, "\n|\n|— [%{public}@] [Purging] low priority sequenceID-s: %{public}@\n|", v5, v6, v7, v8, v9);
}

- (void)_enqueueNextSnapshotRequestIfNecessary
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, v0, v1, "[%{public}@] enqueue snapshot request load if necessary", v2, v3, v4, v5, v6);
}

- (SBAppSwitcherSnapshotImageCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

uint64_t __69__SBAppSwitcherSnapshotImageCache__purgeLowPriorityFullSizeSnapshots__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 fromFullSizeSnapshotRequest])
  {
    v5 = *(a1 + 32);
    v6 = [v4 appLayout];
    v7 = [v5 containsObject:v6];

    if (*(*(a1 + 40) + 88) == 1)
    {
      v8 = [v4 snapshotImage];
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    v10 = v7 ^ 1 | v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t __61__SBAppSwitcherSnapshotImageCache__purgeLowPrioritySnapshots__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = [v4 appLayout];
  v7 = [v4 snapshot];
  v8 = [v5 _isValidAppLayout:v6 withSnapshot:v7 givenCachableAppLayouts:*(*(a1 + 32) + 120)];

  if (*(*(a1 + 32) + 88) == 1)
  {
    v9 = [v4 snapshotImage];
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10 | ((v8 & 1) == 0);
}

- (id)_initWithDelegate:(id)delegate applicationController:(id)controller orientationLockManager:(id)manager settings:(id)settings
{
  delegateCopy = delegate;
  controllerCopy = controller;
  managerCopy = manager;
  settingsCopy = settings;
  BSDispatchQueueAssertMain();
  if (!delegateCopy)
  {
    [SBAppSwitcherSnapshotImageCache _initWithDelegate:applicationController:orientationLockManager:settings:];
  }

  v27.receiver = self;
  v27.super_class = SBAppSwitcherSnapshotImageCache;
  v14 = [(SBAppSwitcherSnapshotImageCache *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_applicationController, controller);
    objc_storeStrong(&v15->_orientationLockManager, manager);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    cachedSnapshots = v15->_cachedSnapshots;
    v15->_cachedSnapshots = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    cacheEntryUpdateObservers = v15->_cacheEntryUpdateObservers;
    v15->_cacheEntryUpdateObservers = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    snapshotRequestsCurrentlyBeingLoaded = v15->_snapshotRequestsCurrentlyBeingLoaded;
    v15->_snapshotRequestsCurrentlyBeingLoaded = dictionary3;

    v15->_lastKnownInterfaceOrientation = 0;
    v22 = BSDispatchQueueCreateWithQualityOfService();
    snapshotQueue = v15->_snapshotQueue;
    v15->_snapshotQueue = v22;

    Serial = BSDispatchQueueCreateSerial();
    controlQueue = v15->_controlQueue;
    v15->_controlQueue = Serial;

    objc_storeStrong(&v15->_settings, settings);
    v15->_shouldPurgeNilEntries = 1;
    v15->_reloadsSnapshotsForActiveInterfaceOrientationChange = 1;
    [(SBAppSwitcherSnapshotImageCache *)v15 setDelegate:delegateCopy];
  }

  return v15;
}

- (SBAppSwitcherSnapshotImageCache)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[SBApplicationController sharedInstance];
  v6 = +[SBOrientationLockManager sharedInstance];
  v7 = +[SBAppSwitcherDomain rootSettings];
  v8 = [(SBAppSwitcherSnapshotImageCache *)self _initWithDelegate:delegateCopy applicationController:v5 orientationLockManager:v6 settings:v7];

  return v8;
}

- (SBAppSwitcherSnapshotImageCache)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];

  return 0;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  v3.receiver = self;
  v3.super_class = SBAppSwitcherSnapshotImageCache;
  [(SBAppSwitcherSnapshotImageCache *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  BSDispatchQueueAssertMain();
  objc_storeWeak(&self->_delegate, delegateCopy);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = defaultCenter;
  if (delegateCopy)
  {
    [defaultCenter addObserver:self selector:sel__snapshotChanged_ name:@"SBApplicationSnapshotChangedNotification" object:0];
    [SBApp addActiveOrientationObserver:self];
  }

  else
  {
    [defaultCenter removeObserver:self];
    [SBApp removeActiveOrientationObserver:self];
  }
}

- (void)setDebugName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_debugName isEqualToString:nameCopy])
  {
    objc_storeStrong(&self->_debugName, name);
    [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
    if (nameCopy)
    {
      objc_initWeak(&location, self);
      nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"SpringBoard - FluidSwitcher Snapshot Cache - %@", nameCopy];
      objc_copyWeak(&v9, &location);
      v7 = BSLogAddStateCaptureBlockWithTitle();
      stateCaptureInvalidatable = self->_stateCaptureInvalidatable;
      self->_stateCaptureInvalidatable = v7;

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

id __48__SBAppSwitcherSnapshotImageCache_setDebugName___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v27 = [MEMORY[0x277CBEB38] dictionary];
    v23 = WeakRetained;
    v2 = WeakRetained[3];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = v2;
    obj = [v2 allKeys];
    v28 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v28)
    {
      v25 = *v32;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v31 + 1) + 8 * i);
          v4 = [v26 objectForKey:v23];
          v5 = [v4 snapshot];
          v6 = [v5 userInterfaceStyle];

          v7 = @"Light";
          if (v6 == 2)
          {
            v7 = @"Dark";
          }

          if (!v6)
          {
            v7 = @"Unspecified";
          }

          v35[0] = @"size";
          v29 = v7;
          v8 = [v4 snapshot];
          [v8 naturalSize];
          v9 = NSStringFromSize(v40);
          v36[0] = v9;
          v35[1] = @"orientation";
          v10 = [v4 snapshot];
          [v10 interfaceOrientation];
          v11 = SBFStringForBSInterfaceOrientation();
          v36[1] = v11;
          v36[2] = v29;
          v35[2] = @"userInterfaceStyle";
          v35[3] = @"fromFullSizeRequest";
          v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "fromFullSizeSnapshotRequest")}];
          v36[3] = v12;
          v35[4] = @"path";
          v13 = [v4 snapshot];
          v14 = [v13 path];
          v15 = v14;
          v16 = @"n/a";
          if (v14)
          {
            v16 = v14;
          }

          v36[4] = v16;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:5];

          v18 = [v30 displayItem];

          if ([v18 type] && objc_msgSend(v18, "type") != 5)
          {
            v19 = [v18 bundleIdentifier];
          }

          else
          {
            v19 = [v18 uniqueIdentifier];
          }

          v20 = v19;
          [v27 setObject:v17 forKey:v19];
        }

        v28 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v28);
    }

    v21 = [v27 description];

    WeakRetained = v23;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)setReloadsSnapshotsForActiveInterfaceOrientationChange:(BOOL)change
{
  if (self->_reloadsSnapshotsForActiveInterfaceOrientationChange != change)
  {
    self->_reloadsSnapshotsForActiveInterfaceOrientationChange = change;
    [(SBAppSwitcherSnapshotImageCache *)self _updateActiveOrientationObservingIfNeeded];
  }
}

- (void)setCachableAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  BSDispatchQueueAssertMain();
  controlQueue = self->_controlQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__SBAppSwitcherSnapshotImageCache_setCachableAppLayouts___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = layoutsCopy;
  v6 = layoutsCopy;
  dispatch_sync(controlQueue, v7);
}

uint64_t __57__SBAppSwitcherSnapshotImageCache_setCachableAppLayouts___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  result = BSEqualArrays();
  if ((result & 1) == 0)
  {
    v4 = [*(a1 + 40) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 120);
    *(v5 + 120) = v4;

    v7 = SBLogSwitcherSnapshotCache();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __57__SBAppSwitcherSnapshotImageCache_setCachableAppLayouts___block_invoke_cold_1();
    }

    return [*v2 _updateCache];
  }

  return result;
}

- (NSArray)cachableAppLayouts
{
  BSDispatchQueueAssertMain();
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__100;
  v11 = __Block_byref_object_dispose__100;
  v12 = 0;
  controlQueue = self->_controlQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SBAppSwitcherSnapshotImageCache_cachableAppLayouts__block_invoke;
  v6[3] = &unk_2783A8CE0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(controlQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __53__SBAppSwitcherSnapshotImageCache_cachableAppLayouts__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setFullSizeCachableAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  BSDispatchQueueAssertMain();
  controlQueue = self->_controlQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SBAppSwitcherSnapshotImageCache_setFullSizeCachableAppLayouts___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = layoutsCopy;
  v6 = layoutsCopy;
  dispatch_sync(controlQueue, v7);
}

uint64_t __65__SBAppSwitcherSnapshotImageCache_setFullSizeCachableAppLayouts___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  result = BSEqualArrays();
  if ((result & 1) == 0)
  {
    v4 = [*(a1 + 40) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 128);
    *(v5 + 128) = v4;

    v7 = SBLogSwitcherSnapshotCache();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __65__SBAppSwitcherSnapshotImageCache_setFullSizeCachableAppLayouts___block_invoke_cold_1();
    }

    return [*v2 _updateCache];
  }

  return result;
}

- (NSArray)fullSizeCachableAppLayouts
{
  BSDispatchQueueAssertMain();
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__100;
  v11 = __Block_byref_object_dispose__100;
  v12 = 0;
  controlQueue = self->_controlQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SBAppSwitcherSnapshotImageCache_fullSizeCachableAppLayouts__block_invoke;
  v6[3] = &unk_2783A8CE0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(controlQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __61__SBAppSwitcherSnapshotImageCache_fullSizeCachableAppLayouts__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_updateCacheForDisplayItem:(id)item
{
  itemCopy = item;
  BSDispatchQueueAssertMain();
  v5 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBAppSwitcherSnapshotImageCache _updateCacheForDisplayItem:];
  }

  controlQueue = self->_controlQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__SBAppSwitcherSnapshotImageCache__updateCacheForDisplayItem___block_invoke;
  v8[3] = &unk_2783A92D8;
  v9 = itemCopy;
  selfCopy = self;
  v7 = itemCopy;
  dispatch_sync(controlQueue, v8);
}

uint64_t __62__SBAppSwitcherSnapshotImageCache__updateCacheForDisplayItem___block_invoke(uint64_t a1)
{
  v2 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__SBAppSwitcherSnapshotImageCache__updateCacheForDisplayItem___block_invoke_cold_1();
  }

  [*(a1 + 40) _purgeSnapshotRequestsForDisplayItem:*(a1 + 32) withReason:@"Was requested to update cache for display item"];
  [*(a1 + 40) _setSnapshotNeedsUpdateForDisplayItem:*(a1 + 32)];
  return [*(a1 + 40) _enqueueNextSnapshotRequestIfNecessary];
}

- (void)addSnapshotUpdateObserver:(id)observer forDisplayItem:(id)item inAppLayout:(id)layout
{
  observerCopy = observer;
  itemCopy = item;
  layoutCopy = layout;
  BSDispatchQueueAssertMain();
  if (observerCopy)
  {
    if (itemCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    [SBAppSwitcherSnapshotImageCache addSnapshotUpdateObserver:forDisplayItem:inAppLayout:];
    if (layoutCopy)
    {
      goto LABEL_4;
    }

LABEL_14:
    [SBAppSwitcherSnapshotImageCache addSnapshotUpdateObserver:forDisplayItem:inAppLayout:];
    goto LABEL_4;
  }

  [SBAppSwitcherSnapshotImageCache addSnapshotUpdateObserver:forDisplayItem:inAppLayout:];
  if (!itemCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (!layoutCopy)
  {
    goto LABEL_14;
  }

LABEL_4:
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  controlQueue = self->_controlQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SBAppSwitcherSnapshotImageCache_addSnapshotUpdateObserver_forDisplayItem_inAppLayout___block_invoke;
  block[3] = &unk_2783BDC20;
  v38 = &v39;
  block[4] = self;
  v12 = layoutCopy;
  v35 = v12;
  v13 = observerCopy;
  v36 = v13;
  v14 = itemCopy;
  v37 = v14;
  dispatch_sync(controlQueue, block);
  if ([(SBAppSwitcherSettings *)self->_settings shouldSimplifyForOptions:1]|| *(v40 + 24) != 1)
  {
    v17 = SBLogSwitcherSnapshotCache();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [SBAppSwitcherSnapshotImageCache addSnapshotUpdateObserver:forDisplayItem:inAppLayout:];
    }
  }

  else
  {
    v15 = [[_SBAppSwitcherSnapshotCacheKey alloc] initWithDisplayItem:v14 inAppLayout:v12];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__100;
    v32 = __Block_byref_object_dispose__100;
    v33 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v16 = self->_controlQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __88__SBAppSwitcherSnapshotImageCache_addSnapshotUpdateObserver_forDisplayItem_inAppLayout___block_invoke_2;
    v18[3] = &unk_2783BDC48;
    v22 = &v28;
    v18[4] = self;
    v17 = v15;
    v19 = v17;
    v20 = v12;
    v21 = v14;
    v23 = &v24;
    dispatch_sync(v16, v18);
    if (*(v25 + 24) == 1)
    {
      [v13 didUpdateCacheEntry:v29[5]];
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);
  }

  _Block_object_dispose(&v39, 8);
}

uint64_t __88__SBAppSwitcherSnapshotImageCache_addSnapshotUpdateObserver_forDisplayItem_inAppLayout___block_invoke(void *a1)
{
  *(*(a1[8] + 8) + 24) = [*(a1[4] + 120) containsObject:a1[5]];
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[4];
  v5 = a1[5];

  return [v4 _addObserver:v2 forDisplayItem:v3 inAppLayout:v5];
}

void __88__SBAppSwitcherSnapshotImageCache_addSnapshotUpdateObserver_forDisplayItem_inAppLayout___block_invoke_2(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  v4 = *(*(v2 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(v2 + 32) + 8) + 40);
  if (v6)
  {
    v7 = [v6 appLayout];
    if ([v7 isEqual:*(a1 + 48)])
    {
      v8 = [*(*(*(a1 + 64) + 8) + 40) displayItem];
      v9 = [(SBDisplayItem *)v8 isEqualToItem:?];

      if (v9)
      {
        v10 = SBLogSwitcherSnapshotCache();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __88__SBAppSwitcherSnapshotImageCache_addSnapshotUpdateObserver_forDisplayItem_inAppLayout___block_invoke_2_cold_2();
        }

        *(*(*(a1 + 72) + 8) + 24) = 1;
        return;
      }
    }

    else
    {
    }

    v12 = SBLogSwitcherSnapshotCache();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __88__SBAppSwitcherSnapshotImageCache_addSnapshotUpdateObserver_forDisplayItem_inAppLayout___block_invoke_2_cold_1();
    }

    [*(a1 + 32) _purgeSnapshotsForKey:*(a1 + 40)];
    [*(a1 + 32) _enqueueNextSnapshotRequestIfNecessary];
  }

  else
  {
    v11 = SBLogSwitcherSnapshotCache();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __88__SBAppSwitcherSnapshotImageCache_addSnapshotUpdateObserver_forDisplayItem_inAppLayout___block_invoke_2_cold_3();
    }
  }
}

- (void)removeSnapshotObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssertMain();
  if (!observerCopy)
  {
    [SBAppSwitcherSnapshotImageCache removeSnapshotObserver:];
  }

  controlQueue = self->_controlQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SBAppSwitcherSnapshotImageCache_removeSnapshotObserver___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(controlQueue, v7);
}

void __58__SBAppSwitcherSnapshotImageCache_removeSnapshotObserver___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = *(*(a1 + 32) + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__SBAppSwitcherSnapshotImageCache_removeSnapshotObserver___block_invoke_2;
  v14[3] = &unk_2783BDC70;
  v15 = *(a1 + 40);
  v4 = v2;
  v16 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v14];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(a1 + 32) + 32) removeObjectForKey:{*(*(&v10 + 1) + 8 * v9++), v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v17 count:16];
    }

    while (v7);
  }
}

void __58__SBAppSwitcherSnapshotImageCache_removeSnapshotObserver___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  [v6 removeObject:v5];
  v7 = [v6 count];

  if (!v7)
  {
    [*(a1 + 40) addObject:v8];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  cachableAppLayouts = [(SBAppSwitcherSnapshotImageCache *)self cachableAppLayouts];
  v5 = [v3 appendObject:cachableAppLayouts withName:@"cachableAppLayouts"];

  fullSizeCachableAppLayouts = [(SBAppSwitcherSnapshotImageCache *)self fullSizeCachableAppLayouts];
  v7 = [v3 appendObject:fullSizeCachableAppLayouts withName:@"fullSizeCachableAppLayouts"];

  v8 = [v3 appendObject:self->_cachedSnapshots withName:@"cachedSnapshots" skipIfNil:0];
  v9 = [v3 appendObject:self->_snapshotRequestsCurrentlyBeingLoaded withName:@"displayItemsCurrentlyBeingLoaded" skipIfNil:0];
  build = [v3 build];

  return build;
}

- (id)_representedApplicationSceneEntityForDisplayItem:(id)item
{
  v33 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  type = [itemCopy type];
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  if (type == 5)
  {
    bundleIdentifier = +[SBApplicationController sharedInstance];
    webApplication = [bundleIdentifier webApplication];
  }

  else
  {
    if (type)
    {
      v10 = 0;
      goto LABEL_7;
    }

    applicationController = self->_applicationController;
    bundleIdentifier = [itemCopy bundleIdentifier];
    webApplication = [(SBApplicationController *)applicationController applicationWithBundleIdentifier:bundleIdentifier];
  }

  v10 = webApplication;

LABEL_7:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained sceneHandleProviderForImageCache:self];
  if (v12 || !v10)
  {
    v15 = [WeakRetained displayConfigurationForImageCache:self];
    v16 = [SBDeviceApplicationSceneEntity alloc];
    identity = [v15 identity];
    v14 = [(SBDeviceApplicationSceneEntity *)v16 initWithApplication:v10 uniqueIdentifier:uniqueIdentifier sceneHandleProvider:v12 displayIdentity:identity];
  }

  else
  {
    v13 = SBLogSwitcherSnapshotCache();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      debugName = self->_debugName;
      bundleIdentifier2 = [v10 bundleIdentifier];
      v23 = 138413314;
      v24 = v20;
      v25 = 2048;
      selfCopy = self;
      v27 = 2114;
      v28 = debugName;
      v29 = 2114;
      v30 = bundleIdentifier2;
      v31 = 2114;
      v32 = itemCopy;
      _os_log_fault_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_FAULT, "[rdar://100644371 defensive fix] <%@ %p %{public}@> got nil sceneHandleProvider and non-nil application %{public}@ for displayItem %{public}@; returning nil to avoid a crash", &v23, 0x34u);
    }

    v14 = 0;
  }

  return v14;
}

- (void)_setShouldPurgeNilEntry:(BOOL)entry
{
  controlQueue = self->_controlQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__SBAppSwitcherSnapshotImageCache__setShouldPurgeNilEntry___block_invoke;
  v4[3] = &unk_2783A9F58;
  v4[4] = self;
  entryCopy = entry;
  dispatch_sync(controlQueue, v4);
}

- (void)reloadSnapshotsForInterfaceStyleChange:(int64_t)change
{
  BSDispatchQueueAssertMain();
  v5 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBAppSwitcherSnapshotImageCache reloadSnapshotsForInterfaceStyleChange:];
  }

  controlQueue = self->_controlQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SBAppSwitcherSnapshotImageCache_reloadSnapshotsForInterfaceStyleChange___block_invoke;
  v7[3] = &unk_2783A8BC8;
  v7[4] = self;
  v7[5] = change;
  dispatch_sync(controlQueue, v7);
}

uint64_t __74__SBAppSwitcherSnapshotImageCache_reloadSnapshotsForInterfaceStyleChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 64) = *(a1 + 40);
  [*(a1 + 32) _purgeAllSnapshots];
  [*(a1 + 32) _purgeAllSnapshotRequests];
  v2 = *(a1 + 32);

  return [v2 _enqueueNextSnapshotRequestIfNecessary];
}

- (void)_snapshotChanged:(id)changed
{
  changedCopy = changed;
  BSDispatchQueueAssertMain();
  userInfo = [changedCopy userInfo];
  object = [changedCopy object];

  if (object && userInfo)
  {
    v7 = [userInfo objectForKey:@"SBApplicationSnapshotChangedSceneIdentifierUserInfoKey"];
    if ([object isWebApplication])
    {
      v8 = [SBDisplayItem webAppDisplayItemWithWebAppIdentifier:v7];
    }

    else
    {
      bundleIdentifier = [object bundleIdentifier];
      v8 = [SBDisplayItem displayItemWithType:0 bundleIdentifier:bundleIdentifier uniqueIdentifier:v7];
    }

    v10 = SBLogSwitcherSnapshotCache();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [SBAppSwitcherSnapshotImageCache _snapshotChanged:];
    }

    [(SBAppSwitcherSnapshotImageCache *)self _updateCacheForDisplayItem:v8];
  }
}

- (void)_updateObserversForDisplayItem:(id)item inAppLayout:(id)layout withCacheEntry:(id)entry
{
  v33 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  layoutCopy = layout;
  entryCopy = entry;
  BSDispatchQueueAssertMain();
  v11 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SBAppSwitcherSnapshotImageCache _updateObserversForDisplayItem:inAppLayout:withCacheEntry:];
  }

  v12 = [[_SBAppSwitcherSnapshotCacheKey alloc] initWithDisplayItem:itemCopy inAppLayout:layoutCopy];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__100;
  v30 = __Block_byref_object_dispose__100;
  v31 = 0;
  controlQueue = self->_controlQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__SBAppSwitcherSnapshotImageCache__updateObserversForDisplayItem_inAppLayout_withCacheEntry___block_invoke;
  block[3] = &unk_2783AB258;
  v25 = &v26;
  block[4] = self;
  v14 = v12;
  v24 = v14;
  dispatch_sync(controlQueue, block);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v15 = v27[5];
  v16 = [v15 countByEnumeratingWithState:&v19 objects:v32 count:16];
  if (v16)
  {
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v19 + 1) + 8 * v18++) didUpdateCacheEntry:{entryCopy, v19}];
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v19 objects:v32 count:16];
    }

    while (v16);
  }

  _Block_object_dispose(&v26, 8);
}

void __93__SBAppSwitcherSnapshotImageCache__updateObserversForDisplayItem_inAppLayout_withCacheEntry___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_cacheSnapshotForRequest:(id)request withDisplayItem:(id)item inAppLayout:(id)layout
{
  requestCopy = request;
  itemCopy = item;
  layoutCopy = layout;
  BSDispatchQueueAssertMain();
  v11 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SBAppSwitcherSnapshotImageCache _cacheSnapshotForRequest:withDisplayItem:inAppLayout:];
  }

  appLayout = [requestCopy appLayout];

  if (appLayout)
  {
    snapshot = [requestCopy snapshot];
    v14 = snapshot;
    if (snapshot)
    {
      v15 = [snapshot cachedImageForInterfaceOrientation:0];
      v16 = v15;
      if (v15)
      {
        controlQueue = self->_controlQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __88__SBAppSwitcherSnapshotImageCache__cacheSnapshotForRequest_withDisplayItem_inAppLayout___block_invoke;
        block[3] = &unk_2783A8ED8;
        block[4] = self;
        v30 = v15;
        v31 = requestCopy;
        dispatch_sync(controlQueue, block);
        v18 = SBLogSwitcherSnapshotCache();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [SBAppSwitcherSnapshotImageCache _cacheSnapshotForRequest:withDisplayItem:inAppLayout:];
        }
      }

      else
      {
        objc_initWeak(&location, self);
        snapshotQueue = self->_snapshotQueue;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __88__SBAppSwitcherSnapshotImageCache__cacheSnapshotForRequest_withDisplayItem_inAppLayout___block_invoke_263;
        v25[3] = &unk_2783A9CE8;
        objc_copyWeak(&v27, &location);
        v26 = requestCopy;
        dispatch_async(snapshotQueue, v25);
        v22 = SBLogSwitcherSnapshotCache();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [SBAppSwitcherSnapshotImageCache _cacheSnapshotForRequest:withDisplayItem:inAppLayout:];
        }

        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      v19 = self->_controlQueue;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __88__SBAppSwitcherSnapshotImageCache__cacheSnapshotForRequest_withDisplayItem_inAppLayout___block_invoke_264;
      v23[3] = &unk_2783A92D8;
      v23[4] = self;
      v24 = requestCopy;
      dispatch_sync(v19, v23);
      v20 = SBLogSwitcherSnapshotCache();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [SBAppSwitcherSnapshotImageCache _cacheSnapshotForRequest:withDisplayItem:inAppLayout:];
      }
    }
  }
}

void __88__SBAppSwitcherSnapshotImageCache__cacheSnapshotForRequest_withDisplayItem_inAppLayout___block_invoke_263(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _asynchronouslyLoadSnapshotFromRequest:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_loadSnapshotForRequest:(id)request withDisplayItem:(id)item inAppLayout:(id)layout
{
  v117 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  itemCopy = item;
  layoutCopy = layout;
  BSDispatchQueueAssertMain();
  v11 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SBAppSwitcherSnapshotImageCache _loadSnapshotForRequest:withDisplayItem:inAppLayout:];
  }

  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 1;
  controlQueue = self->_controlQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__SBAppSwitcherSnapshotImageCache__loadSnapshotForRequest_withDisplayItem_inAppLayout___block_invoke;
  block[3] = &unk_2783AB258;
  v92 = &v93;
  block[4] = self;
  v13 = requestCopy;
  v91 = v13;
  dispatch_sync(controlQueue, block);
  if (v94[3])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = [(SBAppSwitcherSnapshotImageCache *)self _representedApplicationSceneEntityForDisplayItem:itemCopy];
    v16 = v15;
    v76 = v15;
    if (!v15)
    {
      v26 = self->_controlQueue;
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __87__SBAppSwitcherSnapshotImageCache__loadSnapshotForRequest_withDisplayItem_inAppLayout___block_invoke_265;
      v87[3] = &unk_2783A8ED8;
      v87[4] = self;
      v88 = itemCopy;
      v89 = v13;
      dispatch_sync(v26, v87);

LABEL_51:
      goto LABEL_52;
    }

    sceneHandle = [v15 sceneHandle];
    application = [v16 application];
    v75 = [WeakRetained displayConfigurationForImageCache:self];
    v17 = [(SBAppSwitcherSnapshotImageCache *)self _orientationForAppLayout:layoutCopy];
    v18 = [sceneHandle _mainSceneSupportsInterfaceOrientation:v17];
    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if ((v19 & 1) == 0 || [application classicAppPhoneAppRunningOnPad])
    {
      v17 = [sceneHandle activationInterfaceOrientationForOrientation:v17];
    }

    if ([application isClassic])
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      displayConfiguration = [mainScreen displayConfiguration];
      [application defaultLaunchingSizeForDisplayConfiguration:displayConfiguration];
      v23 = v22;
      v25 = v24;
    }

    else if (WeakRetained)
    {
      -[NSObject snapshotSizeForItemWithRole:inAppLayout:interfaceOrientation:inImageCache:](WeakRetained, "snapshotSizeForItemWithRole:inAppLayout:interfaceOrientation:inImageCache:", [layoutCopy layoutRoleForItem:itemCopy], layoutCopy, v17, self);
      v23 = v27;
      v25 = v28;
    }

    else
    {
      v29 = SBLogSwitcherSnapshotCache();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        debugName = self->_debugName;
        *buf = 138543362;
        v98 = debugName;
        _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] failing to retrieve a snapshot due to nil delegate", buf, 0xCu);
      }

      v23 = *MEMORY[0x277CBF3A8];
      v25 = *(MEMORY[0x277CBF3A8] + 8);
    }

    loadFullSizeSnapshot = [v13 loadFullSizeSnapshot];
    v32 = @"downscaled";
    if (loadFullSizeSnapshot)
    {
      v32 = 0;
    }

    v78 = v32;
    v74 = [sceneHandle displayEdgeInfoForLayoutEnvironment:{objc_msgSend(layoutCopy, "environment")}];
    v33 = [WeakRetained appLayoutRequiresExactSize:layoutCopy inImageCache:self];
    [v75 pointScale];
    v34 = [application bestSnapshotWithImageName:@"SBSuspendSnapshot" sceneHandle:sceneHandle variantID:v78 scale:v33 referenceSize:-1 requireExactSize:-5 contentTypeMask:v17 statusBarStateMask:0 launchingOrientation:self->_lastKnownUserInterfaceStyle contentOverridesContext:v74 userInterfaceStyle:? displayEdgeInfo:?];
    v35 = [[_SBAppSwitcherSnapshotCacheKey alloc] initWithDisplayItem:itemCopy inAppLayout:layoutCopy];
    v73 = v35;
    if (!v34)
    {
      v62 = self->_controlQueue;
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __87__SBAppSwitcherSnapshotImageCache__loadSnapshotForRequest_withDisplayItem_inAppLayout___block_invoke_271;
      v81[3] = &unk_2783A8ED8;
      v81[4] = self;
      v82 = itemCopy;
      v83 = v13;
      dispatch_sync(v62, v81);

LABEL_50:
      goto LABEL_51;
    }

    v72 = loadFullSizeSnapshot;
    v36 = [(NSMutableDictionary *)self->_cachedSnapshots objectForKey:v35];
    snapshot = [v36 snapshot];

    variantID = [snapshot variantID];
    variantID2 = [v34 variantID];
    if (([variantID isEqualToString:variantID2] & 1) == 0)
    {
      variantID3 = [v34 variantID];
      v40 = [snapshot variantWithIdentifier:variantID3];
      v41 = v40 == 0;

      if (v41)
      {
        goto LABEL_28;
      }

      variantID = [v34 variantID];
      [snapshot variantWithIdentifier:variantID];
      snapshot = variantID2 = snapshot;
    }

LABEL_28:
    if (snapshot && ([snapshot identifier], v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "identifier"), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v42, "isEqual:", v43), v43, v42, (v44 & 1) != 0))
    {
      v45 = self->_controlQueue;
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __87__SBAppSwitcherSnapshotImageCache__loadSnapshotForRequest_withDisplayItem_inAppLayout___block_invoke_270;
      v84[3] = &unk_2783A8ED8;
      v84[4] = self;
      v85 = v13;
      v86 = v73;
      dispatch_sync(v45, v84);
    }

    else
    {
      v46 = SBLogSwitcherSnapshotCache();
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);

      if (v47)
      {
        sequenceID = [v13 sequenceID];
        application2 = [sceneHandle application];
        bundleIdentifier = [application2 bundleIdentifier];
        v50 = [bundleIdentifier componentsSeparatedByString:@"."];
        lastObject = [v50 lastObject];

        uniqueIdentifier = [itemCopy uniqueIdentifier];
        sceneIfExists = [sceneHandle sceneIfExists];

        v118.width = v23;
        v118.height = v25;
        v53 = NSStringFromSize(v118);
        lastKnownUserInterfaceStyle = self->_lastKnownUserInterfaceStyle;
        v55 = @"Light";
        if (lastKnownUserInterfaceStyle == 2)
        {
          v55 = @"Dark";
        }

        if (lastKnownUserInterfaceStyle)
        {
          v56 = v55;
        }

        else
        {
          v56 = @"Unspecified";
        }

        v69 = v56;
        v70 = v78;
        v57 = SBLogSwitcherSnapshotCache();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          v67 = v53;
          v65 = self->_debugName;
          loadFullSizeSnapshot2 = [v13 loadFullSizeSnapshot];
          *buf = 138545666;
          v98 = v65;
          v99 = 2114;
          v100 = lastObject;
          v101 = 2048;
          v53 = v67;
          v102 = sequenceID;
          v103 = 1024;
          v104 = loadFullSizeSnapshot2;
          v105 = 2114;
          v106 = uniqueIdentifier;
          v107 = 1024;
          v108 = sceneIfExists != 0;
          v109 = 2114;
          v110 = v67;
          v111 = 2114;
          v112 = v69;
          v113 = 2114;
          v114 = v70;
          v115 = 1024;
          v116 = snapshot != 0;
          _os_log_debug_impl(&dword_21ED4E000, v57, OS_LOG_TYPE_DEBUG, "\n|\n|— [%{public}@] [Loading] request for %{public}@:\n|\n|     sequence : %lu \n|   fullscreen : %{BOOL}u \n| itemUniqueID : %{public}@ \n|     hasScene : %{BOOL}u \n|         size : %{public}@ \n|        style : %{public}@ \n|      variant : %{public}@ \n|     hadEntry : %{BOOL}u \n|", buf, 0x5Au);
        }
      }

      [v34 contentType];
      v58 = XBApplicationSnapshotContentTypeMaskForContentType();
      if (v78 && (v59 = v58, [v34 variantID], v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "isEqualToString:", v78), v60, !((v72 | v61) & 1 | ((v59 & 6) == 0))))
      {
        v63 = SBLogSwitcherSnapshotCache();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          [SBAppSwitcherSnapshotImageCache _loadSnapshotForRequest:withDisplayItem:inAppLayout:];
        }

        [(SBAppSwitcherSnapshotImageCache *)self _createDownscaledVariantForRequest:v13 snapshot:v34 displayItem:itemCopy sceneHandle:sceneHandle application:application];
        v64 = SBLogSwitcherSnapshotCache();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          [SBAppSwitcherSnapshotImageCache _loadSnapshotForRequest:withDisplayItem:inAppLayout:];
        }
      }

      else
      {
        [v13 setSnapshot:v34];
        [(SBAppSwitcherSnapshotImageCache *)self _cacheSnapshotForRequest:v13 withDisplayItem:itemCopy inAppLayout:layoutCopy];
      }
    }

    goto LABEL_50;
  }

  WeakRetained = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEBUG))
  {
    -[SBAppSwitcherSnapshotImageCache _loadSnapshotForRequest:withDisplayItem:inAppLayout:].cold.2(self->_debugName, buf, [v13 sequenceID], WeakRetained);
  }

LABEL_52:

  _Block_object_dispose(&v93, 8);
}

uint64_t __87__SBAppSwitcherSnapshotImageCache__loadSnapshotForRequest_withDisplayItem_inAppLayout___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isValidSnapshotRequest:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _enqueueNextSnapshotRequestIfNecessary];
  }

  return result;
}

uint64_t __87__SBAppSwitcherSnapshotImageCache__loadSnapshotForRequest_withDisplayItem_inAppLayout___block_invoke_265(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 144);
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got nil applicationSceneEntity for displayItem [%{public}@]; failing early", &v6, 0x16u);
  }

  return [*(a1 + 32) _snapshotImage:0 finishedLoadingForRequest:*(a1 + 48)];
}

uint64_t __87__SBAppSwitcherSnapshotImageCache__loadSnapshotForRequest_withDisplayItem_inAppLayout___block_invoke_270(uint64_t a1)
{
  v2 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __87__SBAppSwitcherSnapshotImageCache__loadSnapshotForRequest_withDisplayItem_inAppLayout___block_invoke_270_cold_1(a1);
  }

  v3 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 48)];
  v4 = [v3 fromFullSizeSnapshotRequest];

  if (v4)
  {
    [*(a1 + 40) setLoadFullSizeSnapshot:1];
  }

  v5 = *(a1 + 40);
  v6 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 48)];
  v7 = [v6 snapshot];
  [v5 setSnapshot:v7];

  v8 = *(a1 + 32);
  v9 = [v8[3] objectForKey:*(a1 + 48)];
  v10 = [v9 snapshotImage];
  [v8 _snapshotImage:v10 finishedLoadingForRequest:*(a1 + 40)];

  return [*(a1 + 32) _enqueueNextSnapshotRequestIfNecessary];
}

uint64_t __87__SBAppSwitcherSnapshotImageCache__loadSnapshotForRequest_withDisplayItem_inAppLayout___block_invoke_271(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 144);
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] failed to retrieve a snapshot for display item [%{public}@]", &v6, 0x16u);
  }

  return [*(a1 + 32) _snapshotImage:0 finishedLoadingForRequest:*(a1 + 48)];
}

- (void)_createDownscaledVariantForRequest:(id)request snapshot:(id)snapshot displayItem:(id)item sceneHandle:(id)handle application:(id)application
{
  requestCopy = request;
  snapshotCopy = snapshot;
  itemCopy = item;
  handleCopy = handle;
  applicationCopy = application;
  BSDispatchQueueAssertMain();
  objc_initWeak(&location, self);
  appLayout = [requestCopy appLayout];
  v18 = [appLayout layoutRoleForItem:itemCopy];
  delegate = [(SBAppSwitcherSnapshotImageCache *)self delegate];
  [delegate scaleForDownscaledSnapshotsForLayoutRole:v18 inAppLayout:appLayout inImageCache:self];
  v21 = v20;

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __115__SBAppSwitcherSnapshotImageCache__createDownscaledVariantForRequest_snapshot_displayItem_sceneHandle_application___block_invoke;
  v25[3] = &unk_2783BDCC0;
  objc_copyWeak(&v29, &location);
  v22 = requestCopy;
  v26 = v22;
  v23 = snapshotCopy;
  v27 = v23;
  v24 = itemCopy;
  v28 = v24;
  [applicationCopy createDownscaledVariantForSnapshot:v23 sceneHandle:handleCopy scaleFactor:v25 didSaveImage:v21];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __115__SBAppSwitcherSnapshotImageCache__createDownscaledVariantForRequest_snapshot_displayItem_sceneHandle_application___block_invoke(id *a1, char a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __115__SBAppSwitcherSnapshotImageCache__createDownscaledVariantForRequest_snapshot_displayItem_sceneHandle_application___block_invoke_2;
    v7[3] = &unk_2783BDC98;
    v7[4] = WeakRetained;
    v8 = a1[4];
    v9 = a1[5];
    v12 = a2;
    objc_copyWeak(&v11, a1 + 7);
    v10 = a1[6];
    dispatch_sync(v6, v7);

    objc_destroyWeak(&v11);
  }
}

void __115__SBAppSwitcherSnapshotImageCache__createDownscaledVariantForRequest_snapshot_displayItem_sceneHandle_application___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _isValidSnapshotRequest:*(a1 + 40)])
  {
    if ([*(a1 + 48) isValid] && *(a1 + 72) == 1)
    {
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __115__SBAppSwitcherSnapshotImageCache__createDownscaledVariantForRequest_snapshot_displayItem_sceneHandle_application___block_invoke_3;
      v3[3] = &unk_2783A9CE8;
      objc_copyWeak(&v5, (a1 + 64));
      v4 = *(a1 + 56);
      dispatch_async(MEMORY[0x277D85CD0], v3);

      objc_destroyWeak(&v5);
    }

    else
    {
      v2 = SBLogSwitcherSnapshotCache();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        __115__SBAppSwitcherSnapshotImageCache__createDownscaledVariantForRequest_snapshot_displayItem_sceneHandle_application___block_invoke_2_cold_1();
      }

      [*(a1 + 32) _snapshotImage:0 finishedLoadingForRequest:*(a1 + 40)];
    }
  }
}

void __115__SBAppSwitcherSnapshotImageCache__createDownscaledVariantForRequest_snapshot_displayItem_sceneHandle_application___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateCacheForDisplayItem:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_updateActiveOrientationObservingIfNeeded
{
  reloadsSnapshotsForActiveInterfaceOrientationChange = [(SBAppSwitcherSnapshotImageCache *)self reloadsSnapshotsForActiveInterfaceOrientationChange];
  v4 = SBApp;
  if (reloadsSnapshotsForActiveInterfaceOrientationChange)
  {

    [v4 addActiveOrientationObserver:self];
  }

  else
  {

    [v4 removeActiveOrientationObserver:self];
  }
}

- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation
{
  BSDispatchQueueAssertMain();
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 1;
  controlQueue = self->_controlQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __124__SBAppSwitcherSnapshotImageCache_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke;
  v9[3] = &unk_2783AC7C8;
  v9[5] = v10;
  v9[6] = orientation;
  v9[4] = self;
  *&v9[7] = duration;
  dispatch_sync(controlQueue, v9);
  _Block_object_dispose(v10, 8);
}

void __124__SBAppSwitcherSnapshotImageCache_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    v3 = *(a1 + 48);
    if ((v3 - 1) >= 2)
    {
      if (((v3 - 3) | (v2 - 3)) >= 2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 > 2)
    {
      goto LABEL_7;
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

LABEL_7:
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v4 = SBLogSwitcherSnapshotCache();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __124__SBAppSwitcherSnapshotImageCache_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke_cold_1();
    }

    *(*(a1 + 32) + 56) = *(a1 + 48);
    [*(a1 + 32) _purgeAllSnapshots];
    [*(a1 + 32) _purgeAllSnapshotRequests];
    objc_initWeak(&location, *(a1 + 32));
    v5 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
    v6 = *(*(a1 + 32) + 16);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __124__SBAppSwitcherSnapshotImageCache_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke_273;
    v7[3] = &unk_2783A8C68;
    objc_copyWeak(&v8, &location);
    dispatch_after(v5, v6, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __124__SBAppSwitcherSnapshotImageCache_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke_273(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _enqueueNextSnapshotRequestIfNecessary];
    WeakRetained = v2;
  }
}

- (int64_t)_orientationForAppLayout:(id)layout
{
  layoutCopy = layout;
  BSDispatchQueueAssertMain();
  delegate = [(SBAppSwitcherSnapshotImageCache *)self delegate];
  v6 = [delegate orientationForSnapshotOfAppLayout:layoutCopy inImageCache:self];

  return v6;
}

- (void)_addObserver:(id)observer forDisplayItem:(id)item inAppLayout:(id)layout
{
  observerCopy = observer;
  layoutCopy = layout;
  itemCopy = item;
  BSDispatchQueueAssert();
  v10 = [[_SBAppSwitcherSnapshotCacheKey alloc] initWithDisplayItem:itemCopy inAppLayout:layoutCopy];

  v11 = [(NSMutableDictionary *)self->_cacheEntryUpdateObservers objectForKey:v10];
  if (!v11)
  {
    v11 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)self->_cacheEntryUpdateObservers setObject:v11 forKey:v10];
  }

  [v11 addObject:observerCopy];
}

- (void)_purgeSnapshotRequest:(id)request withReason:(id)reason
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  reasonCopy = reason;
  BSDispatchQueueAssert();
  v8 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    debugName = self->_debugName;
    v12 = 138543874;
    v13 = debugName;
    v14 = 2114;
    v15 = reasonCopy;
    v16 = 2048;
    sequenceID = [requestCopy sequenceID];
    _os_log_debug_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEBUG, "\n|\n|— [%{public}@] [Purging] [%{public}@] sequenceID: %lu\n|", &v12, 0x20u);
  }

  snapshotRequestsCurrentlyBeingLoaded = self->_snapshotRequestsCurrentlyBeingLoaded;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(requestCopy, "sequenceID")}];
  [(NSMutableDictionary *)snapshotRequestsCurrentlyBeingLoaded removeObjectForKey:v10];
}

- (void)_purgeSnapshotRequestsForDisplayItem:(id)item withReason:(id)reason
{
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  reasonCopy = reason;
  BSDispatchQueueAssert();
  v8 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SBAppSwitcherSnapshotImageCache _purgeSnapshotRequestsForDisplayItem:withReason:];
  }

  snapshotRequestsCurrentlyBeingLoaded = self->_snapshotRequestsCurrentlyBeingLoaded;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__SBAppSwitcherSnapshotImageCache__purgeSnapshotRequestsForDisplayItem_withReason___block_invoke;
  v17[3] = &unk_2783BDCE8;
  v10 = itemCopy;
  v18 = v10;
  v11 = [(NSMutableDictionary *)snapshotRequestsCurrentlyBeingLoaded keysOfEntriesPassingTest:v17];
  if ([v11 count])
  {
    v12 = SBLogSwitcherSnapshotCache();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      debugName = self->_debugName;
      allObjects = [v11 allObjects];
      *buf = 138543874;
      v20 = debugName;
      v21 = 2114;
      v22 = reasonCopy;
      v23 = 2114;
      v24 = allObjects;
      _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "\n|\n|— [%{public}@] [Purging] [%{public}@] sequenceID-s: %{public}@\n|", buf, 0x20u);
    }

    v13 = self->_snapshotRequestsCurrentlyBeingLoaded;
    allObjects2 = [v11 allObjects];
    [(NSMutableDictionary *)v13 removeObjectsForKeys:allObjects2];
  }
}

uint64_t __83__SBAppSwitcherSnapshotImageCache__purgeSnapshotRequestsForDisplayItem_withReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) uniqueIdentifier];

  if (v5)
  {
    v6 = [v4 displayItem];
    v7 = [(SBDisplayItem *)v6 isEqualToItem:?];
  }

  else
  {
    v8 = [*(a1 + 32) bundleIdentifier];

    if (!v8)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v6 = [v4 displayItem];
    v9 = [v6 bundleIdentifier];
    v10 = [*(a1 + 32) bundleIdentifier];
    v7 = [v9 isEqual:v10];
  }

LABEL_6:
  return v7;
}

- (void)_purgeSnapshotsForKey:(id)key
{
  keyCopy = key;
  BSDispatchQueueAssert();
  v5 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBAppSwitcherSnapshotImageCache _purgeSnapshotsForKey:];
  }

  displayItem = [keyCopy displayItem];
  uniqueIdentifier = [displayItem uniqueIdentifier];

  if (uniqueIdentifier)
  {
    v8 = SBLogSwitcherSnapshotCache();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(SBAppSwitcherSnapshotImageCache *)self _purgeSnapshotsForKey:displayItem];
    }

    [(NSMutableDictionary *)self->_cachedSnapshots removeObjectForKey:keyCopy];
  }

  else
  {
    bundleIdentifier = [displayItem bundleIdentifier];

    if (bundleIdentifier)
    {
      cachedSnapshots = self->_cachedSnapshots;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __57__SBAppSwitcherSnapshotImageCache__purgeSnapshotsForKey___block_invoke;
      v15[3] = &unk_2783BDD10;
      v16 = displayItem;
      v11 = [(NSMutableDictionary *)cachedSnapshots keysOfEntriesPassingTest:v15];
      if ([v11 count])
      {
        v12 = SBLogSwitcherSnapshotCache();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [SBAppSwitcherSnapshotImageCache _purgeSnapshotsForKey:];
        }

        v13 = self->_cachedSnapshots;
        allObjects = [v11 allObjects];
        [(NSMutableDictionary *)v13 removeObjectsForKeys:allObjects];
      }
    }
  }
}

uint64_t __57__SBAppSwitcherSnapshotImageCache__purgeSnapshotsForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 displayItem];
  v4 = [v3 bundleIdentifier];
  v5 = [*(a1 + 32) bundleIdentifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

uint64_t __68__SBAppSwitcherSnapshotImageCache__purgeLowPrioritySnapshotRequests__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v5 appLayout];
  v7 = [v5 snapshot];

  LODWORD(v3) = [v4 _isValidAppLayout:v6 withSnapshot:v7 givenCachableAppLayouts:*(*(v3 + 32) + 120)];
  return v3 ^ 1;
}

uint64_t __76__SBAppSwitcherSnapshotImageCache__purgeLowPriorityFullSizeSnapshotRequests__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 loadFullSizeSnapshot])
  {
    v5 = *(a1 + 32);
    v6 = [v4 appLayout];
    v7 = [v5 containsObject:v6] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setSnapshotNeedsUpdateForDisplayItem:(id)item
{
  v26 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  BSDispatchQueueAssert();
  v5 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBAppSwitcherSnapshotImageCache _setSnapshotNeedsUpdateForDisplayItem:];
  }

  uniqueIdentifier = [itemCopy uniqueIdentifier];

  if (uniqueIdentifier)
  {
    cachedSnapshots = self->_cachedSnapshots;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __73__SBAppSwitcherSnapshotImageCache__setSnapshotNeedsUpdateForDisplayItem___block_invoke;
    v23[3] = &unk_2783BDD10;
    v8 = &v24;
    v24 = itemCopy;
    v9 = v23;
  }

  else
  {
    bundleIdentifier = [itemCopy bundleIdentifier];

    if (!bundleIdentifier)
    {
      goto LABEL_8;
    }

    cachedSnapshots = self->_cachedSnapshots;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __73__SBAppSwitcherSnapshotImageCache__setSnapshotNeedsUpdateForDisplayItem___block_invoke_2;
    v21[3] = &unk_2783BDD10;
    v8 = &v22;
    v22 = itemCopy;
    v9 = v21;
  }

  bundleIdentifier = [(NSMutableDictionary *)cachedSnapshots keysOfEntriesPassingTest:v9];

LABEL_8:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = bundleIdentifier;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(NSMutableDictionary *)self->_cachedSnapshots objectForKey:*(*(&v17 + 1) + 8 * v15), v17];
        [v16 setNeedsUpdate:1];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

uint64_t __73__SBAppSwitcherSnapshotImageCache__setSnapshotNeedsUpdateForDisplayItem___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 displayItem];
  v5 = [(SBDisplayItem *)v4 isEqualToItem:?];

  return v5;
}

uint64_t __73__SBAppSwitcherSnapshotImageCache__setSnapshotNeedsUpdateForDisplayItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 displayItem];
  v4 = [v3 bundleIdentifier];
  v5 = [*(a1 + 32) bundleIdentifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (BOOL)_isValidAppLayout:(id)layout withSnapshot:(id)snapshot givenCachableAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  layoutCopy = layout;
  BSDispatchQueueAssert();
  v8 = [layoutsCopy containsObject:layoutCopy];

  return v8;
}

- (void)_purgeAllSnapshotRequests
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, v0, v1, "[%{public}@] purge all snapshot requests", v2, v3, v4, v5, v6);
}

- (void)_purgeAllSnapshots
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, v0, v1, "[%{public}@] purge all cached snapshots", v2, v3, v4, v5, v6);
}

- (void)_enqueueSnapshotRequestsForCachableAppLayouts:(id)layouts forFullSizeSnapshots:(BOOL)snapshots
{
  snapshotsCopy = snapshots;
  v36 = *MEMORY[0x277D85DE8];
  v6 = [layouts mutableCopy];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __102__SBAppSwitcherSnapshotImageCache__enqueueSnapshotRequestsForCachableAppLayouts_forFullSizeSnapshots___block_invoke_2;
  v32[3] = &unk_2783BDD80;
  v32[4] = self;
  v33 = &__block_literal_global_285;
  v34 = snapshotsCopy;
  v7 = [v6 indexesOfObjectsPassingTest:v32];
  [v6 removeObjectsAtIndexes:v7];
  if ([v6 count])
  {
    v19 = v7;
    v20 = v6;
    firstObject = [v6 firstObject];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [firstObject allItems];
    v9 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        v12 = 0;
        do
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v28 + 1) + 8 * v12);
          v14 = [[_SBAppSwitcherSnapshotCacheKey alloc] initWithDisplayItem:v13 inAppLayout:firstObject];
          v15 = [(NSMutableDictionary *)self->_cachedSnapshots objectForKey:v14];
          v16 = __102__SBAppSwitcherSnapshotImageCache__enqueueSnapshotRequestsForCachableAppLayouts_forFullSizeSnapshots___block_invoke(v15, v15, snapshotsCopy);

          if ((v16 & 1) == 0)
          {
            v17 = [(SBAppSwitcherSnapshotImageCache *)self _createSnapshotRequestWithDisplayItem:v13 inAppLayout:firstObject forFullSizeSnapshot:snapshotsCopy];
            objc_initWeak(&location, self);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __102__SBAppSwitcherSnapshotImageCache__enqueueSnapshotRequestsForCachableAppLayouts_forFullSizeSnapshots___block_invoke_3;
            block[3] = &unk_2783B4560;
            objc_copyWeak(&v26, &location);
            v23 = v17;
            v24 = v13;
            v25 = firstObject;
            v18 = v17;
            dispatch_async(MEMORY[0x277D85CD0], block);

            objc_destroyWeak(&v26);
            objc_destroyWeak(&location);
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v10);
    }

    v7 = v19;
    v6 = v20;
  }
}

uint64_t __102__SBAppSwitcherSnapshotImageCache__enqueueSnapshotRequestsForCachableAppLayouts_forFullSizeSnapshots___block_invoke(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = v4;
  if (v4 && ([v4 needsUpdate] & 1) == 0)
  {
    v6 = [v5 fromFullSizeSnapshotRequest] | a3 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __102__SBAppSwitcherSnapshotImageCache__enqueueSnapshotRequestsForCachableAppLayouts_forFullSizeSnapshots___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 allItems];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    LODWORD(v8) = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [[_SBAppSwitcherSnapshotCacheKey alloc] initWithDisplayItem:*(*(&v13 + 1) + 8 * i) inAppLayout:v3];
        v11 = [*(*(a1 + 32) + 24) objectForKey:v10];
        v8 = v8 & (*(*(a1 + 40) + 16))();
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

void __102__SBAppSwitcherSnapshotImageCache__enqueueSnapshotRequestsForCachableAppLayouts_forFullSizeSnapshots___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _loadSnapshotForRequest:*(a1 + 32) withDisplayItem:*(a1 + 40) inAppLayout:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (id)_createSnapshotRequestWithDisplayItem:(id)item inAppLayout:(id)layout forFullSizeSnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  layoutCopy = layout;
  itemCopy = item;
  BSDispatchQueueAssert();
  ++self->_snapshotRequestSequenceID;
  v10 = [[_SBAppSwitcherSnapshotImageCacheRequest alloc] initWithSequenceID:self->_snapshotRequestSequenceID];
  [(_SBAppSwitcherSnapshotImageCacheRequest *)v10 setDisplayItem:itemCopy];

  [(_SBAppSwitcherSnapshotImageCacheRequest *)v10 setAppLayout:layoutCopy];
  [(_SBAppSwitcherSnapshotImageCacheRequest *)v10 setLoadFullSizeSnapshot:snapshotCopy];
  snapshotRequestsCurrentlyBeingLoaded = self->_snapshotRequestsCurrentlyBeingLoaded;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_snapshotRequestSequenceID];
  [(NSMutableDictionary *)snapshotRequestsCurrentlyBeingLoaded setObject:v10 forKey:v12];

  return v10;
}

- (BOOL)_isValidSnapshotRequest:(id)request
{
  requestCopy = request;
  BSDispatchQueueAssert();
  snapshotRequestsCurrentlyBeingLoaded = self->_snapshotRequestsCurrentlyBeingLoaded;
  v6 = MEMORY[0x277CCABB0];
  sequenceID = [requestCopy sequenceID];

  v8 = [v6 numberWithUnsignedInteger:sequenceID];
  v9 = [(NSMutableDictionary *)snapshotRequestsCurrentlyBeingLoaded objectForKey:v8];
  LOBYTE(snapshotRequestsCurrentlyBeingLoaded) = v9 != 0;

  return snapshotRequestsCurrentlyBeingLoaded;
}

- (void)_snapshotImage:(id)image finishedLoadingForRequest:(id)request
{
  imageCopy = image;
  requestCopy = request;
  BSDispatchQueueAssert();
  v8 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SBAppSwitcherSnapshotImageCache _snapshotImage:requestCopy finishedLoadingForRequest:?];
  }

  displayItem = [requestCopy displayItem];
  v10 = [(SBAppSwitcherSnapshotImageCache *)self _isValidSnapshotRequest:requestCopy];
  v11 = @"invalid";
  if (v10)
  {
    v11 = @"valid";
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Finished loading %@ request", v11];
  [(SBAppSwitcherSnapshotImageCache *)self _purgeSnapshotRequest:requestCopy withReason:v12];

  if (v10)
  {
    [(SBAppSwitcherSnapshotImageCache *)self _addCacheEntryForImage:imageCopy fromRequest:requestCopy];
    v13 = [_SBAppSwitcherSnapshotCacheKey alloc];
    appLayout = [requestCopy appLayout];
    v15 = [(_SBAppSwitcherSnapshotCacheKey *)v13 initWithDisplayItem:displayItem inAppLayout:appLayout];

    v16 = [(NSMutableDictionary *)self->_cachedSnapshots objectForKey:v15];
    [v16 setNeedsUpdate:0];
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__SBAppSwitcherSnapshotImageCache__snapshotImage_finishedLoadingForRequest___block_invoke;
    block[3] = &unk_2783B4560;
    objc_copyWeak(&v22, &location);
    v19 = displayItem;
    v20 = requestCopy;
    v21 = v16;
    v17 = v16;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  [(SBAppSwitcherSnapshotImageCache *)self _enqueueNextSnapshotRequestIfNecessary];
}

void __76__SBAppSwitcherSnapshotImageCache__snapshotImage_finishedLoadingForRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) appLayout];
    [v5 _updateObserversForDisplayItem:v3 inAppLayout:v4 withCacheEntry:*(a1 + 48)];

    WeakRetained = v5;
  }
}

- (void)_addCacheEntryForImage:(id)image fromRequest:(id)request
{
  v23 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  requestCopy = request;
  BSDispatchQueueAssert();
  v8 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SBAppSwitcherSnapshotImageCache _addCacheEntryForImage:fromRequest:];
  }

  appLayout = [requestCopy appLayout];
  displayItem = [requestCopy displayItem];
  v11 = objc_alloc_init(SBAppSwitcherSnapshotCacheEntry);
  [(SBAppSwitcherSnapshotCacheEntry *)v11 setAppLayout:appLayout];
  [(SBAppSwitcherSnapshotCacheEntry *)v11 setDisplayItem:displayItem];
  snapshot = [requestCopy snapshot];
  [(SBAppSwitcherSnapshotCacheEntry *)v11 setSnapshot:snapshot];

  [(SBAppSwitcherSnapshotCacheEntry *)v11 setSnapshotImage:imageCopy];
  -[SBAppSwitcherSnapshotCacheEntry setFromFullSizeSnapshotRequest:](v11, "setFromFullSizeSnapshotRequest:", [requestCopy loadFullSizeSnapshot]);
  v13 = [[_SBAppSwitcherSnapshotCacheKey alloc] initWithDisplayItem:displayItem inAppLayout:appLayout];
  [(NSMutableDictionary *)self->_cachedSnapshots setObject:v11 forKey:v13];
  v14 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    debugName = self->_debugName;
    displayItem2 = [requestCopy displayItem];
    v17 = 138543874;
    v18 = debugName;
    v19 = 2114;
    v20 = imageCopy;
    v21 = 2114;
    v22 = displayItem2;
    _os_log_debug_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEBUG, "[%{public}@] cached image %{public}@ for display item [%{public}@]", &v17, 0x20u);
  }
}

- (BOOL)_keepGoingForRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(self->_snapshotQueue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  controlQueue = self->_controlQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SBAppSwitcherSnapshotImageCache__keepGoingForRequest___block_invoke;
  block[3] = &unk_2783AB258;
  v9 = requestCopy;
  v10 = &v11;
  block[4] = self;
  v6 = requestCopy;
  dispatch_sync(controlQueue, block);
  LOBYTE(requestCopy) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return requestCopy;
}

uint64_t __56__SBAppSwitcherSnapshotImageCache__keepGoingForRequest___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isValidSnapshotRequest:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_asynchronouslyLoadSnapshotFromRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(self->_snapshotQueue);
  v5 = SBLogSwitcherSnapshotCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBAppSwitcherSnapshotImageCache _asynchronouslyLoadSnapshotFromRequest:];
  }

  if (![(SBAppSwitcherSnapshotImageCache *)self _keepGoingForRequest:requestCopy])
  {
    v8 = SBLogSwitcherSnapshotCache();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SBAppSwitcherSnapshotImageCache _asynchronouslyLoadSnapshotFromRequest:];
    }

    goto LABEL_11;
  }

  snapshot = [requestCopy snapshot];
  v7 = [snapshot imageForInterfaceOrientation:0];

  v8 = SBLogSwitcherSnapshotCache();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (!v7)
  {
    if (v9)
    {
      [SBAppSwitcherSnapshotImageCache _asynchronouslyLoadSnapshotFromRequest:];
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  if (v9)
  {
    [SBAppSwitcherSnapshotImageCache _asynchronouslyLoadSnapshotFromRequest:];
  }

LABEL_12:

  objc_initWeak(&location, self);
  controlQueue = self->_controlQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SBAppSwitcherSnapshotImageCache__asynchronouslyLoadSnapshotFromRequest___block_invoke;
  v13[3] = &unk_2783B00B0;
  objc_copyWeak(&v16, &location);
  v14 = v7;
  v15 = requestCopy;
  v11 = requestCopy;
  v12 = v7;
  dispatch_async(controlQueue, v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __74__SBAppSwitcherSnapshotImageCache__asynchronouslyLoadSnapshotFromRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _snapshotImage:*(a1 + 32) finishedLoadingForRequest:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_initWithDelegate:applicationController:orientationLockManager:settings:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"delegate != nil" object:? file:? lineNumber:? description:?];
}

void __57__SBAppSwitcherSnapshotImageCache_setCachableAppLayouts___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_27(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, v0, v1, "[%{public}@] Updating cache because there are new cachable app layouts.", v2, v3, v4, v5, v6);
}

void __65__SBAppSwitcherSnapshotImageCache_setFullSizeCachableAppLayouts___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_27(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, v0, v1, "[%{public}@] Updating cache because there are new full size cachable app layouts.", v2, v3, v4, v5, v6);
}

- (void)_updateCacheForDisplayItem:.cold.1()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, v0, v1, "[%{public}@] cache update requested for display item", v2, v3, v4, v5, v6);
}

- (void)addSnapshotUpdateObserver:forDisplayItem:inAppLayout:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"observer != nil" object:? file:? lineNumber:? description:?];
}

- (void)addSnapshotUpdateObserver:forDisplayItem:inAppLayout:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"item != nil" object:? file:? lineNumber:? description:?];
}

- (void)addSnapshotUpdateObserver:forDisplayItem:inAppLayout:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"appLayout != nil" object:? file:? lineNumber:? description:?];
}

- (void)addSnapshotUpdateObserver:forDisplayItem:inAppLayout:.cold.4()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_42();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] display item %{public}@ is not one of the cachable one.");
}

void __88__SBAppSwitcherSnapshotImageCache_addSnapshotUpdateObserver_forDisplayItem_inAppLayout___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_27(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] cache miss: invalid cache entry for %{public}@");
}

void __88__SBAppSwitcherSnapshotImageCache_addSnapshotUpdateObserver_forDisplayItem_inAppLayout___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3_27(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] cache hit for %{public}@");
}

void __88__SBAppSwitcherSnapshotImageCache_addSnapshotUpdateObserver_forDisplayItem_inAppLayout___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_3_27(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] cache miss: no cache entry yet for %{public}@");
}

- (void)removeSnapshotObserver:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"observer != nil" object:? file:? lineNumber:? description:?];
}

- (void)reloadSnapshotsForInterfaceStyleChange:.cold.1()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] reloading snapshots for user interface style: %lu");
}

- (void)_snapshotChanged:.cold.1()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_42();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] snapshot changed notification received for display item %{public}@");
}

- (void)_updateObserversForDisplayItem:inAppLayout:withCacheEntry:.cold.1()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, v0, v1, "[%{public}@] call completion block for display item", v2, v3, v4, v5, v6);
}

- (void)_cacheSnapshotForRequest:withDisplayItem:inAppLayout:.cold.1()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, v0, v1, "[%{public}@] cache snapshot for request", v2, v3, v4, v5, v6);
}

- (void)_cacheSnapshotForRequest:withDisplayItem:inAppLayout:.cold.2()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_42();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] image loaded from existing XB cache %{public}@");
}

- (void)_cacheSnapshotForRequest:withDisplayItem:inAppLayout:.cold.3()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_42();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] async snapshot load kicked off for %{public}@");
}

- (void)_cacheSnapshotForRequest:withDisplayItem:inAppLayout:.cold.4()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_42();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] no snapshot (or default image) for [%{public}@]");
}

- (void)_loadSnapshotForRequest:withDisplayItem:inAppLayout:.cold.1()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] load snapshot request: %@");
}

- (void)_loadSnapshotForRequest:(uint64_t)a3 withDisplayItem:(os_log_t)log inAppLayout:.cold.2(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "[%{public}@] load snapshot request is no more valid, sequenceID: %lu", buf, 0x16u);
}

- (void)_loadSnapshotForRequest:withDisplayItem:inAppLayout:.cold.3()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, v0, v1, "[%{public}@] creating downscaled default snapshot request for default app layout", v2, v3, v4, v5, v6);
}

- (void)_loadSnapshotForRequest:withDisplayItem:inAppLayout:.cold.4()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_42();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] stopping default App Layouts loading cycle, waiting for downscaled snapshot request to complete for [%{public}@]");
}

void __115__SBAppSwitcherSnapshotImageCache__createDownscaledVariantForRequest_snapshot_displayItem_sceneHandle_application___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_27(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] failed to create default App Layouts downscaled variant for [%{public}@]");
}

void __124__SBAppSwitcherSnapshotImageCache_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_27(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] updating snapshots for new interface orientation %ld");
}

- (void)_purgeSnapshotRequestsForDisplayItem:withReason:.cold.1()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, v0, v1, "[%{public}@] purge snapshot requests for display item", v2, v3, v4, v5, v6);
}

- (void)_purgeSnapshotsForKey:.cold.1()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, v0, v1, "[%{public}@] purge snapshots for display item", v2, v3, v4, v5, v6);
}

- (void)_purgeSnapshotsForKey:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_10_5(a1 a2)];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(&dword_21ED4E000, v3, v4, "\n|\n|— [%{public}@] [Purging] displayItem with uniqueID: %{public}@\n|", v5, v6, v7, v8, v9);
}

- (void)_purgeSnapshotsForKey:.cold.3()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_42();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "\n|\n|— [%{public}@] [Purging] displayItems: %{public}@\n|");
}

- (void)_setSnapshotNeedsUpdateForDisplayItem:.cold.1()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, v0, v1, "[%{public}@] set snapshots need update for display item", v2, v3, v4, v5, v6);
}

- (void)_snapshotImage:(uint64_t)a1 finishedLoadingForRequest:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v8 = [OUTLINED_FUNCTION_10_5(a1 a2)];
  OUTLINED_FUNCTION_12(&dword_21ED4E000, v2, v3, "[%{public}@] finished loading snapshot request %@", v4, v5, v6, v7, 2u);
}

- (void)_addCacheEntryForImage:fromRequest:.cold.1()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] updating cache entry for completed snapshot request %@");
}

- (void)_asynchronouslyLoadSnapshotFromRequest:.cold.1()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_42();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] async snapshot image loading for request %{public}@");
}

- (void)_asynchronouslyLoadSnapshotFromRequest:.cold.2()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_42();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] couldn't load image since request is no more valid [%{public}@]");
}

- (void)_asynchronouslyLoadSnapshotFromRequest:.cold.3()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_42();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] failed to load snapshot image for [%{public}@]");
}

- (void)_asynchronouslyLoadSnapshotFromRequest:.cold.4()
{
  OUTLINED_FUNCTION_5_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_42();
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, v0, v1, "[%{public}@] loaded snapshot image for [%{public}@]");
}

@end