@interface XBApplicationSnapshotManifestImpl
+ (id)_snapshotPredicateForRequest:(id)a3;
+ (id)acquireManifestForContainerIdentity:(id)a3 store:(id)a4 creatingIfNecessary:(BOOL)a5;
+ (int64_t)_outputFormatForSnapshot:(id)a3;
+ (void)_configureSnapshot:(id)a3 withCompatibilityInfo:(id)a4 forLaunchRequest:(id)a5;
+ (void)_workloop_noteManifestInvalidated:(id)a3;
+ (void)initialize;
+ (void)relinquishManifest:(id)a3;
- (BOOL)_access_snapshotsConsideredUnpurgableByAPFS;
- (BOOL)_access_validateWithContainerIdentity:(id)a3;
- (BOOL)_imageAccessQueue_saveData:(id)a3 forSnapshot:(id)a4;
- (BOOL)_validateWithContainerIdentity:(id)a3;
- (BOOL)snapshotsConsideredUnpurgableByAPFS;
- (XBApplicationSnapshotManifestImpl)init;
- (XBApplicationSnapshotManifestImpl)initWithCoder:(id)a3;
- (id)_access_allSnapshotGroups;
- (id)_access_snapshotGroupForID:(id)a3 creatingIfNeeded:(BOOL)a4;
- (id)_access_snapshotsForGroupIDs:(id)a3;
- (id)_access_snapshotsForGroupIDs:(id)a3 matchingPredicate:(id)a4;
- (id)_access_snapshotsMatchingPredicate:(id)a3;
- (id)_allSnapshotGroups;
- (id)_createSnapshotWithGroupID:(id)a3 generationContext:(id)a4;
- (id)_descriptionForStateCaptureWithMultilinePrefix:(id)a3;
- (id)_generatableSnapshotForGroupID:(id)a3 generationContext:(id)a4;
- (id)_initWithContainerIdentity:(id)a3;
- (id)bundleIdentifier;
- (id)containerPath;
- (id)createSnapshotWithGroupID:(id)a3;
- (id)createVariantForSnapshot:(id)a3 withIdentifier:(id)a4;
- (id)defaultGroupIdentifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)snapshotsForGroupID:(id)a3;
- (id)snapshotsForGroupID:(id)a3 fetchRequest:(id)a4;
- (id)snapshotsForGroupID:(id)a3 matchingPredicate:(id)a4;
- (id)snapshotsForGroupIDs:(id)a3;
- (id)snapshotsForGroupIDs:(id)a3 fetchRequest:(id)a4;
- (id)snapshotsForGroupIDs:(id)a3 matchingPredicate:(id)a4;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_access_accessSnapshotsWithBlock:(id)a3 completion:(id)a4;
- (void)_access_addSnapshotToGroup:(id)a3;
- (void)_access_deletePaths:(id)a3;
- (void)_access_deleteSnapshots:(id)a3;
- (void)_access_doArchiveWithCompletions:(id)a3;
- (void)_access_gatherPaths:(id)a3 forSnapshot:(id)a4;
- (void)_access_purgeSnapshotsWithProtectedContent;
- (void)_access_updateSnapshotsAPFSPurgability:(BOOL)a3;
- (void)_access_workloop_reapExpiredAndInvalidSnapshots;
- (void)_addSnapshotToGroup:(id)a3;
- (void)_commonInit;
- (void)_didGenerateImage:(BOOL)a3 imageGenerationSignal:(id)a4 logIdentifier:(id)a5 imageGeneratedHandler:(id)a6 qos:(unsigned int)a7;
- (void)_didGenerateImageData:(id)a3 forSnapshot:(id)a4 imageWasGenerated:(BOOL)a5 imageDataGenerationSignal:(id)a6 logIdentifier:(id)a7 didSaveHandler:(id)a8 qos:(unsigned int)a9 writeToFileIfSupported:(BOOL)a10;
- (void)_handleMemoryPressure;
- (void)_noteDirtied;
- (void)_reapExpiredAndInvalidSnapshots;
- (void)_scheduleArchivingIfNecessaryWithDelay:(double)a3 completion:(id)a4;
- (void)_setContainerIdentity:(id)a3;
- (void)_synchronizeDataStoreWithCompletion:(id)a3;
- (void)_workloop_checkClientCount;
- (void)_workloop_decrementClientCount;
- (void)_workloop_incrementClientCount;
- (void)_workloop_reallyCheckClientCount;
- (void)archive;
- (void)beginSnapshotAccessTransaction:(id)a3 completion:(id)a4;
- (void)beginTrackingImageDeletions;
- (void)dealloc;
- (void)deleteAllSnapshots;
- (void)deleteSnapshot:(id)a3;
- (void)deleteSnapshots:(id)a3;
- (void)deleteSnapshotsForGroupID:(id)a3;
- (void)deleteSnapshotsForGroupID:(id)a3 matchingPredicate:(id)a4;
- (void)deleteSnapshotsForGroupID:(id)a3 predicateBuilder:(id)a4;
- (void)deleteSnapshotsMatchingPredicate:(id)a3;
- (void)deleteSnapshotsUsingPredicateBuilder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)endTrackingImageDeletions;
- (void)generateImageForSnapshot:(id)a3 dataProvider:(id)a4 options:(unint64_t)a5 imageGeneratedHandler:(id)a6 imageDataSavedHandler:(id)a7;
- (void)purgeSnapshotsWithProtectedContent;
- (void)saveSnapshot:(id)a3 atPath:(id)a4 withContext:(id)a5;
- (void)updateSnapshotsAPFSPurgability:(BOOL)a3;
@end

@implementation XBApplicationSnapshotManifestImpl

- (id)defaultGroupIdentifier
{
  v2 = [(XBApplicationSnapshotManifestImpl *)self identity];
  v3 = [v2 defaultGroupIdentifier];

  return v3;
}

- (void)_commonInit
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:a1 object:0 file:@"XBApplicationSnapshotManifest.m" lineNumber:584 description:{@"Invalid parameter not satisfying: %@", @"self"}];
}

- (id)succinctDescription
{
  v2 = [(XBApplicationSnapshotManifestImpl *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)_noteDirtied
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__XBApplicationSnapshotManifestImpl__noteDirtied__block_invoke;
  block[3] = &unk_279CF9280;
  block[4] = self;
  dispatch_sync(__ManifestArchiveSchedulingQueue, block);
}

- (void)_workloop_incrementClientCount
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(__ManifestWorkloop);
  ++self->_clientCount;
  v3 = XBLogFileManifest();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    logIdentifier = self->_logIdentifier;
    clientCount = self->_clientCount;
    v6 = 138543618;
    v7 = logIdentifier;
    v8 = 1024;
    v9 = clientCount;
    _os_log_impl(&dword_26B5EF000, v3, OS_LOG_TYPE_INFO, "%{public}@ Incrementing client count: %u", &v6, 0x12u);
  }
}

- (void)_access_workloop_reapExpiredAndInvalidSnapshots
{
  v2 = [MEMORY[0x277CCA968] localizedStringFromDate:a2 dateStyle:3 timeStyle:3];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_workloop_reallyCheckClientCount
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(__ManifestWorkloop);
  if (*&self->_clientCount == 0)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__XBApplicationSnapshotManifestImpl__workloop_reallyCheckClientCount__block_invoke;
    v7[3] = &unk_279CF9A40;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(__ManifestArchiveSchedulingQueue, v7);
    if (*(v9 + 24) == 1)
    {
      v3 = XBLogFileManifest();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        logIdentifier = self->_logIdentifier;
        *buf = 138543618;
        v13 = logIdentifier;
        v14 = 2048;
        v15 = self;
        _os_log_impl(&dword_26B5EF000, v3, OS_LOG_TYPE_INFO, "%{public}@ Manifest (%p) has no remaining clients or work. Invalidating!", buf, 0x16u);
      }

      v5 = XBLogSnapshotReaper();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [XBApplicationSnapshotManifestImpl _workloop_reallyCheckClientCount];
      }

      [(BSContinuousMachTimer *)self->_reapingTimer invalidate];
      reapingTimer = self->_reapingTimer;
      self->_reapingTimer = 0;

      [XBApplicationSnapshotManifestImpl _workloop_noteManifestInvalidated:self];
    }

    _Block_object_dispose(&v8, 8);
  }
}

- (id)bundleIdentifier
{
  v2 = [(XBApplicationSnapshotManifestImpl *)self containerIdentity];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(XBApplicationSnapshotManifestImpl *)self bundleIdentifier];
  v5 = [v3 appendObject:v4 withName:@"bundleID" skipIfNil:1];

  return v3;
}

- (void)_workloop_checkClientCount
{
  dispatch_assert_queue_V2(__ManifestWorkloop);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__XBApplicationSnapshotManifestImpl__workloop_checkClientCount__block_invoke;
  block[3] = &unk_279CF9280;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__XBApplicationSnapshotManifestImpl__workloop_checkClientCount__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__XBApplicationSnapshotManifestImpl__workloop_checkClientCount__block_invoke_2;
  block[3] = &unk_279CF9280;
  block[4] = *(a1 + 32);
  dispatch_async(__ManifestSerialWorkQueue, block);
}

- (id)_allSnapshotGroups
{
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v3 = [(XBApplicationSnapshotManifestImpl *)self _access_allSnapshotGroups];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_accessLock);

  return v4;
}

- (id)_access_allSnapshotGroups
{
  os_unfair_lock_assert_owner(&self->_accessLock);
  snapshotGroupsByID = self->_snapshotGroupsByID;

  return [(NSMutableDictionary *)snapshotGroupsByID allValues];
}

void __79__XBApplicationSnapshotManifestImpl__access_purgeSnapshotsWithProtectedContent__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 snapshots];
  v8 = [v7 copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if ([v14 hasProtectedContent])
        {
          [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
          [v6 removeSnapshot:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)purgeSnapshotsWithProtectedContent
{
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(XBApplicationSnapshotManifestImpl *)self _access_purgeSnapshotsWithProtectedContent];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)_access_purgeSnapshotsWithProtectedContent
{
  os_unfair_lock_assert_owner(&self->_accessLock);
  [(XBApplicationSnapshotManifestImpl *)self _noteDirtied];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = [MEMORY[0x277CBEB58] set];
  snapshotGroupsByID = self->_snapshotGroupsByID;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__XBApplicationSnapshotManifestImpl__access_purgeSnapshotsWithProtectedContent__block_invoke;
  v5[3] = &unk_279CF9B58;
  v5[4] = &v6;
  [(NSMutableDictionary *)snapshotGroupsByID enumerateKeysAndObjectsUsingBlock:v5];
  if ([v7[5] count])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__XBApplicationSnapshotManifestImpl__access_purgeSnapshotsWithProtectedContent__block_invoke_2;
    block[3] = &unk_279CF9A40;
    block[4] = self;
    block[5] = &v6;
    dispatch_async(__ManifestCallOutQueue, block);
  }

  _Block_object_dispose(&v6, 8);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __memoryPressureStatus = 1;
    v2 = dispatch_source_create(MEMORY[0x277D85D18], 0, 7uLL, __ManifestSerialWorkQueue);
    v3 = __memoryPressureSource;
    __memoryPressureSource = v2;

    if (__memoryPressureSource)
    {
      dispatch_source_set_event_handler(__memoryPressureSource, &__block_literal_global_187);
      v4 = __memoryPressureSource;

      dispatch_resume(v4);
    }
  }
}

