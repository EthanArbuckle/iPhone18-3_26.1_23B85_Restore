@interface PXPhotoLibraryChangeDistributor
- (BOOL)areChangesPaused;
- (PXPhotoLibraryChangeDistributor)initWithPhotoLibrary:(id)a3;
- (id)beginPausingChangesWithTimeout:(double)a3 identifier:(id)a4;
- (void)_notifyPausedStateChange;
- (void)dealloc;
- (void)distributeChangeOnMainQueue:(id)a3;
- (void)endPausingChanges:(id)a3;
- (void)photoLibraryDidChange:(id)a3;
- (void)registerChangeObserver:(id)a3;
- (void)registerInternalChangeObserver:(id)a3;
- (void)unregisterChangeObserver:(id)a3;
- (void)unregisterInternalChangeObserver:(id)a3;
@end

@implementation PXPhotoLibraryChangeDistributor

- (void)_notifyPausedStateChange
{
  v26 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary+PhotosUICore.m" lineNumber:245 description:@"must be on main thread"];
  }

  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(PXPhotoLibraryChangeDistributor *)self areChangesPaused];
    v6 = [MEMORY[0x1E695DFD0] currentRunLoop];
    v7 = [v6 currentMode];
    *buf = 67109378;
    *&buf[4] = v5;
    LOWORD(v22) = 2114;
    *(&v22 + 2) = v7;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_INFO, "Change Distribution: Notifying paused state changed to: %d, runLoopMode = %{public}@", buf, 0x12u);
  }

  *buf = 0;
  *&v22 = buf;
  *(&v22 + 1) = 0x3032000000;
  v23 = __Block_byref_object_copy__150922;
  v24 = __Block_byref_object_dispose__150923;
  v25 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PXPhotoLibraryChangeDistributor__notifyPausedStateChange__block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(queue, block);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v22 + 40);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 photoLibraryChangesPausedDidChange];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(buf, 8);
}

void __59__PXPhotoLibraryChangeDistributor__notifyPausedStateChange__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)endPausingChanges:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary+PhotosUICore.m" lineNumber:226 description:@"must be on main thread"];

    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (([(NSMutableSet *)self->_changePausingTokens containsObject:v5]& 1) != 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_INFO, "Change Distribution: endPausingChanges for token: %{public}@", &v10, 0xCu);
    }

    v7 = [(PXPhotoLibraryChangeDistributor *)self areChangesPaused];
    [(NSMutableSet *)self->_changePausingTokens removeObject:v5];
    if (v7 != [(PXPhotoLibraryChangeDistributor *)self areChangesPaused])
    {
      [(PXPhotoLibraryChangeDistributor *)self _notifyPausedStateChange];
    }

    dispatch_group_leave(self->_changePausingGroup);
    goto LABEL_13;
  }

LABEL_10:
  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Change Distribution: Ignoring endPausingChanges for invalid token: %{public}@", &v10, 0xCu);
  }

LABEL_13:
}

- (id)beginPausingChangesWithTimeout:(double)a3 identifier:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary+PhotosUICore.m" lineNumber:199 description:@"must be on main thread"];
  }

  if (a3 < 0.0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary+PhotosUICore.m" lineNumber:200 description:@"timeout must be >= 0"];
  }

  [v7 length];
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [(PXPhotoLibraryChangeDistributor *)self areChangesPaused];
  [(NSMutableSet *)self->_changePausingTokens addObject:v8];
  dispatch_group_enter(self->_changePausingGroup);
  v10 = PLUIGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v19 = a3;
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_INFO, "Change Distribution: beginPausingChangesWithTimeout: %lf, identifier: %{public}@, token: %{public}@", buf, 0x20u);
  }

  if (v9 != [(PXPhotoLibraryChangeDistributor *)self areChangesPaused])
  {
    [(PXPhotoLibraryChangeDistributor *)self _notifyPausedStateChange];
  }

  if (a3 > 0.0)
  {
    v11 = dispatch_time(0, (a3 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PXPhotoLibraryChangeDistributor_beginPausingChangesWithTimeout_identifier___block_invoke;
    block[3] = &unk_1E774A1B8;
    block[4] = self;
    v16 = v8;
    v17 = v7;
    dispatch_after(v11, MEMORY[0x1E69E96A0], block);
  }

  return v8;
}

uint64_t __77__PXPhotoLibraryChangeDistributor_beginPausingChangesWithTimeout_identifier___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  result = [*(*(a1 + 32) + 56) containsObject:*(a1 + 40)];
  if (result)
  {
    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      v6 = 138543618;
      v7 = v4;
      v8 = 2114;
      v9 = v5;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_ERROR, "Change Distribution: Pause timed out for identifier: %{public}@, token: %{public}@", &v6, 0x16u);
    }

    return [*(a1 + 32) endPausingChanges:*(a1 + 40)];
  }

  return result;
}

