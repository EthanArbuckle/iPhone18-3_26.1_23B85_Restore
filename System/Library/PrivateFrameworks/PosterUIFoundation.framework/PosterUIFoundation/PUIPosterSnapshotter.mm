@interface PUIPosterSnapshotter
+ (id)completionQueue;
- (BOOL)_assertionLock_mainQueue_updateAssertionsForExtension;
- (PUIPosterSnapshotter)initWithExtensionInstance:(id)instance;
- (PUIPosterSnapshotterDelegate)delegate;
- (id)extensionInfoString;
- (id)logIdentifier;
- (void)_assertionLock_invalidateSessionAssertions;
- (void)_assertionLock_mainQueue_updateAssertionsForExtension;
- (void)_lock_retryStartupLater;
- (void)_mainQueue_executeNextSnapshotIfPossible;
- (void)_mainQueue_extensionProcessDidInterrupt;
- (void)_mainQueue_lock_startExtension;
- (void)_teardownAllSnapshots;
- (void)dealloc;
- (void)enqueueSnapshotRequest:(id)request destinationProvider:(id)provider completion:(id)completion;
- (void)extensionInstanceDidInvalidate:(id)invalidate;
- (void)extensionInstanceProcessDidInterrupt:(id)interrupt;
- (void)fireSceneDeactivationErrorForTesting:(id)testing;
- (void)installRequestAsActive:(id)active completion:(id)completion;
- (void)invalidate;
- (void)sceneSnapshotterDidFinish:(id)finish result:(id)result error:(id)error;
- (void)sceneSnapshotterDidInvalidateScene:(id)scene didWaitForSceneInvalidation:(BOOL)invalidation forRequest:(id)request;
@end

@implementation PUIPosterSnapshotter

+ (id)completionQueue
{
  if (completionQueue_onceToken != -1)
  {
    +[PUIPosterSnapshotter completionQueue];
  }

  v3 = completionQueue_completionQueue;

  return v3;
}

void __39__PUIPosterSnapshotter_completionQueue__block_invoke()
{
  v0 = [MEMORY[0x1E698E698] serial];
  v4 = [v0 serviceClass:33 relativePriority:10];

  v1 = [v4 attributes];
  v2 = BSDispatchQueueCreateWithAttributes();
  v3 = completionQueue_completionQueue;
  completionQueue_completionQueue = v2;
}

- (void)dealloc
{
  [(PUIPosterSnapshotter *)self _teardownAllSnapshots];
  [(PFPosterExtensionInstance *)self->_extensionInstance removeInstanceObserver:self];
  [(PUIPosterSnapshotter *)self _assertionLock_invalidateSessionAssertions];
  v3.receiver = self;
  v3.super_class = PUIPosterSnapshotter;
  [(PUIPosterSnapshotter *)&v3 dealloc];
}

- (PUIPosterSnapshotter)initWithExtensionInstance:(id)instance
{
  instanceCopy = instance;
  if (!instanceCopy)
  {
    [PUIPosterSnapshotter initWithExtensionInstance:a2];
  }

  v7 = instanceCopy;
  v14.receiver = self;
  v14.super_class = PUIPosterSnapshotter;
  v8 = [(PUIPosterSnapshotter *)&v14 init];
  if (v8)
  {
    v9 = objc_opt_new();
    lock_enqueuedSnapshots = v8->_lock_enqueuedSnapshots;
    v8->_lock_enqueuedSnapshots = v9;

    v11 = objc_opt_new();
    invalidationSignal = v8->_invalidationSignal;
    v8->_invalidationSignal = v11;

    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_extensionInstance, instance);
    [v7 addInstanceObserver:v8];
  }

  return v8;
}

- (id)extensionInfoString
{
  extension = [(PFPosterExtensionInstance *)self->_extensionInstance extension];
  v4 = MEMORY[0x1E696AEC0];
  localizedName = [extension localizedName];
  instanceIdentifier = [(PFPosterExtensionInstance *)self->_extensionInstance instanceIdentifier];
  v7 = [v4 stringWithFormat:@"%@ id: %@", localizedName, instanceIdentifier];

  return v7;
}