uintptr_t __47__XBApplicationSnapshotManifestImpl_initialize__block_invoke()
{
  v0 = __memoryPressureStatus;
  result = dispatch_source_get_data(__memoryPressureSource);
  __memoryPressureStatus = result;
  if (v0 != result && (result == 4 || result == 2))
  {
    v3 = __ManifestsByIdentity;

    return [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_189];
  }

  return result;
}

+ (id)acquireManifestForContainerIdentity:(id)a3 store:(id)a4 creatingIfNecessary:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[XBApplicationSnapshotManifestImpl acquireManifestForContainerIdentity:store:creatingIfNecessary:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  +[XBApplicationSnapshotManifestImpl acquireManifestForContainerIdentity:store:creatingIfNecessary:];
LABEL_3:
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  v10 = __ManifestSerialWorkQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__XBApplicationSnapshotManifestImpl_acquireManifestForContainerIdentity_store_creatingIfNecessary___block_invoke;
  v15[3] = &unk_279CF9848;
  v16 = v7;
  v17 = v9;
  v19 = a5;
  v18 = &v20;
  v11 = v9;
  v12 = v7;
  dispatch_sync(v10, v15);
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __99__XBApplicationSnapshotManifestImpl_acquireManifestForContainerIdentity_store_creatingIfNecessary___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [XBSnapshotManifestIdentity identityWithBundleIdentifier:v2 store:*(a1 + 40)];
  v4 = [__ManifestsByIdentity objectForKey:v3];
  v5 = v4;
  if (*(a1 + 56) != 1)
  {
    goto LABEL_29;
  }

  if (!v4)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) beginAccessBlockForBundleIdentifier:v2];
    }

    v9 = [*(a1 + 40) loadManifestDataForBundleIdentifier:v2];
    if ([v9 length])
    {
      v34 = 0;
      v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v34];
      v14 = v34;
      v15 = v14;
      if (v13)
      {

        v12 = v13;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v16 = [v12 _allSnapshotGroups];
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v43 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v31;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v31 != v19)
              {
                objc_enumerationMutation(v16);
              }

              [*(*(&v30 + 1) + 8 * i) _manifestQueueDecode_setStore:*(a1 + 40)];
            }

            v18 = [v16 countByEnumeratingWithState:&v30 objects:v43 count:16];
          }

          while (v18);
        }

        v21 = XBLogFileManifest();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [v12 succinctDescription];
          *buf = 138543618;
          v40 = v22;
          v41 = 2112;
          v42 = v3;
          _os_log_impl(&dword_26B5EF000, v21, OS_LOG_TYPE_INFO, "acquireManifestForContainerIdentity:store:creatingIfNecessary: Unarchived manifest %{public}@ for %@.", buf, 0x16u);
        }

        v5 = v12;
LABEL_27:

        v25 = [v3 copy];
        v26 = v5[4];
        v5[4] = v25;

        [__ManifestsByIdentity setObject:v5 forKey:v3];
LABEL_28:

        v27 = objc_autoreleasePoolPush();
        [v5 _validateWithContainerIdentity:*(a1 + 32)];
        [v5 _noteDirtied];
        [v5 _scheduleArchivingIfNecessaryWithCompletion:0];
        objc_autoreleasePoolPop(v27);
        goto LABEL_29;
      }

      v23 = XBLogFileManifest();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __99__XBApplicationSnapshotManifestImpl_acquireManifestForContainerIdentity_store_creatingIfNecessary___block_invoke_cold_1();
      }
    }

    v5 = [[XBApplicationSnapshotManifestImpl alloc] _initWithContainerIdentity:*(a1 + 32)];
    v21 = XBLogFileManifest();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v24 = [v5 succinctDescription];
      *buf = 138543362;
      v40 = v24;
      _os_log_impl(&dword_26B5EF000, v21, OS_LOG_TYPE_INFO, "acquireManifestForContainerIdentity:store:creatingIfNecessary: Created manifest: %{public}@.", buf, 0xCu);
    }

    v12 = 0;
    goto LABEL_27;
  }

  v6 = [v4 containerIdentity];
  v7 = BSEqualObjects();

  if ((v7 & 1) == 0)
  {
    v8 = [v5 succinctDescriptionBuilder];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __99__XBApplicationSnapshotManifestImpl_acquireManifestForContainerIdentity_store_creatingIfNecessary___block_invoke_2;
    v35[3] = &unk_279CF9108;
    v9 = v8;
    v36 = v9;
    v5 = v5;
    v37 = v5;
    v38 = *(a1 + 32);
    [v9 appendBodySectionWithName:0 multilinePrefix:0 block:v35];
    v10 = XBLogFileManifest();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v9 build];
      *buf = 138543362;
      v40 = v11;
      _os_log_impl(&dword_26B5EF000, v10, OS_LOG_TYPE_INFO, "acquireManifestForContainerIdentity:store:creatingIfNecessary: Manifest containerIdentity has changed: %{public}@", buf, 0xCu);
    }

    v12 = v36;
    goto LABEL_28;
  }

LABEL_29:
  [v5 _workloop_incrementClientCount];
  v28 = *(*(a1 + 48) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v5;
}

id __99__XBApplicationSnapshotManifestImpl_acquireManifestForContainerIdentity_store_creatingIfNecessary___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) containerIdentity];
  v4 = [v2 appendObject:v3 withName:@"old"];

  return [*(a1 + 32) appendObject:*(a1 + 48) withName:@"new"];
}

+ (void)relinquishManifest:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 identity];
    v8 = v7;
    if (v7)
    {
      v9 = __ManifestSerialWorkQueue;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__XBApplicationSnapshotManifestImpl_relinquishManifest___block_invoke;
      v10[3] = &unk_279CF9870;
      v11 = v7;
      v12 = v6;
      v13 = a2;
      v14 = a1;
      dispatch_async(v9, v10);
    }
  }
}

void __56__XBApplicationSnapshotManifestImpl_relinquishManifest___block_invoke(uint64_t a1)
{
  v2 = [__ManifestsByIdentity objectForKey:*(a1 + 32)];
  v3 = v2;
  if (v2 != *(a1 + 40))
  {
    __56__XBApplicationSnapshotManifestImpl_relinquishManifest___block_invoke_cold_1();
    v2 = v3;
  }

  [v2 _workloop_decrementClientCount];
}

+ (void)_workloop_noteManifestInvalidated:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(__ManifestWorkloop);
  v6 = [v5 identity];
  if (v6)
  {
    v7 = [__ManifestsByIdentity objectForKey:v6];
    if (v7 != v5)
    {
      [(XBApplicationSnapshotManifestImpl *)a2 _workloop_noteManifestInvalidated:a1, v5, v7];
    }

    v8 = XBLogFileManifest();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 succinctDescription];
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_26B5EF000, v8, OS_LOG_TYPE_INFO, "Removing manifest: %{public}@", &v10, 0xCu);
    }

    [__ManifestsByIdentity removeObjectForKey:v6];
  }
}

- (void)_setContainerIdentity:(id)a3
{
  v12 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v12 copy];
    containerIdentity = self->_containerIdentity;
    self->_containerIdentity = v4;

    v6 = self->_containerIdentity;
    baseLogIdentifier = self->_baseLogIdentifier;
    if (v6)
    {
      v8 = [(XBSnapshotContainerIdentity *)v6 bundleIdentifier];
      v9 = [(NSString *)baseLogIdentifier stringByAppendingFormat:@" [%@]", v8];
      logIdentifier = self->_logIdentifier;
      self->_logIdentifier = v9;
    }

    else
    {
      v11 = baseLogIdentifier;
      v8 = self->_logIdentifier;
      self->_logIdentifier = v11;
    }
  }

  MEMORY[0x2821F96F8]();
}

- (XBApplicationSnapshotManifestImpl)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"XBApplicationSnapshotManifest.m" lineNumber:594 description:{@"Invalid parameter not satisfying: %@", @"NO"}];

  return self;
}

- (id)_initWithContainerIdentity:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = XBApplicationSnapshotManifestImpl;
  v5 = [(XBApplicationSnapshotManifestImpl *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(XBApplicationSnapshotManifestImpl *)v5 _commonInit];
    [(XBApplicationSnapshotManifestImpl *)v6 _setContainerIdentity:v4];
  }

  return v6;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = objc_opt_class();
  v3 = [*(v1 + 24) bundleIdentifier];
  [v4 handleFailureInMethod:v0 object:v1 file:@"XBApplicationSnapshotManifest.m" lineNumber:611 description:{@"<%@:%p bundleIdentifier=%@> failed to fire all synchronize completions before dealloc", v2, v1, v3}];
}

- (void)beginTrackingImageDeletions
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)endTrackingImageDeletions
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = XBLogFileManifest();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v12 = 138412290;
    v13 = logIdentifier;
    _os_log_impl(&dword_26B5EF000, v3, OS_LOG_TYPE_DEFAULT, "[%@] endTrackingImageDeletions", &v12, 0xCu);
  }

  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v5 = __trackersByIdentity;
  v6 = [(XBApplicationSnapshotManifestImpl *)self identity];
  v7 = [v5 objectForKey:v6];

  v8 = [v7 stream];
  if (v8)
  {
    v9 = v8;
    FSEventStreamStop(v8);
    FSEventStreamInvalidate(v9);
    FSEventStreamRelease(v9);
    v10 = __trackersByIdentity;
    v11 = [(XBApplicationSnapshotManifestImpl *)self identity];
    [v10 removeObjectForKey:v11];
  }

  os_unfair_lock_unlock(&self->_accessLock);
}

- (id)containerPath
{
  v2 = [(XBApplicationSnapshotManifestImpl *)self containerIdentity];
  v3 = [v2 snapshotContainerPath];

  return v3;
}

- (id)snapshotsForGroupID:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(XBApplicationSnapshotManifestImpl *)self snapshotsForGroupIDs:v6, v9, v10];

  return v7;
}

- (id)snapshotsForGroupID:(id)a3 matchingPredicate:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v12 count:1];

  v10 = [(XBApplicationSnapshotManifestImpl *)self snapshotsForGroupIDs:v9 matchingPredicate:v7, v12, v13];

  return v10;
}

- (id)snapshotsForGroupID:(id)a3 fetchRequest:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v12 count:1];

  v10 = [(XBApplicationSnapshotManifestImpl *)self snapshotsForGroupIDs:v9 fetchRequest:v7, v12, v13];

  return v10;
}

- (id)snapshotsForGroupIDs:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsForGroupIDs:v4];
  os_unfair_lock_unlock(&self->_accessLock);
  v6 = XBLogFetchRequests();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    logIdentifier = self->_logIdentifier;
    v9 = 138412802;
    v10 = logIdentifier;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    _os_log_debug_impl(&dword_26B5EF000, v6, OS_LOG_TYPE_DEBUG, "[%@] snapshotsForGroupIDs given groupIDs: %@; returning snapshots:\n\t%@", &v9, 0x20u);
  }

  return v5;
}

- (id)snapshotsForGroupIDs:(id)a3 matchingPredicate:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v8 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsForGroupIDs:v6 matchingPredicate:v7];
  os_unfair_lock_unlock(&self->_accessLock);
  v9 = XBLogFetchRequests();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    logIdentifier = self->_logIdentifier;
    v12 = 138413058;
    v13 = logIdentifier;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_debug_impl(&dword_26B5EF000, v9, OS_LOG_TYPE_DEBUG, "[%@] snapshotsForGroupIDs:matchingPredicate: given groupIDs: %@; predicate: %@; returning matchingSnapshots:\n%@", &v12, 0x2Au);
  }

  return v8;
}

