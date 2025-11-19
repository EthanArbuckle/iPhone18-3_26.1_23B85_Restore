@interface PRUISPosterChannel
- (BOOL)ingestUpdatedDescriptors:(id)a3 forState:(id)a4 galleryMetadata:(id)a5 policy:(unint64_t)a6 error:(id *)a7;
- (BOOL)ingestUpdatedDescriptors:(id)a3 forState:(id)a4 policy:(unint64_t)a5 error:(id *)a6;
- (NSDate)creationDate;
- (NSDate)lastModifiedDate;
- (NSString)description;
- (NSUUID)channelIdentifier;
- (PRSPosterConfiguration)posterConfiguration;
- (PRUISPosterChannel)init;
- (PRUISPosterChannel)initWithModelCoordinator:(id)a3 state:(id)a4 error:(id *)a5;
- (PRUISPosterChannelContext)channelContext;
- (PRUISPosterGallery)currentGallery;
- (PRUISPosterSnapshotController)snapshotController;
- (PRUISPosterSnapshotSQLiteCache)snapshotCache;
- (_TtC21PosterBoardUIServices23PRUISPosterChannelState)state;
- (id)_lock_buildReaper;
- (id)_lock_currentGallery;
- (id)_lock_currentPosterConfiguration;
- (id)_lock_reapStaleSnapshotsWithReaper:(id)a3;
- (id)_lock_snapshotCache;
- (id)_lock_snapshotController;
- (id)_lock_state;
- (id)cachedSnapshotBundleSatisfyingPredicate:(id)a3;
- (id)coordinateWithRemoveChannelBlock:(id)a3;
- (id)descriptorsForState:(id)a3;
- (id)extensionInstanceForReason:(id)a3 outError:(id *)a4;
- (id)pooledExtensionInstanceWithError:(id *)a3;
- (id)reapEverything;
- (id)reapStaleSnapshots;
- (id)updateGalleryWithUpdateSessionInfoProvider:(id)a3 extensionIdentifiers:(id)a4 policy:(unint64_t)a5;
- (unint64_t)version;
- (void)_notifyObserversDidInvalidate;
- (void)_notifyObserversDidUpdateContext:(id)a3;
- (void)_notifyObserversDidUpdateGallery:(id)a3;
- (void)_notifyObserversDidUpdatePoster:(id)a3;
- (void)_notifyObserversWillInvalidate;
- (void)_notifyObserversWillUpdateContext;
- (void)_notifyObserversWillUpdateGallery;
- (void)_notifyObserversWillUpdatePoster;
- (void)addChannelObserver:(id)a3;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)applyUpdater:(id)a3 error:(id *)a4;
- (void)cacheSnapshotBundle:(id)a3 forPredicate:(id)a4;
- (void)clearCachedSnapshotBundlesSatisfyingPredicate:(id)a3;
- (void)coordinator:(id)a3 didUpdateDescriptors:(id)a4 galleryMetadata:(id)a5;
- (void)fetchSnapshotForDescriptor:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)prewarmSnapshotForDefinition:(id)a3 interfaceOrientation:(int64_t)a4;
- (void)prewarmSnapshotForDescriptor:(id)a3;
- (void)reapStaleStateOmittingLast:(unint64_t)a3 error:(id *)a4;
- (void)relinquishExtensionInstanceForReason:(id)a3;
- (void)relinquishPooledExtensionInstance:(id)a3;
- (void)removeChannelObserver:(id)a3;
- (void)updateGalleryWithUpdateSessionInfoProvider:(id)a3 extensionIdentifiers:(id)a4 policy:(unint64_t)a5 completion:(id)a6;
@end

@implementation PRUISPosterChannel

- (_TtC21PosterBoardUIServices23PRUISPosterChannelState)state
{
  [(PFOSUnfairLock *)self->_lock lock];
  v3 = [(PRUISPosterChannel *)self _lock_state];
  [(PFOSUnfairLock *)self->_lock unlock];

  return v3;
}

- (id)_lock_state
{
  lock_state = self->_lock_state;
  if (!lock_state)
  {
    v4 = [(PRUISPosterChannelStateCoordinator *)self->_stateCoordinator state];
    v5 = self->_lock_state;
    self->_lock_state = v4;

    lock_state = self->_lock_state;
  }

  return lock_state;
}

- (NSUUID)channelIdentifier
{
  v2 = [(PRUISPosterChannel *)self state];
  v3 = [v2 channelIdentifier];

  return v3;
}

- (unint64_t)version
{
  v2 = [(PRUISPosterChannel *)self state];
  v3 = [v2 channelVersion];

  return v3;
}

- (PRUISPosterChannelContext)channelContext
{
  v2 = [(PRUISPosterChannel *)self state];
  v3 = [v2 channelContext];

  return v3;
}

- (PRSPosterConfiguration)posterConfiguration
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    [(PFOSUnfairLock *)self->_lock lock];
    v3 = [(PRUISPosterChannel *)self _lock_currentPosterConfiguration];
    [(PFOSUnfairLock *)self->_lock unlock];
  }

  return v3;
}

- (NSDate)creationDate
{
  v2 = [(PRUISPosterChannel *)self state];
  v3 = [v2 creationDate];

  return v3;
}

- (NSDate)lastModifiedDate
{
  v2 = [(PRUISPosterChannel *)self state];
  v3 = [v2 lastModifiedDate];

  return v3;
}

