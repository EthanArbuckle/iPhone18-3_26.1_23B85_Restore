@interface PRUISPosterChannel
- (BOOL)ingestUpdatedDescriptors:(id)descriptors forState:(id)state galleryMetadata:(id)metadata policy:(unint64_t)policy error:(id *)error;
- (BOOL)ingestUpdatedDescriptors:(id)descriptors forState:(id)state policy:(unint64_t)policy error:(id *)error;
- (NSDate)creationDate;
- (NSDate)lastModifiedDate;
- (NSString)description;
- (NSUUID)channelIdentifier;
- (PRSPosterConfiguration)posterConfiguration;
- (PRUISPosterChannel)init;
- (PRUISPosterChannel)initWithModelCoordinator:(id)coordinator state:(id)state error:(id *)error;
- (PRUISPosterChannelContext)channelContext;
- (PRUISPosterGallery)currentGallery;
- (PRUISPosterSnapshotController)snapshotController;
- (PRUISPosterSnapshotSQLiteCache)snapshotCache;
- (_TtC21PosterBoardUIServices23PRUISPosterChannelState)state;
- (id)_lock_buildReaper;
- (id)_lock_currentGallery;
- (id)_lock_currentPosterConfiguration;
- (id)_lock_reapStaleSnapshotsWithReaper:(id)reaper;
- (id)_lock_snapshotCache;
- (id)_lock_snapshotController;
- (id)_lock_state;
- (id)cachedSnapshotBundleSatisfyingPredicate:(id)predicate;
- (id)coordinateWithRemoveChannelBlock:(id)block;
- (id)descriptorsForState:(id)state;
- (id)extensionInstanceForReason:(id)reason outError:(id *)error;
- (id)pooledExtensionInstanceWithError:(id *)error;
- (id)reapEverything;
- (id)reapStaleSnapshots;
- (id)updateGalleryWithUpdateSessionInfoProvider:(id)provider extensionIdentifiers:(id)identifiers policy:(unint64_t)policy;
- (unint64_t)version;
- (void)_notifyObserversDidInvalidate;
- (void)_notifyObserversDidUpdateContext:(id)context;
- (void)_notifyObserversDidUpdateGallery:(id)gallery;
- (void)_notifyObserversDidUpdatePoster:(id)poster;
- (void)_notifyObserversWillInvalidate;
- (void)_notifyObserversWillUpdateContext;
- (void)_notifyObserversWillUpdateGallery;
- (void)_notifyObserversWillUpdatePoster;
- (void)addChannelObserver:(id)observer;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)applyUpdater:(id)updater error:(id *)error;
- (void)cacheSnapshotBundle:(id)bundle forPredicate:(id)predicate;
- (void)clearCachedSnapshotBundlesSatisfyingPredicate:(id)predicate;
- (void)coordinator:(id)coordinator didUpdateDescriptors:(id)descriptors galleryMetadata:(id)metadata;
- (void)fetchSnapshotForDescriptor:(id)descriptor completion:(id)completion;
- (void)invalidate;
- (void)prewarmSnapshotForDefinition:(id)definition interfaceOrientation:(int64_t)orientation;
- (void)prewarmSnapshotForDescriptor:(id)descriptor;
- (void)reapStaleStateOmittingLast:(unint64_t)last error:(id *)error;
- (void)relinquishExtensionInstanceForReason:(id)reason;
- (void)relinquishPooledExtensionInstance:(id)instance;
- (void)removeChannelObserver:(id)observer;
- (void)updateGalleryWithUpdateSessionInfoProvider:(id)provider extensionIdentifiers:(id)identifiers policy:(unint64_t)policy completion:(id)completion;
@end

@implementation PRUISPosterChannel

- (_TtC21PosterBoardUIServices23PRUISPosterChannelState)state
{
  [(PFOSUnfairLock *)self->_lock lock];
  _lock_state = [(PRUISPosterChannel *)self _lock_state];
  [(PFOSUnfairLock *)self->_lock unlock];

  return _lock_state;
}