- (id)logIdentifier
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  extensionInfoString = [(PUIPosterSnapshotter *)self extensionInfoString];
  [v3 appendString:extensionInfoString withName:@"extension"];

  build = [v3 build];

  return build;
}

- (void)enqueueSnapshotRequest:(id)request destinationProvider:(id)provider completion:(id)completion
{
  v41[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  providerCopy = provider;
  completionCopy = completion;
  v11 = completionCopy;
  if (requestCopy)
  {
    v12 = [[_PUIPosterEnqueuedSnapshot alloc] initWithRequest:requestCopy destinationProvider:providerCopy completion:completionCopy];
    if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
    {
      if (v11)
      {
        completionQueue = [objc_opt_class() completionQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __78__PUIPosterSnapshotter_enqueueSnapshotRequest_destinationProvider_completion___block_invoke;
        block[3] = &unk_1E7854B48;
        v30 = v11;
        dispatch_async(completionQueue, block);
      }
    }

    else
    {
      os_unfair_lock_lock(&self->_lock);
      v15 = PUILogSnapshotter();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        logIdentifier = [(_PUIPosterEnqueuedSnapshot *)v12 logIdentifier];
        *buf = 138543618;
        selfCopy = self;
        v33 = 2114;
        v34 = logIdentifier;
        _os_log_impl(&dword_1A8C85000, v15, OS_LOG_TYPE_DEFAULT, "(%{public}@) adding snapshot to queue: %{public}@", buf, 0x16u);
      }

      [(NSMutableArray *)self->_lock_enqueuedSnapshots addObject:v12];
      lock_enqueuedSnapshots = self->_lock_enqueuedSnapshots;
      v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"priority" ascending:0];
      v41[0] = v18;
      v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"date" ascending:0];
      v41[1] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
      [(NSMutableArray *)lock_enqueuedSnapshots sortUsingDescriptors:v20];

      if (self->_lock_state)
      {
        v21 = PUILogSnapshotter();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          logIdentifier2 = [(PUIPosterSnapshotter *)self logIdentifier];
          logIdentifier3 = [(_PUIPosterEnqueuedSnapshot *)v12 logIdentifier];
          v22 = self->_lock_state - 1;
          if (v22 > 3)
          {
            v23 = @"Idle";
          }

          else
          {
            v23 = off_1E7854C08[v22];
          }

          v26 = v23;
          v24 = [(NSMutableArray *)self->_lock_enqueuedSnapshots count];
          logIdentifier4 = [(PUIPosterSceneSnapshotter *)self->_lock_sceneSnapshotter logIdentifier];
          *buf = 138544386;
          selfCopy = logIdentifier2;
          v33 = 2114;
          v34 = logIdentifier3;
          v35 = 2114;
          v36 = v26;
          v37 = 2050;
          v38 = v24;
          v39 = 2114;
          v40 = logIdentifier4;
          _os_log_impl(&dword_1A8C85000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: (%{public}@) Snapshot enqueued and waiting (state: %{public}@, queue length %{public}lu, current snapshot: %{public}@)", buf, 0x34u);
        }

        os_unfair_lock_unlock(&self->_lock);
      }

      else
      {
        self->_lock_state = 1;
        os_unfair_lock_unlock(&self->_lock);
        BSDispatchMain();
      }
    }

    goto LABEL_17;
  }

  if (completionCopy)
  {
    v12 = PFFunctionNameForAddress();
    v14 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    (v11)[2](v11, 0, v14);

LABEL_17:
  }
}

void __78__PUIPosterSnapshotter_enqueueSnapshotRequest_destinationProvider_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)_mainQueue_executeNextSnapshotIfPossible
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *self - 1;
  if (v2 > 3)
  {
    v3 = @"Idle";
  }

  else
  {
    v3 = off_1E7854C08[v2];
  }

  v4 = 136315394;
  v5 = "[PUIPosterSnapshotter _mainQueue_executeNextSnapshotIfPossible]";
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_1A8C85000, a2, OS_LOG_TYPE_ERROR, "Snapshotter state error: shouldn't call %s in %{public}@ state", &v4, 0x16u);
}

