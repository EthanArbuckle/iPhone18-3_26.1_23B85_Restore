@interface PBFPosterSnapshotManager
- (BOOL)_lock_cancelRequestedSnapshotsForRequests:(id)requests reason:(id)reason;
- (BOOL)_lock_teardownAssertionsAndSnapshottersIfNecessary;
- (BOOL)cancelRequestedSnapshotsForExtensionBundleIdentifier:(id)identifier;
- (BOOL)cancelRequestedSnapshotsForIdentity:(id)identity;
- (BOOL)cancelRequestedSnapshotsForRequests:(id)requests reason:(id)reason;
- (BOOL)hasRequestsInFlightForIdentity:(id)identity;
- (BOOL)ingestSnapshotCollection:(id)collection forConfiguration:(id)configuration error:(id *)error;
- (PBFPosterSnapshotManager)initWithRuntimeAssertionProvider:(id)provider modelCoordinatorProvider:(id)coordinatorProvider applicationStateMonitor:(id)monitor;
- (id)enqueueRequest:(id)request completion:(id)completion;
- (id)posterSnapshotForRequest:(id)request definition:(id)definition error:(id *)error;
- (id)providerForExtensionIdentifier:(id)identifier;
- (id)providerForPath:(id)path;
- (id)snapshotBundleForRequest:(id)request;
- (id)snapshotCoordinatorForPath:(id)path;
- (void)_enqueueSnapshotForRequestIfNeeded:(id)needed completion:(id)completion;
- (void)_lock_addCompletion:(id)completion forRequest:(id)request;
- (void)_lock_cancelAllRequests;
- (void)_lock_cleanupAfterCompletionForRequest:(id)request shouldTerminateProcess:(BOOL)process;
- (void)_lock_cleanupAfterSceneInvalidationForRequest:(id)request snapshotter:(id)snapshotter shouldTerminateProcess:(BOOL)process;
- (void)_lock_enumerateObservers:(id)observers;
- (void)_lock_fireCompletionsForRequest:(id)request snapshotImagesByReservation:(id)reservation error:(id)error;
- (void)_lock_fireDidUpdateSnapshotForPath:(id)path snapshotImagesByReservation:(id)reservation;
- (void)_lock_invalidateAllCompletionHandlers;
- (void)_lock_kickoffNextOperation;
- (void)_submitSnapshotRequest:(id)request completion:(id)completion;
- (void)addObserver:(id)observer;
- (void)cancelAllRequests;
- (void)cancelRequests:(id)requests reason:(id)reason;
- (void)dealloc;
- (void)duplicateSnapshotsFromPath:(id)path to:(id)to;
- (void)fetchPosterSnapshotForRequest:(id)request definition:(id)definition completion:(id)completion;
- (void)invalidate;
- (void)prewarmSnapshotsForRequests:(id)requests completion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)snapshotterDidInvalidateScene:(id)scene didWaitForSceneInvalidation:(BOOL)invalidation forRequest:(id)request;
@end

@implementation PBFPosterSnapshotManager

- (PBFPosterSnapshotManager)initWithRuntimeAssertionProvider:(id)provider modelCoordinatorProvider:(id)coordinatorProvider applicationStateMonitor:(id)monitor
{
  providerCopy = provider;
  coordinatorProviderCopy = coordinatorProvider;
  monitorCopy = monitor;
  v33.receiver = self;
  v33.super_class = PBFPosterSnapshotManager;
  v12 = [(PBFPosterSnapshotManager *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_modelCoordinatorProvider, coordinatorProviderCopy);
    objc_storeStrong(&v13->_runtimeAssertionProvider, provider);
    objc_storeStrong(&v13->_applicationStateMonitor, monitor);
    v14 = objc_opt_new();
    extensionProvider = v13->_extensionProvider;
    v13->_extensionProvider = v14;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    lock_snapshotRequestToSnapshotter = v13->_lock_snapshotRequestToSnapshotter;
    v13->_lock_snapshotRequestToSnapshotter = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    lock_requestToCompletion = v13->_lock_requestToCompletion;
    v13->_lock_requestToCompletion = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    lock_snapshotterToSnapshotInvalidationWrapper = v13->_lock_snapshotterToSnapshotInvalidationWrapper;
    v13->_lock_snapshotterToSnapshotInvalidationWrapper = strongToStrongObjectsMapTable3;

    v22 = objc_opt_new();
    lock_enqueuedRequestToSnapshotRequests = v13->_lock_enqueuedRequestToSnapshotRequests;
    v13->_lock_enqueuedRequestToSnapshotRequests = v22;

    v24 = objc_opt_new();
    lock_activeRequestToSnapshotRequests = v13->_lock_activeRequestToSnapshotRequests;
    v13->_lock_activeRequestToSnapshotRequests = v24;

    v26 = objc_opt_new();
    lock_providerToExtensionInstance = v13->_lock_providerToExtensionInstance;
    v13->_lock_providerToExtensionInstance = v26;

    Serial = BSDispatchQueueCreateSerial();
    calloutQueue = v13->_calloutQueue;
    v13->_calloutQueue = Serial;

    v30 = objc_opt_new();
    lock = v13->_lock;
    v13->_lock = v30;
  }

  return v13;
}

- (void)dealloc
{
  [(PFOSUnfairLock *)self->_lock lock];
  [(PBFPosterSnapshotManager *)self _lock_invalidateAllCompletionHandlers];
  [(PFOSUnfairLock *)self->_lock unlock];
  v3.receiver = self;
  v3.super_class = PBFPosterSnapshotManager;
  [(PBFPosterSnapshotManager *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v8 = observerCopy;
    [(PFOSUnfairLock *)self->_lock lock];
    lock_observers = self->_lock_observers;
    if (!lock_observers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_lock_observers;
      self->_lock_observers = weakObjectsHashTable;

      lock_observers = self->_lock_observers;
    }

    [(NSHashTable *)lock_observers addObject:v8];
    [(PFOSUnfairLock *)self->_lock unlock];
    observerCopy = v8;
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    lock = self->_lock;
    observerCopy = observer;
    [(PFOSUnfairLock *)lock lock];
    [(NSHashTable *)self->_lock_observers removeObject:observerCopy];

    if (![(NSHashTable *)self->_lock_observers count])
    {
      lock_observers = self->_lock_observers;
      self->_lock_observers = 0;
    }

    v7 = self->_lock;

    [(PFOSUnfairLock *)v7 unlock];
  }
}

- (id)snapshotBundleForRequest:(id)request
{
  requestCopy = request;
  definitions = [requestCopy definitions];
  v6 = [definitions count];

  if (v6 == 1)
  {
    displayContext = [requestCopy displayContext];
    definitions2 = [requestCopy definitions];
    firstObject = [definitions2 firstObject];
    v10 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:displayContext definition:firstObject];

    v11 = objc_opt_new();
    path = [requestCopy path];
    v13 = [(PBFPosterSnapshotManager *)self snapshotCoordinatorForPath:path];

    v14 = [v13 snapshotBundleForContext:v10];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __53__PBFPosterSnapshotManager_snapshotBundleForRequest___block_invoke;
    v21[3] = &unk_2782C80B8;
    v21[4] = self;
    v22 = requestCopy;
    v23 = v11;
    v24 = v13;
    v25 = v10;
    v15 = v10;
    v16 = v13;
    v17 = v11;
    v18 = [v14 recover:v21];
  }

  else
  {
    v19 = MEMORY[0x277D3EC50];
    v14 = PFFunctionNameForAddress();
    v17 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v18 = [v19 futureWithError:{v17, 0}];
  }

  return v18;
}

id __53__PBFPosterSnapshotManager_snapshotBundleForRequest___block_invoke(uint64_t a1)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__PBFPosterSnapshotManager_snapshotBundleForRequest___block_invoke_2;
  v9[3] = &unk_2782C7610;
  v8 = *(a1 + 32);
  v2 = *(&v8 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v10 = v8;
  v11 = v5;
  v12 = *(a1 + 64);
  PBFDispatchAsyncWithString(@"enqueue snapshot", QOS_CLASS_UTILITY, v9);
  v6 = [*(a1 + 48) future];

  return v6;
}

void __53__PBFPosterSnapshotManager_snapshotBundleForRequest___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__PBFPosterSnapshotManager_snapshotBundleForRequest___block_invoke_3;
  v4[3] = &unk_2782C8090;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 _enqueueSnapshotForRequestIfNeeded:v3 completion:v4];
}