- (id)_lock_state
{
  lock_state = self->_lock_state;
  if (!lock_state)
  {
    state = [(PRUISPosterChannelStateCoordinator *)self->_stateCoordinator state];
    v5 = self->_lock_state;
    self->_lock_state = state;

    lock_state = self->_lock_state;
  }

  return lock_state;
}

- (NSUUID)channelIdentifier
{
  state = [(PRUISPosterChannel *)self state];
  channelIdentifier = [state channelIdentifier];

  return channelIdentifier;
}

- (unint64_t)version
{
  state = [(PRUISPosterChannel *)self state];
  channelVersion = [state channelVersion];

  return channelVersion;
}

- (PRUISPosterChannelContext)channelContext
{
  state = [(PRUISPosterChannel *)self state];
  channelContext = [state channelContext];

  return channelContext;
}

- (PRSPosterConfiguration)posterConfiguration
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) != 0)
  {
    _lock_currentPosterConfiguration = 0;
  }

  else
  {
    [(PFOSUnfairLock *)self->_lock lock];
    _lock_currentPosterConfiguration = [(PRUISPosterChannel *)self _lock_currentPosterConfiguration];
    [(PFOSUnfairLock *)self->_lock unlock];
  }

  return _lock_currentPosterConfiguration;
}

- (NSDate)creationDate
{
  state = [(PRUISPosterChannel *)self state];
  creationDate = [state creationDate];

  return creationDate;
}

- (NSDate)lastModifiedDate
{
  state = [(PRUISPosterChannel *)self state];
  lastModifiedDate = [state lastModifiedDate];

  return lastModifiedDate;
}

- (PRUISPosterSnapshotController)snapshotController
{
  [(PFOSUnfairLock *)self->_lock lock];
  _lock_snapshotController = [(PRUISPosterChannel *)self _lock_snapshotController];
  [(PFOSUnfairLock *)self->_lock unlock];

  return _lock_snapshotController;
}