- (PRUISPosterSnapshotController)snapshotController
{
  [(PFOSUnfairLock *)self->_lock lock];
  v3 = [(PRUISPosterChannel *)self _lock_snapshotController];
  [(PFOSUnfairLock *)self->_lock unlock];

  return v3;
}

- (void)fetchSnapshotForDescriptor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_completionScheduler;
  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __60__PRUISPosterChannel_fetchSnapshotForDescriptor_completion___block_invoke;
    v28[3] = &unk_1E83A8558;
    v28[4] = self;
    v29 = v7;
    [(PFTScheduler *)v8 performBlock:v28];
    v9 = v29;
  }

  else
  {
    v9 = [(PRUISPosterChannel *)self posterConfiguration];
    if (v9)
    {
      [(PFOSUnfairLock *)self->_lock lock];
      v10 = [(PRUISPosterChannel *)self _lock_snapshotController];
      v11 = objc_alloc(MEMORY[0x1E69C52E8]);
      v12 = [v9 _path];
      v13 = [v11 _initWithPath:v12];

      v19 = v13;
      v14 = [[PRUISPosterSnapshotRequest alloc] initWithPoster:v13 snapshotDescriptor:v6];
      v25 = 0;
      v15 = [v10 currentSnapshotBundleForRequest:v14 error:&v25];
      v16 = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __60__PRUISPosterChannel_fetchSnapshotForDescriptor_completion___block_invoke_3;
      aBlock[3] = &unk_1E83A8800;
      aBlock[4] = self;
      v23 = v8;
      v24 = v7;
      v17 = _Block_copy(aBlock);
      v18 = v17;
      if (v15)
      {
        (*(v17 + 2))(v17, v15, v16);
        [(PFOSUnfairLock *)self->_lock unlock];
      }

      else
      {
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __60__PRUISPosterChannel_fetchSnapshotForDescriptor_completion___block_invoke_5;
        v20[3] = &unk_1E83A8828;
        v20[4] = self;
        v21 = v17;
        [v10 executeSnapshotRequest:v14 completion:v20];
        [(PFOSUnfairLock *)self->_lock unlock];
      }
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __60__PRUISPosterChannel_fetchSnapshotForDescriptor_completion___block_invoke_2;
      v26[3] = &unk_1E83A8558;
      v26[4] = self;
      v27 = v7;
      [(PFTScheduler *)v8 performBlock:v26];
      v16 = v27;
    }
  }
}

void __60__PRUISPosterChannel_fetchSnapshotForDescriptor_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = PFFunctionNameForAddress();
  v2 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
  (*(v1 + 16))(v1, 0, v2);
}

void __60__PRUISPosterChannel_fetchSnapshotForDescriptor_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = PFFunctionNameForAddress();
  v2 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
  (*(v1 + 16))(v1, 0, v2);
}

void __60__PRUISPosterChannel_fetchSnapshotForDescriptor_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[PRUISPosterLevelSet compositeLevelSet];
  v8 = [v6 snapshotForLevelSet:v7];

  if (v5 && !v8)
  {
    v9 = PFFunctionNameForAddress();
    v10 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

    v5 = v10;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__PRUISPosterChannel_fetchSnapshotForDescriptor_completion___block_invoke_4;
  v15[3] = &unk_1E83A87D8;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v17 = v5;
  v18 = v12;
  v16 = v8;
  v13 = v5;
  v14 = v8;
  [v11 performBlock:v15];
}

void __60__PRUISPosterChannel_fetchSnapshotForDescriptor_completion___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = PRUISLogChannels();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __60__PRUISPosterChannel_fetchSnapshotForDescriptor_completion___block_invoke_5_cold_1(a1, v9);
    }

LABEL_7:

    goto LABEL_8;
  }

  if (v8)
  {
    v10 = PRUISLogChannels();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __60__PRUISPosterChannel_fetchSnapshotForDescriptor_completion___block_invoke_5_cold_2(a1);
    }

    goto LABEL_7;
  }

LABEL_8:
  v11 = *(a1 + 40);
  v12 = [v8 posterSnapshotBundle];
  (*(v11 + 16))(v11, v12, v9);
}

- (void)prewarmSnapshotForDefinition:(id)a3 interfaceOrientation:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    [PRUISPosterChannel prewarmSnapshotForDefinition:a2 interfaceOrientation:?];
  }

  if (!a4)
  {
    [PRUISPosterChannel prewarmSnapshotForDefinition:a2 interfaceOrientation:?];
  }

  v8 = v7;
  v9 = [(PRUISPosterChannel *)self posterConfiguration];
  if (v9)
  {
    v10 = [(PRUISPosterChannel *)self snapshotCache];
    v11 = objc_alloc_init(MEMORY[0x1E69C55C8]);
    v12 = [v9 pr_posterUUID];
    [v11 setPosterUUID:v12];

    v13 = [v8 uniqueIdentifier];
    [v11 setSnapshotDefinitionIdentifier:v13];

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [v11 setInterfaceOrientation:v14];

    v15 = [v10 underlyingCache];
    v16 = [v15 latestSnapshotBundleMatchingPredicate:v11];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__PRUISPosterChannel_prewarmSnapshotForDefinition_interfaceOrientation___block_invoke;
    v18[3] = &unk_1E83A8850;
    v18[4] = self;
    v19 = v11;
    v17 = v11;
    [v16 addSuccessBlock:v18];
  }
}