- (void)_lock_retryStartupLater
{
  if (!self->_lock_waitingForRetry)
  {
    self->_lock_waitingForRetry = 1;
    objc_initWeak(&location, self);
    v2 = dispatch_time(0, 2000000000);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __47__PUIPosterSnapshotter__lock_retryStartupLater__block_invoke;
    v3[3] = &unk_1E7854B70;
    objc_copyWeak(&v4, &location);
    dispatch_after(v2, MEMORY[0x1E69E96A0], v3);
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __47__PUIPosterSnapshotter__lock_retryStartupLater__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    LOBYTE(v2[16]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(v2 + 8);
    [(os_unfair_lock_s *)v2 _mainQueue_executeNextSnapshotIfPossible];
    WeakRetained = v2;
  }
}

- (void)_teardownAllSnapshots
{
  v36 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  logIdentifier = [(PUIPosterSnapshotter *)self logIdentifier];
  v4 = PUILogSnapshotter();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NSMutableArray *)self->_lock_enqueuedSnapshots count];
    *buf = 138543618;
    v33 = logIdentifier;
    v34 = 2048;
    v35 = v5;
    _os_log_impl(&dword_1A8C85000, v4, OS_LOG_TYPE_DEFAULT, "(%{public}@) Tearing down %lu enqueued snapshots", buf, 0x16u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_lock_enqueuedSnapshots;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        completionQueue = [objc_opt_class() completionQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __45__PUIPosterSnapshotter__teardownAllSnapshots__block_invoke;
        block[3] = &unk_1E78548A0;
        v25 = logIdentifier;
        v26 = v11;
        dispatch_async(completionQueue, block);

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)self->_lock_enqueuedSnapshots removeAllObjects];
  if (self->_lock_sceneSnapshotter)
  {
    v13 = PUILogSnapshotter();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = logIdentifier;
      _os_log_impl(&dword_1A8C85000, v13, OS_LOG_TYPE_DEFAULT, "(%{public}@) Tearing down active scene snapshotter", buf, 0xCu);
    }

    [(PUIPosterSceneSnapshotter *)self->_lock_sceneSnapshotter setDelegate:0];
    snapshotInfo = [(PUIPosterSceneSnapshotter *)self->_lock_sceneSnapshotter snapshotInfo];
    completionQueue2 = [objc_opt_class() completionQueue];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __45__PUIPosterSnapshotter__teardownAllSnapshots__block_invoke_39;
    v21 = &unk_1E78548A0;
    v22 = logIdentifier;
    v23 = snapshotInfo;
    v16 = snapshotInfo;
    dispatch_async(completionQueue2, &v18);

    [(PUIPosterSceneSnapshotter *)self->_lock_sceneSnapshotter invalidate:v18];
    lock_sceneSnapshotter = self->_lock_sceneSnapshotter;
    self->_lock_sceneSnapshotter = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __45__PUIPosterSnapshotter__teardownAllSnapshots__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PUILogSnapshotter();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) logIdentifier];
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1A8C85000, v2, OS_LOG_TYPE_DEFAULT, "(%{public}@) Invalidated on queue: %{public}@", &v7, 0x16u);
  }

  v5 = [*(a1 + 40) completion];
  if (v5)
  {
    v6 = [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
    (v5)[2](v5, 0, v6);
  }

  [*(a1 + 40) invalidate];
}

void __45__PUIPosterSnapshotter__teardownAllSnapshots__block_invoke_39(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PUILogSnapshotter();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) logIdentifier];
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1A8C85000, v2, OS_LOG_TYPE_DEFAULT, "(%{public}@) Invalidated active scene snapshotter for: %{public}@", &v7, 0x16u);
  }

  v5 = [*(a1 + 40) completion];
  if (v5)
  {
    v6 = [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
    (v5)[2](v5, 0, v6);
  }

  [*(a1 + 40) invalidate];
}

