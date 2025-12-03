@interface XBApplicationSnapshotManifestImpl
+ (id)_snapshotPredicateForRequest:(id)request;
+ (id)acquireManifestForContainerIdentity:(id)identity store:(id)store creatingIfNecessary:(BOOL)necessary;
+ (int64_t)_outputFormatForSnapshot:(id)snapshot;
+ (void)_configureSnapshot:(id)snapshot withCompatibilityInfo:(id)info forLaunchRequest:(id)request;
+ (void)_workloop_noteManifestInvalidated:(id)invalidated;
+ (void)initialize;
+ (void)relinquishManifest:(id)manifest;
- (BOOL)_access_snapshotsConsideredUnpurgableByAPFS;
- (BOOL)_access_validateWithContainerIdentity:(id)identity;
- (BOOL)_imageAccessQueue_saveData:(id)data forSnapshot:(id)snapshot;
- (BOOL)_validateWithContainerIdentity:(id)identity;
- (BOOL)snapshotsConsideredUnpurgableByAPFS;
- (XBApplicationSnapshotManifestImpl)init;
- (XBApplicationSnapshotManifestImpl)initWithCoder:(id)coder;
- (id)_access_allSnapshotGroups;
- (id)_access_snapshotGroupForID:(id)d creatingIfNeeded:(BOOL)needed;
- (id)_access_snapshotsForGroupIDs:(id)ds;
- (id)_access_snapshotsForGroupIDs:(id)ds matchingPredicate:(id)predicate;
- (id)_access_snapshotsMatchingPredicate:(id)predicate;
- (id)_allSnapshotGroups;
- (id)_createSnapshotWithGroupID:(id)d generationContext:(id)context;
- (id)_descriptionForStateCaptureWithMultilinePrefix:(id)prefix;
- (id)_generatableSnapshotForGroupID:(id)d generationContext:(id)context;
- (id)_initWithContainerIdentity:(id)identity;
- (id)bundleIdentifier;
- (id)containerPath;
- (id)createSnapshotWithGroupID:(id)d;
- (id)createVariantForSnapshot:(id)snapshot withIdentifier:(id)identifier;
- (id)defaultGroupIdentifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)snapshotsForGroupID:(id)d;
- (id)snapshotsForGroupID:(id)d fetchRequest:(id)request;
- (id)snapshotsForGroupID:(id)d matchingPredicate:(id)predicate;
- (id)snapshotsForGroupIDs:(id)ds;
- (id)snapshotsForGroupIDs:(id)ds fetchRequest:(id)request;
- (id)snapshotsForGroupIDs:(id)ds matchingPredicate:(id)predicate;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_access_accessSnapshotsWithBlock:(id)block completion:(id)completion;
- (void)_access_addSnapshotToGroup:(id)group;
- (void)_access_deletePaths:(id)paths;
- (void)_access_deleteSnapshots:(id)snapshots;
- (void)_access_doArchiveWithCompletions:(id)completions;
- (void)_access_gatherPaths:(id)paths forSnapshot:(id)snapshot;
- (void)_access_purgeSnapshotsWithProtectedContent;
- (void)_access_updateSnapshotsAPFSPurgability:(BOOL)purgability;
- (void)_access_workloop_reapExpiredAndInvalidSnapshots;
- (void)_addSnapshotToGroup:(id)group;
- (void)_commonInit;
- (void)_didGenerateImage:(BOOL)image imageGenerationSignal:(id)signal logIdentifier:(id)identifier imageGeneratedHandler:(id)handler qos:(unsigned int)qos;
- (void)_didGenerateImageData:(id)data forSnapshot:(id)snapshot imageWasGenerated:(BOOL)generated imageDataGenerationSignal:(id)signal logIdentifier:(id)identifier didSaveHandler:(id)handler qos:(unsigned int)qos writeToFileIfSupported:(BOOL)self0;
- (void)_handleMemoryPressure;
- (void)_noteDirtied;
- (void)_reapExpiredAndInvalidSnapshots;
- (void)_scheduleArchivingIfNecessaryWithDelay:(double)delay completion:(id)completion;
- (void)_setContainerIdentity:(id)identity;
- (void)_synchronizeDataStoreWithCompletion:(id)completion;
- (void)_workloop_checkClientCount;
- (void)_workloop_decrementClientCount;
- (void)_workloop_incrementClientCount;
- (void)_workloop_reallyCheckClientCount;
- (void)archive;
- (void)beginSnapshotAccessTransaction:(id)transaction completion:(id)completion;
- (void)beginTrackingImageDeletions;
- (void)dealloc;
- (void)deleteAllSnapshots;
- (void)deleteSnapshot:(id)snapshot;
- (void)deleteSnapshots:(id)snapshots;
- (void)deleteSnapshotsForGroupID:(id)d;
- (void)deleteSnapshotsForGroupID:(id)d matchingPredicate:(id)predicate;
- (void)deleteSnapshotsForGroupID:(id)d predicateBuilder:(id)builder;
- (void)deleteSnapshotsMatchingPredicate:(id)predicate;
- (void)deleteSnapshotsUsingPredicateBuilder:(id)builder;
- (void)encodeWithCoder:(id)coder;
- (void)endTrackingImageDeletions;
- (void)generateImageForSnapshot:(id)snapshot dataProvider:(id)provider options:(unint64_t)options imageGeneratedHandler:(id)handler imageDataSavedHandler:(id)savedHandler;
- (void)purgeSnapshotsWithProtectedContent;
- (void)saveSnapshot:(id)snapshot atPath:(id)path withContext:(id)context;
- (void)updateSnapshotsAPFSPurgability:(BOOL)purgability;
@end

@implementation XBApplicationSnapshotManifestImpl

- (id)defaultGroupIdentifier
{
  identity = [(XBApplicationSnapshotManifestImpl *)self identity];
  defaultGroupIdentifier = [identity defaultGroupIdentifier];

  return defaultGroupIdentifier;
}