- (void)prewarmSnapshotForDescriptor:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRUISPosterChannel prewarmSnapshotForDescriptor:a2];
  }

  v6 = v5;
  v7 = [(PRUISPosterChannel *)self posterConfiguration];
  if (v7)
  {
    v8 = [(PRUISPosterChannel *)self snapshotCache];
    v9 = [[PRUISPosterSnapshotRequest alloc] initWithPoster:v7 snapshotDescriptor:v6];
    v10 = [(PRUISPosterSnapshotRequest *)v9 buildPUISnapshotRequestForPriority:0 sceneAttachments:0 error:0];
    if (v10)
    {
      v11 = [MEMORY[0x1E69C55C8] predicateMatchingRequest:v10];
      v12 = [v7 pr_posterUUID];
      [v11 setPosterUUID:v12];

      v13 = [v8 underlyingCache];
      v14 = [v13 latestSnapshotBundleMatchingPredicate:v11];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __51__PRUISPosterChannel_prewarmSnapshotForDescriptor___block_invoke;
      v16[3] = &unk_1E83A8850;
      v16[4] = self;
      v17 = v11;
      v15 = v11;
      [v14 addSuccessBlock:v16];
    }
  }
}

- (void)cacheSnapshotBundle:(id)a3 forPredicate:(id)a4
{
  inMemorySnapshotCacheLock = self->_inMemorySnapshotCacheLock;
  v7 = a4;
  v8 = a3;
  [(PFOSUnfairLock *)inMemorySnapshotCacheLock lock];
  [(PUIPosterSnapshotBundleInMemoryCache *)self->_inMemorySnapshotCacheLock_cache cacheSnapshotBundle:v8 forPredicate:v7];

  v9 = self->_inMemorySnapshotCacheLock;

  [(PFOSUnfairLock *)v9 unlock];
}

- (id)cachedSnapshotBundleSatisfyingPredicate:(id)a3
{
  inMemorySnapshotCacheLock = self->_inMemorySnapshotCacheLock;
  v5 = a3;
  [(PFOSUnfairLock *)inMemorySnapshotCacheLock lock];
  v6 = [(PUIPosterSnapshotBundleInMemoryCache *)self->_inMemorySnapshotCacheLock_cache cachedSnapshotBundleSatisfyingPredicate:v5];

  [(PFOSUnfairLock *)self->_inMemorySnapshotCacheLock unlock];

  return v6;
}

- (void)clearCachedSnapshotBundlesSatisfyingPredicate:(id)a3
{
  inMemorySnapshotCacheLock = self->_inMemorySnapshotCacheLock;
  v5 = a3;
  [(PFOSUnfairLock *)inMemorySnapshotCacheLock lock];
  [(PUIPosterSnapshotBundleInMemoryCache *)self->_inMemorySnapshotCacheLock_cache clearCachedSnapshotBundlesSatisfyingPredicate:v5];

  v6 = self->_inMemorySnapshotCacheLock;

  [(PFOSUnfairLock *)v6 unlock];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __33__PRUISPosterChannel_description__block_invoke;
  v10 = &unk_1E83A7100;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)updateGalleryWithUpdateSessionInfoProvider:(id)a3 extensionIdentifiers:(id)a4 policy:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(PRUISPosterChannelGalleryFetchOptions);
  [(PRUISPosterChannelGalleryFetchOptions *)v10 setUpdateSessionInfoProvider:v9];

  v11 = [v8 copy];
  [(PRUISPosterChannelGalleryFetchOptions *)v10 setExtensionIdentifiers:v11];

  [(PRUISPosterChannelGalleryFetchOptions *)v10 setPolicy:a5];
  v12 = [(PRUISPosterChannel *)self updateGalleryWithFetchOptions:v10];

  return v12;
}

- (void)updateGalleryWithUpdateSessionInfoProvider:(id)a3 extensionIdentifiers:(id)a4 policy:(unint64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [(PRUISPosterChannel *)self updateGalleryWithUpdateSessionInfoProvider:a3 extensionIdentifiers:a4 policy:a5];
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __104__PRUISPosterChannel_updateGalleryWithUpdateSessionInfoProvider_extensionIdentifiers_policy_completion___block_invoke;
    v12[3] = &unk_1E83A8878;
    v13 = v10;
    [v11 addCompletionBlock:v12 scheduler:self->_completionScheduler];
  }
}

- (PRUISPosterGallery)currentGallery
{
  [(PFOSUnfairLock *)self->_lock lock];
  v3 = [(PRUISPosterChannel *)self _lock_currentGallery];
  [(PFOSUnfairLock *)self->_lock unlock];

  return v3;
}

- (void)addChannelObserver:(id)a3
{
  v4 = a3;
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    lock = self->_lock;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__PRUISPosterChannel_addChannelObserver___block_invoke;
    v6[3] = &unk_1E83A7100;
    v6[4] = self;
    v7 = v4;
    [(PFOSUnfairLock *)lock performBlock:v6];
  }
}

- (void)removeChannelObserver:(id)a3
{
  v4 = a3;
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    lock = self->_lock;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__PRUISPosterChannel_removeChannelObserver___block_invoke;
    v6[3] = &unk_1E83A7100;
    v6[4] = self;
    v7 = v4;
    [(PFOSUnfairLock *)lock performBlock:v6];
  }
}