- (void)distributeChangeOnMainQueue:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PXPhotoLibraryChangeDistributor_distributeChangeOnMainQueue___block_invoke;
  aBlock[3] = &unk_1E774C620;
  v6 = v5;
  v15 = v6;
  v16 = self;
  v7 = _Block_copy(aBlock);
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary+PhotosUICore.m" lineNumber:183 description:@"must be on main thread"];
  }

  if ([(NSMutableSet *)self->_changePausingTokens count])
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_INFO, "Change Distribution: Waiting for change delivery to be unpaused.", buf, 2u);
    }

    changePausingGroup = self->_changePausingGroup;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__PXPhotoLibraryChangeDistributor_distributeChangeOnMainQueue___block_invoke_393;
    block[3] = &unk_1E774C250;
    v12 = v7;
    dispatch_group_notify(changePausingGroup, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v7[2](v7);
  }
}

void __63__PXPhotoLibraryChangeDistributor_distributeChangeOnMainQueue___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"observers"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"changeInstance"];
  v12 = a1;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"preparedInfoByObserver"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v4 objectForKey:v10];
        if (objc_opt_respondsToSelector())
        {
          [v10 photoLibraryDidChangeOnMainQueue:v3 withPreparedInfo:v11];
        }

        if (objc_opt_respondsToSelector())
        {
          [v10 photoLibraryDidChangeOnMainQueue:v3];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  dispatch_semaphore_signal(*(*(v12 + 40) + 40));
}

uint64_t __63__PXPhotoLibraryChangeDistributor_distributeChangeOnMainQueue___block_invoke_393(uint64_t a1)
{
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_INFO, "Change Distribution: Change delivery resumed.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)photoLibraryDidChange:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[PXPhotosDataSourceSettings sharedInstance];
  [v4 delayChanges];
  v6 = v5;

  if (v6 > 0.0)
  {
    [MEMORY[0x1E696AF00] sleepForTimeInterval:v6];
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__150922;
  v50 = __Block_byref_object_dispose__150923;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__150922;
  v44 = __Block_byref_object_dispose__150923;
  v45 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PXPhotoLibraryChangeDistributor_photoLibraryDidChange___block_invoke;
  block[3] = &unk_1E7746888;
  block[4] = self;
  block[5] = &v46;
  block[6] = &v40;
  dispatch_sync(queue, block);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = v47[5];
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v58 count:16];
  if (v9)
  {
    v10 = *v36;
    do
    {
      v11 = 0;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v35 + 1) + 8 * v11++) photoLibraryWillChange:v3];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v35 objects:v58 count:16];
    }

    while (v9);
  }

  v12 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = v41[5];
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v57 count:16];
  if (v14)
  {
    v15 = *v32;
    do
    {
      v16 = 0;
      do
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v31 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        if (objc_opt_respondsToSelector())
        {
          v19 = [v17 prepareForPhotoLibraryChange:v3];
          if (v19)
          {
            [v12 setObject:v19 forKey:v17];
          }
        }

        objc_autoreleasePoolPop(v18);
        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v31 objects:v57 count:16];
    }

    while (v14);
  }

  v20 = PLUIGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = [MEMORY[0x1E695DFD0] mainRunLoop];
    v22 = [v21 currentMode];
    *buf = 138543362;
    v56 = v22;
    _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_INFO, "Change Distribution: photoLibraryDidChange calling distributeChangeOnMainQueue (runLoopMode: %{public}@)", buf, 0xCu);
  }

  v23 = v41[5];
  v53[0] = @"observers";
  v53[1] = @"changeInstance";
  v54[0] = v23;
  v54[1] = v3;
  v53[2] = @"preparedInfoByObserver";
  v54[2] = v12;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:3];
  v52 = *MEMORY[0x1E695D918];
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
  [(PXPhotoLibraryChangeDistributor *)self performSelectorOnMainThread:sel_distributeChangeOnMainQueue_ withObject:v24 waitUntilDone:1 modes:v25];

  v26 = PLUIGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = [MEMORY[0x1E695DFD0] mainRunLoop];
    v28 = [v27 currentMode];
    *buf = 138543362;
    v56 = v28;
    _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_INFO, "Change Distribution: photoLibraryDidChange returned from distributeChangeOnMainQueue (runLoopMode: %{public}@)", buf, 0xCu);
  }

  dispatch_semaphore_wait(self->_changeDeliverySemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v29 = PLUIGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_INFO, "Change Distribution: photoLibraryDidChange delivered changes", buf, 2u);
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
}