- (void)_commonInit
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:0 file:@"XBApplicationSnapshotManifest.m" lineNumber:584 description:{@"Invalid parameter not satisfying: %@", @"self"}];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(XBApplicationSnapshotManifestImpl *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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
        selfCopy = self;
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
  containerIdentity = [(XBApplicationSnapshotManifestImpl *)self containerIdentity];
  bundleIdentifier = [containerIdentity bundleIdentifier];

  return bundleIdentifier;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bundleIdentifier = [(XBApplicationSnapshotManifestImpl *)self bundleIdentifier];
  v5 = [v3 appendObject:bundleIdentifier withName:@"bundleID" skipIfNil:1];

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
  _access_allSnapshotGroups = [(XBApplicationSnapshotManifestImpl *)self _access_allSnapshotGroups];
  v4 = [_access_allSnapshotGroups copy];

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
  if (objc_opt_class() == self)
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

+ (id)acquireManifestForContainerIdentity:(id)identity store:(id)store creatingIfNecessary:(BOOL)necessary
{
  identityCopy = identity;
  storeCopy = store;
  v9 = storeCopy;
  if (identityCopy)
  {
    if (storeCopy)
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
  v16 = identityCopy;
  v17 = v9;
  necessaryCopy = necessary;
  v18 = &v20;
  v11 = v9;
  v12 = identityCopy;
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

+ (void)relinquishManifest:(id)manifest
{
  manifestCopy = manifest;
  v6 = manifestCopy;
  if (manifestCopy)
  {
    identity = [manifestCopy identity];
    v8 = identity;
    if (identity)
    {
      v9 = __ManifestSerialWorkQueue;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__XBApplicationSnapshotManifestImpl_relinquishManifest___block_invoke;
      v10[3] = &unk_279CF9870;
      v11 = identity;
      v12 = v6;
      v13 = a2;
      selfCopy = self;
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

+ (void)_workloop_noteManifestInvalidated:(id)invalidated
{
  v12 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(__ManifestWorkloop);
  identity = [invalidatedCopy identity];
  if (identity)
  {
    v7 = [__ManifestsByIdentity objectForKey:identity];
    if (v7 != invalidatedCopy)
    {
      [(XBApplicationSnapshotManifestImpl *)a2 _workloop_noteManifestInvalidated:self, invalidatedCopy, v7];
    }

    v8 = XBLogFileManifest();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      succinctDescription = [invalidatedCopy succinctDescription];
      v10 = 138543362;
      v11 = succinctDescription;
      _os_log_impl(&dword_26B5EF000, v8, OS_LOG_TYPE_INFO, "Removing manifest: %{public}@", &v10, 0xCu);
    }

    [__ManifestsByIdentity removeObjectForKey:identity];
  }
}

- (void)_setContainerIdentity:(id)identity
{
  identityCopy = identity;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [identityCopy copy];
    containerIdentity = self->_containerIdentity;
    self->_containerIdentity = v4;

    v6 = self->_containerIdentity;
    baseLogIdentifier = self->_baseLogIdentifier;
    if (v6)
    {
      bundleIdentifier = [(XBSnapshotContainerIdentity *)v6 bundleIdentifier];
      v9 = [(NSString *)baseLogIdentifier stringByAppendingFormat:@" [%@]", bundleIdentifier];
      logIdentifier = self->_logIdentifier;
      self->_logIdentifier = v9;
    }

    else
    {
      v11 = baseLogIdentifier;
      bundleIdentifier = self->_logIdentifier;
      self->_logIdentifier = v11;
    }
  }

  MEMORY[0x2821F96F8]();
}

- (XBApplicationSnapshotManifestImpl)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"XBApplicationSnapshotManifest.m" lineNumber:594 description:{@"Invalid parameter not satisfying: %@", @"NO"}];

  return self;
}

- (id)_initWithContainerIdentity:(id)identity
{
  identityCopy = identity;
  v8.receiver = self;
  v8.super_class = XBApplicationSnapshotManifestImpl;
  v5 = [(XBApplicationSnapshotManifestImpl *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(XBApplicationSnapshotManifestImpl *)v5 _commonInit];
    [(XBApplicationSnapshotManifestImpl *)v6 _setContainerIdentity:identityCopy];
  }

  return v6;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v2 = objc_opt_class();
  bundleIdentifier = [*(v1 + 24) bundleIdentifier];
  [currentHandler handleFailureInMethod:v0 object:v1 file:@"XBApplicationSnapshotManifest.m" lineNumber:611 description:{@"<%@:%p bundleIdentifier=%@> failed to fire all synchronize completions before dealloc", v2, v1, bundleIdentifier}];
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
  identity = [(XBApplicationSnapshotManifestImpl *)self identity];
  v7 = [v5 objectForKey:identity];

  stream = [v7 stream];
  if (stream)
  {
    v9 = stream;
    FSEventStreamStop(stream);
    FSEventStreamInvalidate(v9);
    FSEventStreamRelease(v9);
    v10 = __trackersByIdentity;
    identity2 = [(XBApplicationSnapshotManifestImpl *)self identity];
    [v10 removeObjectForKey:identity2];
  }

  os_unfair_lock_unlock(&self->_accessLock);
}

- (id)containerPath
{
  containerIdentity = [(XBApplicationSnapshotManifestImpl *)self containerIdentity];
  snapshotContainerPath = [containerIdentity snapshotContainerPath];

  return snapshotContainerPath;
}

- (id)snapshotsForGroupID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = MEMORY[0x277CBEA60];
  dCopy2 = d;
  v6 = [v4 arrayWithObjects:&dCopy count:1];

  v7 = [(XBApplicationSnapshotManifestImpl *)self snapshotsForGroupIDs:v6, dCopy, v10];

  return v7;
}

- (id)snapshotsForGroupID:(id)d matchingPredicate:(id)predicate
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = MEMORY[0x277CBEA60];
  predicateCopy = predicate;
  dCopy2 = d;
  v9 = [v6 arrayWithObjects:&dCopy count:1];

  v10 = [(XBApplicationSnapshotManifestImpl *)self snapshotsForGroupIDs:v9 matchingPredicate:predicateCopy, dCopy, v13];

  return v10;
}

- (id)snapshotsForGroupID:(id)d fetchRequest:(id)request
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = MEMORY[0x277CBEA60];
  requestCopy = request;
  dCopy2 = d;
  v9 = [v6 arrayWithObjects:&dCopy count:1];

  v10 = [(XBApplicationSnapshotManifestImpl *)self snapshotsForGroupIDs:v9 fetchRequest:requestCopy, dCopy, v13];

  return v10;
}

- (id)snapshotsForGroupIDs:(id)ds
{
  v15 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsForGroupIDs:dsCopy];
  os_unfair_lock_unlock(&self->_accessLock);
  v6 = XBLogFetchRequests();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    logIdentifier = self->_logIdentifier;
    v9 = 138412802;
    v10 = logIdentifier;
    v11 = 2112;
    v12 = dsCopy;
    v13 = 2112;
    v14 = v5;
    _os_log_debug_impl(&dword_26B5EF000, v6, OS_LOG_TYPE_DEBUG, "[%@] snapshotsForGroupIDs given groupIDs: %@; returning snapshots:\n\t%@", &v9, 0x20u);
  }

  return v5;
}