- (id)snapshotsForGroupIDs:(id)a3 fetchRequest:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 predicate];
  v9 = XBLogFetchRequests();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138412802;
    v48 = logIdentifier;
    v49 = 2112;
    v50 = v6;
    v51 = 2112;
    v52 = v7;
    _os_log_debug_impl(&dword_26B5EF000, v9, OS_LOG_TYPE_DEBUG, "[%@] BEGIN snapshotsForGroupIDs:fetchRequest: groupIDs: %@; fetchRequest: %@", buf, 0x20u);
  }

  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  if (v8)
  {
    v10 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsForGroupIDs:v6 matchingPredicate:v8];
    v43 = [v10 mutableCopy];

    v11 = XBLogFetchRequests();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = self->_logIdentifier;
      v13 = [v43 bs_map:&__block_literal_global_234];
      *buf = 138412802;
      v48 = v12;
      v49 = 2112;
      v50 = v8;
      v51 = 2112;
      v52 = v13;
      _os_log_debug_impl(&dword_26B5EF000, v11, OS_LOG_TYPE_DEBUG, "[%@] snapshotsForGroupIDs:fetchRequest: fetchRequest has predicate %@; retrieved matchingSnapshots:\n\t%@", buf, 0x20u);
    }
  }

  else
  {
    v14 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsForGroupIDs:v6];
    v43 = [v14 mutableCopy];

    v11 = XBLogFetchRequests();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(XBApplicationSnapshotManifestImpl *)self snapshotsForGroupIDs:v43 fetchRequest:v11];
    }
  }

  os_unfair_lock_unlock(&self->_accessLock);
  v15 = [v7 fallbackGenerationContext];
  v16 = v15;
  v17 = v43;
  if (v15)
  {
    v41 = v8;
    v42 = v6;
    v18 = [v15 launchRequest];
    v19 = [v18 urlSchemeName];
    v20 = [v16 applicationCompatibilityInfo];
    v21 = v20;
    if (v19 && v20 && ([v20 launchInterfaceExistsForScheme:v19] & 1) == 0)
    {
      v22 = [v18 copy];

      [v22 setUrlSchemeName:0];
      v23 = XBLogFetchRequests();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [XBApplicationSnapshotManifestImpl snapshotsForGroupIDs:fetchRequest:];
      }

      v18 = v22;
    }

    v24 = [XBApplicationSnapshotManifestImpl _snapshotPredicateForRequest:v18];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __71__XBApplicationSnapshotManifestImpl_snapshotsForGroupIDs_fetchRequest___block_invoke_238;
    v44[3] = &unk_279CF98B8;
    v25 = v24;
    v45 = v25;
    v46 = self;
    v26 = [v43 indexesOfObjectsPassingTest:v44];
    if (![v26 count])
    {
      v39 = v21;
      v27 = [v16 launchRequest];
      v28 = [v27 groupID];
      v29 = [(XBApplicationSnapshotManifestImpl *)self _generatableSnapshotForGroupID:v28 generationContext:v16];

      v17 = v43;
      v40 = v29;
      [v43 addObject:v29];
      v30 = XBLogFetchRequests();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v37 = self->_logIdentifier;
        v38 = [v29 logIdentifier];
        *buf = 138412802;
        v48 = v37;
        v17 = v43;
        v49 = 2112;
        v50 = v25;
        v51 = 2112;
        v52 = v38;
        _os_log_debug_impl(&dword_26B5EF000, v30, OS_LOG_TYPE_DEBUG, "[%@] snapshotsForGroupIDs:fetchRequest: fetchRequest has fallbackPredicate %@, no snapshot matched, so generated and added fallbackSnapshot:\n\t%@", buf, 0x20u);
      }

      v21 = v39;
    }

    v8 = v41;
    v6 = v42;
  }

  v31 = [v7 sortDescriptors];
  v32 = [v31 count];

  if (v32)
  {
    v33 = [v7 NSSortDescriptors];
    [v17 sortUsingDescriptors:v33];

    v34 = XBLogFetchRequests();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [(XBApplicationSnapshotManifestImpl *)self snapshotsForGroupIDs:v17 fetchRequest:v34];
    }
  }

  return v17;
}

uint64_t __71__XBApplicationSnapshotManifestImpl_snapshotsForGroupIDs_fetchRequest___block_invoke_238(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if ([*(a1 + 32) evaluateWithObject:v6] && objc_msgSend(v6, "isValid"))
  {
    *a4 = 1;
    v7 = XBLogFetchRequests();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = *(*(a1 + 40) + 112);
      v12 = [v6 logIdentifier];
      v13 = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_26B5EF000, v7, OS_LOG_TYPE_DEBUG, "[%@] snapshotsForGroupIDs:fetchRequest: fetchRequest has fallbackPredicate %@ and found matching snapshot %@; will not generate", &v13, 0x20u);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createSnapshotWithGroupID:(id)a3
{
  v4 = a3;
  v5 = [XBApplicationSnapshot alloc];
  containerIdentity = self->_containerIdentity;
  v7 = [(XBSnapshotManifestIdentity *)self->_identity store];
  v8 = [(XBApplicationSnapshot *)v5 _initWithContainerIdentity:containerIdentity store:v7 groupID:v4 generationContext:0];

  return v8;
}

- (id)createVariantForSnapshot:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [XBApplicationSnapshotManifestImpl createVariantForSnapshot:withIdentifier:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [XBApplicationSnapshotManifestImpl createVariantForSnapshot:withIdentifier:];
LABEL_3:
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v9 = [v6 _createVariantWithIdentifier:v8];
  os_unfair_lock_unlock(&self->_accessLock);

  return v9;
}

- (void)_didGenerateImage:(BOOL)a3 imageGenerationSignal:(id)a4 logIdentifier:(id)a5 imageGeneratedHandler:(id)a6 qos:(unsigned int)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = XBLogCapture();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [XBApplicationSnapshotManifestImpl _didGenerateImage:imageGenerationSignal:logIdentifier:imageGeneratedHandler:qos:];
  }

  if ([v10 hasBeenSignalled])
  {
    v14 = XBLogCapture();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [XBApplicationSnapshotManifestImpl _didGenerateImage:imageGenerationSignal:logIdentifier:imageGeneratedHandler:qos:];
    }
  }

  else
  {
    [v10 signal];
    os_unfair_lock_assert_not_owner(&self->_accessLock);
    os_unfair_lock_lock(&self->_accessLock);
    v15 = XBLogCapture();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [XBApplicationSnapshotManifestImpl _didGenerateImage:imageGenerationSignal:logIdentifier:imageGeneratedHandler:qos:];
    }

    if (v12)
    {
      v16 = __ManifestCallOutQueue;
      v18 = v12;
      v17 = BSDispatchBlockCreateWithQualityOfService();
      dispatch_async(v16, v17);
    }

    os_unfair_lock_unlock(&self->_accessLock);
  }
}

- (void)_didGenerateImageData:(id)a3 forSnapshot:(id)a4 imageWasGenerated:(BOOL)a5 imageDataGenerationSignal:(id)a6 logIdentifier:(id)a7 didSaveHandler:(id)a8 qos:(unsigned int)a9 writeToFileIfSupported:(BOOL)a10
{
  v26 = a5;
  v45 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v27 = a8;
  v19 = [v16 logIdentifier];
  v20 = XBLogCapture();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [XBApplicationSnapshotManifestImpl _didGenerateImageData:forSnapshot:imageWasGenerated:imageDataGenerationSignal:logIdentifier:didSaveHandler:qos:writeToFileIfSupported:];
  }

  if (([v17 hasBeenSignalled] & 1) == 0)
  {
    [v17 signal];
    os_unfair_lock_assert_not_owner(&self->_accessLock);
    os_unfair_lock_lock(&self->_accessLock);
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    if (v15 && ([v16 _isInvalidated] & 1) == 0)
    {
      v23 = __ManifestImageAccessQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __171__XBApplicationSnapshotManifestImpl__didGenerateImageData_forSnapshot_imageWasGenerated_imageDataGenerationSignal_logIdentifier_didSaveHandler_qos_writeToFileIfSupported___block_invoke;
      block[3] = &unk_279CF9908;
      v36 = &v37;
      block[4] = self;
      v32 = v15;
      v33 = v16;
      v34 = v18;
      v35 = v19;
      dispatch_sync(v23, block);
    }

    else
    {
      if ([v16 _isInvalidated])
      {
        v22 = XBLogFileManifest();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v42 = v18;
          v43 = 2114;
          v44 = v19;
          _os_log_impl(&dword_26B5EF000, v22, OS_LOG_TYPE_INFO, "%{public}@ Snapshot was invalidated between imageGenerationHandler and imageDataGenerationHandler. Skipping saving. %{public}@", buf, 0x16u);
        }
      }

      if (!v15)
      {
        goto LABEL_18;
      }
    }

    if (*(v38 + 24) == 1)
    {
      [(XBApplicationSnapshotManifestImpl *)self _noteDirtied];
LABEL_20:
      v24 = __ManifestCallOutQueue;
      v30 = v27;
      v28 = v18;
      v29 = v16;
      v25 = BSDispatchBlockCreateWithQualityOfService();
      dispatch_async(v24, v25);

      os_unfair_lock_unlock(&self->_accessLock);
      _Block_object_dispose(&v37, 8);
      goto LABEL_21;
    }

LABEL_18:
    if (v26)
    {
      [(XBApplicationSnapshotManifestImpl *)self _reapExpiredAndInvalidSnapshots];
    }

    goto LABEL_20;
  }

  v21 = XBLogCapture();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [XBApplicationSnapshotManifestImpl _didGenerateImageData:forSnapshot:imageWasGenerated:imageDataGenerationSignal:logIdentifier:didSaveHandler:qos:writeToFileIfSupported:];
  }

LABEL_21:
}

void __171__XBApplicationSnapshotManifestImpl__didGenerateImageData_forSnapshot_imageWasGenerated_imageDataGenerationSignal_logIdentifier_didSaveHandler_qos_writeToFileIfSupported___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) _imageAccessQueue_saveData:*(a1 + 40) forSnapshot:*(a1 + 48)];
  v2 = *(*(*(a1 + 72) + 8) + 24);
  v3 = XBLogFileManifest();
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v5 = *(a1 + 64);
      v7 = [*(a1 + 48) path];
      v8 = 138543874;
      v9 = v6;
      v10 = 2114;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_26B5EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Snapshot data for %{public}@ written to file: %{public}@", &v8, 0x20u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __171__XBApplicationSnapshotManifestImpl__didGenerateImageData_forSnapshot_imageWasGenerated_imageDataGenerationSignal_logIdentifier_didSaveHandler_qos_writeToFileIfSupported___block_invoke_cold_1();
  }
}