- (PRUISPosterChannel)init
{
  [(PRUISPosterChannel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRUISPosterChannel)initWithModelCoordinator:(id)a3 state:(id)a4 error:(id *)a5
{
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    [PRUISPosterChannel initWithModelCoordinator:a2 state:? error:?];
  }

  v12 = v11;
  if (!v11)
  {
    [PRUISPosterChannel initWithModelCoordinator:a2 state:? error:?];
  }

  v44.receiver = self;
  v44.super_class = PRUISPosterChannel;
  v13 = [(PRUISPosterChannel *)&v44 init];
  if (v13)
  {
    v14 = [v12 channelIdentifier];
    channelIdentifier = v13->_channelIdentifier;
    v13->_channelIdentifier = v14;

    objc_storeStrong(&v13->_modelCoordinator, a3);
    v16 = [[_TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator alloc] initWithModelCoordinator:v10 state:v12 error:a5];
    stateCoordinator = v13->_stateCoordinator;
    v13->_stateCoordinator = v16;

    v18 = v13->_stateCoordinator;
    if (!v18)
    {
      v42 = 0;
      goto LABEL_8;
    }

    [(PRUISPosterChannelStateCoordinator *)v18 setDelegate:v13];
    v19 = objc_opt_new();
    lock = v13->_lock;
    v13->_lock = v19;

    v21 = objc_opt_new();
    inMemorySnapshotCacheLock = v13->_inMemorySnapshotCacheLock;
    v13->_inMemorySnapshotCacheLock = v21;

    v23 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_observers = v13->_lock_observers;
    v13->_lock_observers = v23;

    v25 = MEMORY[0x1E69C5268];
    v26 = MEMORY[0x1E696AEC0];
    v27 = objc_opt_class();
    v28 = [(NSUUID *)v13->_channelIdentifier UUIDString];
    v29 = [v26 stringWithFormat:@"%@:%@-CompletionQueue", v27, v28];
    v30 = [v25 serialDispatchQueueSchedulerWithName:v29 qualityOfService:25];
    completionScheduler = v13->_completionScheduler;
    v13->_completionScheduler = v30;

    v32 = MEMORY[0x1E696AEC0];
    v33 = objc_opt_class();
    v34 = [(NSUUID *)v13->_channelIdentifier UUIDString];
    v35 = [v32 stringWithFormat:@"%@:%@-ObserverQueue", v33, v34];
    Serial = BSDispatchQueueCreateSerial();
    observerQueue = v13->_observerQueue;
    v13->_observerQueue = Serial;

    v38 = objc_opt_new();
    invalidationSignal = v13->_invalidationSignal;
    v13->_invalidationSignal = v38;

    v40 = objc_alloc_init(MEMORY[0x1E69C55C0]);
    inMemorySnapshotCacheLock_cache = v13->_inMemorySnapshotCacheLock_cache;
    v13->_inMemorySnapshotCacheLock_cache = v40;
  }

  v42 = v13;
LABEL_8:

  return v42;
}

- (void)applyUpdater:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    if (a4)
    {
      v6 = PFFunctionNameForAddress();
      *a4 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }
  }

  else
  {
    [(PRUISPosterChannelStateCoordinator *)self->_stateCoordinator applyUpdater:v7 error:a4];
  }
}

- (void)reapStaleStateOmittingLast:(unint64_t)a3 error:(id *)a4
{
  [(PFOSUnfairLock *)self->_lock lock];
  if (self->_lock_isBeingRemoved)
  {
    if (a4)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    if (a4)
    {
LABEL_6:
      v7 = PFFunctionNameForAddress();
      *a4 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

LABEL_7:
    lock = self->_lock;

    [(PFOSUnfairLock *)lock unlock];
    return;
  }

  v10 = [(PRUISPosterChannel *)self _lock_buildReaper];
  [(PFOSUnfairLock *)self->_lock unlock];
  v9 = [v10 reapStaleStateOmittingLast:a3];
  if (a4 && v9)
  {
    v9 = v9;
    *a4 = v9;
  }
}

- (id)reapStaleSnapshots
{
  [(PFOSUnfairLock *)self->_lock lock];
  if (self->_lock_isBeingRemoved)
  {
    [(PFOSUnfairLock *)self->_lock unlock];
    v3 = MEMORY[0x1E69C5258];
    v4 = PFFunctionNameForAddress();
LABEL_5:
    v5 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v6 = [v3 futureWithError:{v5, 0}];

    goto LABEL_7;
  }

  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    v3 = MEMORY[0x1E69C5258];
    v4 = PFFunctionNameForAddress();
    goto LABEL_5;
  }

  v4 = [(PRUISPosterChannel *)self _lock_buildReaper];
  v6 = [(PRUISPosterChannel *)self _lock_reapStaleSnapshotsWithReaper:v4];
  [(PFOSUnfairLock *)self->_lock unlock];
LABEL_7:

  return v6;
}

- (id)_lock_reapStaleSnapshotsWithReaper:(id)a3
{
  v4 = [a3 reapStaleSnapshots];
  lock_reapStaleSnapshotsFuture = self->_lock_reapStaleSnapshotsFuture;
  self->_lock_reapStaleSnapshotsFuture = v4;

  v6 = self->_lock_reapStaleSnapshotsFuture;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__PRUISPosterChannel__lock_reapStaleSnapshotsWithReaper___block_invoke;
  v9[3] = &unk_1E83A88A0;
  v9[4] = self;
  v7 = [(PFTFuture *)v6 flatMap:v9];

  return v7;
}