- (id)snapshotsForGroupIDs:(id)ds matchingPredicate:(id)predicate
{
  v20 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  predicateCopy = predicate;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v8 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsForGroupIDs:dsCopy matchingPredicate:predicateCopy];
  os_unfair_lock_unlock(&self->_accessLock);
  v9 = XBLogFetchRequests();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    logIdentifier = self->_logIdentifier;
    v12 = 138413058;
    v13 = logIdentifier;
    v14 = 2112;
    v15 = dsCopy;
    v16 = 2112;
    v17 = predicateCopy;
    v18 = 2112;
    v19 = v8;
    _os_log_debug_impl(&dword_26B5EF000, v9, OS_LOG_TYPE_DEBUG, "[%@] snapshotsForGroupIDs:matchingPredicate: given groupIDs: %@; predicate: %@; returning matchingSnapshots:\n%@", &v12, 0x2Au);
  }

  return v8;
}

- (id)snapshotsForGroupIDs:(id)ds fetchRequest:(id)request
{
  v53 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  requestCopy = request;
  predicate = [requestCopy predicate];
  v9 = XBLogFetchRequests();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138412802;
    v48 = logIdentifier;
    v49 = 2112;
    v50 = dsCopy;
    v51 = 2112;
    v52 = requestCopy;
    _os_log_debug_impl(&dword_26B5EF000, v9, OS_LOG_TYPE_DEBUG, "[%@] BEGIN snapshotsForGroupIDs:fetchRequest: groupIDs: %@; fetchRequest: %@", buf, 0x20u);
  }

  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  if (predicate)
  {
    v10 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsForGroupIDs:dsCopy matchingPredicate:predicate];
    v43 = [v10 mutableCopy];

    v11 = XBLogFetchRequests();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = self->_logIdentifier;
      v13 = [v43 bs_map:&__block_literal_global_234];
      *buf = 138412802;
      v48 = v12;
      v49 = 2112;
      v50 = predicate;
      v51 = 2112;
      v52 = v13;
      _os_log_debug_impl(&dword_26B5EF000, v11, OS_LOG_TYPE_DEBUG, "[%@] snapshotsForGroupIDs:fetchRequest: fetchRequest has predicate %@; retrieved matchingSnapshots:\n\t%@", buf, 0x20u);
    }
  }

  else
  {
    v14 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsForGroupIDs:dsCopy];
    v43 = [v14 mutableCopy];

    v11 = XBLogFetchRequests();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(XBApplicationSnapshotManifestImpl *)self snapshotsForGroupIDs:v43 fetchRequest:v11];
    }
  }

  os_unfair_lock_unlock(&self->_accessLock);
  fallbackGenerationContext = [requestCopy fallbackGenerationContext];
  v16 = fallbackGenerationContext;
  v17 = v43;
  if (fallbackGenerationContext)
  {
    v41 = predicate;
    v42 = dsCopy;
    launchRequest = [fallbackGenerationContext launchRequest];
    urlSchemeName = [launchRequest urlSchemeName];
    applicationCompatibilityInfo = [v16 applicationCompatibilityInfo];
    v21 = applicationCompatibilityInfo;
    if (urlSchemeName && applicationCompatibilityInfo && ([applicationCompatibilityInfo launchInterfaceExistsForScheme:urlSchemeName] & 1) == 0)
    {
      v22 = [launchRequest copy];

      [v22 setUrlSchemeName:0];
      v23 = XBLogFetchRequests();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [XBApplicationSnapshotManifestImpl snapshotsForGroupIDs:fetchRequest:];
      }

      launchRequest = v22;
    }

    v24 = [XBApplicationSnapshotManifestImpl _snapshotPredicateForRequest:launchRequest];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __71__XBApplicationSnapshotManifestImpl_snapshotsForGroupIDs_fetchRequest___block_invoke_238;
    v44[3] = &unk_279CF98B8;
    v25 = v24;
    v45 = v25;
    selfCopy = self;
    v26 = [v43 indexesOfObjectsPassingTest:v44];
    if (![v26 count])
    {
      v39 = v21;
      launchRequest2 = [v16 launchRequest];
      groupID = [launchRequest2 groupID];
      v29 = [(XBApplicationSnapshotManifestImpl *)self _generatableSnapshotForGroupID:groupID generationContext:v16];

      v17 = v43;
      v40 = v29;
      [v43 addObject:v29];
      v30 = XBLogFetchRequests();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v37 = self->_logIdentifier;
        logIdentifier = [v29 logIdentifier];
        *buf = 138412802;
        v48 = v37;
        v17 = v43;
        v49 = 2112;
        v50 = v25;
        v51 = 2112;
        v52 = logIdentifier;
        _os_log_debug_impl(&dword_26B5EF000, v30, OS_LOG_TYPE_DEBUG, "[%@] snapshotsForGroupIDs:fetchRequest: fetchRequest has fallbackPredicate %@, no snapshot matched, so generated and added fallbackSnapshot:\n\t%@", buf, 0x20u);
      }

      v21 = v39;
    }

    predicate = v41;
    dsCopy = v42;
  }

  sortDescriptors = [requestCopy sortDescriptors];
  v32 = [sortDescriptors count];

  if (v32)
  {
    nSSortDescriptors = [requestCopy NSSortDescriptors];
    [v17 sortUsingDescriptors:nSSortDescriptors];

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

- (id)createSnapshotWithGroupID:(id)d
{
  dCopy = d;
  v5 = [XBApplicationSnapshot alloc];
  containerIdentity = self->_containerIdentity;
  store = [(XBSnapshotManifestIdentity *)self->_identity store];
  v8 = [(XBApplicationSnapshot *)v5 _initWithContainerIdentity:containerIdentity store:store groupID:dCopy generationContext:0];

  return v8;
}

- (id)createVariantForSnapshot:(id)snapshot withIdentifier:(id)identifier
{
  snapshotCopy = snapshot;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (snapshotCopy)
  {
    if (identifierCopy)
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
  v9 = [snapshotCopy _createVariantWithIdentifier:v8];
  os_unfair_lock_unlock(&self->_accessLock);

  return v9;
}

- (void)_didGenerateImage:(BOOL)image imageGenerationSignal:(id)signal logIdentifier:(id)identifier imageGeneratedHandler:(id)handler qos:(unsigned int)qos
{
  signalCopy = signal;
  identifierCopy = identifier;
  handlerCopy = handler;
  v13 = XBLogCapture();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [XBApplicationSnapshotManifestImpl _didGenerateImage:imageGenerationSignal:logIdentifier:imageGeneratedHandler:qos:];
  }

  if ([signalCopy hasBeenSignalled])
  {
    v14 = XBLogCapture();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [XBApplicationSnapshotManifestImpl _didGenerateImage:imageGenerationSignal:logIdentifier:imageGeneratedHandler:qos:];
    }
  }

  else
  {
    [signalCopy signal];
    os_unfair_lock_assert_not_owner(&self->_accessLock);
    os_unfair_lock_lock(&self->_accessLock);
    v15 = XBLogCapture();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [XBApplicationSnapshotManifestImpl _didGenerateImage:imageGenerationSignal:logIdentifier:imageGeneratedHandler:qos:];
    }

    if (handlerCopy)
    {
      v16 = __ManifestCallOutQueue;
      v18 = handlerCopy;
      v17 = BSDispatchBlockCreateWithQualityOfService();
      dispatch_async(v16, v17);
    }

    os_unfair_lock_unlock(&self->_accessLock);
  }
}