uint64_t __171__XBApplicationSnapshotManifestImpl__didGenerateImageData_forSnapshot_imageWasGenerated_imageDataGenerationSignal_logIdentifier_didSaveHandler_qos_writeToFileIfSupported___block_invoke_253(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = XBLogCapture();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __171__XBApplicationSnapshotManifestImpl__didGenerateImageData_forSnapshot_imageWasGenerated_imageDataGenerationSignal_logIdentifier_didSaveHandler_qos_writeToFileIfSupported___block_invoke_253_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  v3 = (a1 + 40);
  [*(a1 + 40) clearImageGenerator];
  [*(a1 + 40) endImageAccess];
  if (*(a1 + 72) == 1 && ([*v3 hasProtectedContent] & 1) == 0 && (objc_msgSend(*v3, "_isInvalidated") & 1) == 0 && (objc_msgSend(*v3, "fileExists") & 1) == 0)
  {
    v4 = XBLogSnapshot();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __171__XBApplicationSnapshotManifestImpl__didGenerateImageData_forSnapshot_imageWasGenerated_imageDataGenerationSignal_logIdentifier_didSaveHandler_qos_writeToFileIfSupported___block_invoke_253_cold_2(a1, (a1 + 40));
    }

    [*v3 _invalidate];
  }

  result = [*v3 _isInvalidated];
  if (result)
  {
    return [*(a1 + 48) deleteSnapshot:*(a1 + 40)];
  }

  return result;
}

- (void)generateImageForSnapshot:(id)a3 dataProvider:(id)a4 options:(unint64_t)a5 imageGeneratedHandler:(id)a6 imageDataSavedHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v17 = _os_activity_create(&dword_26B5EF000, "XBCapture", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  os_activity_scope_enter(v17, &state);

  v18 = [v13 groupID];

  if (v18)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v40 = [MEMORY[0x277CCA890] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"XBApplicationSnapshotManifest.m" lineNumber:1027 description:{@"Invalid parameter not satisfying: %@", @"[snapshot groupID]"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v41 = [MEMORY[0x277CCA890] currentHandler];
  [v41 handleFailureInMethod:a2 object:self file:@"XBApplicationSnapshotManifest.m" lineNumber:1028 description:{@"Invalid parameter not satisfying: %@", @"dataProvider"}];

LABEL_3:
  v19 = [v14 context];

  if (!v19)
  {
    v42 = [MEMORY[0x277CCA890] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"XBApplicationSnapshotManifest.m" lineNumber:1029 description:{@"Invalid parameter not satisfying: %@", @"[dataProvider context]"}];
  }

  v20 = [v14 context];
  [v20 scale];
  v22 = v21;
  v50 = [(XBApplicationSnapshotManifestImpl *)self bundleIdentifier];
  if ((a5 & 2) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  [v13 setImageScale:v22];
  [v13 setImageOpaque:{objc_msgSend(v20, "isOpaque")}];
  [v13 beginImageAccess];
  v24 = objc_alloc_init(MEMORY[0x277CF0B80]);
  v46 = v20;
  v47 = v23;
  v48 = v16;
  v25 = a5;
  v26 = objc_alloc_init(MEMORY[0x277CF0B80]);
  v27 = self->_logIdentifier;
  v28 = BSPthreadCurrentEffectiveQualityOfService();
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __127__XBApplicationSnapshotManifestImpl_generateImageForSnapshot_dataProvider_options_imageGeneratedHandler_imageDataSavedHandler___block_invoke;
  v61[3] = &unk_279CF9958;
  v61[4] = self;
  v43 = v24;
  v62 = v43;
  v29 = v27;
  v63 = v29;
  v44 = v15;
  v64 = v44;
  v65 = v28;
  v51 = MEMORY[0x26D67C6A0](v61);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __127__XBApplicationSnapshotManifestImpl_generateImageForSnapshot_dataProvider_options_imageGeneratedHandler_imageDataSavedHandler___block_invoke_2;
  v54[3] = &unk_279CF9980;
  v45 = self;
  v54[4] = self;
  v30 = v13;
  v55 = v30;
  v31 = v26;
  v56 = v31;
  v32 = v29;
  v57 = v32;
  v49 = v48;
  v58 = v49;
  v59 = v28;
  v60 = v25 & 1;
  v33 = MEMORY[0x26D67C6A0](v54);
  v34 = [XBApplicationSnapshotImageGenerator alloc];
  v35 = +[XBApplicationSnapshotGenerationScheduler sharedInstance];
  v36 = [(XBApplicationSnapshotImageGenerator *)v34 initWithScheduler:v35 snapshot:v30 dataProvider:v14 imageDataRequest:((v25 << 63) >> 63) & v47 loggingPrefix:v50 imageGenerationHandler:v51 imageDataGenerationHandler:v33];

  if ((v25 & 4) == 0)
  {
    [(XBApplicationSnapshotImageGenerator *)v36 scheduleGeneration];
  }

  v37 = objc_opt_class();
  v38 = NSStringFromClass(v37);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __127__XBApplicationSnapshotManifestImpl_generateImageForSnapshot_dataProvider_options_imageGeneratedHandler_imageDataSavedHandler___block_invoke_3;
  v52[3] = &unk_279CF99A8;
  v39 = v36;
  v53 = v39;
  [v30 setImageGeneratingByProvider:v38 withBlockingImageGenerator:v52];

  [(XBApplicationSnapshotManifestImpl *)v45 _addSnapshotToGroup:v30];
  os_activity_scope_leave(&state);
}

uint64_t __127__XBApplicationSnapshotManifestImpl_generateImageForSnapshot_dataProvider_options_imageGeneratedHandler_imageDataSavedHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  BYTE4(v4) = *(a1 + 76);
  LODWORD(v4) = *(a1 + 72);
  return [*(a1 + 32) _didGenerateImageData:a2 forSnapshot:*(a1 + 40) imageWasGenerated:a3 imageDataGenerationSignal:*(a1 + 48) logIdentifier:*(a1 + 56) didSaveHandler:*(a1 + 64) qos:v4 writeToFileIfSupported:?];
}

- (void)saveSnapshot:(id)a3 atPath:(id)a4 withContext:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [XBApplicationSnapshotManifestImpl saveSnapshot:atPath:withContext:];
  }

  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(XBApplicationSnapshotManifestImpl *)self _access_addSnapshotToGroup:v8];
  [v8 _configureWithPath:v9];
  [v10 scale];
  [v8 setImageScale:?];
  [v8 setImageOpaque:{objc_msgSend(v10, "isOpaque")}];
  [(XBApplicationSnapshotManifestImpl *)self _noteDirtied];
  v11 = XBLogFileManifest();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    logIdentifier = self->_logIdentifier;
    v13 = [v8 succinctDescription];
    v14 = 138543618;
    v15 = logIdentifier;
    v16 = 2114;
    v17 = v13;
    _os_log_impl(&dword_26B5EF000, v11, OS_LOG_TYPE_INFO, "%{public}@ Saved snapshot: %{public}@", &v14, 0x16u);
  }

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)deleteSnapshot:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = a3;
    v4 = MEMORY[0x277CBEA60];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v7 count:1];

    [(XBApplicationSnapshotManifestImpl *)self deleteSnapshots:v6, v7, v8];
  }
}

- (void)deleteSnapshots:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  if ([v4 count])
  {
    v5 = XBLogFileManifest();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = self->_logIdentifier;
      v7 = [v4 arrayByApplyingSelector:sel_succinctDescription];
      v8 = 138543618;
      v9 = logIdentifier;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_26B5EF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Deleting snapshots: %{public}@", &v8, 0x16u);
    }
  }

  [(XBApplicationSnapshotManifestImpl *)self _access_deleteSnapshots:v4];
  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)deleteSnapshotsMatchingPredicate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsMatchingPredicate:v4];
  if ([v5 count])
  {
    v6 = XBLogFileManifest();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = self->_logIdentifier;
      v8 = [v5 arrayByApplyingSelector:sel_succinctDescription];
      v9 = 138543874;
      v10 = logIdentifier;
      v11 = 2114;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_26B5EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Deleting snapshots: %{public}@ matching predicate: %@", &v9, 0x20u);
    }
  }

  [(XBApplicationSnapshotManifestImpl *)self _access_deleteSnapshots:v5];
  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)deleteSnapshotsUsingPredicateBuilder:(id)a3
{
  v5 = a3;
  v4 = +[XBApplicationSnapshotPredicate predicate];
  if (v5)
  {
    v5[2](v5, v4);
  }

  [(XBApplicationSnapshotManifestImpl *)self deleteSnapshotsMatchingPredicate:v4];
}

- (void)deleteSnapshotsForGroupID:(id)a3 predicateBuilder:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = +[XBApplicationSnapshotPredicate predicate];
  if (v6)
  {
    v6[2](v6, v7);
  }

  [(XBApplicationSnapshotManifestImpl *)self deleteSnapshotsForGroupID:v8 matchingPredicate:v7];
}

- (void)deleteSnapshotsForGroupID:(id)a3 matchingPredicate:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v19[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v9 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsForGroupIDs:v8 matchingPredicate:v7];

  if ([v9 count])
  {
    v10 = XBLogFileManifest();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      logIdentifier = self->_logIdentifier;
      v12 = [v9 arrayByApplyingSelector:sel_succinctDescription];
      v13 = 138543874;
      v14 = logIdentifier;
      v15 = 2114;
      v16 = v12;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_26B5EF000, v10, OS_LOG_TYPE_INFO, "%{public}@ Deleting snapshots: %{public}@ matching predicate: %@", &v13, 0x20u);
    }
  }

  [(XBApplicationSnapshotManifestImpl *)self _access_deleteSnapshots:v9];
  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)deleteSnapshotsForGroupID:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotGroupForID:v4 creatingIfNeeded:0];
  if (v5)
  {
    v6 = XBLogFileManifest();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      logIdentifier = self->_logIdentifier;
      *buf = 138543618;
      v12 = logIdentifier;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_26B5EF000, v6, OS_LOG_TYPE_INFO, "%{public}@ Deleting all snapshots for group: %{public}@.", buf, 0x16u);
    }

    [v5 _invalidate];
    [(NSMutableDictionary *)self->_snapshotGroupsByID removeObjectForKey:v4];
    [(XBApplicationSnapshotManifestImpl *)self _noteDirtied];
    v8 = [v5 containerPath];
    v10 = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [(XBApplicationSnapshotManifestImpl *)self _access_deletePaths:v9];
  }

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)updateSnapshotsAPFSPurgability:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(XBApplicationSnapshotManifestImpl *)self _access_updateSnapshotsAPFSPurgability:v3];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (BOOL)snapshotsConsideredUnpurgableByAPFS
{
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v3 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsConsideredUnpurgableByAPFS];
  os_unfair_lock_unlock(&self->_accessLock);
  return v3;
}

- (void)deleteAllSnapshots
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v3 = XBLogFileManifest();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(XBApplicationSnapshotManifestImpl *)self bundleIdentifier];
    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&dword_26B5EF000, v3, OS_LOG_TYPE_INFO, "%{public}@ Deleting all snapshots.", buf, 0xCu);
  }

  [(XBApplicationSnapshotManifestImpl *)self _noteDirtied];
  [(NSMutableDictionary *)self->_snapshotGroupsByID enumerateKeysAndObjectsUsingBlock:&__block_literal_global_274];
  [(NSMutableDictionary *)self->_snapshotGroupsByID removeAllObjects];
  v5 = [(XBApplicationSnapshotManifestImpl *)self containerPath];
  v7 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  [(XBApplicationSnapshotManifestImpl *)self _access_deletePaths:v6];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)beginSnapshotAccessTransaction:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (a3)
  {
    (*(a3 + 2))(a3);
  }

  v7 = +[XBApplicationSnapshotGenerationScheduler sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__XBApplicationSnapshotManifestImpl_beginSnapshotAccessTransaction_completion___block_invoke;
  v9[3] = &unk_279CF9A18;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 performImageGenerationAsync:v9];
}