void __53__PBFPosterSnapshotManager_snapshotBundleForRequest___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishWithError:?];
  }

  else
  {
    v5 = [*(a1 + 40) snapshotBundleForContext:*(a1 + 48)];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__PBFPosterSnapshotManager_snapshotBundleForRequest___block_invoke_4;
    v8[3] = &unk_2782C8068;
    v9 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__PBFPosterSnapshotManager_snapshotBundleForRequest___block_invoke_5;
    v6[3] = &unk_2782C59F0;
    v7 = *(a1 + 32);
    [v5 addSuccessBlock:v8 andFailureBlock:v6];
  }
}

- (void)_enqueueSnapshotForRequestIfNeeded:(id)needed completion:(id)completion
{
  neededCopy = needed;
  completionCopy = completion;
  if (!completionCopy)
  {
    [PBFPosterSnapshotManager _enqueueSnapshotForRequestIfNeeded:a2 completion:?];
  }

  if (!neededCopy)
  {
    [PBFPosterSnapshotManager _enqueueSnapshotForRequestIfNeeded:a2 completion:?];
  }

  v9 = completionCopy;
  [(PFOSUnfairLock *)self->_lock assertNotOwner];
  v38[0] = 0;
  v10 = [neededCopy isValidWithError:v38];
  v11 = v38[0];
  if ((v10 & 1) == 0)
  {
    (v9)[2](v9, 0, v11);
    goto LABEL_16;
  }

  [(PFOSUnfairLock *)self->_lock lock];
  if (self->_lock_invalidated)
  {
    v12 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
  }

  else
  {
    v12 = [(NSMapTable *)self->_lock_requestToCompletion objectForKey:neededCopy];

    if (v12)
    {
      [(PBFPosterSnapshotManager *)self _lock_addCompletion:v9 forRequest:neededCopy];
      v12 = 0;
      v13 = 0;
      goto LABEL_10;
    }
  }

  v13 = 1;
LABEL_10:
  [(PFOSUnfairLock *)self->_lock unlock];
  if (!v13 || v12)
  {
    if (v12)
    {
      (v9)[2](v9, 0, v12);
    }
  }

  else
  {
    _buildPUIPosterSnapshotRequests = [neededCopy _buildPUIPosterSnapshotRequests];
    v14 = [_buildPUIPosterSnapshotRequests mutableCopy];
    path = [neededCopy path];
    v16 = [(PBFPosterSnapshotManager *)self snapshotCoordinatorForPath:path];

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__PBFPosterSnapshotManager__enqueueSnapshotForRequestIfNeeded_completion___block_invoke;
    aBlock[3] = &unk_2782C8108;
    objc_copyWeak(&v36, &location);
    v17 = v9;
    v35 = v17;
    v18 = neededCopy;
    v34 = v18;
    v19 = _Block_copy(aBlock);
    v23 = v16;
    v20 = [v16 fetchFulfilledSnapshotDefinitionsForRequest:v18];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __74__PBFPosterSnapshotManager__enqueueSnapshotForRequestIfNeeded_completion___block_invoke_3;
    v27[3] = &unk_2782C8130;
    v21 = v14;
    v28 = v21;
    selfCopy = self;
    v30 = v18;
    v31 = v17;
    v32 = v19;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __74__PBFPosterSnapshotManager__enqueueSnapshotForRequestIfNeeded_completion___block_invoke_57;
    v25[3] = &unk_2782C5AB0;
    v22 = v32;
    v26 = v22;
    [v20 addSuccessBlock:v27 andFailureBlock:v25];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

LABEL_16:
}

void __74__PBFPosterSnapshotManager__enqueueSnapshotForRequestIfNeeded_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 1);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__PBFPosterSnapshotManager__enqueueSnapshotForRequestIfNeeded_completion___block_invoke_2;
    v10[3] = &unk_2782C80E0;
    v10[4] = WeakRetained;
    v14 = a1[5];
    v11 = a1[4];
    v12 = v5;
    v13 = v6;
    [v9 performBlock:v10];
  }
}

uint64_t __74__PBFPosterSnapshotManager__enqueueSnapshotForRequestIfNeeded_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _lock_addCompletion:*(a1 + 64) forRequest:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _lock_fireCompletionsForRequest:v3 snapshotImagesByReservation:v4 error:v5];
}

void __74__PBFPosterSnapshotManager__enqueueSnapshotForRequestIfNeeded_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 allKeys];
  [v4 removeObjectsForKeys:v5];

  v6 = PBFLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __74__PBFPosterSnapshotManager__enqueueSnapshotForRequestIfNeeded_completion___block_invoke_3_cold_1(a1, (a1 + 32), v6);
  }

  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) _submitSnapshotRequest:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

- (void)_submitSnapshotRequest:(id)request completion:(id)completion
{
  v13[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  _buildPUIPosterSnapshotRequests = [requestCopy _buildPUIPosterSnapshotRequests];
  [(PFOSUnfairLock *)self->_lock lock];
  if ([_buildPUIPosterSnapshotRequests count])
  {
    v9 = [(NSMapTable *)self->_lock_requestToCompletion objectForKey:requestCopy];

    if (v9)
    {
      [(PBFPosterSnapshotManager *)self _lock_addCompletion:completionCopy forRequest:requestCopy];
      v9 = 0;
    }

    else
    {
      [(BSMutableOrderedDictionary *)self->_lock_enqueuedRequestToSnapshotRequests setObject:_buildPUIPosterSnapshotRequests forKey:requestCopy];
      [(PBFPosterSnapshotManager *)self _lock_addCompletion:completionCopy forRequest:requestCopy];
    }
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA470];
    v13[0] = @"Unable to convert PBFPosterSnapshotRequest into PUIPosterSnapshotRequest.  This is most concerning.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v10 pbf_generalErrorWithCode:1 userInfo:v11];
  }

  [(PBFPosterSnapshotManager *)self _lock_kickoffNextOperation];
  [(PFOSUnfairLock *)self->_lock unlock];
  if (completionCopy && v9)
  {
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (void)duplicateSnapshotsFromPath:(id)path to:(id)to
{
  pathCopy = path;
  toCopy = to;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__PBFPosterSnapshotManager_duplicateSnapshotsFromPath_to___block_invoke;
  v11[3] = &unk_2782C6428;
  v11[4] = self;
  v12 = pathCopy;
  v13 = toCopy;
  v9 = toCopy;
  v10 = pathCopy;
  [(PFOSUnfairLock *)lock performBlock:v11];
}

void __58__PBFPosterSnapshotManager_duplicateSnapshotsFromPath_to___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) snapshotCoordinatorForPath:*(a1 + 40)];
  v2 = [*(a1 + 32) snapshotCoordinatorForPath:*(a1 + 48)];
  [v2 ingestSnapshotsFromCoordinator:v3];
}

- (void)_lock_addCompletion:(id)completion forRequest:(id)request
{
  requestCopy = request;
  if (completion && requestCopy)
  {
    lock = self->_lock;
    v11 = requestCopy;
    completionCopy = completion;
    [(PFOSUnfairLock *)lock assertOwner];
    v9 = [(NSMapTable *)self->_lock_requestToCompletion objectForKey:v11];
    v10 = [[PBFPosterSnapshotFetchCompletionHandler alloc] initWithRequest:v11 completionHandler:completionCopy queue:self->_calloutQueue];

    if (v9)
    {
      [v9 addObject:v10];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB18] arrayWithObject:v10];
      [(NSMapTable *)self->_lock_requestToCompletion setObject:v9 forKey:v11];
    }

    requestCopy = v11;
  }
}

- (void)_lock_fireCompletionsForRequest:(id)request snapshotImagesByReservation:(id)reservation error:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  reservationCopy = reservation;
  errorCopy = error;
  if (requestCopy)
  {
    [(PFOSUnfairLock *)self->_lock assertOwner];
    if (errorCopy)
    {
      v11 = [errorCopy pbf_isGeneralCancelledError] ^ 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = [(NSMapTable *)self->_lock_requestToCompletion objectForKey:requestCopy];
    if ([v12 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v21;
        do
        {
          v17 = 0;
          do
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v20 + 1) + 8 * v17);
            if (errorCopy)
            {
              [v18 finishWithError:errorCopy];
            }

            else
            {
              [v18 finishWithSuccess:{reservationCopy, v20}];
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v15);
      }
    }

    path = [requestCopy path];
    [(PBFPosterSnapshotManager *)self _lock_fireDidUpdateSnapshotForPath:path snapshotImagesByReservation:reservationCopy];

    [(PBFPosterSnapshotManager *)self _lock_cleanupAfterCompletionForRequest:requestCopy shouldTerminateProcess:v11];
  }
}