- (void)sceneSnapshotterDidFinish:(id)finish result:(id)result error:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  resultCopy = result;
  errorCopy = error;
  BSDispatchQueueAssertMain();
  os_unfair_lock_lock(&self->_lock);
  snapshotInfo = [(PUIPosterSceneSnapshotter *)finishCopy snapshotInfo];
  if (resultCopy || (-[BSAtomicSignal hasBeenSignalled](self->_invalidationSignal, "hasBeenSignalled") & 1) != 0 || ![snapshotInfo retryCount])
  {
    v14 = PUILogSnapshotter();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [snapshotInfo logIdentifier];
      *buf = 138543618;
      selfCopy2 = self;
      v24 = 2114;
      v25 = logIdentifier;
      _os_log_impl(&dword_1A8C85000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) scene snapshotter finished for: %{public}@", buf, 0x16u);
    }

    completion = [snapshotInfo completion];
    if (completion)
    {
      completionQueue = [objc_opt_class() completionQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__PUIPosterSnapshotter_sceneSnapshotterDidFinish_result_error___block_invoke;
      block[3] = &unk_1E7854720;
      v21 = completion;
      v19 = resultCopy;
      v20 = errorCopy;
      dispatch_async(completionQueue, block);
    }
  }

  else
  {
    v12 = PUILogSnapshotter();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier2 = [snapshotInfo logIdentifier];
      *buf = 138543618;
      selfCopy2 = self;
      v24 = 2114;
      v25 = logIdentifier2;
      _os_log_impl(&dword_1A8C85000, v12, OS_LOG_TYPE_DEFAULT, "(%{public}@) Retrying scene snapshotter for: %{public}@", buf, 0x16u);
    }

    [snapshotInfo setRetryCount:{objc_msgSend(snapshotInfo, "retryCount") - 1}];
    [(NSMutableArray *)self->_lock_enqueuedSnapshots insertObject:snapshotInfo atIndex:0];
  }

  if (self->_lock_sceneSnapshotter == finishCopy)
  {
    self->_lock_state = 3;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)sceneSnapshotterDidInvalidateScene:(id)scene didWaitForSceneInvalidation:(BOOL)invalidation forRequest:(id)request
{
  v20 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  requestCopy = request;
  os_unfair_lock_lock(&self->_lock);
  [(PUIPosterSceneSnapshotter *)sceneCopy setDelegate:0];
  completionQueue = [objc_opt_class() completionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__PUIPosterSnapshotter_sceneSnapshotterDidInvalidateScene_didWaitForSceneInvalidation_forRequest___block_invoke;
  block[3] = &unk_1E7854B98;
  block[4] = self;
  invalidationCopy = invalidation;
  v11 = requestCopy;
  v16 = v11;
  dispatch_async(completionQueue, block);

  if (self->_lock_sceneSnapshotter == sceneCopy)
  {
    v12 = PUILogSnapshotter();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1A8C85000, v12, OS_LOG_TYPE_DEFAULT, "(%{public}@) next in line!", buf, 0xCu);
    }

    lock_sceneSnapshotter = self->_lock_sceneSnapshotter;
    self->_lock_sceneSnapshotter = 0;

    self->_lock_state = 4;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __98__PUIPosterSnapshotter_sceneSnapshotterDidInvalidateScene_didWaitForSceneInvalidation_forRequest___block_invoke_40;
    v14[3] = &unk_1E7854320;
    v14[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], v14);
  }

  [(PUIPosterSceneSnapshotter *)sceneCopy invalidate];
  os_unfair_lock_unlock(&self->_lock);
}

void __98__PUIPosterSnapshotter_sceneSnapshotterDidInvalidateScene_didWaitForSceneInvalidation_forRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained snapshotterDidInvalidateScene:*(a1 + 32) didWaitForSceneInvalidation:*(a1 + 48) forRequest:*(a1 + 40)];
}

- (void)_mainQueue_lock_startExtension
{
  if (!self->_lock_waitingForStartExtension)
  {
    self->_lock_waitingForStartExtension = 1;
    lock_mainQueue_process = self->_lock_mainQueue_process;
    self->_lock_mainQueue_process = 0;

    mEMORY[0x1E69C51F0] = [MEMORY[0x1E69C51F0] sharedWorkloop];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke;
    block[3] = &unk_1E7854320;
    block[4] = self;
    dispatch_async(mEMORY[0x1E69C51F0], block);
  }
}