- (void)_didGenerateImageData:(id)data forSnapshot:(id)snapshot imageWasGenerated:(BOOL)generated imageDataGenerationSignal:(id)signal logIdentifier:(id)identifier didSaveHandler:(id)handler qos:(unsigned int)qos writeToFileIfSupported:(BOOL)self0
{
  generatedCopy = generated;
  v45 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  snapshotCopy = snapshot;
  signalCopy = signal;
  identifierCopy = identifier;
  handlerCopy = handler;
  logIdentifier = [snapshotCopy logIdentifier];
  v20 = XBLogCapture();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [XBApplicationSnapshotManifestImpl _didGenerateImageData:forSnapshot:imageWasGenerated:imageDataGenerationSignal:logIdentifier:didSaveHandler:qos:writeToFileIfSupported:];
  }

  if (([signalCopy hasBeenSignalled] & 1) == 0)
  {
    [signalCopy signal];
    os_unfair_lock_assert_not_owner(&self->_accessLock);
    os_unfair_lock_lock(&self->_accessLock);
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    if (dataCopy && ([snapshotCopy _isInvalidated] & 1) == 0)
    {
      v23 = __ManifestImageAccessQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __171__XBApplicationSnapshotManifestImpl__didGenerateImageData_forSnapshot_imageWasGenerated_imageDataGenerationSignal_logIdentifier_didSaveHandler_qos_writeToFileIfSupported___block_invoke;
      block[3] = &unk_279CF9908;
      v36 = &v37;
      block[4] = self;
      v32 = dataCopy;
      v33 = snapshotCopy;
      v34 = identifierCopy;
      v35 = logIdentifier;
      dispatch_sync(v23, block);
    }

    else
    {
      if ([snapshotCopy _isInvalidated])
      {
        v22 = XBLogFileManifest();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v42 = identifierCopy;
          v43 = 2114;
          v44 = logIdentifier;
          _os_log_impl(&dword_26B5EF000, v22, OS_LOG_TYPE_INFO, "%{public}@ Snapshot was invalidated between imageGenerationHandler and imageDataGenerationHandler. Skipping saving. %{public}@", buf, 0x16u);
        }
      }

      if (!dataCopy)
      {
        goto LABEL_18;
      }
    }

    if (*(v38 + 24) == 1)
    {
      [(XBApplicationSnapshotManifestImpl *)self _noteDirtied];
LABEL_20:
      v24 = __ManifestCallOutQueue;
      v30 = handlerCopy;
      v28 = identifierCopy;
      v29 = snapshotCopy;
      v25 = BSDispatchBlockCreateWithQualityOfService();
      dispatch_async(v24, v25);

      os_unfair_lock_unlock(&self->_accessLock);
      _Block_object_dispose(&v37, 8);
      goto LABEL_21;
    }

LABEL_18:
    if (generatedCopy)
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

- (void)generateImageForSnapshot:(id)snapshot dataProvider:(id)provider options:(unint64_t)options imageGeneratedHandler:(id)handler imageDataSavedHandler:(id)savedHandler
{
  snapshotCopy = snapshot;
  providerCopy = provider;
  handlerCopy = handler;
  savedHandlerCopy = savedHandler;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v17 = _os_activity_create(&dword_26B5EF000, "XBCapture", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  os_activity_scope_enter(v17, &state);

  groupID = [snapshotCopy groupID];

  if (groupID)
  {
    if (providerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"XBApplicationSnapshotManifest.m" lineNumber:1027 description:{@"Invalid parameter not satisfying: %@", @"[snapshot groupID]"}];

    if (providerCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"XBApplicationSnapshotManifest.m" lineNumber:1028 description:{@"Invalid parameter not satisfying: %@", @"dataProvider"}];

LABEL_3:
  context = [providerCopy context];

  if (!context)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"XBApplicationSnapshotManifest.m" lineNumber:1029 description:{@"Invalid parameter not satisfying: %@", @"[dataProvider context]"}];
  }

  context2 = [providerCopy context];
  [context2 scale];
  v22 = v21;
  bundleIdentifier = [(XBApplicationSnapshotManifestImpl *)self bundleIdentifier];
  if ((options & 2) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  [snapshotCopy setImageScale:v22];
  [snapshotCopy setImageOpaque:{objc_msgSend(context2, "isOpaque")}];
  [snapshotCopy beginImageAccess];
  v24 = objc_alloc_init(MEMORY[0x277CF0B80]);
  v46 = context2;
  v47 = v23;
  v48 = savedHandlerCopy;
  optionsCopy = options;
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
  v44 = handlerCopy;
  v64 = v44;
  v65 = v28;
  v51 = MEMORY[0x26D67C6A0](v61);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __127__XBApplicationSnapshotManifestImpl_generateImageForSnapshot_dataProvider_options_imageGeneratedHandler_imageDataSavedHandler___block_invoke_2;
  v54[3] = &unk_279CF9980;
  selfCopy = self;
  v54[4] = self;
  v30 = snapshotCopy;
  v55 = v30;
  v31 = v26;
  v56 = v31;
  v32 = v29;
  v57 = v32;
  v49 = v48;
  v58 = v49;
  v59 = v28;
  v60 = optionsCopy & 1;
  v33 = MEMORY[0x26D67C6A0](v54);
  v34 = [XBApplicationSnapshotImageGenerator alloc];
  v35 = +[XBApplicationSnapshotGenerationScheduler sharedInstance];
  v36 = [(XBApplicationSnapshotImageGenerator *)v34 initWithScheduler:v35 snapshot:v30 dataProvider:providerCopy imageDataRequest:((optionsCopy << 63) >> 63) & v47 loggingPrefix:bundleIdentifier imageGenerationHandler:v51 imageDataGenerationHandler:v33];

  if ((optionsCopy & 4) == 0)
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

  [(XBApplicationSnapshotManifestImpl *)selfCopy _addSnapshotToGroup:v30];
  os_activity_scope_leave(&state);
}

uint64_t __127__XBApplicationSnapshotManifestImpl_generateImageForSnapshot_dataProvider_options_imageGeneratedHandler_imageDataSavedHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  BYTE4(v4) = *(a1 + 76);
  LODWORD(v4) = *(a1 + 72);
  return [*(a1 + 32) _didGenerateImageData:a2 forSnapshot:*(a1 + 40) imageWasGenerated:a3 imageDataGenerationSignal:*(a1 + 48) logIdentifier:*(a1 + 56) didSaveHandler:*(a1 + 64) qos:v4 writeToFileIfSupported:?];
}