- (void)_lock_fireDidUpdateSnapshotForPath:(id)path snapshotImagesByReservation:(id)reservation
{
  pathCopy = path;
  reservationCopy = reservation;
  if ([reservationCopy count])
  {
    [(PFOSUnfairLock *)self->_lock assertOwner];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __91__PBFPosterSnapshotManager__lock_fireDidUpdateSnapshotForPath_snapshotImagesByReservation___block_invoke;
    v8[3] = &unk_2782C8158;
    v9 = reservationCopy;
    selfCopy = self;
    v11 = pathCopy;
    [(PBFPosterSnapshotManager *)self _lock_enumerateObservers:v8];
  }
}

void __91__PBFPosterSnapshotManager__lock_fireDidUpdateSnapshotForPath_snapshotImagesByReservation___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [*(a1 + 32) allKeys];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = [*(a1 + 32) objectForKey:v9];
          v11 = [v10 error];

          if (!v11)
          {
            [v3 snapshotManager:*(a1 + 40) didUpdateSnapshotForPath:*(a1 + 48) forDefinition:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)_lock_cleanupAfterCompletionForRequest:(id)request shouldTerminateProcess:(BOOL)process
{
  processCopy = process;
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (requestCopy)
  {
    [(PFOSUnfairLock *)self->_lock assertOwner];
    v7 = [(NSMapTable *)self->_lock_snapshotRequestToSnapshotter objectForKey:requestCopy];
    if (v7)
    {
      [(NSMapTable *)self->_lock_snapshotRequestToSnapshotter removeObjectForKey:requestCopy];
    }

    v8 = [(BSMutableOrderedDictionary *)self->_lock_activeRequestToSnapshotRequests objectForKey:requestCopy];

    [(NSMapTable *)self->_lock_requestToCompletion removeObjectForKey:requestCopy];
    [(BSMutableOrderedDictionary *)self->_lock_activeRequestToSnapshotRequests removeObjectForKey:requestCopy];
    [(BSMutableOrderedDictionary *)self->_lock_enqueuedRequestToSnapshotRequests removeObjectForKey:requestCopy];
    if (!v8 || processCopy)
    {
      v12 = PBFLogSnapshotter();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = requestCopy;
        _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "_lock_cleanupAfterCompletionForRequest: %{public}@, performing post-invalidation cleanup now", &v13, 0xCu);
      }

      [(PBFPosterSnapshotManager *)self _lock_cleanupAfterSceneInvalidationForRequest:requestCopy snapshotter:v7 shouldTerminateProcess:processCopy];
    }

    else if (v7)
    {
      v9 = PBFLogSnapshotter();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = requestCopy;
        _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_DEFAULT, "_lock_cleanupAfterCompletionForRequest: %{public}@, waiting until scene invalidates for post-invalidation cleanup", &v13, 0xCu);
      }

      lock_snapshotterToSnapshotInvalidationWrapper = self->_lock_snapshotterToSnapshotInvalidationWrapper;
      v11 = [[_PBFPosterSnapshotInvalidationWrapper alloc] initWithSnapshotRequest:requestCopy shouldTerminateProcess:0];
      [(NSMapTable *)lock_snapshotterToSnapshotInvalidationWrapper setObject:v11 forKey:v7];
    }
  }
}

- (void)_lock_cleanupAfterSceneInvalidationForRequest:(id)request snapshotter:(id)snapshotter shouldTerminateProcess:(BOOL)process
{
  processCopy = process;
  requestCopy = request;
  snapshotterCopy = snapshotter;
  if (requestCopy)
  {
    [(PFOSUnfairLock *)self->_lock assertOwner];
    if (snapshotterCopy)
    {
      path = [requestCopy path];
      identity = [path identity];
      provider = [identity provider];

      extensionInstance = [snapshotterCopy extensionInstance];
      v14 = extensionInstance;
      if (extensionInstance)
      {
        if (processCopy)
        {
          v25 = 0;
          v15 = [extensionInstance terminateWithExplanation:@"process failed to complete snapshot" error:&v25];
          v16 = v25;
          v17 = PBFLogSnapshotter();
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
          if (v15)
          {
            if (v18)
            {
              [PBFPosterSnapshotManager _lock_cleanupAfterSceneInvalidationForRequest:snapshotter:shouldTerminateProcess:];
            }
          }

          else if (v18)
          {
            [(PBFPosterSnapshotManager *)v16 _lock_cleanupAfterSceneInvalidationForRequest:v17 snapshotter:v19 shouldTerminateProcess:v20, v21, v22, v23, v24];
          }
        }

        else
        {
          v16 = [(NSMutableDictionary *)self->_lock_providerToExtensionInstance objectForKey:provider];
          if (!v16)
          {
            v16 = objc_opt_new();
            [(NSMutableDictionary *)self->_lock_providerToExtensionInstance setObject:v16 forKey:provider];
          }

          [v16 bs_safeAddObject:v14];
        }
      }

      --self->_lock_numberOfRunningSnapshotters;
    }

    [(PBFPosterSnapshotManager *)self _lock_kickoffNextOperation];
  }
}

- (void)cancelAllRequests
{
  [(PFOSUnfairLock *)self->_lock assertNotOwner];
  [(PFOSUnfairLock *)self->_lock lock];
  [(PBFPosterSnapshotManager *)self _lock_cancelAllRequests];
  lock = self->_lock;

  [(PFOSUnfairLock *)lock unlock];
}

- (void)cancelRequests:(id)requests reason:(id)reason
{
  v26 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  reasonCopy = reason;
  if ([requestsCopy count])
  {
    v17 = reasonCopy;
    [(PFOSUnfairLock *)self->_lock lock];
    ++self->_lock_preventKickCount;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = requestsCopy;
    v8 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      if (reasonCopy)
      {
        v11 = reasonCopy;
      }

      else
      {
        v11 = @"@(undefined cancellation reason)";
      }

      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = MEMORY[0x277CCA9B8];
          v23 = @"cancellation reason";
          v24 = v11;
          v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
          v16 = [v14 pbf_generalErrorWithCode:4 userInfo:v15];
          [(PBFPosterSnapshotManager *)self _lock_fireCompletionsForRequest:v13 snapshotImagesByReservation:0 error:v16];
        }

        v9 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v9);
    }

    --self->_lock_preventKickCount;
    [(PBFPosterSnapshotManager *)self _lock_kickoffNextOperation];
    [(PFOSUnfairLock *)self->_lock unlock];
    reasonCopy = v17;
  }
}

- (BOOL)cancelRequestedSnapshotsForExtensionBundleIdentifier:(id)identifier
{
  v46 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    [(PFOSUnfairLock *)self->_lock lock];
    ++self->_lock_preventKickCount;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    selfCopy = self;
    v5 = [(NSMapTable *)self->_lock_snapshotRequestToSnapshotter copy];
    keyEnumerator = [v5 keyEnumerator];

    obj = keyEnumerator;
    v7 = [keyEnumerator countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v41;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          path = [v12 path];
          identity = [path identity];
          provider = [identity provider];
          v16 = [provider isEqualToString:identifierCopy];

          if (v16)
          {
            v17 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:4 userInfo:&unk_282D0A308];
            [(PBFPosterSnapshotManager *)selfCopy _lock_fireCompletionsForRequest:v12 snapshotImagesByReservation:0 error:v17];

            v9 = 1;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v33 = v9;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = [(BSMutableOrderedDictionary *)selfCopy->_lock_enqueuedRequestToSnapshotRequests copy];
    allKeys = [v19 allKeys];

    v21 = allKeys;
    v22 = [allKeys countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v37;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v36 + 1) + 8 * j);
          path2 = [v26 path];
          identity2 = [path2 identity];
          provider2 = [identity2 provider];
          v30 = [provider2 isEqualToString:identifierCopy];

          if (v30)
          {
            v31 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:4 userInfo:&unk_282D0A330];
            [(PBFPosterSnapshotManager *)selfCopy _lock_fireCompletionsForRequest:v26 snapshotImagesByReservation:0 error:v31];

            v33 = 1;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v23);
    }

    --selfCopy->_lock_preventKickCount;
    v18 = v33;
    if (v33)
    {
      [(PBFPosterSnapshotManager *)selfCopy _lock_kickoffNextOperation];
    }

    [(PFOSUnfairLock *)selfCopy->_lock unlock];
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