id __57__PRUISPosterChannel__lock_reapStaleSnapshotsWithReaper___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 count];
  v3 = MEMORY[0x1E69C5258];
  if (v2)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v5 = [v3 futureWithResult:v4];
  }

  else
  {
    v4 = PFFunctionNameForAddress();
    v6 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v5 = [v3 futureWithError:{v6, 0}];
  }

  return v5;
}

- (id)coordinateWithRemoveChannelBlock:(id)a3
{
  v4 = a3;
  if (v4 && ![(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    [(PFOSUnfairLock *)self->_lock lock];
    self->_lock_isBeingRemoved = 1;
    v6 = self->_lock_reapStaleSnapshotsFuture;
    [(PFOSUnfairLock *)self->_lock unlock];
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__PRUISPosterChannel_coordinateWithRemoveChannelBlock___block_invoke;
    aBlock[3] = &unk_1E83A88C8;
    v19 = v4;
    objc_copyWeak(&v20, &location);
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (v6)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __55__PRUISPosterChannel_coordinateWithRemoveChannelBlock___block_invoke_3;
      v16[3] = &unk_1E83A88F0;
      v11 = v9;
      v17 = v11;
      v12 = [(PFTFuture *)v6 flatMap:v16];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __55__PRUISPosterChannel_coordinateWithRemoveChannelBlock___block_invoke_4;
      v14[3] = &unk_1E83A8918;
      v15 = v11;
      v8 = [v12 recover:v14];
    }

    else
    {
      v8 = v9[2](v9);
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = MEMORY[0x1E69C5258];
    v6 = PFFunctionNameForAddress();
    v7 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v8 = [v5 futureWithError:{v7, 0}];
  }

  return v8;
}

id __55__PRUISPosterChannel_coordinateWithRemoveChannelBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__PRUISPosterChannel_coordinateWithRemoveChannelBlock___block_invoke_2;
  v4[3] = &unk_1E83A7500;
  objc_copyWeak(&v5, (a1 + 40));
  [v2 addFailureBlock:v4];
  objc_destroyWeak(&v5);

  return v2;
}

void __55__PRUISPosterChannel_coordinateWithRemoveChannelBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] lock];
    *(v2 + 64) = 0;
    [v2[1] unlock];
    WeakRetained = v2;
  }
}

- (id)reapEverything
{
  [(PFOSUnfairLock *)self->_lock lock];
  if (self->_lock_isBeingRemoved || [(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    [(PFOSUnfairLock *)self->_lock unlock];
    v3 = MEMORY[0x1E69C5258];
    v4 = PFFunctionNameForAddress();
    v9 = 0;
    v5 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v6 = v3;
LABEL_4:
    v7 = [v6 futureWithError:{v5, v9}];
    goto LABEL_5;
  }

  v4 = [(PRUISPosterChannel *)self _lock_buildReaper];
  v5 = [v4 reapStaleStateOmittingLast:1];
  if (v5)
  {
    [(PFOSUnfairLock *)self->_lock unlock];
    v6 = MEMORY[0x1E69C5258];
    goto LABEL_4;
  }

  v7 = [(PRUISPosterChannel *)self _lock_reapStaleSnapshotsWithReaper:v4];
  [(PFOSUnfairLock *)self->_lock unlock];
LABEL_5:

  return v7;
}

- (id)_lock_buildReaper
{
  v3 = [_TtC21PosterBoardUIServices24PRUISPosterChannelReaper alloc];
  modelCoordinator = self->_modelCoordinator;
  v5 = [(PRUISPosterChannel *)self _lock_state];
  v6 = [(PRUISPosterChannel *)self _lock_currentPosterConfiguration];
  v7 = [(PRUISPosterChannel *)self _lock_currentGallery];
  v8 = [(PRUISPosterChannel *)self _lock_snapshotCache];
  v9 = [(PRUISPosterChannelReaper *)v3 initWithModelCoordinator:modelCoordinator currentState:v5 currentPosterConfiguration:v6 currentGallery:v7 snapshotCache:v8];

  return v9;
}

- (id)descriptorsForState:(id)a3
{
  v4 = a3;
  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    v5 = objc_alloc(MEMORY[0x1E69C5018]);
    v6 = [MEMORY[0x1E695DFD8] set];
    v7 = [v5 initWithSet:v6];
  }

  else
  {
    v7 = [(PRUISPosterChannelStateCoordinator *)self->_stateCoordinator descriptorsForState:v4];
  }

  return v7;
}

- (BOOL)ingestUpdatedDescriptors:(id)a3 forState:(id)a4 policy:(unint64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [_TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata alloc];
  v13 = [MEMORY[0x1E695DF00] now];
  v14 = [(PRUISPosterGalleryMetadata *)v12 initWithCreationDate:v13];
  LOBYTE(a6) = [(PRUISPosterChannel *)self ingestUpdatedDescriptors:v11 forState:v10 galleryMetadata:v14 policy:a5 error:a6];

  return a6;
}

- (BOOL)ingestUpdatedDescriptors:(id)a3 forState:(id)a4 galleryMetadata:(id)a5 policy:(unint64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    if (a7)
    {
      v15 = PFFunctionNameForAddress();
      *a7 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

    v16 = 0;
  }

  else
  {
    stateCoordinator = self->_stateCoordinator;
    v20 = 0;
    [(PRUISPosterChannelStateCoordinator *)stateCoordinator ingestUpdatedDescriptors:v12 forState:v13 withMetadata:v14 withPolicy:a6 error:&v20];
    v18 = v20;
    v16 = v18 == 0;
    if (a7 && v18)
    {
      v18 = v18;
      *a7 = v18;
    }
  }

  return v16;
}

- (id)extensionInstanceForReason:(id)a3 outError:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    [PRUISPosterChannel extensionInstanceForReason:a2 outError:?];
  }

  v8 = v7;
  v9 = [(PRUISPosterChannel *)self state];
  v10 = [v9 posterConfigurationIdentity];
  v11 = [v10 provider];

  if (v11)
  {
    v12 = [(PRUISPosterChannel *)self _extensionProvider];
    v13 = [v12 acquireInstanceForExtensionWithIdentifier:v11 reason:v8 error:a4];
  }

  else
  {
    v12 = PFFunctionNameForAddress();
    PFGeneralErrorFromObjectWithLocalizedFailureReason();
    *a4 = v13 = 0;
  }

  return v13;
}