- (void)saveSnapshot:(id)snapshot atPath:(id)path withContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  pathCopy = path;
  contextCopy = context;
  if (!contextCopy)
  {
    [XBApplicationSnapshotManifestImpl saveSnapshot:atPath:withContext:];
  }

  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(XBApplicationSnapshotManifestImpl *)self _access_addSnapshotToGroup:snapshotCopy];
  [snapshotCopy _configureWithPath:pathCopy];
  [contextCopy scale];
  [snapshotCopy setImageScale:?];
  [snapshotCopy setImageOpaque:{objc_msgSend(contextCopy, "isOpaque")}];
  [(XBApplicationSnapshotManifestImpl *)self _noteDirtied];
  v11 = XBLogFileManifest();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    logIdentifier = self->_logIdentifier;
    succinctDescription = [snapshotCopy succinctDescription];
    v14 = 138543618;
    v15 = logIdentifier;
    v16 = 2114;
    v17 = succinctDescription;
    _os_log_impl(&dword_26B5EF000, v11, OS_LOG_TYPE_INFO, "%{public}@ Saved snapshot: %{public}@", &v14, 0x16u);
  }

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)deleteSnapshot:(id)snapshot
{
  v8 = *MEMORY[0x277D85DE8];
  if (snapshot)
  {
    snapshotCopy = snapshot;
    v4 = MEMORY[0x277CBEA60];
    snapshotCopy2 = snapshot;
    v6 = [v4 arrayWithObjects:&snapshotCopy count:1];

    [(XBApplicationSnapshotManifestImpl *)self deleteSnapshots:v6, snapshotCopy, v8];
  }
}

- (void)deleteSnapshots:(id)snapshots
{
  v12 = *MEMORY[0x277D85DE8];
  snapshotsCopy = snapshots;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  if ([snapshotsCopy count])
  {
    v5 = XBLogFileManifest();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = self->_logIdentifier;
      v7 = [snapshotsCopy arrayByApplyingSelector:sel_succinctDescription];
      v8 = 138543618;
      v9 = logIdentifier;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_26B5EF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Deleting snapshots: %{public}@", &v8, 0x16u);
    }
  }

  [(XBApplicationSnapshotManifestImpl *)self _access_deleteSnapshots:snapshotsCopy];
  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)deleteSnapshotsMatchingPredicate:(id)predicate
{
  v15 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsMatchingPredicate:predicateCopy];
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
      v14 = predicateCopy;
      _os_log_impl(&dword_26B5EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Deleting snapshots: %{public}@ matching predicate: %@", &v9, 0x20u);
    }
  }

  [(XBApplicationSnapshotManifestImpl *)self _access_deleteSnapshots:v5];
  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)deleteSnapshotsUsingPredicateBuilder:(id)builder
{
  builderCopy = builder;
  v4 = +[XBApplicationSnapshotPredicate predicate];
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  [(XBApplicationSnapshotManifestImpl *)self deleteSnapshotsMatchingPredicate:v4];
}

- (void)deleteSnapshotsForGroupID:(id)d predicateBuilder:(id)builder
{
  dCopy = d;
  builderCopy = builder;
  v7 = +[XBApplicationSnapshotPredicate predicate];
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v7);
  }

  [(XBApplicationSnapshotManifestImpl *)self deleteSnapshotsForGroupID:dCopy matchingPredicate:v7];
}

- (void)deleteSnapshotsForGroupID:(id)d matchingPredicate:(id)predicate
{
  v19[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  predicateCopy = predicate;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v19[0] = dCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v9 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsForGroupIDs:v8 matchingPredicate:predicateCopy];

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
      v18 = predicateCopy;
      _os_log_impl(&dword_26B5EF000, v10, OS_LOG_TYPE_INFO, "%{public}@ Deleting snapshots: %{public}@ matching predicate: %@", &v13, 0x20u);
    }
  }

  [(XBApplicationSnapshotManifestImpl *)self _access_deleteSnapshots:v9];
  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)deleteSnapshotsForGroupID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotGroupForID:dCopy creatingIfNeeded:0];
  if (v5)
  {
    v6 = XBLogFileManifest();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      logIdentifier = self->_logIdentifier;
      *buf = 138543618;
      v12 = logIdentifier;
      v13 = 2114;
      v14 = dCopy;
      _os_log_impl(&dword_26B5EF000, v6, OS_LOG_TYPE_INFO, "%{public}@ Deleting all snapshots for group: %{public}@.", buf, 0x16u);
    }

    [v5 _invalidate];
    [(NSMutableDictionary *)self->_snapshotGroupsByID removeObjectForKey:dCopy];
    [(XBApplicationSnapshotManifestImpl *)self _noteDirtied];
    containerPath = [v5 containerPath];
    v10 = containerPath;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [(XBApplicationSnapshotManifestImpl *)self _access_deletePaths:v9];
  }

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)updateSnapshotsAPFSPurgability:(BOOL)purgability
{
  purgabilityCopy = purgability;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(XBApplicationSnapshotManifestImpl *)self _access_updateSnapshotsAPFSPurgability:purgabilityCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (BOOL)snapshotsConsideredUnpurgableByAPFS
{
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  _access_snapshotsConsideredUnpurgableByAPFS = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsConsideredUnpurgableByAPFS];
  os_unfair_lock_unlock(&self->_accessLock);
  return _access_snapshotsConsideredUnpurgableByAPFS;
}