- (BOOL)hasRequestsInFlightForIdentity:(id)identity
{
  v32 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if (!identityCopy)
  {
    LOBYTE(v15) = 0;
    goto LABEL_22;
  }

  [(PFOSUnfairLock *)self->_lock lock];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(NSMapTable *)self->_lock_snapshotRequestToSnapshotter copy];
  keyEnumerator = [v5 keyEnumerator];

  v7 = [keyEnumerator countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
LABEL_4:
    v10 = 0;
    while (1)
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(keyEnumerator);
      }

      path = [*(*(&v26 + 1) + 8 * v10) path];
      identity = [path identity];
      v13 = [identity isEqual:identityCopy];

      if (v13)
      {
        goto LABEL_19;
      }

      if (v8 == ++v10)
      {
        v8 = [keyEnumerator countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v8)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [(BSMutableOrderedDictionary *)self->_lock_enqueuedRequestToSnapshotRequests copy];
  keyEnumerator = [v14 allKeys];

  v15 = [keyEnumerator countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = *v23;
LABEL_12:
    v17 = 0;
    while (1)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(keyEnumerator);
      }

      path2 = [*(*(&v22 + 1) + 8 * v17) path];
      identity2 = [path2 identity];
      v20 = [identity2 isEqual:identityCopy];

      if (v20)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [keyEnumerator countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v15)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }
    }

LABEL_19:
    LOBYTE(v15) = 1;
  }

LABEL_20:

  [(PFOSUnfairLock *)self->_lock unlock];
LABEL_22:

  return v15;
}

- (BOOL)cancelRequestedSnapshotsForIdentity:(id)identity
{
  v40 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if (identityCopy)
  {
    [(PFOSUnfairLock *)self->_lock lock];
    ++self->_lock_preventKickCount;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    selfCopy = self;
    v5 = [(NSMapTable *)self->_lock_snapshotRequestToSnapshotter copy];
    keyEnumerator = [v5 keyEnumerator];

    v7 = [keyEnumerator countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v35;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          path = [v12 path];
          identity = [path identity];
          v15 = [identity isEqual:identityCopy];

          if (v15)
          {
            v16 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:4 userInfo:&unk_282D0A358];
            [(PBFPosterSnapshotManager *)selfCopy _lock_fireCompletionsForRequest:v12 snapshotImagesByReservation:0 error:v16];

            v9 = 1;
          }
        }

        v8 = [keyEnumerator countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = [(BSMutableOrderedDictionary *)selfCopy->_lock_enqueuedRequestToSnapshotRequests copy];
    allKeys = [v17 allKeys];

    v19 = [allKeys countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(allKeys);
          }

          v23 = *(*(&v30 + 1) + 8 * j);
          path2 = [v23 path];
          identity2 = [path2 identity];
          v26 = [identity2 isEqual:identityCopy];

          if (v26)
          {
            v27 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:4 userInfo:&unk_282D0A380];
            [(PBFPosterSnapshotManager *)selfCopy _lock_fireCompletionsForRequest:v23 snapshotImagesByReservation:0 error:v27];

            v9 = 1;
          }
        }

        v20 = [allKeys countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v20);
    }

    --selfCopy->_lock_preventKickCount;
    if (v9)
    {
      [(PBFPosterSnapshotManager *)selfCopy _lock_kickoffNextOperation];
    }

    [(PFOSUnfairLock *)selfCopy->_lock unlock];
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)cancelRequestedSnapshotsForRequests:(id)requests reason:(id)reason
{
  v21 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  if ([requestsCopy count])
  {
    [(PFOSUnfairLock *)self->_lock lock];
    ++self->_lock_preventKickCount;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = requestsCopy;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    v8 = v7 != 0;
    if (v7)
    {
      v9 = v7;
      v15 = v7 != 0;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:4 userInfo:&unk_282D0A3A8];
          [(PBFPosterSnapshotManager *)self _lock_fireCompletionsForRequest:v12 snapshotImagesByReservation:0 error:v13];
        }

        v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);

      --self->_lock_preventKickCount;
      [(PBFPosterSnapshotManager *)self _lock_kickoffNextOperation];
      v8 = v15;
    }

    else
    {

      --self->_lock_preventKickCount;
    }

    [(PFOSUnfairLock *)self->_lock unlock];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_lock_cancelRequestedSnapshotsForRequests:(id)requests reason:(id)reason
{
  v20 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  if ([requestsCopy count])
  {
    ++self->_lock_preventKickCount;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = requestsCopy;
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

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:4 userInfo:{&unk_282D0A3D0, v15}];
          [(PBFPosterSnapshotManager *)self _lock_fireCompletionsForRequest:v11 snapshotImagesByReservation:0 error:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);

      --self->_lock_preventKickCount;
      [(PBFPosterSnapshotManager *)self _lock_kickoffNextOperation];
      v13 = 1;
    }

    else
    {

      v13 = 0;
      --self->_lock_preventKickCount;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_lock_cancelAllRequests
{
  [(PFOSUnfairLock *)self->_lock assertOwner];
  v8 = objc_opt_new();
  allKeys = [(BSMutableOrderedDictionary *)self->_lock_activeRequestToSnapshotRequests allKeys];
  [v8 addObjectsFromArray:allKeys];

  allKeys2 = [(BSMutableOrderedDictionary *)self->_lock_enqueuedRequestToSnapshotRequests allKeys];
  [v8 addObjectsFromArray:allKeys2];

  keyEnumerator = [(NSMapTable *)self->_lock_requestToCompletion keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  [v8 addObjectsFromArray:allObjects];

  allObjects2 = [v8 allObjects];
  [(PBFPosterSnapshotManager *)self _lock_cancelRequestedSnapshotsForRequests:allObjects2 reason:@"cancel all requests"];

  [(PBFPosterSnapshotManager *)self _lock_teardownAssertionsAndSnapshottersIfNecessary];
}

- (BOOL)_lock_teardownAssertionsAndSnapshottersIfNecessary
{
  v16 = *MEMORY[0x277D85DE8];
  [(PFOSUnfairLock *)self->_lock assertOwner];
  if ([(BSMutableOrderedDictionary *)self->_lock_enqueuedRequestToSnapshotRequests count]&& [(BSMutableOrderedDictionary *)self->_lock_activeRequestToSnapshotRequests count])
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMapTable *)self->_lock_snapshotRequestToSnapshotter objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 setDelegate:0];
        [v9 invalidate];
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSMapTable *)self->_lock_snapshotRequestToSnapshotter removeAllObjects];
  [(NSMapTable *)self->_lock_snapshotterToSnapshotInvalidationWrapper removeAllObjects];
  [(NSMutableDictionary *)self->_lock_providerToExtensionInstance enumerateKeysAndObjectsUsingBlock:&__block_literal_global_15];
  [(NSMutableDictionary *)self->_lock_providerToExtensionInstance removeAllObjects];
  self->_lock_numberOfRunningSnapshotters = 0;
  [(RBSAssertion *)self->_lock_posterBoardPrewarmAssertion invalidate];
  lock_posterBoardPrewarmAssertion = self->_lock_posterBoardPrewarmAssertion;
  self->_lock_posterBoardPrewarmAssertion = 0;

  [(PFPosterExtensionProvider *)self->_extensionProvider cancel];
  os_activity_scope_leave(&self->_snapshotActivityState);
  return 1;
}

void __78__PBFPosterSnapshotManager__lock_teardownAssertionsAndSnapshottersIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = 0;
  v2 = [a2 terminateWithExplanation:@"process failed to complete snapshot" error:&v12];
  v3 = v12;
  v4 = PBFLogSnapshotter();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    if (v5)
    {
      __78__PBFPosterSnapshotManager__lock_teardownAssertionsAndSnapshottersIfNecessary__block_invoke_2_cold_2();
    }
  }

  else if (v5)
  {
    __78__PBFPosterSnapshotManager__lock_teardownAssertionsAndSnapshottersIfNecessary__block_invoke_2_cold_1(v3, v4, v6, v7, v8, v9, v10, v11);
  }
}