- (void)relinquishExtensionInstanceForReason:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRUISPosterChannel relinquishExtensionInstanceForReason:a2];
  }

  v6 = v5;
  v7 = [(PRUISPosterChannel *)self state];
  v8 = [v7 posterConfigurationIdentity];
  v9 = [v8 provider];

  if (v9)
  {
    v10 = [(PRUISPosterChannel *)self _extensionProvider];
    [v10 relinquishExtensionInstanceWithIdentifier:v9 reason:v6];
  }

  else
  {
    v10 = PRUISLogChannels();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(PRUISPosterChannel *)v6 relinquishExtensionInstanceForReason:v10];
    }
  }
}

- (id)pooledExtensionInstanceWithError:(id *)a3
{
  v5 = [(PRUISPosterChannel *)self state];
  v6 = [v5 posterConfigurationIdentity];
  v7 = [v6 provider];

  if (v7)
  {
    v8 = [(PRUISPosterChannel *)self _extensionProvider];
    v9 = [v8 instancePool];
    v10 = [v9 acquireInstanceForExtensionWithIdentifier:v7 error:a3];
  }

  else
  {
    v8 = PFFunctionNameForAddress();
    PFGeneralErrorFromObjectWithLocalizedFailureReason();
    *a3 = v10 = 0;
  }

  return v10;
}

- (void)relinquishPooledExtensionInstance:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRUISPosterChannel relinquishPooledExtensionInstance:a2];
  }

  v8 = v5;
  v6 = [(PRUISPosterChannel *)self _extensionProvider];
  v7 = [v6 instancePool];
  [v7 relinquishExtensionInstance:v8];
}

- (PRUISPosterSnapshotSQLiteCache)snapshotCache
{
  [(PFOSUnfairLock *)self->_lock lock];
  v3 = [(PRUISPosterChannel *)self _lock_snapshotCache];
  [(PFOSUnfairLock *)self->_lock unlock];

  return v3;
}

- (void)invalidate
{
  if ([(BSAtomicSignal *)self->_invalidationSignal signal])
  {
    [(PRUISPosterChannel *)self _notifyObserversWillInvalidate];
    [(PFOSUnfairLock *)self->_lock lock];
    lock_currentPosterConfiguration = self->_lock_currentPosterConfiguration;
    self->_lock_currentPosterConfiguration = 0;

    if (!self->_lock_state)
    {
      v4 = [(PRUISPosterChannelStateCoordinator *)self->_stateCoordinator state];
      lock_state = self->_lock_state;
      self->_lock_state = v4;
    }

    stateCoordinator = self->_stateCoordinator;
    self->_stateCoordinator = 0;

    [(PFOSUnfairLock *)self->_lock unlock];

    [(PRUISPosterChannel *)self _notifyObserversDidInvalidate];
  }
}

- (void)coordinator:(id)a3 didUpdateDescriptors:(id)a4 galleryMetadata:(id)a5
{
  if (a4)
  {
    v7 = a5;
    v8 = a4;
    v9 = [PRUISPosterGallery alloc];
    v10 = [(PRUISPosterChannel *)self state];
    v11 = [v10 channelContext];
    v12 = [(PRUISPosterGallery *)v9 initWithContext:v11 descriptors:v8 metadata:v7];
  }

  else
  {
    v12 = 0;
  }

  [(PRUISPosterChannel *)self _notifyObserversDidUpdateGallery:v12];
}

- (id)_lock_snapshotCache
{
  lock_snapshotCache = self->_lock_snapshotCache;
  if (!lock_snapshotCache)
  {
    v4 = [(PRUISPosterChannelStateCoordinator *)self->_stateCoordinator snapshotCacheURL];
    v5 = [[PRUISPosterSnapshotSQLiteCache alloc] initWithURL:v4];
    v6 = self->_lock_snapshotCache;
    self->_lock_snapshotCache = v5;

    lock_snapshotCache = self->_lock_snapshotCache;
  }

  return lock_snapshotCache;
}