void __79__XBApplicationSnapshotManifestImpl_beginSnapshotAccessTransaction_completion___block_invoke(uint64_t a1)
{
  v1 = __ManifestSerialWorkQueue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__XBApplicationSnapshotManifestImpl_beginSnapshotAccessTransaction_completion___block_invoke_2;
  v3[3] = &unk_279CF9A18;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(v1, v3);
}

void __79__XBApplicationSnapshotManifestImpl_beginSnapshotAccessTransaction_completion___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 100));
  os_unfair_lock_lock((*(a1 + 32) + 100));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__XBApplicationSnapshotManifestImpl_beginSnapshotAccessTransaction_completion___block_invoke_3;
  v3[3] = &unk_279CF99F0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 _access_accessSnapshotsWithBlock:0 completion:v3];
  os_unfair_lock_unlock((*(a1 + 32) + 100));
}

void __79__XBApplicationSnapshotManifestImpl_beginSnapshotAccessTransaction_completion___block_invoke_3(uint64_t a1)
{
  v1 = __ManifestCallOutQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__XBApplicationSnapshotManifestImpl_beginSnapshotAccessTransaction_completion___block_invoke_4;
  block[3] = &unk_279CF99F0;
  v3 = *(a1 + 32);
  dispatch_async(v1, block);
}

uint64_t __79__XBApplicationSnapshotManifestImpl_beginSnapshotAccessTransaction_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)_snapshotPredicateForRequest:(id)a3
{
  v3 = a3;
  v4 = +[XBApplicationSnapshotPredicate predicate];
  v5 = [v3 launchInterfaceIdentifier];
  if (v5)
  {
    [v4 setLaunchInterfaceIdentifier:v5];
  }

  v6 = [v3 urlSchemeName];
  [v4 setScheme:v6];

  [v4 setContentTypeMask:2];
  [v3 referenceSize];
  [v4 setReferenceSize:?];
  [v4 setInterfaceOrientationMask:{XBInterfaceOrientationMaskForInterfaceOrientationPair(objc_msgSend(v3, "interfaceOrientation"))}];
  [v4 setStatusBarStateMask:{XBStatusBarStateMaskForStatusBarState(objc_msgSend(v3, "statusBarState"))}];
  [v4 setUserInterfaceStyle:{objc_msgSend(v3, "userInterfaceStyle")}];
  v7 = [v3 customSafeAreaInsets];
  [v4 setCustomSafeAreaInsets:v7];

  return v4;
}

+ (void)_configureSnapshot:(id)a3 withCompatibilityInfo:(id)a4 forLaunchRequest:(id)a5
{
  v25 = a3;
  v7 = a5;
  v8 = a4;
  v9 = [v7 launchInterfaceIdentifier];
  [v25 setLaunchInterfaceIdentifier:v9];
  v10 = [v8 defaultLaunchInterface];

  v11 = [v10 identifier];
  v12 = [v11 isEqualToString:v9];

  if ((v12 & 1) == 0)
  {
    [v25 setName:v9];
  }

  v13 = [v7 urlSchemeName];
  [v25 setScheme:v13];

  [v25 setContentType:1];
  v14 = [v7 displayConfiguration];
  [v7 referenceSize];
  v16 = v15;
  v18 = v17;
  [v14 bounds];
  v21 = v18 == v20 && v16 == v19;
  [v25 setFullScreen:v21];
  [v7 referenceSize];
  [v25 setReferenceSize:?];
  [v14 scale];
  [v25 setImageScale:?];
  [v25 setInterfaceOrientation:{objc_msgSend(v7, "interfaceOrientation")}];
  v22 = [v7 statusBarState];
  v23 = objc_alloc_init(XBMutableStatusBarSettings);
  [(XBMutableStatusBarSettings *)v23 setHidden:v22 == 0];
  [(XBMutableStatusBarSettings *)v23 setBackgroundActivityEnabled:v22 == 2];
  [v25 setStatusBarSettings:v23];
  [v25 setUserInterfaceStyle:{objc_msgSend(v7, "userInterfaceStyle")}];
  v24 = [v7 customSafeAreaInsets];

  [v25 setCustomSafeAreaInsets:v24];
}

- (id)_generatableSnapshotForGroupID:(id)a3 generationContext:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [XBApplicationSnapshotManifestImpl _generatableSnapshotForGroupID:generationContext:];
  }

  v8 = [(XBApplicationSnapshotManifestImpl *)self _createSnapshotWithGroupID:v6 generationContext:v7];
  [(XBApplicationSnapshotManifestImpl *)self _addSnapshotToGroup:v8];
  v9 = XBLogFileManifest();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    logIdentifier = self->_logIdentifier;
    v11 = [v8 logIdentifier];
    v17 = 138543874;
    v18 = logIdentifier;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_26B5EF000, v9, OS_LOG_TYPE_INFO, "%{public}@ groupID: [%@] Creating temporary snapshot %@ with generation context.", &v17, 0x20u);
  }

  v12 = [v7 launchRequest];
  v13 = [v7 applicationCompatibilityInfo];
  v14 = [v13 launchInterfaceIdentifierForRequest:v12];
  [v12 setLaunchInterfaceIdentifier:v14];

  [XBApplicationSnapshotManifestImpl _configureSnapshot:v8 withCompatibilityInfo:v13 forLaunchRequest:v12];
  v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:2.0];
  [v8 setExpirationDate:v15];

  [(XBApplicationSnapshotManifestImpl *)self _reapExpiredAndInvalidSnapshots];

  return v8;
}

- (id)_createSnapshotWithGroupID:(id)a3 generationContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [XBApplicationSnapshot alloc];
  containerIdentity = self->_containerIdentity;
  v10 = [(XBSnapshotManifestIdentity *)self->_identity store];
  v11 = [(XBApplicationSnapshot *)v8 _initWithContainerIdentity:containerIdentity store:v10 groupID:v7 generationContext:v6];

  return v11;
}

- (void)_addSnapshotToGroup:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(XBApplicationSnapshotManifestImpl *)self _access_addSnapshotToGroup:v4];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)_access_addSnapshotToGroup:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4)
  {
    [XBApplicationSnapshotManifestImpl _access_addSnapshotToGroup:];
    v4 = 0;
  }

  v5 = [v4 groupID];

  if (!v5)
  {
    [XBApplicationSnapshotManifestImpl _access_addSnapshotToGroup:];
  }

  os_unfair_lock_assert_owner(&self->_accessLock);
  v6 = [v8 groupID];
  v7 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotGroupForID:v6 creatingIfNeeded:1];

  [v7 addSnapshot:v8];
}

- (void)_synchronizeDataStoreWithCompletion:(id)a3
{
  if (!a3)
  {
    a3 = &__block_literal_global_281;
  }

  [(XBApplicationSnapshotManifestImpl *)self _scheduleArchivingIfNecessaryWithCompletion:a3];
}

- (void)archive
{
  v3 = dispatch_semaphore_create(0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__XBApplicationSnapshotManifestImpl_archive__block_invoke;
  v5[3] = &unk_279CF9280;
  v6 = v3;
  v4 = v3;
  [(XBApplicationSnapshotManifestImpl *)self _scheduleArchivingIfNecessaryWithDelay:v5 completion:0.0];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_scheduleArchivingIfNecessaryWithDelay:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = __ManifestArchiveSchedulingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__XBApplicationSnapshotManifestImpl__scheduleArchivingIfNecessaryWithDelay_completion___block_invoke;
  block[3] = &unk_279CF9A68;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(v7, block);
}

void __87__XBApplicationSnapshotManifestImpl__scheduleArchivingIfNecessaryWithDelay_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 97) & 1) == 0 && *(v2 + 96) == 1)
  {
    *(v2 + 97) = 1;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __87__XBApplicationSnapshotManifestImpl__scheduleArchivingIfNecessaryWithDelay_completion___block_invoke_2;
    v20[3] = &unk_279CF9280;
    v20[4] = *(a1 + 32);
    v3 = MEMORY[0x26D67C6A0](v20);
    v4 = *(a1 + 48);
    if (v4 == 0.0)
    {
      dispatch_sync(__ManifestSerialWorkQueue, v3);
    }

    else
    {
      v5 = dispatch_time(0, (v4 * 1000000000.0));
      v6 = __ManifestSerialWorkQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __87__XBApplicationSnapshotManifestImpl__scheduleArchivingIfNecessaryWithDelay_completion___block_invoke_4;
      v18 = &unk_279CF99F0;
      v19 = v3;
      dispatch_after(v5, v6, &v15);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    if (*(v8 + 97) == 1)
    {
      if (!*(v8 + 88))
      {
        v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
        v10 = *(a1 + 32);
        v11 = *(v10 + 88);
        *(v10 + 88) = v9;

        v7 = *(a1 + 40);
      }

      v12 = [v7 copy];
      v13 = *(*(a1 + 32) + 88);
      v14 = MEMORY[0x26D67C6A0]();
      [v13 addObject:v14];
    }

    else
    {
      v12 = dispatch_get_global_queue(21, 0);
      dispatch_async(v12, v7);
    }
  }
}

void __87__XBApplicationSnapshotManifestImpl__scheduleArchivingIfNecessaryWithDelay_completion___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 100));
  os_unfair_lock_lock((*(a1 + 32) + 100));
  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = __Block_byref_object_copy__2;
  v7 = __Block_byref_object_dispose__2;
  v8 = 0;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __87__XBApplicationSnapshotManifestImpl__scheduleArchivingIfNecessaryWithDelay_completion___block_invoke_3;
  v2[3] = &unk_279CF9A40;
  v2[4] = *(a1 + 32);
  v2[5] = &v3;
  dispatch_sync(__ManifestArchiveSchedulingQueue, v2);
  [*(a1 + 32) _access_doArchiveWithCompletions:v4[5]];
  [*(a1 + 32) _workloop_checkClientCount];
  os_unfair_lock_unlock((*(a1 + 32) + 100));
  _Block_object_dispose(&v3, 8);
}

void __87__XBApplicationSnapshotManifestImpl__scheduleArchivingIfNecessaryWithDelay_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 80))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(v1 + 88));
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    *(v3 + 88) = 0;

    *(*(a1 + 32) + 96) = 0;
    v1 = *(a1 + 32);
  }

  *(v1 + 97) = 0;
}