- (void)_lock_kickoffNextOperation
{
  v57 = *MEMORY[0x277D85DE8];
  [(PFOSUnfairLock *)self->_lock assertOwner];
  if (!self->_lock_invalidated)
  {
    lock_preventKickCount = self->_lock_preventKickCount;
    v4 = PBFLogSnapshotter();
    processInfo = v4;
    if (lock_preventKickCount)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = self->_lock_preventKickCount;
        *buf = 134349056;
        v48 = v6;
        _os_log_impl(&dword_21B526000, processInfo, OS_LOG_TYPE_DEFAULT, "bailing kickoffNextOperation because of preventKickCount (%{public}lu)", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, processInfo, OS_LOG_TYPE_INFO, "kickoffNextOperation is running...", buf, 2u);
      }

      isForeground = [(PBFApplicationStateMonitor *)self->_applicationStateMonitor isForeground];
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      thermalState = [processInfo thermalState];
      isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];
      if (thermalState == 3 || (!isForeground ? (v10 = 4) : (v10 = 12), !isForeground ? (v11 = 2) : (v11 = 4), isLowPowerModeEnabled))
      {
        v12 = PBFLogSnapshotter();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterSnapshotManager _lock_kickoffNextOperation];
        }

        v11 = 1;
        v10 = 3;
      }

      if (self->_lock_numberOfRunningSnapshotters <= v10)
      {
        v15 = [(BSMutableOrderedDictionary *)self->_lock_enqueuedRequestToSnapshotRequests count];
        v16 = [(BSMutableOrderedDictionary *)self->_lock_activeRequestToSnapshotRequests count];
        if (self->_lock_posterBoardPrewarmAssertion || ![(BSMutableOrderedDictionary *)self->_lock_enqueuedRequestToSnapshotRequests count])
        {
          if (!(v15 | v16))
          {
            v17 = PBFLogSnapshotter();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_DEFAULT, "tearing down snapshot manager assertions...", buf, 2u);
            }

            [(PBFPosterSnapshotManager *)self _lock_teardownAssertionsAndSnapshottersIfNecessary];
            goto LABEL_52;
          }
        }

        else
        {
          v18 = PBFLogSnapshotter();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "spinning up snapshot manager assertions...", buf, 2u);
          }

          [(PFPosterExtensionProvider *)self->_extensionProvider start];
          runtimeAssertionProvider = self->_runtimeAssertionProvider;
          currentProcess = [MEMORY[0x277D47008] currentProcess];
          v21 = [(PBFRuntimeAssertionProviding *)runtimeAssertionProvider acquirePrewarmRuntimeAssertionForReason:@"Snapshotter is snapshotting" target:currentProcess invalidationHandler:0];
          lock_posterBoardPrewarmAssertion = self->_lock_posterBoardPrewarmAssertion;
          self->_lock_posterBoardPrewarmAssertion = v21;

          os_activity_scope_enter(self->_snapshotActivity, &self->_snapshotActivityState);
        }

        v41 = processInfo;
        v23 = PBFLogSnapshotter();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = @"BACKGROUND";
          *buf = 138544386;
          if (isForeground)
          {
            v24 = @"FOREGROUND";
          }

          v48 = v24;
          v49 = 2048;
          v50 = v10;
          v51 = 2048;
          v52 = v11;
          v53 = 2048;
          v54 = v15;
          v55 = 2048;
          v56 = v16;
          _os_log_impl(&dword_21B526000, v23, OS_LOG_TYPE_DEFAULT, "snapshot manager operating %{public}@; %lu max snapshotters w/ %lu max snapshotters per provider w/ queue currently of %lu and %lu active snapshotters", buf, 0x34u);
        }

        v25 = self->_lock;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke;
        aBlock[3] = &unk_2782C8238;
        aBlock[4] = self;
        v46 = v11;
        v40 = v25;
        v45 = v40;
        v26 = _Block_copy(aBlock);
        allKeys = [(BSMutableOrderedDictionary *)self->_lock_enqueuedRequestToSnapshotRequests allKeys];
        v28 = [allKeys mutableCopy];

        if (isForeground)
        {
          currentApplicationContext = [(PBFApplicationStateMonitor *)self->_applicationStateMonitor currentApplicationContext];
          posterUUIDs = [currentApplicationContext posterUUIDs];
          v31 = [posterUUIDs count];

          if (v31)
          {
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke_2_152;
            v42[3] = &unk_2782C5C60;
            v43 = currentApplicationContext;
            v32 = [v28 bs_filter:v42];
            v33 = [v32 mutableCopy];

            while ([v28 count])
            {
              if (![v33 count])
              {
                break;
              }

              if (self->_lock_numberOfRunningSnapshotters >= v10)
              {
                break;
              }

              firstObject = [v33 firstObject];
              v26[2](v26, firstObject);
              [v28 removeObject:firstObject];
              [v33 removeObjectAtIndex:0];
            }
          }
        }

        v35 = 0;
        do
        {
          v36 = v35;
          objectEnumerator = [v28 objectEnumerator];
          allObjects = [objectEnumerator allObjects];
          v35 = [allObjects bs_firstObjectPassingTest:&__block_literal_global_156_0];

          if (!v35)
          {
            break;
          }

          v26[2](v26, v35);
          [v28 removeObject:v35];
          if (![v28 count])
          {
            break;
          }
        }

        while (self->_lock_numberOfRunningSnapshotters < v10);
        while ([v28 count] && self->_lock_numberOfRunningSnapshotters < v10)
        {
          firstObject2 = [v28 firstObject];
          v26[2](v26, firstObject2);
          [v28 removeObject:firstObject2];
        }

        processInfo = v41;
      }

      else
      {
        v13 = PBFLogSnapshotter();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          lock_numberOfRunningSnapshotters = self->_lock_numberOfRunningSnapshotters;
          *buf = 134349056;
          v48 = lock_numberOfRunningSnapshotters;
          _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "bailing kickoffNextOperation because of _lock_numberOfRunningSnapshotters (%{public}lu)", buf, 0xCu);
        }
      }
    }

LABEL_52:
  }
}

void __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke(uint64_t a1, void *a2)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 104) objectForKey:v3];
  v5 = [*(*(a1 + 32) + 112) objectForKey:v3];

  if (v5)
  {
    __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke_cold_1();
  }

  v6 = [v3 path];
  v7 = [v6 identity];
  v8 = [v7 provider];

  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v9 = *(*(a1 + 32) + 112);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke_129;
  v44[3] = &unk_2782C81C0;
  v10 = v8;
  v45 = v10;
  v46 = &v48;
  v47 = *(a1 + 48);
  [v9 enumerateKeysAndObjectsUsingBlock:v44];
  if (v49[3] < *(a1 + 48))
  {
    [*(*(a1 + 32) + 104) removeObjectForKey:v3];
    [*(*(a1 + 32) + 112) setObject:v4 forKey:v3];
    ++*(*(a1 + 32) + 152);
    v30 = [*(*(a1 + 32) + 160) objectForKey:v10];
    v11 = [v30 anyObject];
    if (!v11)
    {
      v32 = [*(a1 + 32) providerForExtensionIdentifier:v10];
      v12 = MEMORY[0x277CCAD78];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%lu", v10, v49[3] + 1];
      v14 = [v12 pf_UUIDFromArbitraryString:v13];

      v11 = [objc_alloc(MEMORY[0x277D3EB78]) initWithExtension:v32 instanceIdentifier:v14];
      if (!v11)
      {
        v28 = MEMORY[0x277CCA9B8];
        v52 = *MEMORY[0x277CCA470];
        v53[0] = @"Unable to acquire instance";
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
        v11 = [v28 pbf_generalErrorWithCode:10 userInfo:v29];

        [*(a1 + 32) _lock_fireCompletionsForRequest:v3 snapshotImagesByReservation:0 error:v11];
        goto LABEL_7;
      }
    }

    v15 = *(a1 + 32);
    v16 = [v3 path];
    v17 = [v15 snapshotCoordinatorForPath:v16];

    v31 = v4;
    v18 = [objc_alloc(MEMORY[0x277D3EFC8]) initWithExtensionInstance:v11];
    [v18 setDelegate:*(a1 + 32)];
    +[PBFPowerLogger logUpdate:reason:inServiceOfBundleIdentifier:](PBFPowerLogger, "logUpdate:reason:inServiceOfBundleIdentifier:", 4, [v3 powerLogReason], v10);
    [*(*(a1 + 32) + 88) setObject:v18 forKey:v3];
    v19 = objc_opt_new();
    v20 = dispatch_group_create();
    dispatch_group_enter(v20);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke_2;
    v38[3] = &unk_2782C8210;
    v21 = v20;
    v39 = v21;
    v14 = v18;
    v40 = v14;
    v32 = v17;
    v41 = v32;
    v22 = v3;
    v42 = v22;
    v23 = v19;
    v43 = v23;
    [v31 enumerateKeysAndObjectsUsingBlock:v38];
    dispatch_group_leave(v21);
    v24 = [MEMORY[0x277D3EBA8] snapshotWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke_150;
    block[3] = &unk_2782C6588;
    v25 = *(a1 + 40);
    v26 = *(a1 + 32);
    v34 = v25;
    v35 = v26;
    v36 = v22;
    v37 = v23;
    v27 = v23;
    dispatch_group_notify(v21, v24, block);

    v4 = v31;
LABEL_7:
  }

  _Block_object_dispose(&v48, 8);
}