- (id)_lock_snapshotController
{
  lock_snapshotController = self->_lock_snapshotController;
  if (!lock_snapshotController)
  {
    v4 = [(PRUISPosterChannel *)self _lock_snapshotCache];
    v5 = [PRUISPosterSnapshotController alloc];
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [(PRUISPosterChannel *)self _extensionProvider];
    v8 = [(PRUISPosterSnapshotController *)v5 initWithSQLiteCache:v4 instanceIdentifier:v6 extensionProvider:v7];
    v9 = self->_lock_snapshotController;
    self->_lock_snapshotController = v8;

    lock_snapshotController = self->_lock_snapshotController;
  }

  return lock_snapshotController;
}

- (id)_lock_currentPosterConfiguration
{
  lock_currentPosterConfiguration = self->_lock_currentPosterConfiguration;
  if (!lock_currentPosterConfiguration)
  {
    v4 = [(PRUISPosterChannelStateCoordinator *)self->_stateCoordinator currentPosterConfiguration];
    v5 = self->_lock_currentPosterConfiguration;
    self->_lock_currentPosterConfiguration = v4;

    lock_currentPosterConfiguration = self->_lock_currentPosterConfiguration;
  }

  return lock_currentPosterConfiguration;
}

- (id)_lock_currentGallery
{
  lock_currentGallery = self->_lock_currentGallery;
  if (!lock_currentGallery)
  {
    v4 = [(PRUISPosterChannel *)self _lock_state];
    v5 = [(PRUISPosterChannelStateCoordinator *)self->_stateCoordinator descriptorsForState:v4];
    if (v5)
    {
      v6 = [(PRUISPosterChannelStateCoordinator *)self->_stateCoordinator galleryMetadataForState:v4];
      v7 = [PRUISPosterGallery alloc];
      v8 = [v4 channelContext];
      v9 = [(PRUISPosterGallery *)v7 initWithContext:v8 descriptors:v5 metadata:v6];
      v10 = self->_lock_currentGallery;
      self->_lock_currentGallery = v9;
    }

    lock_currentGallery = self->_lock_currentGallery;
  }

  return lock_currentGallery;
}

- (void)_notifyObserversWillUpdateContext
{
  [(PFOSUnfairLock *)self->_lock lock];
  v3 = [(NSHashTable *)self->_lock_observers copy];
  lock_state = self->_lock_state;
  self->_lock_state = 0;

  lock_currentGallery = self->_lock_currentGallery;
  self->_lock_currentGallery = 0;

  [(PFOSUnfairLock *)self->_lock unlock];
  v6 = [v3 allObjects];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PRUISPosterChannel__notifyObserversWillUpdateContext__block_invoke;
  v7[3] = &unk_1E83A8940;
  v7[4] = self;
  [v6 pf_eachRespondingToSelector:sel_channelWillUpdateContext_ performBlock:v7];
}

void __55__PRUISPosterChannel__notifyObserversWillUpdateContext__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PRUISPosterChannel__notifyObserversWillUpdateContext__block_invoke_2;
  v7[3] = &unk_1E83A7100;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)_notifyObserversDidUpdateContext:(id)a3
{
  v4 = a3;
  [(PFOSUnfairLock *)self->_lock lock];
  v5 = [(NSHashTable *)self->_lock_observers copy];
  lock_state = self->_lock_state;
  self->_lock_state = 0;

  lock_currentGallery = self->_lock_currentGallery;
  self->_lock_currentGallery = 0;

  [(PFOSUnfairLock *)self->_lock unlock];
  v8 = [v5 allObjects];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PRUISPosterChannel__notifyObserversDidUpdateContext___block_invoke;
  v10[3] = &unk_1E83A8968;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 pf_eachRespondingToSelector:sel_channel_didUpdateContext_ performBlock:v10];
}

void __55__PRUISPosterChannel__notifyObserversDidUpdateContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PRUISPosterChannel__notifyObserversDidUpdateContext___block_invoke_2;
  block[3] = &unk_1E83A8788;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

- (void)_notifyObserversWillUpdatePoster
{
  [(PFOSUnfairLock *)self->_lock lock];
  v3 = [(NSHashTable *)self->_lock_observers copy];
  [(PFOSUnfairLock *)self->_lock unlock];
  v4 = [v3 allObjects];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PRUISPosterChannel__notifyObserversWillUpdatePoster__block_invoke;
  v5[3] = &unk_1E83A8940;
  v5[4] = self;
  [v4 pf_eachRespondingToSelector:sel_channelWillUpdatePoster_ performBlock:v5];
}

void __54__PRUISPosterChannel__notifyObserversWillUpdatePoster__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PRUISPosterChannel__notifyObserversWillUpdatePoster__block_invoke_2;
  v7[3] = &unk_1E83A7100;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)_notifyObserversDidUpdatePoster:(id)a3
{
  v5 = a3;
  [(PFOSUnfairLock *)self->_lock lock];
  v6 = [(NSHashTable *)self->_lock_observers copy];
  objc_storeStrong(&self->_lock_currentPosterConfiguration, a3);
  lock_state = self->_lock_state;
  self->_lock_state = 0;

  [(PFOSUnfairLock *)self->_lock unlock];
  v8 = [v6 allObjects];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__PRUISPosterChannel__notifyObserversDidUpdatePoster___block_invoke;
  v10[3] = &unk_1E83A8968;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  [v8 pf_eachRespondingToSelector:sel_channel_didUpdatePoster_ performBlock:v10];
}

void __54__PRUISPosterChannel__notifyObserversDidUpdatePoster___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PRUISPosterChannel__notifyObserversDidUpdatePoster___block_invoke_2;
  block[3] = &unk_1E83A8788;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