- (void)deleteAllSnapshots
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v3 = XBLogFileManifest();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = [(XBApplicationSnapshotManifestImpl *)self bundleIdentifier];
    *buf = 138543362;
    v9 = bundleIdentifier;
    _os_log_impl(&dword_26B5EF000, v3, OS_LOG_TYPE_INFO, "%{public}@ Deleting all snapshots.", buf, 0xCu);
  }

  [(XBApplicationSnapshotManifestImpl *)self _noteDirtied];
  [(NSMutableDictionary *)self->_snapshotGroupsByID enumerateKeysAndObjectsUsingBlock:&__block_literal_global_274];
  [(NSMutableDictionary *)self->_snapshotGroupsByID removeAllObjects];
  containerPath = [(XBApplicationSnapshotManifestImpl *)self containerPath];
  v7 = containerPath;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  [(XBApplicationSnapshotManifestImpl *)self _access_deletePaths:v6];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)beginSnapshotAccessTransaction:(id)transaction completion:(id)completion
{
  completionCopy = completion;
  if (transaction)
  {
    (*(transaction + 2))(transaction);
  }

  v7 = +[XBApplicationSnapshotGenerationScheduler sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__XBApplicationSnapshotManifestImpl_beginSnapshotAccessTransaction_completion___block_invoke;
  v9[3] = &unk_279CF9A18;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
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

+ (id)_snapshotPredicateForRequest:(id)request
{
  requestCopy = request;
  v4 = +[XBApplicationSnapshotPredicate predicate];
  launchInterfaceIdentifier = [requestCopy launchInterfaceIdentifier];
  if (launchInterfaceIdentifier)
  {
    [v4 setLaunchInterfaceIdentifier:launchInterfaceIdentifier];
  }

  urlSchemeName = [requestCopy urlSchemeName];
  [v4 setScheme:urlSchemeName];

  [v4 setContentTypeMask:2];
  [requestCopy referenceSize];
  [v4 setReferenceSize:?];
  [v4 setInterfaceOrientationMask:{XBInterfaceOrientationMaskForInterfaceOrientationPair(objc_msgSend(requestCopy, "interfaceOrientation"))}];
  [v4 setStatusBarStateMask:{XBStatusBarStateMaskForStatusBarState(objc_msgSend(requestCopy, "statusBarState"))}];
  [v4 setUserInterfaceStyle:{objc_msgSend(requestCopy, "userInterfaceStyle")}];
  customSafeAreaInsets = [requestCopy customSafeAreaInsets];
  [v4 setCustomSafeAreaInsets:customSafeAreaInsets];

  return v4;
}

+ (void)_configureSnapshot:(id)snapshot withCompatibilityInfo:(id)info forLaunchRequest:(id)request
{
  snapshotCopy = snapshot;
  requestCopy = request;
  infoCopy = info;
  launchInterfaceIdentifier = [requestCopy launchInterfaceIdentifier];
  [snapshotCopy setLaunchInterfaceIdentifier:launchInterfaceIdentifier];
  defaultLaunchInterface = [infoCopy defaultLaunchInterface];

  identifier = [defaultLaunchInterface identifier];
  v12 = [identifier isEqualToString:launchInterfaceIdentifier];

  if ((v12 & 1) == 0)
  {
    [snapshotCopy setName:launchInterfaceIdentifier];
  }

  urlSchemeName = [requestCopy urlSchemeName];
  [snapshotCopy setScheme:urlSchemeName];

  [snapshotCopy setContentType:1];
  displayConfiguration = [requestCopy displayConfiguration];
  [requestCopy referenceSize];
  v16 = v15;
  v18 = v17;
  [displayConfiguration bounds];
  v21 = v18 == v20 && v16 == v19;
  [snapshotCopy setFullScreen:v21];
  [requestCopy referenceSize];
  [snapshotCopy setReferenceSize:?];
  [displayConfiguration scale];
  [snapshotCopy setImageScale:?];
  [snapshotCopy setInterfaceOrientation:{objc_msgSend(requestCopy, "interfaceOrientation")}];
  statusBarState = [requestCopy statusBarState];
  v23 = objc_alloc_init(XBMutableStatusBarSettings);
  [(XBMutableStatusBarSettings *)v23 setHidden:statusBarState == 0];
  [(XBMutableStatusBarSettings *)v23 setBackgroundActivityEnabled:statusBarState == 2];
  [snapshotCopy setStatusBarSettings:v23];
  [snapshotCopy setUserInterfaceStyle:{objc_msgSend(requestCopy, "userInterfaceStyle")}];
  customSafeAreaInsets = [requestCopy customSafeAreaInsets];

  [snapshotCopy setCustomSafeAreaInsets:customSafeAreaInsets];
}

- (id)_generatableSnapshotForGroupID:(id)d generationContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  if (!contextCopy)
  {
    [XBApplicationSnapshotManifestImpl _generatableSnapshotForGroupID:generationContext:];
  }

  v8 = [(XBApplicationSnapshotManifestImpl *)self _createSnapshotWithGroupID:dCopy generationContext:contextCopy];
  [(XBApplicationSnapshotManifestImpl *)self _addSnapshotToGroup:v8];
  v9 = XBLogFileManifest();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    logIdentifier = self->_logIdentifier;
    logIdentifier = [v8 logIdentifier];
    v17 = 138543874;
    v18 = logIdentifier;
    v19 = 2112;
    v20 = dCopy;
    v21 = 2112;
    v22 = logIdentifier;
    _os_log_impl(&dword_26B5EF000, v9, OS_LOG_TYPE_INFO, "%{public}@ groupID: [%@] Creating temporary snapshot %@ with generation context.", &v17, 0x20u);
  }

  launchRequest = [contextCopy launchRequest];
  applicationCompatibilityInfo = [contextCopy applicationCompatibilityInfo];
  v14 = [applicationCompatibilityInfo launchInterfaceIdentifierForRequest:launchRequest];
  [launchRequest setLaunchInterfaceIdentifier:v14];

  [XBApplicationSnapshotManifestImpl _configureSnapshot:v8 withCompatibilityInfo:applicationCompatibilityInfo forLaunchRequest:launchRequest];
  v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:2.0];
  [v8 setExpirationDate:v15];

  [(XBApplicationSnapshotManifestImpl *)self _reapExpiredAndInvalidSnapshots];

  return v8;
}

- (id)_createSnapshotWithGroupID:(id)d generationContext:(id)context
{
  contextCopy = context;
  dCopy = d;
  v8 = [XBApplicationSnapshot alloc];
  containerIdentity = self->_containerIdentity;
  store = [(XBSnapshotManifestIdentity *)self->_identity store];
  v11 = [(XBApplicationSnapshot *)v8 _initWithContainerIdentity:containerIdentity store:store groupID:dCopy generationContext:contextCopy];

  return v11;
}

- (void)_addSnapshotToGroup:(id)group
{
  groupCopy = group;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(XBApplicationSnapshotManifestImpl *)self _access_addSnapshotToGroup:groupCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)_access_addSnapshotToGroup:(id)group
{
  groupCopy = group;
  v8 = groupCopy;
  if (!groupCopy)
  {
    [XBApplicationSnapshotManifestImpl _access_addSnapshotToGroup:];
    groupCopy = 0;
  }

  groupID = [groupCopy groupID];

  if (!groupID)
  {
    [XBApplicationSnapshotManifestImpl _access_addSnapshotToGroup:];
  }

  os_unfair_lock_assert_owner(&self->_accessLock);
  groupID2 = [v8 groupID];
  v7 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotGroupForID:groupID2 creatingIfNeeded:1];

  [v7 addSnapshot:v8];
}