void __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke_129(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 path];
  v7 = [v6 identity];
  v8 = [v7 provider];

  if ([v8 isEqualToString:a1[4]])
  {
    if (++*(*(a1[5] + 8) + 24) >= a1[6])
    {
      *a4 = 1;
    }
  }
}

void __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  dispatch_group_enter(*(a1 + 32));
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke_3;
  v12[3] = &unk_2782C81E8;
  v13 = v7;
  v14 = *(a1 + 56);
  v15 = v5;
  v16 = *(a1 + 64);
  v17 = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  [v9 enqueueSnapshotRequest:v6 destinationProvider:v8 completion:v12];
}

void __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) signal])
  {
    v7 = [*(a1 + 40) displayContext];
    v8 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:v7 definition:*(a1 + 48)];

    if (v6)
    {
      v9 = PBFLogSnapshotter();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke_3_cold_2((a1 + 48), v6, v9);
      }

      v10 = [[PBFPosterSnapshotReservation alloc] initWithError:v6 snapshotContext:v8];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x277D3EF70]);
      v12 = [*(a1 + 48) levelSets];
      v13 = [v12 firstObject];
      v14 = [v13 levels];
      v15 = [v11 initWithSet:v14];

      v16 = [v5 snapshotBundle];
      v17 = [v16 snapshotURLForLevelSet:v15];

      if (v17)
      {
        v10 = [[PBFPosterSnapshotReservation alloc] initWithURL:v17 snapshotContext:v8];
      }

      else
      {
        v18 = PBFLogSnapshotter();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke_3_cold_3(a1 + 48, v18, v19, v20, v21, v22, v23, v24);
        }

        v28 = *MEMORY[0x277CCA470];
        v29[0] = @"Snapshot succeeded but the resulting imageURL was nil.";
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
        v26 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:10 userInfo:v25];
        v10 = [[PBFPosterSnapshotReservation alloc] initWithError:v26 snapshotContext:v8];
      }
    }

    v27 = *(a1 + 56);
    objc_sync_enter(v27);
    [*(a1 + 56) setObject:v10 forKeyedSubscript:*(a1 + 48)];
    objc_sync_exit(v27);

    dispatch_group_leave(*(a1 + 64));
  }

  else
  {
    v10 = PBFLogSnapshotter();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEBUG))
    {
      __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke_3_cold_1();
    }
  }
}

uint64_t __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke_150(uint64_t a1)
{
  [*(a1 + 32) lock];
  [*(a1 + 40) _lock_fireCompletionsForRequest:*(a1 + 48) snapshotImagesByReservation:*(a1 + 56) error:0];
  v2 = *(a1 + 32);

  return [v2 unlock];
}

uint64_t __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke_2_152(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 posterUUIDs];
  v5 = [v3 path];

  v6 = [v5 identity];
  v7 = [v6 posterUUID];
  v8 = [v4 containsObject:v7];

  return v8;
}