- (void)_notifyObserversWillUpdateGallery
{
  [(PFOSUnfairLock *)self->_lock lock];
  v3 = [(NSHashTable *)self->_lock_observers copy];
  [(PFOSUnfairLock *)self->_lock unlock];
  v4 = [v3 allObjects];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PRUISPosterChannel__notifyObserversWillUpdateGallery__block_invoke;
  v5[3] = &unk_1E83A8940;
  v5[4] = self;
  [v4 pf_eachRespondingToSelector:sel_channelWillUpdateGallery_ performBlock:v5];
}

void __55__PRUISPosterChannel__notifyObserversWillUpdateGallery__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PRUISPosterChannel__notifyObserversWillUpdateGallery__block_invoke_2;
  v7[3] = &unk_1E83A7100;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)_notifyObserversDidUpdateGallery:(id)a3
{
  v5 = a3;
  [(PFOSUnfairLock *)self->_lock lock];
  v6 = [(NSHashTable *)self->_lock_observers copy];
  objc_storeStrong(&self->_lock_currentGallery, a3);
  [(PFOSUnfairLock *)self->_lock unlock];
  v7 = [v6 allObjects];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PRUISPosterChannel__notifyObserversDidUpdateGallery___block_invoke;
  v9[3] = &unk_1E83A8968;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v7 pf_eachRespondingToSelector:sel_channel_didUpdateGallery_ performBlock:v9];
}

void __55__PRUISPosterChannel__notifyObserversDidUpdateGallery___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PRUISPosterChannel__notifyObserversDidUpdateGallery___block_invoke_2;
  block[3] = &unk_1E83A8788;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

- (void)_notifyObserversWillInvalidate
{
  [(PFOSUnfairLock *)self->_lock lock];
  v3 = [(NSHashTable *)self->_lock_observers copy];
  [(PFOSUnfairLock *)self->_lock unlock];
  v4 = [v3 allObjects];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PRUISPosterChannel__notifyObserversWillInvalidate__block_invoke;
  v5[3] = &unk_1E83A8940;
  v5[4] = self;
  [v4 pf_eachRespondingToSelector:sel_channelWillInvalidate_ performBlock:v5];
}

void __52__PRUISPosterChannel__notifyObserversWillInvalidate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PRUISPosterChannel__notifyObserversWillInvalidate__block_invoke_2;
  v7[3] = &unk_1E83A7100;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)_notifyObserversDidInvalidate
{
  [(PFOSUnfairLock *)self->_lock lock];
  v3 = [(NSHashTable *)self->_lock_observers copy];
  lock_observers = self->_lock_observers;
  self->_lock_observers = 0;

  lock_currentGallery = self->_lock_currentGallery;
  self->_lock_currentGallery = 0;

  [(PFOSUnfairLock *)self->_lock unlock];
  v6 = [v3 allObjects];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PRUISPosterChannel__notifyObserversDidInvalidate__block_invoke;
  v7[3] = &unk_1E83A8940;
  v7[4] = self;
  [v6 pf_eachRespondingToSelector:sel_channelDidInvalidate_ performBlock:v7];
}

void __51__PRUISPosterChannel__notifyObserversDidInvalidate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PRUISPosterChannel__notifyObserversDidInvalidate__block_invoke_2;
  v7[3] = &unk_1E83A7100;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v7 = a3;
  v4 = [(NSUUID *)self->_channelIdentifier UUIDString];
  [v7 appendString:v4 withName:@"identifier"];

  v5 = [(PRUISPosterChannel *)self state];
  v6 = [v7 appendObject:v5 withName:@"state"];
}

void __60__PRUISPosterChannel_fetchSnapshotForDescriptor_completion___block_invoke_5_cold_1(uint64_t a1, void *a2)
{
  v3 = [*(*(a1 + 32) + 56) channelIdentifier];
  v10 = [a2 localizedDescription];
  OUTLINED_FUNCTION_3_1(&dword_1CAE63000, v4, v5, "error snapshotting channel with identifier: %{public}@. Error: %{public}@.", v6, v7, v8, v9, 2u);
}

void __60__PRUISPosterChannel_fetchSnapshotForDescriptor_completion___block_invoke_5_cold_2(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 56) channelIdentifier];
  OUTLINED_FUNCTION_3_1(&dword_1CAE63000, v2, v3, "successfully snapshotted channel with identifier: %{public}@. Result: %{public}@.", v4, v5, v6, v7, 2u);
}

- (void)prewarmSnapshotForDefinition:(char *)a1 interfaceOrientation:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"interfaceOrientation", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)prewarmSnapshotForDefinition:(char *)a1 interfaceOrientation:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"definition", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)prewarmSnapshotForDescriptor:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"descriptor", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithModelCoordinator:(char *)a1 state:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"state", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithModelCoordinator:(char *)a1 state:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"modelCoordinator", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)extensionInstanceForReason:(char *)a1 outError:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"reason", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)relinquishExtensionInstanceForReason:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1CAE63000, a2, OS_LOG_TYPE_ERROR, "Cannot relinquish extension instance for reason %{public}@, because Poster Configuration Extension Identifier was nil", &v2, 0xCu);
}

- (void)relinquishExtensionInstanceForReason:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"reason", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)relinquishPooledExtensionInstance:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"pooledExtensionInstance", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end