void __57__PXPhotoLibraryChangeDistributor_photoLibraryDidChange___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) allObjects];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 24) allObjects];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)unregisterInternalChangeObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__PXPhotoLibraryChangeDistributor_unregisterInternalChangeObserver___block_invoke;
    v7[3] = &unk_1E774C620;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(queue, v7);
  }
}

- (void)registerInternalChangeObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__PXPhotoLibraryChangeDistributor_registerInternalChangeObserver___block_invoke;
    v7[3] = &unk_1E774C620;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(queue, v7);
  }
}

- (void)unregisterChangeObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__PXPhotoLibraryChangeDistributor_unregisterChangeObserver___block_invoke;
    v7[3] = &unk_1E774C620;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(queue, v7);
  }
}

- (void)registerChangeObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__PXPhotoLibraryChangeDistributor_registerChangeObserver___block_invoke;
    v7[3] = &unk_1E774C620;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(queue, v7);
  }
}

- (BOOL)areChangesPaused
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary+PhotosUICore.m" lineNumber:81 description:@"must be on main thread"];
  }

  return [(NSMutableSet *)self->_changePausingTokens count]!= 0;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);
  [WeakRetained unregisterChangeObserver:self];

  v4.receiver = self;
  v4.super_class = PXPhotoLibraryChangeDistributor;
  [(PXPhotoLibraryChangeDistributor *)&v4 dealloc];
}

- (PXPhotoLibraryChangeDistributor)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PXPhotoLibraryChangeDistributor;
  v5 = [(PXPhotoLibraryChangeDistributor *)&v23 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    internalObservers = v5->_internalObservers;
    v5->_internalObservers = v6;

    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = v8;

    v10 = dispatch_queue_create("com.apple.photos.changeDistributor", 0);
    queue = v5->_queue;
    v5->_queue = v10;

    objc_storeWeak(&v5->_photoLibrary, v4);
    v12 = dispatch_semaphore_create(0);
    changeDeliverySemaphore = v5->_changeDeliverySemaphore;
    v5->_changeDeliverySemaphore = v12;

    v14 = dispatch_group_create();
    changePausingGroup = v5->_changePausingGroup;
    v5->_changePausingGroup = v14;

    v16 = [MEMORY[0x1E695DFA8] set];
    changePausingTokens = v5->_changePausingTokens;
    v5->_changePausingTokens = v16;

    v18 = dispatch_get_global_queue(25, 0);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __56__PXPhotoLibraryChangeDistributor_initWithPhotoLibrary___block_invoke;
    v20[3] = &unk_1E774C620;
    v21 = v4;
    v22 = v5;
    dispatch_async(v18, v20);
  }

  return v5;
}

@end