- (void)_handleMemoryPressure
{
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(XBApplicationSnapshotManifestImpl *)self _access_purgeSnapshotsWithProtectedContent];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)_access_doArchiveWithCompletions:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_accessLock);
  [(XBApplicationSnapshotManifestImpl *)self _access_workloop_reapExpiredAndInvalidSnapshots];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(NSMutableDictionary *)self->_snapshotGroupsByID allValues];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v28 + 1) + 8 * v9) snapshots];
        v11 = [v10 count];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = [(XBApplicationSnapshotManifestImpl *)self bundleIdentifier];
  v14 = [(XBSnapshotManifestIdentity *)self->_identity store];
  v15 = XBLogFileManifest();
  v16 = v15;
  if (v12)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      logIdentifier = self->_logIdentifier;
      *buf = 138543618;
      v33 = logIdentifier;
      v34 = 2048;
      v35 = self;
      _os_log_impl(&dword_26B5EF000, v16, OS_LOG_TYPE_INFO, "%{public}@ Archiving manifest (%p).", buf, 0x16u);
    }

    v27 = 0;
    v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v27];
    v19 = v27;
    if (!v18)
    {
      v20 = XBLogFileManifest();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [XBApplicationSnapshotManifestImpl _access_doArchiveWithCompletions:];
      }
    }

    [v14 persistManifestData:v18 forBundleIdentifier:v13];
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_logIdentifier;
      *buf = 138543362;
      v33 = v21;
      _os_log_impl(&dword_26B5EF000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ We don't have any snapshots, so we're clearing our manifest data.", buf, 0xCu);
    }

    [v14 clearManifestDataForBundleIdentifier:v13];
  }

  if ([v4 count])
  {
    v22 = dispatch_get_global_queue(21, 0);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __70__XBApplicationSnapshotManifestImpl__access_doArchiveWithCompletions___block_invoke;
    v23[3] = &unk_279CF9108;
    v24 = v14;
    v25 = v13;
    v26 = v4;
    dispatch_async(v22, v23);
  }
}

void __70__XBApplicationSnapshotManifestImpl__access_doArchiveWithCompletions___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__XBApplicationSnapshotManifestImpl__access_doArchiveWithCompletions___block_invoke_2;
  v3[3] = &unk_279CF9280;
  v4 = *(a1 + 48);
  [v1 synchronizeForBundleIdentifier:v2 withCompletion:v3];
}

void __70__XBApplicationSnapshotManifestImpl__access_doArchiveWithCompletions___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (BOOL)_validateWithContainerIdentity:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [XBApplicationSnapshotManifestImpl _validateWithContainerIdentity:];
  }

  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(XBApplicationSnapshotManifestImpl *)self _access_validateWithContainerIdentity:v4];
  os_unfair_lock_unlock(&self->_accessLock);

  return v5;
}

- (BOOL)_access_validateWithContainerIdentity:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [XBApplicationSnapshotManifestImpl _access_validateWithContainerIdentity:];
  }

  os_unfair_lock_assert_owner(&self->_accessLock);
  [(XBApplicationSnapshotManifestImpl *)self _setContainerIdentity:v4];
  v5 = [(NSMutableDictionary *)self->_snapshotGroupsByID copy];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__XBApplicationSnapshotManifestImpl__access_validateWithContainerIdentity___block_invoke;
  v21[3] = &unk_279CF9A90;
  v6 = v4;
  v22 = v6;
  v23 = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v21];
  v7 = [v6 snapshotContainerPath];
  if ([(NSMutableDictionary *)self->_snapshotGroupsByID count])
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    v9 = XBLogFileManifest();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(XBApplicationSnapshotManifestImpl *)self bundleIdentifier];
      *buf = 138543618;
      v25 = v10;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_26B5EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Manifest is empty; purging everything at %@", buf, 0x16u);
    }

    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = 0;
    v12 = [v11 removeItemAtPath:v7 error:&v20];
    v13 = v20;

    if (v12)
    {
      goto LABEL_17;
    }

    v14 = [v13 domain];
    if ([v14 isEqualToString:*MEMORY[0x277CCA050]])
    {
      v15 = [v13 code];

      if (v15 == 4)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
    }

    v16 = XBLogFileManifest();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      logIdentifier = self->_logIdentifier;
      *buf = 138543874;
      v25 = logIdentifier;
      v26 = 2114;
      v27 = v7;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&dword_26B5EF000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Error removing snapshotContainer for purge at %{public}@: %{public}@", buf, 0x20u);
    }

    goto LABEL_17;
  }

LABEL_18:
  v17 = [(NSMutableDictionary *)self->_snapshotGroupsByID count]!= 0;

  return v17;
}

void __75__XBApplicationSnapshotManifestImpl__access_validateWithContainerIdentity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 _validateWithContainerIdentity:*(a1 + 32)] & 1) == 0)
  {
    v7 = XBLogFileManifest();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 40) + 112);
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_26B5EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ group isn't valid. removing from snapshotGroupsByID and will be culled later: %@", &v9, 0x16u);
    }

    [*(*(a1 + 40) + 40) removeObjectForKey:v5];
  }
}

- (void)_reapExpiredAndInvalidSnapshots
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__XBApplicationSnapshotManifestImpl__reapExpiredAndInvalidSnapshots__block_invoke;
  block[3] = &unk_279CF9280;
  block[4] = self;
  dispatch_async(__ManifestSerialWorkQueue, block);
}

void __68__XBApplicationSnapshotManifestImpl__reapExpiredAndInvalidSnapshots__block_invoke(uint64_t a1)
{
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 100));
  os_unfair_lock_lock((*(a1 + 32) + 100));
  [*(a1 + 32) _access_workloop_reapExpiredAndInvalidSnapshots];
  v2 = (*(a1 + 32) + 100);

  os_unfair_lock_unlock(v2);
}

void __84__XBApplicationSnapshotManifestImpl__access_workloop_reapExpiredAndInvalidSnapshots__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 100));
  os_unfair_lock_lock(*v1 + 25);
  v2 = XBLogSnapshotReaper();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __84__XBApplicationSnapshotManifestImpl__access_workloop_reapExpiredAndInvalidSnapshots__block_invoke_cold_1();
  }

  [*&(*v1)[14]._os_unfair_lock_opaque invalidate];
  v3 = *&(*v1)[14]._os_unfair_lock_opaque;
  *&(*v1)[14]._os_unfair_lock_opaque = 0;

  v4 = *v1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__XBApplicationSnapshotManifestImpl__access_workloop_reapExpiredAndInvalidSnapshots__block_invoke_290;
  v5[3] = &unk_279CF9280;
  v5[4] = v4;
  [(os_unfair_lock_s *)v4 _access_accessSnapshotsWithBlock:0 completion:v5];
  os_unfair_lock_unlock(*v1 + 25);
}

- (void)_access_accessSnapshotsWithBlock:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_26B5EF000, "XBCapture", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  os_unfair_lock_assert_owner(&self->_accessLock);
  pendingOperations = self->_pendingOperations;
  if (!pendingOperations)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCAA00]);
    imageAccessFileManger = self->_imageAccessFileManger;
    self->_imageAccessFileManger = v10;

    pendingOperations = self->_pendingOperations;
  }

  self->_pendingOperations = pendingOperations + 1;
  v12 = __ManifestImageAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__XBApplicationSnapshotManifestImpl__access_accessSnapshotsWithBlock_completion___block_invoke;
  block[3] = &unk_279CF9AE0;
  block[4] = self;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  dispatch_async(v12, block);

  os_activity_scope_leave(&state);
}

void __81__XBApplicationSnapshotManifestImpl__access_accessSnapshotsWithBlock_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1 + 32) + 48));
  }

  v3 = __ManifestSerialWorkQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__XBApplicationSnapshotManifestImpl__access_accessSnapshotsWithBlock_completion___block_invoke_2;
  v4[3] = &unk_279CF9A18;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  dispatch_async(v3, v4);
}

void __81__XBApplicationSnapshotManifestImpl__access_accessSnapshotsWithBlock_completion___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 100));
  os_unfair_lock_lock((*(a1 + 32) + 100));
  --*(*(a1 + 32) + 80);
  v2 = *(a1 + 32);
  if (!*(v2 + 80))
  {
    v3 = *(v2 + 48);
    *(v2 + 48) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }

  [*(a1 + 32) _scheduleArchivingIfNecessaryWithCompletion:0];
  v5 = (*(a1 + 32) + 100);

  os_unfair_lock_unlock(v5);
}

- (void)_access_deletePaths:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_accessLock);
  if ([v4 count])
  {
    v5 = XBLogFileManifest();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = self->_logIdentifier;
      *buf = 138543618;
      v12 = logIdentifier;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_26B5EF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Deleting paths: %@", buf, 0x16u);
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__XBApplicationSnapshotManifestImpl__access_deletePaths___block_invoke;
  v8[3] = &unk_279CF9B30;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [(XBApplicationSnapshotManifestImpl *)self _access_accessSnapshotsWithBlock:v8 completion:0];
}

void __57__XBApplicationSnapshotManifestImpl__access_deletePaths___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__XBApplicationSnapshotManifestImpl__access_deletePaths___block_invoke_2;
  v7[3] = &unk_279CF9B08;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __57__XBApplicationSnapshotManifestImpl__access_deletePaths___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = 0;
  v5 = [v4 removeItemAtPath:v3 error:&v12];
  v6 = v12;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    v8 = [v6 domain];
    if ([v8 isEqualToString:*MEMORY[0x277CCA050]])
    {
      v9 = [v7 code];

      if (v9 == 4)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v10 = XBLogFileManifest();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(a1 + 40) + 112);
      *buf = 138543874;
      v14 = v11;
      v15 = 2112;
      v16 = v3;
      v17 = 2114;
      v18 = v7;
      _os_log_error_impl(&dword_26B5EF000, v10, OS_LOG_TYPE_ERROR, "%{public}@ error deleting path %@: %{public}@", buf, 0x20u);
    }
  }

LABEL_9:
}

- (void)_access_deleteSnapshots:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_accessLock);
  v5 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v28;
    *&v8 = 138543874;
    v24 = v8;
    do
    {
      v12 = 0;
      v13 = v10;
      v25 = v9;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v27 + 1) + 8 * v12);
        v26 = v13;
        v15 = [v14 _shouldDeleteFileOnPurge:{&v26, v24}];
        v10 = v26;

        if (v15)
        {
          v16 = XBLogFileManifest();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v11;
            v18 = v6;
            v19 = v5;
            logIdentifier = self->_logIdentifier;
            v21 = [v14 logIdentifier];
            *buf = v24;
            v32 = logIdentifier;
            v5 = v19;
            v6 = v18;
            v11 = v17;
            v9 = v25;
            v33 = 2114;
            v34 = v21;
            v35 = 2114;
            v36 = v10;
            _os_log_impl(&dword_26B5EF000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Deleting snapshot %{public}@ for reason: %{public}@", buf, 0x20u);
          }

          [(XBApplicationSnapshotManifestImpl *)self _access_gatherPaths:v5 forSnapshot:v14];
        }

        v22 = [v14 groupID];
        v23 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotGroupForID:v22 creatingIfNeeded:0];

        if ([v23 removeSnapshot:v14])
        {
          [(XBApplicationSnapshotManifestImpl *)self _noteDirtied];
        }

        [v14 _invalidate];

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  [(XBApplicationSnapshotManifestImpl *)self _access_deletePaths:v5];
}

void __79__XBApplicationSnapshotManifestImpl__access_purgeSnapshotsWithProtectedContent__block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(*(*(a1 + 40) + 8) + 40) allObjects];
  [v4 manifest:v2 didPurgeProtectedContentSnapshotsWithGroupIdentifiers:v3];
}

- (void)_access_updateSnapshotsAPFSPurgability:(BOOL)a3
{
  os_unfair_lock_assert_owner(&self->_accessLock);
  snapshotGroupsByID = self->_snapshotGroupsByID;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__XBApplicationSnapshotManifestImpl__access_updateSnapshotsAPFSPurgability___block_invoke;
  v6[3] = &unk_279CF9B80;
  v7 = a3;
  v6[4] = self;
  [(NSMutableDictionary *)snapshotGroupsByID enumerateKeysAndObjectsUsingBlock:v6];
}