- (void)_synchronizeDataStoreWithCompletion:(id)completion
{
  if (!completion)
  {
    completion = &__block_literal_global_281;
  }

  [(XBApplicationSnapshotManifestImpl *)self _scheduleArchivingIfNecessaryWithCompletion:completion];
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

- (void)_scheduleArchivingIfNecessaryWithDelay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  v7 = __ManifestArchiveSchedulingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__XBApplicationSnapshotManifestImpl__scheduleArchivingIfNecessaryWithDelay_completion___block_invoke;
  block[3] = &unk_279CF9A68;
  delayCopy = delay;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
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

- (void)_access_doArchiveWithCompletions:(id)completions
{
  v37 = *MEMORY[0x277D85DE8];
  completionsCopy = completions;
  os_unfair_lock_assert_owner(&self->_accessLock);
  [(XBApplicationSnapshotManifestImpl *)self _access_workloop_reapExpiredAndInvalidSnapshots];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  allValues = [(NSMutableDictionary *)self->_snapshotGroupsByID allValues];
  v6 = [allValues countByEnumeratingWithState:&v28 objects:v36 count:16];
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
          objc_enumerationMutation(allValues);
        }

        snapshots = [*(*(&v28 + 1) + 8 * v9) snapshots];
        v11 = [snapshots count];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  bundleIdentifier = [(XBApplicationSnapshotManifestImpl *)self bundleIdentifier];
  store = [(XBSnapshotManifestIdentity *)self->_identity store];
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
      selfCopy = self;
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

    [store persistManifestData:v18 forBundleIdentifier:bundleIdentifier];
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

    [store clearManifestDataForBundleIdentifier:bundleIdentifier];
  }

  if ([completionsCopy count])
  {
    v22 = dispatch_get_global_queue(21, 0);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __70__XBApplicationSnapshotManifestImpl__access_doArchiveWithCompletions___block_invoke;
    v23[3] = &unk_279CF9108;
    v24 = store;
    v25 = bundleIdentifier;
    v26 = completionsCopy;
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

- (BOOL)_validateWithContainerIdentity:(id)identity
{
  identityCopy = identity;
  if (!identityCopy)
  {
    [XBApplicationSnapshotManifestImpl _validateWithContainerIdentity:];
  }

  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(XBApplicationSnapshotManifestImpl *)self _access_validateWithContainerIdentity:identityCopy];
  os_unfair_lock_unlock(&self->_accessLock);

  return v5;
}

- (BOOL)_access_validateWithContainerIdentity:(id)identity
{
  v30 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if (!identityCopy)
  {
    [XBApplicationSnapshotManifestImpl _access_validateWithContainerIdentity:];
  }

  os_unfair_lock_assert_owner(&self->_accessLock);
  [(XBApplicationSnapshotManifestImpl *)self _setContainerIdentity:identityCopy];
  v5 = [(NSMutableDictionary *)self->_snapshotGroupsByID copy];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__XBApplicationSnapshotManifestImpl__access_validateWithContainerIdentity___block_invoke;
  v21[3] = &unk_279CF9A90;
  v6 = identityCopy;
  v22 = v6;
  selfCopy = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v21];
  snapshotContainerPath = [v6 snapshotContainerPath];
  if ([(NSMutableDictionary *)self->_snapshotGroupsByID count])
  {
    v8 = 1;
  }

  else
  {
    v8 = snapshotContainerPath == 0;
  }

  if (!v8)
  {
    v9 = XBLogFileManifest();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [(XBApplicationSnapshotManifestImpl *)self bundleIdentifier];
      *buf = 138543618;
      v25 = bundleIdentifier;
      v26 = 2112;
      v27 = snapshotContainerPath;
      _os_log_impl(&dword_26B5EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Manifest is empty; purging everything at %@", buf, 0x16u);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v20 = 0;
    v12 = [defaultManager removeItemAtPath:snapshotContainerPath error:&v20];
    v13 = v20;

    if (v12)
    {
      goto LABEL_17;
    }

    domain = [v13 domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA050]])
    {
      code = [v13 code];

      if (code == 4)
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
      v27 = snapshotContainerPath;
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

- (void)_access_accessSnapshotsWithBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
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
  v16 = blockCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = blockCopy;
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

- (void)_access_deletePaths:(id)paths
{
  v15 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  os_unfair_lock_assert_owner(&self->_accessLock);
  if ([pathsCopy count])
  {
    v5 = XBLogFileManifest();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = self->_logIdentifier;
      *buf = 138543618;
      v12 = logIdentifier;
      v13 = 2112;
      v14 = pathsCopy;
      _os_log_impl(&dword_26B5EF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Deleting paths: %@", buf, 0x16u);
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__XBApplicationSnapshotManifestImpl__access_deletePaths___block_invoke;
  v8[3] = &unk_279CF9B30;
  v9 = pathsCopy;
  selfCopy = self;
  v7 = pathsCopy;
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

- (void)_access_deleteSnapshots:(id)snapshots
{
  v38 = *MEMORY[0x277D85DE8];
  snapshotsCopy = snapshots;
  os_unfair_lock_assert_owner(&self->_accessLock);
  array = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = snapshotsCopy;
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
            v19 = array;
            logIdentifier = self->_logIdentifier;
            logIdentifier = [v14 logIdentifier];
            *buf = v24;
            v32 = logIdentifier;
            array = v19;
            v6 = v18;
            v11 = v17;
            v9 = v25;
            v33 = 2114;
            v34 = logIdentifier;
            v35 = 2114;
            v36 = v10;
            _os_log_impl(&dword_26B5EF000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Deleting snapshot %{public}@ for reason: %{public}@", buf, 0x20u);
          }

          [(XBApplicationSnapshotManifestImpl *)self _access_gatherPaths:array forSnapshot:v14];
        }

        groupID = [v14 groupID];
        v23 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotGroupForID:groupID creatingIfNeeded:0];

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

  [(XBApplicationSnapshotManifestImpl *)self _access_deletePaths:array];
}

void __79__XBApplicationSnapshotManifestImpl__access_purgeSnapshotsWithProtectedContent__block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(*(*(a1 + 40) + 8) + 40) allObjects];
  [v4 manifest:v2 didPurgeProtectedContentSnapshotsWithGroupIdentifiers:v3];
}