uint64_t __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PUILogSnapshotter();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v9 = v3;
    _os_log_impl(&dword_1A8C85000, v2, OS_LOG_TYPE_DEFAULT, "(%{public}@) Booting extension (if necessary)", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke_42;
  v7[3] = &unk_1E7854BE8;
  v7[4] = v4;
  return [v5 bootupExtensionInstance:v7];
}

void __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PUILogSnapshotter();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1A8C85000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Booted extension", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke_43;
  block[3] = &unk_1E7854BC0;
  block[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke_43(id *a1)
{
  v2 = a1 + 4;
  if (([*(a1[4] + 9) hasBeenSignalled] & 1) == 0)
  {
    os_unfair_lock_lock(a1[4] + 8);
    *(a1[4] + 65) = 0;
    v3 = a1[5];
    if (v3)
    {
      if (([v3 isValid] & 1) == 0)
      {
        v4 = PUILogSnapshotter();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke_43_cold_1(v2, v4, v5, v6, v7, v8, v9, v10);
        }
      }

      objc_storeStrong(a1[4] + 6, a1[5]);
      os_unfair_lock_unlock(a1[4] + 8);
      [a1[4] _mainQueue_executeNextSnapshotIfPossible];
    }

    else
    {
      v11 = PUILogSnapshotter();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke_43_cold_2();
      }

      v12 = [a1[6] domain];
      if ([v12 isEqualToString:*MEMORY[0x1E69C5228]])
      {
        v13 = [a1[6] code];

        if (v13 == 2)
        {
          os_unfair_lock_unlock(*v2 + 8);
          [*v2 invalidate];
          return;
        }
      }

      else
      {
      }

      [*v2 _lock_retryStartupLater];
      os_unfair_lock_unlock(*v2 + 8);
    }
  }
}

- (void)extensionInstanceProcessDidInterrupt:(id)interrupt
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__PUIPosterSnapshotter_extensionInstanceProcessDidInterrupt___block_invoke;
  v3[3] = &unk_1E7854B70;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __61__PUIPosterSnapshotter_extensionInstanceProcessDidInterrupt___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _mainQueue_extensionProcessDidInterrupt];
}

- (void)_mainQueue_extensionProcessDidInterrupt
{
  v13 = *MEMORY[0x1E69E9840];
  logIdentifier = [self logIdentifier];
  v6 = logIdentifier;
  v7 = *a2 - 1;
  if (v7 > 3)
  {
    v8 = @"Idle";
  }

  else
  {
    v8 = off_1E7854C08[v7];
  }

  v9 = 138543618;
  v10 = logIdentifier;
  v11 = 2114;
  v12 = v8;
  _os_log_error_impl(&dword_1A8C85000, a3, OS_LOG_TYPE_ERROR, "(%{public}@) Extension process interrupted in state: %{public}@", &v9, 0x16u);
}