- (void)fetchSnapshotForDescriptor:(id)descriptor completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
  v8 = self->_completionScheduler;
  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __60__PRUISPosterChannel_fetchSnapshotForDescriptor_completion___block_invoke;
    v28[3] = &unk_1E83A8558;
    v28[4] = self;
    v29 = completionCopy;
    [(PFTScheduler *)v8 performBlock:v28];
    posterConfiguration = v29;
  }

  else
  {
    posterConfiguration = [(PRUISPosterChannel *)self posterConfiguration];
    if (posterConfiguration)
    {
      [(PFOSUnfairLock *)self->_lock lock];
      _lock_snapshotController = [(PRUISPosterChannel *)self _lock_snapshotController];
      v11 = objc_alloc(MEMORY[0x1E69C52E8]);
      _path = [posterConfiguration _path];
      v13 = [v11 _initWithPath:_path];

      v19 = v13;
      v14 = [[PRUISPosterSnapshotRequest alloc] initWithPoster:v13 snapshotDescriptor:descriptorCopy];
      v25 = 0;
      v15 = [_lock_snapshotController currentSnapshotBundleForRequest:v14 error:&v25];
      v16 = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __60__PRUISPosterChannel_fetchSnapshotForDescriptor_completion___block_invoke_3;
      aBlock[3] = &unk_1E83A8800;
      aBlock[4] = self;
      v23 = v8;
      v24 = completionCopy;
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
        [_lock_snapshotController executeSnapshotRequest:v14 completion:v20];
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
      v27 = completionCopy;
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

- (void)prewarmSnapshotForDefinition:(id)definition interfaceOrientation:(int64_t)orientation
{
  definitionCopy = definition;
  if (!definitionCopy)
  {
    [PRUISPosterChannel prewarmSnapshotForDefinition:a2 interfaceOrientation:?];
  }

  if (!orientation)
  {
    [PRUISPosterChannel prewarmSnapshotForDefinition:a2 interfaceOrientation:?];
  }

  v8 = definitionCopy;
  posterConfiguration = [(PRUISPosterChannel *)self posterConfiguration];
  if (posterConfiguration)
  {
    snapshotCache = [(PRUISPosterChannel *)self snapshotCache];
    v11 = objc_alloc_init(MEMORY[0x1E69C55C8]);
    pr_posterUUID = [posterConfiguration pr_posterUUID];
    [v11 setPosterUUID:pr_posterUUID];

    uniqueIdentifier = [v8 uniqueIdentifier];
    [v11 setSnapshotDefinitionIdentifier:uniqueIdentifier];

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
    [v11 setInterfaceOrientation:v14];

    underlyingCache = [snapshotCache underlyingCache];
    v16 = [underlyingCache latestSnapshotBundleMatchingPredicate:v11];
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

- (void)prewarmSnapshotForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (!descriptorCopy)
  {
    [PRUISPosterChannel prewarmSnapshotForDescriptor:a2];
  }

  v6 = descriptorCopy;
  posterConfiguration = [(PRUISPosterChannel *)self posterConfiguration];
  if (posterConfiguration)
  {
    snapshotCache = [(PRUISPosterChannel *)self snapshotCache];
    v9 = [[PRUISPosterSnapshotRequest alloc] initWithPoster:posterConfiguration snapshotDescriptor:v6];
    v10 = [(PRUISPosterSnapshotRequest *)v9 buildPUISnapshotRequestForPriority:0 sceneAttachments:0 error:0];
    if (v10)
    {
      v11 = [MEMORY[0x1E69C55C8] predicateMatchingRequest:v10];
      pr_posterUUID = [posterConfiguration pr_posterUUID];
      [v11 setPosterUUID:pr_posterUUID];

      underlyingCache = [snapshotCache underlyingCache];
      v14 = [underlyingCache latestSnapshotBundleMatchingPredicate:v11];
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

- (void)cacheSnapshotBundle:(id)bundle forPredicate:(id)predicate
{
  inMemorySnapshotCacheLock = self->_inMemorySnapshotCacheLock;
  predicateCopy = predicate;
  bundleCopy = bundle;
  [(PFOSUnfairLock *)inMemorySnapshotCacheLock lock];
  [(PUIPosterSnapshotBundleInMemoryCache *)self->_inMemorySnapshotCacheLock_cache cacheSnapshotBundle:bundleCopy forPredicate:predicateCopy];

  v9 = self->_inMemorySnapshotCacheLock;

  [(PFOSUnfairLock *)v9 unlock];
}

- (id)cachedSnapshotBundleSatisfyingPredicate:(id)predicate
{
  inMemorySnapshotCacheLock = self->_inMemorySnapshotCacheLock;
  predicateCopy = predicate;
  [(PFOSUnfairLock *)inMemorySnapshotCacheLock lock];
  v6 = [(PUIPosterSnapshotBundleInMemoryCache *)self->_inMemorySnapshotCacheLock_cache cachedSnapshotBundleSatisfyingPredicate:predicateCopy];

  [(PFOSUnfairLock *)self->_inMemorySnapshotCacheLock unlock];

  return v6;
}

- (void)clearCachedSnapshotBundlesSatisfyingPredicate:(id)predicate
{
  inMemorySnapshotCacheLock = self->_inMemorySnapshotCacheLock;
  predicateCopy = predicate;
  [(PFOSUnfairLock *)inMemorySnapshotCacheLock lock];
  [(PUIPosterSnapshotBundleInMemoryCache *)self->_inMemorySnapshotCacheLock_cache clearCachedSnapshotBundlesSatisfyingPredicate:predicateCopy];

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
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)updateGalleryWithUpdateSessionInfoProvider:(id)provider extensionIdentifiers:(id)identifiers policy:(unint64_t)policy
{
  identifiersCopy = identifiers;
  providerCopy = provider;
  v10 = objc_alloc_init(PRUISPosterChannelGalleryFetchOptions);
  [(PRUISPosterChannelGalleryFetchOptions *)v10 setUpdateSessionInfoProvider:providerCopy];

  v11 = [identifiersCopy copy];
  [(PRUISPosterChannelGalleryFetchOptions *)v10 setExtensionIdentifiers:v11];

  [(PRUISPosterChannelGalleryFetchOptions *)v10 setPolicy:policy];
  v12 = [(PRUISPosterChannel *)self updateGalleryWithFetchOptions:v10];

  return v12;
}

- (void)updateGalleryWithUpdateSessionInfoProvider:(id)provider extensionIdentifiers:(id)identifiers policy:(unint64_t)policy completion:(id)completion
{
  completionCopy = completion;
  v11 = [(PRUISPosterChannel *)self updateGalleryWithUpdateSessionInfoProvider:provider extensionIdentifiers:identifiers policy:policy];
  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __104__PRUISPosterChannel_updateGalleryWithUpdateSessionInfoProvider_extensionIdentifiers_policy_completion___block_invoke;
    v12[3] = &unk_1E83A8878;
    v13 = completionCopy;
    [v11 addCompletionBlock:v12 scheduler:self->_completionScheduler];
  }
}

- (PRUISPosterGallery)currentGallery
{
  [(PFOSUnfairLock *)self->_lock lock];
  _lock_currentGallery = [(PRUISPosterChannel *)self _lock_currentGallery];
  [(PFOSUnfairLock *)self->_lock unlock];

  return _lock_currentGallery;
}

- (void)addChannelObserver:(id)observer
{
  observerCopy = observer;
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    lock = self->_lock;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__PRUISPosterChannel_addChannelObserver___block_invoke;
    v6[3] = &unk_1E83A7100;
    v6[4] = self;
    v7 = observerCopy;
    [(PFOSUnfairLock *)lock performBlock:v6];
  }
}

- (void)removeChannelObserver:(id)observer
{
  observerCopy = observer;
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    lock = self->_lock;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__PRUISPosterChannel_removeChannelObserver___block_invoke;
    v6[3] = &unk_1E83A7100;
    v6[4] = self;
    v7 = observerCopy;
    [(PFOSUnfairLock *)lock performBlock:v6];
  }
}

- (PRUISPosterChannel)init
{
  [(PRUISPosterChannel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRUISPosterChannel)initWithModelCoordinator:(id)coordinator state:(id)state error:(id *)error
{
  coordinatorCopy = coordinator;
  stateCopy = state;
  if (!coordinatorCopy)
  {
    [PRUISPosterChannel initWithModelCoordinator:a2 state:? error:?];
  }

  v12 = stateCopy;
  if (!stateCopy)
  {
    [PRUISPosterChannel initWithModelCoordinator:a2 state:? error:?];
  }

  v44.receiver = self;
  v44.super_class = PRUISPosterChannel;
  v13 = [(PRUISPosterChannel *)&v44 init];
  if (v13)
  {
    channelIdentifier = [v12 channelIdentifier];
    channelIdentifier = v13->_channelIdentifier;
    v13->_channelIdentifier = channelIdentifier;

    objc_storeStrong(&v13->_modelCoordinator, coordinator);
    v16 = [[_TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator alloc] initWithModelCoordinator:coordinatorCopy state:v12 error:error];
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

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_observers = v13->_lock_observers;
    v13->_lock_observers = weakObjectsHashTable;

    v25 = MEMORY[0x1E69C5268];
    v26 = MEMORY[0x1E696AEC0];
    v27 = objc_opt_class();
    uUIDString = [(NSUUID *)v13->_channelIdentifier UUIDString];
    v29 = [v26 stringWithFormat:@"%@:%@-CompletionQueue", v27, uUIDString];
    v30 = [v25 serialDispatchQueueSchedulerWithName:v29 qualityOfService:25];
    completionScheduler = v13->_completionScheduler;
    v13->_completionScheduler = v30;

    v32 = MEMORY[0x1E696AEC0];
    v33 = objc_opt_class();
    uUIDString2 = [(NSUUID *)v13->_channelIdentifier UUIDString];
    v35 = [v32 stringWithFormat:@"%@:%@-ObserverQueue", v33, uUIDString2];
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

- (void)applyUpdater:(id)updater error:(id *)error
{
  updaterCopy = updater;
  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    if (error)
    {
      v6 = PFFunctionNameForAddress();
      *error = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }
  }

  else
  {
    [(PRUISPosterChannelStateCoordinator *)self->_stateCoordinator applyUpdater:updaterCopy error:error];
  }
}

- (void)reapStaleStateOmittingLast:(unint64_t)last error:(id *)error
{
  [(PFOSUnfairLock *)self->_lock lock];
  if (self->_lock_isBeingRemoved)
  {
    if (error)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    if (error)
    {
LABEL_6:
      v7 = PFFunctionNameForAddress();
      *error = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

LABEL_7:
    lock = self->_lock;

    [(PFOSUnfairLock *)lock unlock];
    return;
  }

  _lock_buildReaper = [(PRUISPosterChannel *)self _lock_buildReaper];
  [(PFOSUnfairLock *)self->_lock unlock];
  v9 = [_lock_buildReaper reapStaleStateOmittingLast:last];
  if (error && v9)
  {
    v9 = v9;
    *error = v9;
  }
}

- (id)reapStaleSnapshots
{
  [(PFOSUnfairLock *)self->_lock lock];
  if (self->_lock_isBeingRemoved)
  {
    [(PFOSUnfairLock *)self->_lock unlock];
    v3 = MEMORY[0x1E69C5258];
    _lock_buildReaper = PFFunctionNameForAddress();
LABEL_5:
    v5 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v6 = [v3 futureWithError:{v5, 0}];

    goto LABEL_7;
  }

  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    v3 = MEMORY[0x1E69C5258];
    _lock_buildReaper = PFFunctionNameForAddress();
    goto LABEL_5;
  }

  _lock_buildReaper = [(PRUISPosterChannel *)self _lock_buildReaper];
  v6 = [(PRUISPosterChannel *)self _lock_reapStaleSnapshotsWithReaper:_lock_buildReaper];
  [(PFOSUnfairLock *)self->_lock unlock];
LABEL_7:

  return v6;
}

- (id)_lock_reapStaleSnapshotsWithReaper:(id)reaper
{
  reapStaleSnapshots = [reaper reapStaleSnapshots];
  lock_reapStaleSnapshotsFuture = self->_lock_reapStaleSnapshotsFuture;
  self->_lock_reapStaleSnapshotsFuture = reapStaleSnapshots;

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

- (id)coordinateWithRemoveChannelBlock:(id)block
{
  blockCopy = block;
  if (blockCopy && ![(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
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
    v19 = blockCopy;
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
    _lock_buildReaper = PFFunctionNameForAddress();
    v9 = 0;
    v5 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v6 = v3;
LABEL_4:
    v7 = [v6 futureWithError:{v5, v9}];
    goto LABEL_5;
  }

  _lock_buildReaper = [(PRUISPosterChannel *)self _lock_buildReaper];
  v5 = [_lock_buildReaper reapStaleStateOmittingLast:1];
  if (v5)
  {
    [(PFOSUnfairLock *)self->_lock unlock];
    v6 = MEMORY[0x1E69C5258];
    goto LABEL_4;
  }

  v7 = [(PRUISPosterChannel *)self _lock_reapStaleSnapshotsWithReaper:_lock_buildReaper];
  [(PFOSUnfairLock *)self->_lock unlock];
LABEL_5:

  return v7;
}

- (id)_lock_buildReaper
{
  v3 = [_TtC21PosterBoardUIServices24PRUISPosterChannelReaper alloc];
  modelCoordinator = self->_modelCoordinator;
  _lock_state = [(PRUISPosterChannel *)self _lock_state];
  _lock_currentPosterConfiguration = [(PRUISPosterChannel *)self _lock_currentPosterConfiguration];
  _lock_currentGallery = [(PRUISPosterChannel *)self _lock_currentGallery];
  _lock_snapshotCache = [(PRUISPosterChannel *)self _lock_snapshotCache];
  v9 = [(PRUISPosterChannelReaper *)v3 initWithModelCoordinator:modelCoordinator currentState:_lock_state currentPosterConfiguration:_lock_currentPosterConfiguration currentGallery:_lock_currentGallery snapshotCache:_lock_snapshotCache];

  return v9;
}

- (id)descriptorsForState:(id)state
{
  stateCopy = state;
  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    v5 = objc_alloc(MEMORY[0x1E69C5018]);
    v6 = [MEMORY[0x1E695DFD8] set];
    v7 = [v5 initWithSet:v6];
  }

  else
  {
    v7 = [(PRUISPosterChannelStateCoordinator *)self->_stateCoordinator descriptorsForState:stateCopy];
  }

  return v7;
}

- (BOOL)ingestUpdatedDescriptors:(id)descriptors forState:(id)state policy:(unint64_t)policy error:(id *)error
{
  stateCopy = state;
  descriptorsCopy = descriptors;
  v12 = [_TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata alloc];
  v13 = [MEMORY[0x1E695DF00] now];
  v14 = [(PRUISPosterGalleryMetadata *)v12 initWithCreationDate:v13];
  LOBYTE(error) = [(PRUISPosterChannel *)self ingestUpdatedDescriptors:descriptorsCopy forState:stateCopy galleryMetadata:v14 policy:policy error:error];

  return error;
}

- (BOOL)ingestUpdatedDescriptors:(id)descriptors forState:(id)state galleryMetadata:(id)metadata policy:(unint64_t)policy error:(id *)error
{
  descriptorsCopy = descriptors;
  stateCopy = state;
  metadataCopy = metadata;
  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    if (error)
    {
      v15 = PFFunctionNameForAddress();
      *error = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

    v16 = 0;
  }

  else
  {
    stateCoordinator = self->_stateCoordinator;
    v20 = 0;
    [(PRUISPosterChannelStateCoordinator *)stateCoordinator ingestUpdatedDescriptors:descriptorsCopy forState:stateCopy withMetadata:metadataCopy withPolicy:policy error:&v20];
    v18 = v20;
    v16 = v18 == 0;
    if (error && v18)
    {
      v18 = v18;
      *error = v18;
    }
  }

  return v16;
}

- (id)extensionInstanceForReason:(id)reason outError:(id *)error
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [PRUISPosterChannel extensionInstanceForReason:a2 outError:?];
  }

  v8 = reasonCopy;
  state = [(PRUISPosterChannel *)self state];
  posterConfigurationIdentity = [state posterConfigurationIdentity];
  provider = [posterConfigurationIdentity provider];

  if (provider)
  {
    _extensionProvider = [(PRUISPosterChannel *)self _extensionProvider];
    v13 = [_extensionProvider acquireInstanceForExtensionWithIdentifier:provider reason:v8 error:error];
  }

  else
  {
    _extensionProvider = PFFunctionNameForAddress();
    PFGeneralErrorFromObjectWithLocalizedFailureReason();
    *error = v13 = 0;
  }

  return v13;
}

- (void)relinquishExtensionInstanceForReason:(id)reason
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [PRUISPosterChannel relinquishExtensionInstanceForReason:a2];
  }

  v6 = reasonCopy;
  state = [(PRUISPosterChannel *)self state];
  posterConfigurationIdentity = [state posterConfigurationIdentity];
  provider = [posterConfigurationIdentity provider];

  if (provider)
  {
    _extensionProvider = [(PRUISPosterChannel *)self _extensionProvider];
    [_extensionProvider relinquishExtensionInstanceWithIdentifier:provider reason:v6];
  }

  else
  {
    _extensionProvider = PRUISLogChannels();
    if (os_log_type_enabled(_extensionProvider, OS_LOG_TYPE_ERROR))
    {
      [(PRUISPosterChannel *)v6 relinquishExtensionInstanceForReason:_extensionProvider];
    }
  }
}

- (id)pooledExtensionInstanceWithError:(id *)error
{
  state = [(PRUISPosterChannel *)self state];
  posterConfigurationIdentity = [state posterConfigurationIdentity];
  provider = [posterConfigurationIdentity provider];

  if (provider)
  {
    _extensionProvider = [(PRUISPosterChannel *)self _extensionProvider];
    instancePool = [_extensionProvider instancePool];
    v10 = [instancePool acquireInstanceForExtensionWithIdentifier:provider error:error];
  }

  else
  {
    _extensionProvider = PFFunctionNameForAddress();
    PFGeneralErrorFromObjectWithLocalizedFailureReason();
    *error = v10 = 0;
  }

  return v10;
}

- (void)relinquishPooledExtensionInstance:(id)instance
{
  instanceCopy = instance;
  if (!instanceCopy)
  {
    [PRUISPosterChannel relinquishPooledExtensionInstance:a2];
  }

  v8 = instanceCopy;
  _extensionProvider = [(PRUISPosterChannel *)self _extensionProvider];
  instancePool = [_extensionProvider instancePool];
  [instancePool relinquishExtensionInstance:v8];
}

- (PRUISPosterSnapshotSQLiteCache)snapshotCache
{
  [(PFOSUnfairLock *)self->_lock lock];
  _lock_snapshotCache = [(PRUISPosterChannel *)self _lock_snapshotCache];
  [(PFOSUnfairLock *)self->_lock unlock];

  return _lock_snapshotCache;
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
      state = [(PRUISPosterChannelStateCoordinator *)self->_stateCoordinator state];
      lock_state = self->_lock_state;
      self->_lock_state = state;
    }

    stateCoordinator = self->_stateCoordinator;
    self->_stateCoordinator = 0;

    [(PFOSUnfairLock *)self->_lock unlock];

    [(PRUISPosterChannel *)self _notifyObserversDidInvalidate];
  }
}

- (void)coordinator:(id)coordinator didUpdateDescriptors:(id)descriptors galleryMetadata:(id)metadata
{
  if (descriptors)
  {
    metadataCopy = metadata;
    descriptorsCopy = descriptors;
    v9 = [PRUISPosterGallery alloc];
    state = [(PRUISPosterChannel *)self state];
    channelContext = [state channelContext];
    v12 = [(PRUISPosterGallery *)v9 initWithContext:channelContext descriptors:descriptorsCopy metadata:metadataCopy];
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
    snapshotCacheURL = [(PRUISPosterChannelStateCoordinator *)self->_stateCoordinator snapshotCacheURL];
    v5 = [[PRUISPosterSnapshotSQLiteCache alloc] initWithURL:snapshotCacheURL];
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
    _lock_snapshotCache = [(PRUISPosterChannel *)self _lock_snapshotCache];
    v5 = [PRUISPosterSnapshotController alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    _extensionProvider = [(PRUISPosterChannel *)self _extensionProvider];
    v8 = [(PRUISPosterSnapshotController *)v5 initWithSQLiteCache:_lock_snapshotCache instanceIdentifier:uUID extensionProvider:_extensionProvider];
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
    currentPosterConfiguration = [(PRUISPosterChannelStateCoordinator *)self->_stateCoordinator currentPosterConfiguration];
    v5 = self->_lock_currentPosterConfiguration;
    self->_lock_currentPosterConfiguration = currentPosterConfiguration;

    lock_currentPosterConfiguration = self->_lock_currentPosterConfiguration;
  }

  return lock_currentPosterConfiguration;
}

- (id)_lock_currentGallery
{
  lock_currentGallery = self->_lock_currentGallery;
  if (!lock_currentGallery)
  {
    _lock_state = [(PRUISPosterChannel *)self _lock_state];
    v5 = [(PRUISPosterChannelStateCoordinator *)self->_stateCoordinator descriptorsForState:_lock_state];
    if (v5)
    {
      v6 = [(PRUISPosterChannelStateCoordinator *)self->_stateCoordinator galleryMetadataForState:_lock_state];
      v7 = [PRUISPosterGallery alloc];
      channelContext = [_lock_state channelContext];
      v9 = [(PRUISPosterGallery *)v7 initWithContext:channelContext descriptors:v5 metadata:v6];
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
  allObjects = [v3 allObjects];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PRUISPosterChannel__notifyObserversWillUpdateContext__block_invoke;
  v7[3] = &unk_1E83A8940;
  v7[4] = self;
  [allObjects pf_eachRespondingToSelector:sel_channelWillUpdateContext_ performBlock:v7];
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

- (void)_notifyObserversDidUpdateContext:(id)context
{
  contextCopy = context;
  [(PFOSUnfairLock *)self->_lock lock];
  v5 = [(NSHashTable *)self->_lock_observers copy];
  lock_state = self->_lock_state;
  self->_lock_state = 0;

  lock_currentGallery = self->_lock_currentGallery;
  self->_lock_currentGallery = 0;

  [(PFOSUnfairLock *)self->_lock unlock];
  allObjects = [v5 allObjects];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PRUISPosterChannel__notifyObserversDidUpdateContext___block_invoke;
  v10[3] = &unk_1E83A8968;
  v10[4] = self;
  v11 = contextCopy;
  v9 = contextCopy;
  [allObjects pf_eachRespondingToSelector:sel_channel_didUpdateContext_ performBlock:v10];
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
  allObjects = [v3 allObjects];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PRUISPosterChannel__notifyObserversWillUpdatePoster__block_invoke;
  v5[3] = &unk_1E83A8940;
  v5[4] = self;
  [allObjects pf_eachRespondingToSelector:sel_channelWillUpdatePoster_ performBlock:v5];
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

- (void)_notifyObserversDidUpdatePoster:(id)poster
{
  posterCopy = poster;
  [(PFOSUnfairLock *)self->_lock lock];
  v6 = [(NSHashTable *)self->_lock_observers copy];
  objc_storeStrong(&self->_lock_currentPosterConfiguration, poster);
  lock_state = self->_lock_state;
  self->_lock_state = 0;

  [(PFOSUnfairLock *)self->_lock unlock];
  allObjects = [v6 allObjects];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__PRUISPosterChannel__notifyObserversDidUpdatePoster___block_invoke;
  v10[3] = &unk_1E83A8968;
  v10[4] = self;
  v11 = posterCopy;
  v9 = posterCopy;
  [allObjects pf_eachRespondingToSelector:sel_channel_didUpdatePoster_ performBlock:v10];
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
  allObjects = [v3 allObjects];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PRUISPosterChannel__notifyObserversWillUpdateGallery__block_invoke;
  v5[3] = &unk_1E83A8940;
  v5[4] = self;
  [allObjects pf_eachRespondingToSelector:sel_channelWillUpdateGallery_ performBlock:v5];
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

- (void)_notifyObserversDidUpdateGallery:(id)gallery
{
  galleryCopy = gallery;
  [(PFOSUnfairLock *)self->_lock lock];
  v6 = [(NSHashTable *)self->_lock_observers copy];
  objc_storeStrong(&self->_lock_currentGallery, gallery);
  [(PFOSUnfairLock *)self->_lock unlock];
  allObjects = [v6 allObjects];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PRUISPosterChannel__notifyObserversDidUpdateGallery___block_invoke;
  v9[3] = &unk_1E83A8968;
  v9[4] = self;
  v10 = galleryCopy;
  v8 = galleryCopy;
  [allObjects pf_eachRespondingToSelector:sel_channel_didUpdateGallery_ performBlock:v9];
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
  allObjects = [v3 allObjects];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PRUISPosterChannel__notifyObserversWillInvalidate__block_invoke;
  v5[3] = &unk_1E83A8940;
  v5[4] = self;
  [allObjects pf_eachRespondingToSelector:sel_channelWillInvalidate_ performBlock:v5];
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
  allObjects = [v3 allObjects];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PRUISPosterChannel__notifyObserversDidInvalidate__block_invoke;
  v7[3] = &unk_1E83A8940;
  v7[4] = self;
  [allObjects pf_eachRespondingToSelector:sel_channelDidInvalidate_ performBlock:v7];
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

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  uUIDString = [(NSUUID *)self->_channelIdentifier UUIDString];
  [formatterCopy appendString:uUIDString withName:@"identifier"];

  state = [(PRUISPosterChannel *)self state];
  v6 = [formatterCopy appendObject:state withName:@"state"];
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