- (void)_access_updateSnapshotsAPFSPurgability:(BOOL)purgability
{
  os_unfair_lock_assert_owner(&self->_accessLock);
  snapshotGroupsByID = self->_snapshotGroupsByID;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__XBApplicationSnapshotManifestImpl__access_updateSnapshotsAPFSPurgability___block_invoke;
  v6[3] = &unk_279CF9B80;
  purgabilityCopy = purgability;
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
  defaultGroupIdentifier = [(XBApplicationSnapshotManifestImpl *)self defaultGroupIdentifier];
  v20[0] = defaultGroupIdentifier;
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
          path = [v10 path];
          fileSystemRepresentation = [path fileSystemRepresentation];

          if (fileSystemRepresentation)
          {
            v14 = 0;
            if (!fsctl(fileSystemRepresentation, 0x40084A47uLL, &v14, 0) && (v14 & 0xC00) == 0)
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

- (void)_access_gatherPaths:(id)paths forSnapshot:(id)snapshot
{
  pathsCopy = paths;
  snapshotCopy = snapshot;
  os_unfair_lock_assert_owner(&self->_accessLock);
  path = [snapshotCopy path];

  if (path)
  {
    path2 = [snapshotCopy path];
    [pathsCopy addObject:path2];
  }

  variants = [snapshotCopy variants];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__XBApplicationSnapshotManifestImpl__access_gatherPaths_forSnapshot___block_invoke;
  v12[3] = &unk_279CF9BA8;
  v13 = pathsCopy;
  v11 = pathsCopy;
  [variants enumerateObjectsUsingBlock:v12];
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

- (id)_access_snapshotsForGroupIDs:(id)ds
{
  v20 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  os_unfair_lock_assert_owner(&self->_accessLock);
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = dsCopy;
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
        snapshots = [v11 snapshots];
        allObjects = [snapshots allObjects];
        [array addObjectsFromArray:allObjects];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)_access_snapshotsForGroupIDs:(id)ds matchingPredicate:(id)predicate
{
  v34 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  predicateCopy = predicate;
  selfCopy = self;
  os_unfair_lock_assert_owner(&self->_accessLock);
  array = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = dsCopy;
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
        v14 = [(NSMutableDictionary *)selfCopy->_snapshotGroupsByID objectForKey:v13];
        snapshots = [v14 snapshots];

        v16 = [snapshots countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                objc_enumerationMutation(snapshots);
              }

              v20 = *(*(&v24 + 1) + 8 * j);
              if ([predicateCopy evaluateWithObject:v20])
              {
                [array addObject:v20];
              }
            }

            v17 = [snapshots countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v17);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  return array;
}

- (id)_access_snapshotsMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  os_unfair_lock_assert_owner(&self->_accessLock);
  allKeys = [(NSMutableDictionary *)self->_snapshotGroupsByID allKeys];
  v6 = [(XBApplicationSnapshotManifestImpl *)self _access_snapshotsForGroupIDs:allKeys matchingPredicate:predicateCopy];

  return v6;
}

- (id)_access_snapshotGroupForID:(id)d creatingIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  dCopy = d;
  os_unfair_lock_assert_owner(&self->_accessLock);
  v7 = [(NSMutableDictionary *)self->_snapshotGroupsByID objectForKey:dCopy];
  v8 = v7;
  if (dCopy)
  {
    if (!v7 && neededCopy)
    {
      v10 = [XBApplicationSnapshotGroup alloc];
      containerIdentity = [(XBApplicationSnapshotManifestImpl *)self containerIdentity];
      v8 = [(XBApplicationSnapshotGroup *)v10 _initWithIdentifier:dCopy containerIdentity:containerIdentity];

      [(NSMutableDictionary *)self->_snapshotGroupsByID setObject:v8 forKey:dCopy];
    }
  }

  return v8;
}

- (BOOL)_imageAccessQueue_saveData:(id)data forSnapshot:(id)snapshot
{
  v48[5] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  snapshotCopy = snapshot;
  BSDispatchQueueAssert();
  if (!dataCopy)
  {
    [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
  }

  if ([dataCopy length])
  {
    if (snapshotCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
    if (snapshotCopy)
    {
      goto LABEL_5;
    }
  }

  [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
LABEL_5:
  v8 = [snapshotCopy _configureDefaultPathWithinGroupForFormat:objc_msgSend(objc_opt_class(), "_outputFormatForSnapshot:", snapshotCopy)];
  if (!v8)
  {
    [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
  }

  stringByDeletingLastPathComponent = [v8 stringByDeletingLastPathComponent];
  if (!XBEnsureDirectoryExistsAtPath(stringByDeletingLastPathComponent))
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
  v13 = XBApplicationSnapshotContentTypeMaskForContentType([snapshotCopy contentType]) & 6;
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

  fileFormat = [snapshotCopy fileFormat];
  bytes = [dataCopy bytes];
  v17 = [dataCopy length];
  if (fileFormat != 1)
  {
    v24 = write(v12, bytes, v17);
    goto LABEL_47;
  }

  v18 = v8;
  if (v12 < 0)
  {
    [XBApplicationSnapshotManifestImpl _imageAccessQueue_saveData:forSnapshot:];
    if (v8)
    {
LABEL_18:
      if (bytes)
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
  if (!bytes)
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

  v24 = write(v12, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
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

+ (int64_t)_outputFormatForSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (_outputFormatForSnapshot__onceToken != -1)
  {
    +[XBApplicationSnapshotManifestImpl _outputFormatForSnapshot:];
  }

  v4 = _outputFormatForSnapshot__supportsASTC;
  if (_outputFormatForSnapshot__wideColorDisplay != 1)
  {
    if (_outputFormatForSnapshot__supportsASTC)
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom || [snapshotCopy contentType])
      {
        v4 = 1;
      }

      else if ([snapshotCopy isImageOpaque])
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:3 forKey:@"version"];
  if ([(NSMutableDictionary *)self->_snapshotGroupsByID count])
  {
    [coderCopy encodeObject:self->_snapshotGroupsByID forKey:@"snapshots"];
  }
}

- (XBApplicationSnapshotManifestImpl)initWithCoder:(id)coder
{
  v27 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = XBApplicationSnapshotManifestImpl;
  v5 = [(XBApplicationSnapshotManifestImpl *)&v20 init];
  v6 = v5;
  if (v5)
  {
    [(XBApplicationSnapshotManifestImpl *)v5 _commonInit];
    v7 = [coderCopy decodeIntegerForKey:@"version"];
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
      v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"snapshots"];
      error = [coderCopy error];
      if (error)
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

- (id)_descriptionForStateCaptureWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  succinctDescriptionBuilder = [(XBApplicationSnapshotManifestImpl *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__XBApplicationSnapshotManifestImpl__descriptionForStateCaptureWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279CF9530;
  v9[4] = self;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  v11 = &v12;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];
  if (*(v13 + 24) == 1)
  {
    build = [v6 build];
  }

  else
  {
    build = 0;
  }

  _Block_object_dispose(&v12, 8);

  return build;
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(XBApplicationSnapshotManifestImpl *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(XBApplicationSnapshotManifestImpl *)self succinctDescriptionBuilder];
  v6 = [succinctDescriptionBuilder appendUnsignedInteger:self->_clientCount withName:@"clientCount"];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__XBApplicationSnapshotManifestImpl_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279CF9508;
  v7 = succinctDescriptionBuilder;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

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