void __76__XBApplicationSnapshotManifestImpl__access_updateSnapshotsAPFSPurgability___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [a3 snapshots];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v42 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v29;
    *&v5 = 138544386;
    v24 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        if ([v9 fileLocation] != 3)
        {
          v10 = XBApplicationSnapshotContentTypeMaskForContentType([v9 contentType]);
          v11 = [v9 path];
          v12 = [v9 path];
          v13 = [v12 fileSystemRepresentation];

          if (v13)
          {
            v14 = (v10 & 6) != 0 ? 0 : 67588;
            v15 = (v10 & 6) != 0 ? 67588 : 66564;
            v16 = *(a1 + 40) ? v14 : v15;
            v26 = 0;
            v27 = v16;
            if (!fsctl(v13, 0x40084A47uLL, &v26, 0) && v27 != v26)
            {
              v17 = fsctl(v13, 0xC0084A44uLL, &v27, 0);
              if (v17)
              {
                v18 = v17;
                v19 = XBLogPurge();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  v20 = *(*(a1 + 32) + 112);
                  v21 = __error();
                  v22 = strerror(*v21);
                  *buf = v24;
                  v33 = v20;
                  v34 = 2112;
                  v35 = v11;
                  v36 = 1024;
                  v37 = v18;
                  v38 = 2080;
                  v39 = v22;
                  v40 = 2048;
                  v41 = v27;
                  _os_log_error_impl(&dword_26B5EF000, v19, OS_LOG_TYPE_ERROR, "%{public}@ Failed to mark %@ as purgeable %d (%s) (flags 0x%llx)", buf, 0x30u);
                }
              }
            }
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v23 = [v3 countByEnumeratingWithState:&v28 objects:v42 count:16];
      v6 = v23;
    }

    while (v23);
  }
}

- (BOOL)_access_snapshotsConsideredUnpurgableByAPFS
{
  v20[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_accessLock);
  v3 = [(XBApplicationSnapshotManifestImpl *)self defaultGroupIdentifier];
  v20[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v5 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsForGroupIDs:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 fileLocation] != 3)
        {
          v11 = [v10 path];
          v12 = [v11 fileSystemRepresentation];

          if (v12)
          {
            v14 = 0;
            if (!fsctl(v12, 0x40084A47uLL, &v14, 0) && (v14 & 0xC00) == 0)
            {
              LOBYTE(v7) = 1;
              goto LABEL_14;
            }
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v7;
}

- (void)_access_gatherPaths:(id)a3 forSnapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_accessLock);
  v8 = [v7 path];

  if (v8)
  {
    v9 = [v7 path];
    [v6 addObject:v9];
  }

  v10 = [v7 variants];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__XBApplicationSnapshotManifestImpl__access_gatherPaths_forSnapshot___block_invoke;
  v12[3] = &unk_279CF9BA8;
  v13 = v6;
  v11 = v6;
  [v10 enumerateObjectsUsingBlock:v12];
}

uint64_t __69__XBApplicationSnapshotManifestImpl__access_gatherPaths_forSnapshot___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)_access_snapshotsForGroupIDs:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_accessLock);
  v5 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_snapshotGroupsByID objectForKey:*(*(&v15 + 1) + 8 * i), v15];
        v12 = [v11 snapshots];
        v13 = [v12 allObjects];
        [v5 addObjectsFromArray:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_access_snapshotsForGroupIDs:(id)a3 matchingPredicate:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v23 = self;
  os_unfair_lock_assert_owner(&self->_accessLock);
  v8 = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v14 = [(NSMutableDictionary *)v23->_snapshotGroupsByID objectForKey:v13];
        v15 = [v14 snapshots];

        v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v25;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v25 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v24 + 1) + 8 * j);
              if ([v7 evaluateWithObject:v20])
              {
                [v8 addObject:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v17);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  return v8;
}

- (id)_access_snapshotsMatchingPredicate:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_accessLock);
  v5 = [(NSMutableDictionary *)self->_snapshotGroupsByID allKeys];
  v6 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsForGroupIDs:v5 matchingPredicate:v4];

  return v6;
}

- (id)_access_snapshotGroupForID:(id)a3 creatingIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_accessLock);
  v7 = [(NSMutableDictionary *)self->_snapshotGroupsByID objectForKey:v6];
  v8 = v7;
  if (v6)
  {
    if (!v7 && v4)
    {
      v10 = [XBApplicationSnapshotGroup alloc];
      v11 = [(XBApplicationSnapshotManifestImpl *)self containerIdentity];
      v8 = [(XBApplicationSnapshotGroup *)v10 _initWithIdentifier:v6 containerIdentity:v11];

      [(NSMutableDictionary *)self->_snapshotGroupsByID setObject:v8 forKey:v6];
    }
  }

  return v8;
}

- (BOOL)_imageAccessQueue_saveData:(id)a3 forSnapshot:(id)a4
{
  v48[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssert();
  if (!v6)
  {
    [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
  }

  if ([v6 length])
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
    if (v7)
    {
      goto LABEL_5;
    }
  }

  [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
LABEL_5:
  v8 = [v7 _configureDefaultPathWithinGroupForFormat:objc_msgSend(objc_opt_class(), "_outputFormatForSnapshot:", v7)];
  if (!v8)
  {
    [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
  }

  v9 = [v8 stringByDeletingLastPathComponent];
  if (!XBEnsureDirectoryExistsAtPath(v9))
  {
    v10 = XBLogFileManifest();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
    }
  }

  v11 = open([v8 fileSystemRepresentation], 1793, 438);
  if (v11 == -1)
  {
    v22 = XBLogFileManifest();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
    }

    goto LABEL_58;
  }

  v12 = v11;
  v13 = XBApplicationSnapshotContentTypeMaskForContentType([v7 contentType]) & 6;
  v14 = 2;
  if (v13)
  {
    v14 = 3;
  }

  if (fcntl(v12, 64, v14) == -1)
  {
    v23 = XBLogFileManifest();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
    }

    goto LABEL_57;
  }

  v15 = [v7 fileFormat];
  v16 = [v6 bytes];
  v17 = [v6 length];
  if (v15 != 1)
  {
    v24 = write(v12, v16, v17);
    goto LABEL_47;
  }

  v18 = v8;
  if (v12 < 0)
  {
    [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
    if (v8)
    {
LABEL_18:
      if (v16)
      {
        goto LABEL_19;
      }

LABEL_69:
      [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
      if (v17)
      {
        goto LABEL_20;
      }

      goto LABEL_70;
    }
  }

  else if (v8)
  {
    goto LABEL_18;
  }

  [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
  if (!v16)
  {
    goto LABEL_69;
  }

LABEL_19:
  if (v17)
  {
    goto LABEL_20;
  }

LABEL_70:
  [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
LABEL_20:
  [v18 fileSystemRepresentation];
  if (VolumeSupportsCompression())
  {
    v19 = *MEMORY[0x277CED158];
    v48[0] = *MEMORY[0x277CED140];
    v48[1] = v19;
    v20 = *MEMORY[0x277CED138];
    v48[2] = *MEMORY[0x277CED150];
    v48[3] = v20;
    *&v41[16] = MEMORY[0x277CBEC38];
    *&v42 = MEMORY[0x277CBEBF8];
    *v41 = &unk_287C26398;
    *&v41[8] = MEMORY[0x277CBEC38];
    v48[4] = *MEMORY[0x277CED148];
    *(&v42 + 1) = MEMORY[0x277CBEC38];
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v48 count:5];
    if (CreateStreamCompressorQueueWithOptions())
    {
      [v18 fileSystemRepresentation];
      if (CreateStreamCompressor())
      {
        if (WriteToStreamCompressor() == v17)
        {
          if (CloseStreamCompressor())
          {
            v21 = XBLogFileManifest();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
            }
          }

          else
          {
            if (!FinishStreamCompressorQueue())
            {

              if (v17 != -1)
              {
                goto LABEL_48;
              }

              goto LABEL_44;
            }

            v21 = XBLogFileManifest();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
            }
          }
        }

        else
        {
          v21 = XBLogFileManifest();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
          }
        }
      }

      else
      {
        v21 = XBLogFileManifest();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v26 = __error();
          v27 = strerror(*v26);
          *buf = 138412546;
          v45 = v18;
          v46 = 2080;
          v47 = v27;
          _os_log_impl(&dword_26B5EF000, v21, OS_LOG_TYPE_DEFAULT, "CreateStreamCompressor() failed for %@: (%s)", buf, 0x16u);
        }
      }
    }

    else
    {
      v21 = XBLogFileManifest();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
      }
    }

    v25 = v40;
  }

  else
  {
    v25 = XBLogFileManifest();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
    }
  }

LABEL_44:
  v28 = v13;
  v29 = XBLogFileManifest();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *v41 = 138543618;
    *&v41[4] = logIdentifier;
    *&v41[12] = 2112;
    *&v41[14] = v18;
    _os_log_impl(&dword_26B5EF000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Compressed write for %@ failed; falling back to uncompressed write", v41, 0x16u);
  }

  v24 = write(v12, [v6 bytes], objc_msgSend(v6, "length"));
  v13 = v28;
LABEL_47:
  if (v24 == -1)
  {
    v23 = XBLogFileManifest();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
    }

LABEL_57:

    close(v12);
LABEL_58:
    v33 = 0;
    goto LABEL_59;
  }

LABEL_48:
  v31 = 67588;
  if (v13)
  {
    v31 = 0;
  }

  v48[0] = v31;
  v32 = ffsctl(v12, 0xC0084A44uLL, v48, 0);
  v33 = v32 == 0;
  if (v32)
  {
    v34 = v32;
    v35 = XBLogFileManifest();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v37 = self->_logIdentifier;
      v38 = __error();
      v39 = strerror(*v38);
      *v41 = 138544386;
      *&v41[4] = v37;
      *&v41[12] = 2112;
      *&v41[14] = v8;
      *&v41[22] = 1024;
      LODWORD(v42) = v34;
      WORD2(v42) = 2080;
      *(&v42 + 6) = v39;
      HIWORD(v42) = 2048;
      v43 = v48[0];
      _os_log_error_impl(&dword_26B5EF000, v35, OS_LOG_TYPE_ERROR, "%{public}@ Failed to mark %@ as purgeable %d (%s) (flags 0x%llx)", v41, 0x30u);
    }
  }

  close(v12);
LABEL_59:

  return v33;
}

- (void)_workloop_decrementClientCount
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(__ManifestWorkloop);
  --self->_clientCount;
  v3 = XBLogFileManifest();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    logIdentifier = self->_logIdentifier;
    clientCount = self->_clientCount;
    v6 = 138543618;
    v7 = logIdentifier;
    v8 = 1024;
    v9 = clientCount;
    _os_log_impl(&dword_26B5EF000, v3, OS_LOG_TYPE_INFO, "%{public}@ Decrementing client count: %u", &v6, 0x12u);
  }

  [(XBApplicationSnapshotManifestImpl *)self _workloop_checkClientCount];
}