- (void)extensionInstanceDidInvalidate:(id)invalidate
{
  v12 = *MEMORY[0x1E69E9840];
  invalidateCopy = invalidate;
  v5 = PUILogSnapshotter();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = invalidateCopy;
    _os_log_impl(&dword_1A8C85000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@) PFPosterExtensionInstance did invalidate: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PUIPosterSnapshotter_extensionInstanceDidInvalidate___block_invoke;
  block[3] = &unk_1E7854B70;
  objc_copyWeak(&v7, buf);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __55__PUIPosterSnapshotter_extensionInstanceDidInvalidate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (BOOL)_assertionLock_mainQueue_updateAssertionsForExtension
{
  v41 = *MEMORY[0x1E69E9840];
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    v4 = self->_lock_mainQueue_process;
    v5 = MEMORY[0x1E69C7640];
    hostConfiguration = [(PFPosterExtensionInstance *)self->_extensionInstance hostConfiguration];
    rbsProcessIdentity = [hostConfiguration rbsProcessIdentity];
    v8 = [v5 targetWithProcessIdentity:rbsProcessIdentity];

    v9 = MEMORY[0x1E698E620];
    if (v4)
    {
      [(_EXExtensionProcess *)v4 auditToken];
    }

    else
    {
      *buf = 0u;
      v40 = 0u;
    }

    v10 = [v9 tokenFromAuditToken:buf];
    extension = [(PFPosterExtensionInstance *)self->_extensionInstance extension];
    posterExtensionBundleIdentifier = [extension posterExtensionBundleIdentifier];

    logIdentifier = [(PUIPosterSnapshotter *)self logIdentifier];
    if (!v8)
    {
      v17 = PUILogSnapshotter();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(PUIPosterSnapshotter *)logIdentifier _assertionLock_mainQueue_updateAssertionsForExtension:v17];
      }

      goto LABEL_27;
    }

    if (!-[RBSAssertion isValid](self->_assertionLock_memoryAssertion, "isValid") || (-[RBSAssertion target](self->_assertionLock_memoryAssertion, "target"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isEqual:v8], v14, (v15 & 1) == 0))
    {
      [(RBSAssertion *)self->_assertionLock_memoryAssertion invalidate];
      assertionLock_memoryAssertion = self->_assertionLock_memoryAssertion;
      self->_assertionLock_memoryAssertion = 0;

      v17 = [MEMORY[0x1E69C7548] pf_posterUpdateRuntimeAssertionForTarget:v8 explanation:logIdentifier];
      v38 = 0;
      v18 = [v17 acquireWithError:&v38];
      v19 = v38;
      v20 = PUILogSnapshotter();
      v21 = v20;
      if ((v18 & 1) == 0)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [PUIPosterSnapshotter _assertionLock_mainQueue_updateAssertionsForExtension];
        }

LABEL_26:

LABEL_27:
        v3 = 0;
LABEL_28:

        goto LABEL_29;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = logIdentifier;
        _os_log_impl(&dword_1A8C85000, v21, OS_LOG_TYPE_DEFAULT, "(%{public}@) Snapshot acquired memory assertion", buf, 0xCu);
      }

      v22 = self->_assertionLock_memoryAssertion;
      self->_assertionLock_memoryAssertion = v17;
      v23 = v17;
    }

    if ([(RBSAssertion *)self->_assertionLock_runtimeAssertion isValid])
    {
      target = [(RBSAssertion *)self->_assertionLock_runtimeAssertion target];
      v25 = [target isEqual:v8];

      if (v25)
      {
        v3 = 1;
LABEL_29:

        return v3;
      }
    }

    [(RBSAssertion *)self->_assertionLock_runtimeAssertion invalidate];
    assertionLock_runtimeAssertion = self->_assertionLock_runtimeAssertion;
    self->_assertionLock_runtimeAssertion = 0;

    v17 = [MEMORY[0x1E69C7548] pui_posterRuntimeAssertionForTarget:v8 explanation:logIdentifier sceneType:@"PosterKit.rendering" auditToken:v10 posterProviderBundleIdentifier:posterExtensionBundleIdentifier];
    v37 = 0;
    v33 = [v17 acquireWithError:&v37];
    v19 = v37;
    v34 = PUILogSnapshotter();
    v21 = v34;
    if (v33)
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = logIdentifier;
        _os_log_impl(&dword_1A8C85000, v21, OS_LOG_TYPE_DEFAULT, "(%{public}@) Snapshot acquired runtime assertion", buf, 0xCu);
      }

      v35 = self->_assertionLock_runtimeAssertion;
      self->_assertionLock_runtimeAssertion = v17;
      v17 = v17;

      v3 = 1;
      goto LABEL_28;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [PUIPosterSnapshotter _assertionLock_mainQueue_updateAssertionsForExtension];
    }

    goto LABEL_26;
  }

  return 0;
}

- (void)_assertionLock_invalidateSessionAssertions
{
  [(RBSAssertion *)self->_assertionLock_memoryAssertion invalidate];
  assertionLock_memoryAssertion = self->_assertionLock_memoryAssertion;
  self->_assertionLock_memoryAssertion = 0;

  [(RBSAssertion *)self->_assertionLock_runtimeAssertion invalidate];
  assertionLock_runtimeAssertion = self->_assertionLock_runtimeAssertion;
  self->_assertionLock_runtimeAssertion = 0;
}