- (id)snapshotCoordinatorForPath:(id)path
{
  pathCopy = path;
  serverIdentity = [pathCopy serverIdentity];

  if (serverIdentity)
  {
    WeakRetained = objc_loadWeakRetained(&self->_modelCoordinatorProvider);
    serverIdentity2 = [pathCopy serverIdentity];
    v8 = [WeakRetained pbf_posterSnapshotCoordinatorForIdentity:serverIdentity2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_lock_enumerateObservers:(id)observers
{
  v17 = *MEMORY[0x277D85DE8];
  observersCopy = observers;
  [(PFOSUnfairLock *)self->_lock assertOwner];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_lock_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = 0;
      observersCopy[2](observersCopy, v10, &v11);
      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)_lock_invalidateAllCompletionHandlers
{
  v19 = *MEMORY[0x277D85DE8];
  [(PFOSUnfairLock *)self->_lock assertOwner];
  v3 = objc_opt_new();
  keyEnumerator = [(NSMapTable *)self->_lock_requestToCompletion keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v6 = nextObject;
    do
    {
      [v3 addObject:v6];
      nextObject2 = [keyEnumerator nextObject];

      v6 = nextObject2;
    }

    while (nextObject2);
  }

  v8 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(PBFPosterSnapshotManager *)self _lock_fireCompletionsForRequest:*(*(&v14 + 1) + 8 * v13++) snapshotImagesByReservation:0 error:v8, v14];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)snapshotterDidInvalidateScene:(id)scene didWaitForSceneInvalidation:(BOOL)invalidation forRequest:(id)request
{
  v27 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  requestCopy = request;
  [(PFOSUnfairLock *)self->_lock lock];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PBFPosterSnapshotManager_snapshotterDidInvalidateScene_didWaitForSceneInvalidation_forRequest___block_invoke;
  aBlock[3] = &unk_2782C5888;
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  objectEnumerator = [(NSMapTable *)self->_lock_snapshotRequestToSnapshotter objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v13 = [allObjects containsObject:sceneCopy];

  if (v13)
  {
    v14 = PBFLogSnapshotter();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138543618;
      v22 = v15;
      v23 = 2114;
      v24 = sceneCopy;
      _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@, but we're still expecting more work from this snapshotter", buf, 0x16u);
    }
  }

  else
  {
    v14 = [(NSMapTable *)self->_lock_snapshotterToSnapshotInvalidationWrapper objectForKey:sceneCopy];
    if (v14)
    {
      v16 = PBFLogSnapshotter();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = NSStringFromSelector(a2);
        snapshotRequest = [v14 snapshotRequest];
        *buf = 138543874;
        v22 = v17;
        v23 = 2114;
        v24 = sceneCopy;
        v25 = 2114;
        v26 = snapshotRequest;
        _os_log_impl(&dword_21B526000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@, now cleaning up after request: %{public}@", buf, 0x20u);
      }

      snapshotRequest2 = [v14 snapshotRequest];
      [(PBFPosterSnapshotManager *)self _lock_cleanupAfterSceneInvalidationForRequest:snapshotRequest2 snapshotter:sceneCopy shouldTerminateProcess:[v14 shouldTerminateProcess]];

      [(NSMapTable *)self->_lock_snapshotterToSnapshotInvalidationWrapper removeObjectForKey:sceneCopy];
    }
  }

  v10[2](v10);
}

- (BOOL)ingestSnapshotCollection:(id)collection forConfiguration:(id)configuration error:(id *)error
{
  v148 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  configurationCopy = configuration;
  v11 = collectionCopy;
  NSClassFromString(&cfstr_Prspostersnaps_0.isa);
  if (!v11)
  {
    [PBFPosterSnapshotManager ingestSnapshotCollection:a2 forConfiguration:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotManager ingestSnapshotCollection:a2 forConfiguration:? error:?];
  }

  v12 = configurationCopy;
  NSClassFromString(&cfstr_Prposterconfig.isa);
  if (!v12)
  {
    [PBFPosterSnapshotManager ingestSnapshotCollection:a2 forConfiguration:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotManager ingestSnapshotCollection:a2 forConfiguration:? error:?];
  }

  _path = [v12 _path];
  primaryLayersSnapshot = [v11 primaryLayersSnapshot];
  surface = [primaryLayersSnapshot surface];

  floatingLayerSnapshot = [v11 floatingLayerSnapshot];
  surface2 = [floatingLayerSnapshot surface];

  if (surface)
  {
    IsVolatile = PUIIOSurfaceIsVolatile();
    v17 = PBFLogSnapshotter();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    errorCopy = error;
    v108 = v12;
    if (IsVolatile)
    {
      if (!v18)
      {
        goto LABEL_17;
      }

      serverIdentity = [_path serverIdentity];
      posterUUID = [serverIdentity posterUUID];
      *buf = 138412546;
      v145 = surface;
      v146 = 2114;
      v147 = posterUUID;
      v21 = "Attempting to ingest *VOLATILE* Surface %@ for path %{public}@";
      v22 = v17;
      v23 = 22;
    }

    else
    {
      if (!v18)
      {
        goto LABEL_17;
      }

      serverIdentity = [_path serverIdentity];
      posterUUID = [serverIdentity posterUUID];
      *buf = 138543362;
      v145 = posterUUID;
      v21 = "Attempting to ingest Surface for path %{public}@";
      v22 = v17;
      v23 = 12;
    }

    _os_log_impl(&dword_21B526000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);

LABEL_17:
    interfaceStyle = [v11 interfaceStyle];
    v31 = interfaceStyle == 1;
    if (interfaceStyle == 2)
    {
      v31 = 2;
    }

    v121 = v31;
    accessibilityContrast = [v11 accessibilityContrast];
    if (accessibilityContrast == 1)
    {
      v33 = 0;
    }

    else
    {
      v33 = -1;
    }

    if (accessibilityContrast == 2)
    {
      v33 = 1;
    }

    v120 = v33;
    v34 = [surface attachmentForKey:@"kPaperboardIOSurfaceDeviceOrientationPropertiesKey"];
    unsignedIntegerValue = [v34 unsignedIntegerValue];

    v123 = surface;
    v35 = [surface attachmentForKey:@"kPaperboardIOSurfaceInterfaceOrientationPropertiesKey"];
    unsignedIntegerValue2 = [v35 unsignedIntegerValue];

    [v11 snapshotScale];
    v37 = v36;
    snapshotDisplayIdentity = [v11 snapshotDisplayIdentity];
    v122 = [MEMORY[0x277D0ACE0] pui_displayConfigurationForIdentity:?];
    v38 = +[PBFPosterSnapshotDefinition switcherSnapshotDefinition];
    v39 = +[PBFPosterSnapshotDefinition switcherFloatingLayerSnapshotDefinition];
    v105 = [(PBFPosterSnapshotManager *)self snapshotCoordinatorForPath:_path];
    v109 = v11;
    [v11 salientContentRectangle];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v110 = [MEMORY[0x277CBEBC0] pf_temporaryDirectoryURLWithBasenamePrefix:@"SnapshotManagerIngest"];
    [v110 pf_markPurgableInOneHourWithError:0];
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v140[0] = v38;
    v140[1] = v39;
    v125 = v39;
    obj = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:2];
    v48 = [obj countByEnumeratingWithState:&v132 objects:v141 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = 0;
      v51 = *v133;
      v117 = *MEMORY[0x277D3F010];
      v116 = *MEMORY[0x277D3F018];
      v115 = *MEMORY[0x277D3F008];
      v114 = *MEMORY[0x277D3F020];
      v113 = *MEMORY[0x277D3EFF0];
      v112 = *MEMORY[0x277D3EFF8];
      v111 = *MEMORY[0x277D3F000];
      while (1)
      {
        v52 = 0;
        v126 = v49;
        do
        {
          if (*v133 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v53 = *(*(&v132 + 1) + 8 * v52);
          if (!v50)
          {
            v54 = objc_alloc(MEMORY[0x277D3EF78]);
            pui_displayConfigurationIdentifier = [v122 pui_displayConfigurationIdentifier];
            v50 = [v54 initWithHardwareIdentifier:pui_displayConfigurationIdentifier userInterfaceStyle:v121 interfaceOrientation:unsignedIntegerValue2 deviceOrientation:unsignedIntegerValue];

            [v50 updateWithPoster:_path];
            v56 = [MEMORY[0x277CCABB0] numberWithInteger:v120];
            [v50 setObject:v56 forKeyedSubscript:v117];

            uniqueIdentifier = [v53 uniqueIdentifier];
            [v50 setObject:uniqueIdentifier forKeyedSubscript:v116];

            v58 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
            [v50 setObject:v58 forKeyedSubscript:v115];

            v59 = [MEMORY[0x277CCABB0] numberWithInteger:v121];
            [v50 setObject:v59 forKeyedSubscript:v114];

            v60 = [MEMORY[0x277CCABB0] numberWithInteger:unsignedIntegerValue];
            [v50 setObject:v60 forKeyedSubscript:v113];

            v61 = [MEMORY[0x277CCABB0] numberWithInteger:unsignedIntegerValue2];
            [v50 setObject:v61 forKeyedSubscript:v112];

            if (PUICGRectIsValidSalientContentRectangle())
            {
              v62 = PBFLogDataStore();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                v149.origin.x = v41;
                v149.origin.y = v43;
                v149.size.width = v45;
                v149.size.height = v47;
                v63 = NSStringFromCGRect(v149);
                *buf = 138543362;
                v145 = v63;
                _os_log_impl(&dword_21B526000, v62, OS_LOG_TYPE_DEFAULT, "Ingesting salient content rect: %{public}@", buf, 0xCu);
              }

              v150.origin.x = v41;
              v150.origin.y = v43;
              v150.size.width = v45;
              v150.size.height = v47;
              v64 = NSStringFromCGRect(v150);
              [v50 setObject:v64 forKeyedSubscript:v111];
            }

            v49 = v126;
          }

          if (v38 == v53)
          {
            v66 = v123;
            allLevelsExceptFloating = [MEMORY[0x277D3EF70] allLevelsExceptFloating];
LABEL_41:
            v67 = allLevelsExceptFloating;
            goto LABEL_42;
          }

          v65 = surface2;
          if (!surface2)
          {
            goto LABEL_47;
          }

          v66 = v65;
          if (v125 == v53)
          {
            allLevelsExceptFloating = [MEMORY[0x277D3EF70] floatingLevelSet];
            goto LABEL_41;
          }

          v67 = 0;
LABEL_42:
          v131 = 0;
          [v50 captureSurface:v66 sceneSettings:0 forLevelSet:v67 persistenceScale:&v131 error:1.0];
          v69 = v131;
          if (v69)
          {
            v70 = v38;
            v71 = PBFLogSnapshotter();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              uniqueIdentifier2 = [v53 uniqueIdentifier];
              *buf = 138543618;
              v145 = uniqueIdentifier2;
              v146 = 2114;
              v147 = v69;
              _os_log_error_impl(&dword_21B526000, v71, OS_LOG_TYPE_ERROR, "failed to capture snapshot collection definition %{public}@: %{public}@", buf, 0x16u);
            }

            v38 = v70;
          }

LABEL_47:
          ++v52;
        }

        while (v49 != v52);
        v49 = [obj countByEnumeratingWithState:&v132 objects:v141 count:16];
        if (!v49)
        {
          goto LABEL_51;
        }
      }
    }

    v50 = 0;
LABEL_51:

    v73 = MEMORY[0x277CCACA8];
    uniqueIdentifier3 = [v38 uniqueIdentifier];
    v75 = [v73 stringWithFormat:@"Snapshot-%@.pks", uniqueIdentifier3];
    v76 = [v110 URLByAppendingPathComponent:v75];
    defaultFormat = [MEMORY[0x277D3EF60] defaultFormat];
    v130 = 0;
    v78 = [v50 buildWithOutputURL:v76 diskFormat:defaultFormat error:&v130];
    v79 = v130;

    v12 = v108;
    if (!v79 && v78)
    {
      goto LABEL_53;
    }

    v95 = PBFLogSnapshotter();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      [(PBFPosterSnapshotManager *)v79 ingestSnapshotCollection:v95 forConfiguration:v96 error:v97, v98, v99, v100, v101];
    }

    if (v79)
    {
      v83 = v79;
    }

    else
    {
      v102 = MEMORY[0x277CCA9B8];
      v138 = *MEMORY[0x277CCA470];
      v139 = @"Snapshot bundle could not be built";
      v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
      v83 = [v102 pbf_generalErrorWithCode:0 userInfo:v103];

      if (!v83)
      {
LABEL_53:
        v129 = 0;
        v80 = [v105 ingestSnapshotBundle:v78 error:&v129];
        v81 = v129;
        v82 = v81;
        if (v81 || (v83 = 0, (v80 & 1) == 0))
        {
          if (!v81)
          {
            v84 = MEMORY[0x277CCA9B8];
            v136 = *MEMORY[0x277CCA470];
            v137 = @"Snapshot bundle could not be ingested";
            v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
            v82 = [v84 pbf_generalErrorWithCode:0 userInfo:v85];
          }

          v86 = PBFLogSnapshotter();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            [(PBFPosterSnapshotManager *)v82 ingestSnapshotCollection:v86 forConfiguration:v87 error:v88, v89, v90, v91, v92];
          }

          v83 = v82;
        }

        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager removeItemAtURL:v110 error:0];

        v29 = v83 == 0;
        if (errorCopy && v83)
        {
          v94 = v83;
          *errorCopy = v83;
        }

        goto LABEL_70;
      }
    }

    v29 = 0;
LABEL_70:

    v11 = v109;
    surface = v123;
    v28 = snapshotDisplayIdentity;
    goto LABEL_71;
  }

  if (error)
  {
    v24 = MEMORY[0x277CCA9B8];
    v142 = *MEMORY[0x277CCA470];
    v143 = @"unable to ingest snapshotCollection which does not possess snapshots backed by IOSurface";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
    v26 = [v24 pbf_dataStoreErrorWithCode:-2214 userInfo:v25];

    v27 = v26;
    *error = v26;
  }

  v28 = PBFLogSnapshotter();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v145 = v11;
    _os_log_impl(&dword_21B526000, v28, OS_LOG_TYPE_DEFAULT, "Snapshotter could not ingest snapshotCollection because it is not backed by an IOSurface: %@", buf, 0xCu);
  }

  v29 = 0;