_BYTE *__69__XBApplicationSnapshotManifestImpl__workloop_reallyCheckClientCount__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[96] & 1) == 0)
  {
    result = [result _invalidate];
    if (result)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

+ (int64_t)_outputFormatForSnapshot:(id)a3
{
  v3 = a3;
  if (_outputFormatForSnapshot__onceToken != -1)
  {
    +[XBApplicationSnapshotManifestImpl _outputFormatForSnapshot:];
  }

  v4 = _outputFormatForSnapshot__supportsASTC;
  if (_outputFormatForSnapshot__wideColorDisplay != 1)
  {
    if (_outputFormatForSnapshot__supportsASTC)
    {
      v5 = [MEMORY[0x277D75418] currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (v6 || [v3 contentType])
      {
        v4 = 1;
      }

      else if ([v3 isImageOpaque])
      {
        v4 = 3;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t __62__XBApplicationSnapshotManifestImpl__outputFormatForSnapshot___block_invoke()
{
  _outputFormatForSnapshot__supportsASTC = MGGetBoolAnswer();
  result = MGGetBoolAnswer();
  _outputFormatForSnapshot__wideColorDisplay = result;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:3 forKey:@"version"];
  if ([(NSMutableDictionary *)self->_snapshotGroupsByID count])
  {
    [v4 encodeObject:self->_snapshotGroupsByID forKey:@"snapshots"];
  }
}

- (XBApplicationSnapshotManifestImpl)initWithCoder:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = XBApplicationSnapshotManifestImpl;
  v5 = [(XBApplicationSnapshotManifestImpl *)&v20 init];
  v6 = v5;
  if (v5)
  {
    [(XBApplicationSnapshotManifestImpl *)v5 _commonInit];
    v7 = [v4 decodeIntegerForKey:@"version"];
    if (v7 < 3)
    {
      v16 = v7;
      v17 = XBLogFileManifest();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        logIdentifier = v6->_logIdentifier;
        *buf = 138543874;
        v22 = logIdentifier;
        v23 = 1024;
        v24 = v16;
        v25 = 1024;
        v26 = 3;
        _os_log_impl(&dword_26B5EF000, v17, OS_LOG_TYPE_INFO, "%{public}@ Snapshot manifest out of date (currVers=%d, newVers=%d).", buf, 0x18u);
      }

      [(XBApplicationSnapshotManifestImpl *)v6 _invalidate];
      v6 = 0;
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = MEMORY[0x277CBEB98];
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
      v13 = [v4 decodeObjectOfClasses:v12 forKey:@"snapshots"];
      v14 = [v4 error];
      if (v14)
      {
        v15 = XBLogFileManifest();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [XBApplicationSnapshotManifestImpl initWithCoder:];
        }

        [(XBApplicationSnapshotManifestImpl *)v6 _invalidate];
        v6 = 0;
      }

      else
      {
        objc_storeStrong(&v6->_snapshotGroupsByID, v13);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  return v6;
}

- (id)_descriptionForStateCaptureWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(XBApplicationSnapshotManifestImpl *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__XBApplicationSnapshotManifestImpl__descriptionForStateCaptureWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279CF9530;
  v9[4] = self;
  v6 = v5;
  v10 = v6;
  v11 = &v12;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];
  if (*(v13 + 24) == 1)
  {
    v7 = [v6 build];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __84__XBApplicationSnapshotManifestImpl__descriptionForStateCaptureWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _allSnapshotGroups];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__XBApplicationSnapshotManifestImpl__descriptionForStateCaptureWithMultilinePrefix___block_invoke_2;
  v5[3] = &unk_279CF9BD0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v5];
}

void __84__XBApplicationSnapshotManifestImpl__descriptionForStateCaptureWithMultilinePrefix___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 activeMultilinePrefix];
  v8 = [v4 descriptionForStateCaptureWithMultilinePrefix:v5];

  v6 = v8;
  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = [*(a1 + 32) appendObject:v8 withName:0];
    v6 = v8;
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(XBApplicationSnapshotManifestImpl *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(XBApplicationSnapshotManifestImpl *)self succinctDescriptionBuilder];
  v6 = [v5 appendUnsignedInteger:self->_clientCount withName:@"clientCount"];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__XBApplicationSnapshotManifestImpl_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279CF9508;
  v7 = v5;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v4 block:v10];

  v8 = v7;
  return v7;
}

void __75__XBApplicationSnapshotManifestImpl_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) containerIdentity];
  v4 = [v2 appendObject:v3 withName:@"containerIdentity"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) _allSnapshotGroups];
  [v5 appendArraySection:v6 withName:@"snapshots" skipIfEmpty:1];
}

+ (void)acquireManifestForContainerIdentity:store:creatingIfNecessary:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"containerIdentity" object:? file:? lineNumber:? description:?];
}

+ (void)acquireManifestForContainerIdentity:store:creatingIfNecessary:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"store" object:? file:? lineNumber:? description:?];
}

void __99__XBApplicationSnapshotManifestImpl_acquireManifestForContainerIdentity_store_creatingIfNecessary___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_6_0(&dword_26B5EF000, v0, v1, "acquireManifestForContainerIdentity:store:creatingIfNecessary: [%{public}@] Unable to unarchive manifest from store: %@");
}

void __56__XBApplicationSnapshotManifestImpl_relinquishManifest___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v3 = v2;
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(v3 + 48) object:*(v3 + 56) file:@"XBApplicationSnapshotManifest.m" lineNumber:548 description:{@"manifestToRelinquish does not match the manifest that we think we have : %@ != %@", *v1, v0}];
}

+ (void)_workloop_noteManifestInvalidated:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"XBApplicationSnapshotManifest.m" lineNumber:561 description:{@"invalidatedManifest does not match the manifest that we think we have : %@ != %@", a3, a4}];
}

- (void)snapshotsForGroupIDs:(NSObject *)a3 fetchRequest:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a2 bs_map:&__block_literal_global_237];
  OUTLINED_FUNCTION_1_0();
  v8 = v5;
  OUTLINED_FUNCTION_15(&dword_26B5EF000, a3, v6, "[%@] snapshotsForGroupIDs:fetchRequest: fetchRequest has no predicate; retrieved matchingSnapshots:\n\t%@", v7);
}

- (void)snapshotsForGroupIDs:fetchRequest:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15(v0, v1, v2, v3, v4);
}

- (void)snapshotsForGroupIDs:(NSObject *)a3 fetchRequest:.cold.3(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a2 bs_map:&__block_literal_global_242];
  OUTLINED_FUNCTION_1_0();
  v8 = v5;
  OUTLINED_FUNCTION_15(&dword_26B5EF000, a3, v6, "[%@] END snapshotsForGroupIDs:fetchRequest: returning matchingSnapshots:\n\t%@", v7);
}

- (void)createVariantForSnapshot:withIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"snapshot" object:? file:? lineNumber:? description:?];
}

- (void)createVariantForSnapshot:withIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"variantID" object:? file:? lineNumber:? description:?];
}

- (void)_didGenerateImage:imageGenerationSignal:logIdentifier:imageGeneratedHandler:qos:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x12u);
}

- (void)_didGenerateImage:imageGenerationSignal:logIdentifier:imageGeneratedHandler:qos:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15(v0, v1, v2, v3, v4);
}

- (void)_didGenerateImageData:forSnapshot:imageWasGenerated:imageDataGenerationSignal:logIdentifier:didSaveHandler:qos:writeToFileIfSupported:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15(v0, v1, v2, v3, v4);
}

void __171__XBApplicationSnapshotManifestImpl__didGenerateImageData_forSnapshot_imageWasGenerated_imageDataGenerationSignal_logIdentifier_didSaveHandler_qos_writeToFileIfSupported___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  v3 = v0;
  _os_log_error_impl(&dword_26B5EF000, v1, OS_LOG_TYPE_ERROR, "%{public}@ Error writing snapshot %{public}@ to file", v2, 0x16u);
}

void __171__XBApplicationSnapshotManifestImpl__didGenerateImageData_forSnapshot_imageWasGenerated_imageDataGenerationSignal_logIdentifier_didSaveHandler_qos_writeToFileIfSupported___block_invoke_253_cold_2(uint64_t a1, id *a2)
{
  v7 = [*a2 logIdentifier];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)saveSnapshot:atPath:withContext:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"context" object:? file:? lineNumber:? description:?];
}

- (void)_generatableSnapshotForGroupID:generationContext:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"generationContext" object:? file:? lineNumber:? description:?];
}

- (void)_access_addSnapshotToGroup:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"snapshot" object:? file:? lineNumber:? description:?];
}

- (void)_access_addSnapshotToGroup:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[snapshot groupID]" object:? file:? lineNumber:? description:?];
}

- (void)_validateWithContainerIdentity:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"containerIdentity" object:? file:? lineNumber:? description:?];
}

- (void)_access_validateWithContainerIdentity:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"containerIdentity" object:? file:? lineNumber:? description:?];
}

- (void)_imageAccessQueue_saveData:forSnapshot:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"data != nil" object:? file:? lineNumber:? description:?];
}

- (void)_imageAccessQueue_saveData:forSnapshot:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[data length] != 0" object:? file:? lineNumber:? description:?];
}

- (void)_imageAccessQueue_saveData:forSnapshot:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"snapshot != nil" object:? file:? lineNumber:? description:?];
}

- (void)_imageAccessQueue_saveData:forSnapshot:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  v3 = v2;
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v1 file:@"XBApplicationSnapshotManifest.m" lineNumber:1907 description:{@"generated nil path for snapshot %@", v0}];
}

- (void)_imageAccessQueue_saveData:forSnapshot:.cold.6()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"ssize_t AFSCCompressDataAndWriteToFile(int, NSString *__strong, const void *, size_t)"}];
  [OUTLINED_FUNCTION_7() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (void)_imageAccessQueue_saveData:forSnapshot:.cold.7()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"ssize_t AFSCCompressDataAndWriteToFile(int, NSString *__strong, const void *, size_t)"}];
  [OUTLINED_FUNCTION_7() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (void)_imageAccessQueue_saveData:forSnapshot:.cold.8()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"ssize_t AFSCCompressDataAndWriteToFile(int, NSString *__strong, const void *, size_t)"}];
  [OUTLINED_FUNCTION_7() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (void)_imageAccessQueue_saveData:forSnapshot:.cold.9()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"ssize_t AFSCCompressDataAndWriteToFile(int, NSString *__strong, const void *, size_t)"}];
  [OUTLINED_FUNCTION_7() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (void)_imageAccessQueue_saveData:forSnapshot:.cold.10()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(&dword_26B5EF000, v0, OS_LOG_TYPE_ERROR, "Volume for %@ does not support filesystem compression", v1, 0xCu);
}

- (void)_imageAccessQueue_saveData:forSnapshot:.cold.11()
{
  OUTLINED_FUNCTION_0();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_imageAccessQueue_saveData:forSnapshot:.cold.12()
{
  OUTLINED_FUNCTION_0();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_imageAccessQueue_saveData:forSnapshot:.cold.13()
{
  OUTLINED_FUNCTION_0();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_imageAccessQueue_saveData:forSnapshot:.cold.14()
{
  OUTLINED_FUNCTION_0();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_imageAccessQueue_saveData:forSnapshot:.cold.15()
{
  OUTLINED_FUNCTION_4_0();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)_imageAccessQueue_saveData:forSnapshot:.cold.16()
{
  OUTLINED_FUNCTION_4_0();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)_imageAccessQueue_saveData:forSnapshot:.cold.17()
{
  OUTLINED_FUNCTION_4_0();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

@end