- (void)invalidate
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(BSAtomicSignal *)self->_invalidationSignal signal])
  {
    v3 = PUILogSnapshotter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1A8C85000, v3, OS_LOG_TYPE_DEFAULT, "PUIPosterSnapshotter invalidate: %{public}@", &v5, 0xCu);
    }

    [(PUIPosterSnapshotter *)self _teardownAllSnapshots];
    [(PFPosterExtensionInstance *)self->_extensionInstance removeInstanceObserver:self];
    extensionInstance = self->_extensionInstance;
    self->_extensionInstance = 0;

    os_unfair_lock_lock(&self->_assertionLock);
    [(PUIPosterSnapshotter *)self _assertionLock_invalidateSessionAssertions];
    os_unfair_lock_unlock(&self->_assertionLock);
  }
}

- (void)installRequestAsActive:(id)active completion:(id)completion
{
  activeCopy = active;
  completionCopy = completion;
  if ((MEMORY[0x1AC5764B0]("[PUIPosterSnapshotter installRequestAsActive:completion:]") & 1) == 0)
  {
    [PUIPosterSnapshotter installRequestAsActive:a2 completion:?];
  }

  if (!activeCopy)
  {
    [PUIPosterSnapshotter installRequestAsActive:a2 completion:?];
  }

  if (!completionCopy)
  {
    [PUIPosterSnapshotter installRequestAsActive:a2 completion:?];
  }

  if (!self->_extensionInstance)
  {
    [PUIPosterSnapshotter installRequestAsActive:a2 completion:?];
  }

  if (self->_lock_sceneSnapshotter)
  {
    [PUIPosterSnapshotter installRequestAsActive:a2 completion:?];
  }

  BSDispatchQueueAssertMain();
  v8 = [[_PUIPosterEnqueuedSnapshot alloc] initWithRequest:activeCopy destinationProvider:0 completion:completionCopy];
  [(_PUIPosterEnqueuedSnapshot *)v8 setRetryCount:0];
  v9 = [[PUIPosterSceneSnapshotter alloc] initWithExtensionInstance:self->_extensionInstance snapshotInfo:v8];
  [(PUIPosterSceneSnapshotter *)v9 setDelegate:self];
  os_unfair_lock_lock(&self->_lock);
  lock_sceneSnapshotter = self->_lock_sceneSnapshotter;
  self->_lock_sceneSnapshotter = v9;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)fireSceneDeactivationErrorForTesting:(id)testing
{
  testingCopy = testing;
  if ((MEMORY[0x1AC5764B0]("[PUIPosterSnapshotter fireSceneDeactivationErrorForTesting:]") & 1) == 0)
  {
    [PUIPosterSnapshotter fireSceneDeactivationErrorForTesting:a2];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PUIPosterSnapshotter_fireSceneDeactivationErrorForTesting___block_invoke;
  v7[3] = &unk_1E78548A0;
  v7[4] = self;
  v8 = testingCopy;
  v6 = testingCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __61__PUIPosterSnapshotter_fireSceneDeactivationErrorForTesting___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  [*(*(a1 + 32) + 40) fireSceneDeactivationErrorForTesting:*(a1 + 40)];
  v2 = (*(a1 + 32) + 32);

  os_unfair_lock_unlock(v2);
}

- (PUIPosterSnapshotterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithExtensionInstance:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"extensionInstance", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_assertionLock_mainQueue_updateAssertionsForExtension
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)installRequestAsActive:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_BSIsInternalInstall(__PRETTY_FUNCTION__)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)installRequestAsActive:(char *)a1 completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"self->_lock_sceneSnapshotter == nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)installRequestAsActive:(char *)a1 completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_extensionInstance", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)installRequestAsActive:(char *)a1 completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"completion", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)installRequestAsActive:(char *)a1 completion:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"request", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)fireSceneDeactivationErrorForTesting:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_BSIsInternalInstall(__PRETTY_FUNCTION__)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end