LABEL_71:

  return v29;
}

- (void)fetchPosterSnapshotForRequest:(id)request definition:(id)definition completion:(id)completion
{
  requestCopy = request;
  definitionCopy = definition;
  completionCopy = completion;
  v12 = requestCopy;
  NSClassFromString(&cfstr_Pbfpostersnaps_6.isa);
  if (!v12)
  {
    [PBFPosterSnapshotManager fetchPosterSnapshotForRequest:a2 definition:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotManager fetchPosterSnapshotForRequest:a2 definition:? completion:?];
  }

  v13 = definitionCopy;
  NSClassFromString(&cfstr_Pbfpostersnaps_2.isa);
  if (!v13)
  {
    [PBFPosterSnapshotManager fetchPosterSnapshotForRequest:a2 definition:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotManager fetchPosterSnapshotForRequest:a2 definition:? completion:?];
  }

  path = [v12 path];
  v15 = [(PBFPosterSnapshotManager *)self snapshotCoordinatorForPath:path];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PBFPosterSnapshotManager_fetchPosterSnapshotForRequest_definition_completion___block_invoke;
  aBlock[3] = &unk_2782C8280;
  v16 = completionCopy;
  v24 = v16;
  v17 = _Block_copy(aBlock);
  if (v16)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__PBFPosterSnapshotManager_fetchPosterSnapshotForRequest_definition_completion___block_invoke_2;
    v18[3] = &unk_2782C82A8;
    v18[4] = self;
    v19 = v12;
    v20 = v13;
    v21 = v15;
    v22 = v17;
    [(PBFPosterSnapshotManager *)self _enqueueSnapshotForRequestIfNeeded:v19 completion:v18];
  }

  else
  {
    [(PBFPosterSnapshotManager *)self _enqueueSnapshotForRequestIfNeeded:v12 completion:0];
  }
}

void __80__PBFPosterSnapshotManager_fetchPosterSnapshotForRequest_definition_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v13 = 0;
    v7 = [v5 fetchImageWithError:&v13];
    v8 = v13;
    v9 = v8;
    v10 = *(a1 + 32);
    v11 = v6;
    if (v6 || (v11 = v8) != 0)
    {
      (*(v10 + 16))(v10, v7, v11);
    }

    else
    {
      v12 = [v5 error];
      (*(v10 + 16))(v10, v7, v12);
    }
  }
}

void __80__PBFPosterSnapshotManager_fetchPosterSnapshotForRequest_definition_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PBFLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) identifier];
    v13 = 134218754;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    v17 = 2112;
    v18 = v6;
    v19 = 2048;
    v20 = [v5 count];
    _os_log_debug_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEBUG, "<%p> completion for [request identifier]: %@, error: %@, [snapshots count]: %lu", &v13, 0x2Au);
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) displayContext];
    v10 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:v9 definition:*(a1 + 48)];

    v8 = [*(a1 + 56) snapshotReservationForContext:v10];
  }

  (*(*(a1 + 64) + 16))();
}

- (id)posterSnapshotForRequest:(id)request definition:(id)definition error:(id *)error
{
  v5 = 0;
  if (request && definition)
  {
    definitionCopy = definition;
    requestCopy = request;
    path = [requestCopy path];
    v12 = [(PBFPosterSnapshotManager *)self snapshotCoordinatorForPath:path];
    displayContext = [requestCopy displayContext];

    v14 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:displayContext definition:definitionCopy];

    v15 = [v12 snapshotReservationForContext:v14];
    v5 = [v15 fetchImageWithError:error];
  }

  return v5;
}

- (void)prewarmSnapshotsForRequests:(id)requests completion:(id)completion
{
  requestsCopy = requests;
  completionCopy = completion;
  if ([requestsCopy count])
  {
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__PBFPosterSnapshotManager_prewarmSnapshotsForRequests_completion___block_invoke;
    v13[3] = &unk_2782C82F8;
    v9 = v8;
    v14 = v9;
    selfCopy = self;
    [requestsCopy enumerateObjectsUsingBlock:v13];
    dispatch_group_leave(v9);
    if (completionCopy)
    {
      v10 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__PBFPosterSnapshotManager_prewarmSnapshotsForRequests_completion___block_invoke_3;
      block[3] = &unk_2782C6068;
      v12 = completionCopy;
      dispatch_group_notify(v9, v10, block);
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __67__PBFPosterSnapshotManager_prewarmSnapshotsForRequests_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__PBFPosterSnapshotManager_prewarmSnapshotsForRequests_completion___block_invoke_2;
  v6[3] = &unk_2782C82D0;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  [v5 _enqueueSnapshotForRequestIfNeeded:v4 completion:v6];
}

- (id)enqueueRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D3EC40];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__PBFPosterSnapshotManager_enqueueRequest_completion___block_invoke;
  v15[3] = &unk_2782C70C0;
  objc_copyWeak(&v17, &location);
  v9 = requestCopy;
  v16 = v9;
  v10 = [v8 tokenWithCancellationBlock:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__PBFPosterSnapshotManager_enqueueRequest_completion___block_invoke_2;
  v13[3] = &unk_2782C8320;
  v11 = completionCopy;
  v14 = v11;
  [(PBFPosterSnapshotManager *)self _enqueueSnapshotForRequestIfNeeded:v9 completion:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v10;
}

void __54__PBFPosterSnapshotManager_enqueueRequest_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
  [WeakRetained cancelRequests:v2 reason:@"cancellation token"];
}

uint64_t __54__PBFPosterSnapshotManager_enqueueRequest_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)invalidate
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)providerForPath:(id)path
{
  identity = [path identity];
  provider = [identity provider];

  v6 = [(PBFPosterSnapshotManager *)self providerForExtensionIdentifier:provider];

  return v6;
}

- (id)providerForExtensionIdentifier:(id)identifier
{
  extensionProvider = self->_extensionProvider;
  identifierCopy = identifier;
  extensionForIdentifier = [(PFPosterExtensionProvider *)extensionProvider extensionForIdentifier];
  v6 = [extensionForIdentifier objectForKey:identifierCopy];

  return v6;
}

- (void)_enqueueSnapshotForRequestIfNeeded:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"request", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_enqueueSnapshotForRequestIfNeeded:(char *)a1 completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"completion", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __74__PBFPosterSnapshotManager__enqueueSnapshotForRequestIfNeeded_completion___block_invoke_3_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 40);
  v6 = [*a2 count];
  v7 = [*(a1 + 48) identifier];
  v8 = 134218498;
  v9 = v5;
  v10 = 2048;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_debug_impl(&dword_21B526000, a3, OS_LOG_TYPE_DEBUG, "<%p> [_enqueueSnapshotForRequestIfNeeded]: [remainingRequests count]: %lu. [request identifier]: %@", &v8, 0x20u);
}

- (void)_lock_cleanupAfterSceneInvalidationForRequest:snapshotter:shouldTerminateProcess:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__PBFPosterSnapshotManager__lock_teardownAssertionsAndSnapshottersIfNecessary__block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Already an active snapshotter for this request!"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFPosterSnapshotManager _lock_kickoffNextOperation]_block_invoke"];
    OUTLINED_FUNCTION_3_3();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
  }

  v6 = v0;
  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __54__PBFPosterSnapshotManager__lock_kickoffNextOperation__block_invoke_3_cold_2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_21B526000, log, OS_LOG_TYPE_ERROR, "Snapshot request failed for definition %@: %@", &v4, 0x16u);
}

- (void)ingestSnapshotCollection:(char *)a1 forConfiguration:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterSnapshotCollectionClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)ingestSnapshotCollection:(char *)a1 forConfiguration:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)ingestSnapshotCollection:(char *)a1 forConfiguration:error:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)ingestSnapshotCollection:(char *)a1 forConfiguration:error:.cold.6(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)fetchPosterSnapshotForRequest:(char *)a1 definition:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PBFPosterSnapshotRequestClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)fetchPosterSnapshotForRequest:(char *)a1 definition:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PBFPosterSnapshotDefinitionClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)fetchPosterSnapshotForRequest:(char *)a1 definition:completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)fetchPosterSnapshotForRequest:(char *)a1 definition:completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end