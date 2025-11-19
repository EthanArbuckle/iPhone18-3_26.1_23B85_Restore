@interface PUIPosterSnapshotCaptureController
- (BOOL)_isSceneReadyForSnapshotting;
- (FBSScene)scene;
- (PUIPosterSnapshotCaptureController)init;
- (PUIPosterSnapshotCaptureController)initWithFBSScene:(id)a3;
- (PUIPosterSnapshotCaptureControllerDelegate)delegate;
- (id)enqueueCaptureForDescriptor:(id)a3 outputURL:(id)a4;
- (void)_kickCaptureQueue;
- (void)_lock_kickCaptureQueue;
- (void)_updateSceneSnapshotReadinessActions;
- (void)handleSceneSnapshotReadinessAction:(id)a3;
- (void)invalidate;
@end

@implementation PUIPosterSnapshotCaptureController

- (PUIPosterSnapshotCaptureController)initWithFBSScene:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PUIPosterSnapshotCaptureController;
  v5 = [(PUIPosterSnapshotCaptureController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
    v7 = objc_opt_new();
    captureQueue = v6->_captureQueue;
    v6->_captureQueue = v7;

    v9 = objc_opt_new();
    sceneReadinessActions = v6->_sceneReadinessActions;
    v6->_sceneReadinessActions = v9;

    v11 = objc_opt_new();
    isSnapshottingFlag = v6->_isSnapshottingFlag;
    v6->_isSnapshottingFlag = v11;
  }

  return v6;
}

- (PUIPosterSnapshotCaptureController)init
{
  [(PUIPosterSnapshotCaptureController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)enqueueCaptureForDescriptor:(id)a3 outputURL:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PUILogSnapshotting();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v10 = [WeakRetained identifier];
    *buf = 138412290;
    v29 = v10;
    _os_log_impl(&dword_1A8C85000, v8, OS_LOG_TYPE_DEFAULT, "(%@) enqueuing capture...", buf, 0xCu);
  }

  v11 = self;
  objc_sync_enter(v11);
  v12 = objc_loadWeakRetained(&v11->_scene);
  v13 = v12 == 0;

  if (v13)
  {
    v25 = MEMORY[0x1E69C5258];
    v16 = PFFunctionNameForAddress();
    v26 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v24 = [v25 futureWithError:{v26, 0}];
  }

  else
  {
    v14 = [_PUIPosterSnapshotCapture alloc];
    v15 = objc_loadWeakRetained(&v11->_scene);
    v16 = [(_PUIPosterSnapshotCapture *)v14 initWithScene:v15 captureController:v11 snapshotDescriptor:v6 outputURL:v7];

    [(NSMutableArray *)v11->_captureQueue addObject:v16];
    v17 = [(NSMutableArray *)v11->_captureQueue count];
    v18 = v17;
    captureQueueHighWaterMark = v11->_captureQueueHighWaterMark;
    if (v17 > captureQueueHighWaterMark)
    {
      captureQueueHighWaterMark = v17;
    }

    v11->_captureQueueHighWaterMark = captureQueueHighWaterMark;
    v20 = PUILogSnapshotting();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_loadWeakRetained(&v11->_scene);
      v22 = [v21 identifier];
      v23 = v11->_captureQueueHighWaterMark;
      *buf = 138413058;
      v29 = v22;
      v30 = 2048;
      v31 = v16;
      v32 = 2048;
      v33 = v18;
      v34 = 2048;
      v35 = v23;
      _os_log_impl(&dword_1A8C85000, v20, OS_LOG_TYPE_DEFAULT, "(%@) Enqueued capture %p; %lu snapshots pending; high water mark: %lu", buf, 0x2Au);
    }

    [(PUIPosterSnapshotCaptureController *)v11 _lock_kickCaptureQueue];
    v24 = [(_PUIPosterSnapshotCapture *)v16 future];
  }

  objc_sync_exit(v11);

  return v24;
}

- (void)handleSceneSnapshotReadinessAction:(id)a3
{
  if (a3)
  {
    v4 = a3;
    BSDispatchQueueAssertMain();
    [(NSMutableSet *)self->_sceneReadinessActions addObject:v4];

    [(PUIPosterSnapshotCaptureController *)self _updateSceneSnapshotReadinessActions];
  }
}

- (void)_updateSceneSnapshotReadinessActions
{
  v32 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  v3 = [(NSMutableSet *)self->_sceneReadinessActions copy];
  if (![v3 count])
  {
    goto LABEL_20;
  }

  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableArray *)v4->_captureQueue count];
  WeakRetained = objc_loadWeakRetained(&v4->_scene);

  objc_sync_exit(v4);
  v6 = [(PUIPosterSnapshotCaptureController *)v4 _isSceneReadyForSnapshotting];
  if (!WeakRetained)
  {
    v8 = MEMORY[0x1E698E600];
    v9 = PFFunctionNameForAddress();
    v10 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v7 = [v8 responseForError:{v10, 0}];

    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_7;
  }

  if (v6)
  {
    v7 = [MEMORY[0x1E698E600] response];
    if (!v7)
    {
      goto LABEL_20;
    }

LABEL_7:
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v3;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v12)
    {
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          if ([v15 isValid])
          {
            [v15 sendResponse:v7];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v24 objects:v31 count:16];
      }

      while (v12);
    }

    [(NSMutableSet *)self->_sceneReadinessActions minusSet:v11];
    snapshotReadinessObserver = v4->_snapshotReadinessObserver;
    p_snapshotReadinessObserver = &v4->_snapshotReadinessObserver;
    [(PUIPosterSnapshotReadinessSceneObserver *)snapshotReadinessObserver invalidate];
    v18 = *p_snapshotReadinessObserver;
    *p_snapshotReadinessObserver = 0;

    goto LABEL_20;
  }

  if (!v4->_snapshotReadinessObserver)
  {
    v19 = [PUIPosterSnapshotReadinessSceneObserver alloc];
    v20 = objc_loadWeakRetained(&v4->_scene);
    v21 = [(PUIPosterSnapshotReadinessSceneObserver *)v19 initWithFBSScene:v20];
    v22 = v4->_snapshotReadinessObserver;
    v4->_snapshotReadinessObserver = v21;
  }

  objc_initWeak(&location, v4);
  v23 = v4->_snapshotReadinessObserver;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __74__PUIPosterSnapshotCaptureController__updateSceneSnapshotReadinessActions__block_invoke;
  v28[3] = &unk_1E7854D58;
  objc_copyWeak(&v29, &location);
  [(PUIPosterSnapshotReadinessSceneObserver *)v23 addSnapshotReadinessObserver:v28];
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
LABEL_20:
}

uint64_t __74__PUIPosterSnapshotCaptureController__updateSceneSnapshotReadinessActions__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PUIPosterSnapshotCaptureController__updateSceneSnapshotReadinessActions__block_invoke_2;
    block[3] = &unk_1E7854B70;
    objc_copyWeak(&v5, (a1 + 32));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v5);
  }

  return a2;
}

void __74__PUIPosterSnapshotCaptureController__updateSceneSnapshotReadinessActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSceneSnapshotReadinessActions];
}

- (BOOL)_isSceneReadyForSnapshotting
{
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v4 = [WeakRetained clientSettings];
  v5 = [v4 pui_didFinishInitialization];

  if (!v5)
  {
    return 0;
  }

  v6 = objc_loadWeakRetained(&self->_scene);
  v7 = [v6 pui_sceneIsReadyToSnapshot:0];

  return v7;
}

- (void)invalidate
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = PUILogSnapshotting();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = v2;
    _os_log_impl(&dword_1A8C85000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating PUIPosterSnapshotCaptureController: %p", buf, 0xCu);
  }

  objc_storeWeak(&v2->_scene, 0);
  v4 = [(NSMutableArray *)v2->_captureQueue copy];
  [(NSMutableArray *)v2->_captureQueue removeAllObjects];
  captureQueue = v2->_captureQueue;
  v2->_captureQueue = 0;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v9++) invalidate];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(_PUIPosterSnapshotCapture *)v2->_activeCapture invalidate];
  activeCapture = v2->_activeCapture;
  v2->_activeCapture = 0;

  [(PUIPosterSnapshotReadinessSceneObserver *)v2->_snapshotReadinessObserver invalidate];
  snapshotReadinessObserver = v2->_snapshotReadinessObserver;
  v2->_snapshotReadinessObserver = 0;

  [(PUIPosterSnapshotCaptureController *)v2 _updateSceneSnapshotReadinessActions];
  [(BSAtomicFlag *)v2->_isSnapshottingFlag setFlag:0];

  objc_sync_exit(v2);
}

- (void)_kickCaptureQueue
{
  obj = self;
  objc_sync_enter(obj);
  [(PUIPosterSnapshotCaptureController *)obj _lock_kickCaptureQueue];
  objc_sync_exit(obj);
}

- (void)_lock_kickCaptureQueue
{
  v37 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  if (WeakRetained)
  {
    p_activeCapture = &self->_activeCapture;
    if (self->_activeCapture)
    {
      goto LABEL_10;
    }

    *&v4 = 138412546;
    v21 = v4;
    while ([(NSMutableArray *)self->_captureQueue count])
    {
      v6 = [(NSMutableArray *)self->_captureQueue objectAtIndex:0];
      [(NSMutableArray *)self->_captureQueue removeObjectAtIndex:0];
      objc_storeStrong(&self->_activeCapture, v6);
      v7 = objc_loadWeakRetained(&self->_scene);
      v8 = [v7 identifier];

      v9 = self->_activeCapture;
      v10 = PUILogSnapshotting();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v21;
        v34 = v8;
        v35 = 2048;
        v36 = v9;
        _os_log_impl(&dword_1A8C85000, v10, OS_LOG_TYPE_DEFAULT, "(%@) Activating capture %p", buf, 0x16u);
      }

      [(BSAtomicFlag *)self->_isSnapshottingFlag setFlag:1];
      [v6 start];
      objc_initWeak(buf, self);
      v11 = [(_PUIPosterSnapshotCapture *)self->_activeCapture future];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __60__PUIPosterSnapshotCaptureController__lock_kickCaptureQueue__block_invoke;
      v29[3] = &unk_1E7854D80;
      objc_copyWeak(&v32, buf);
      v12 = v8;
      v30 = v12;
      v13 = v9;
      v31 = v13;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __60__PUIPosterSnapshotCaptureController__lock_kickCaptureQueue__block_invoke_207;
      v25[3] = &unk_1E7854DA8;
      objc_copyWeak(&v28, buf);
      v14 = v12;
      v26 = v14;
      v15 = v13;
      v27 = v15;
      v16 = [MEMORY[0x1E69C5268] mainThreadScheduler];
      [v11 addSuccessBlock:v29 andFailureBlock:v25 scheduler:v16];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&v32);

      objc_destroyWeak(buf);
      if (*p_activeCapture)
      {
        goto LABEL_10;
      }
    }

    if (*p_activeCapture)
    {
LABEL_10:
      v17 = 0;
      v18 = 1;
    }

    else
    {
      [(BSAtomicFlag *)self->_isSnapshottingFlag setFlag:0];
      v18 = 0;
      v17 = 1;
    }

    v19 = [(NSMutableSet *)self->_sceneReadinessActions count];
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      v20 = v17;
    }

    if (v20 == 1)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__PUIPosterSnapshotCaptureController__lock_kickCaptureQueue__block_invoke_210;
      block[3] = &unk_1E7854DD0;
      v23 = v18;
      block[4] = self;
      v24 = v19 != 0;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __60__PUIPosterSnapshotCaptureController__lock_kickCaptureQueue__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = PUILogSnapshotting();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412546;
      v8 = v4;
      v9 = 2048;
      v10 = v5;
      _os_log_impl(&dword_1A8C85000, v3, OS_LOG_TYPE_DEFAULT, "(%@) Captured successfully %p", &v7, 0x16u);
    }

    v6 = WeakRetained[2];
    WeakRetained[2] = 0;

    [WeakRetained _kickCaptureQueue];
  }
}

void __60__PUIPosterSnapshotCaptureController__lock_kickCaptureQueue__block_invoke_207(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = PUILogSnapshotting();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __60__PUIPosterSnapshotCaptureController__lock_kickCaptureQueue__block_invoke_207_cold_1();
    }

    v6 = WeakRetained[2];
    WeakRetained[2] = 0;

    [WeakRetained _kickCaptureQueue];
  }
}

void __60__PUIPosterSnapshotCaptureController__lock_kickCaptureQueue__block_invoke_210(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = [*(a1 + 32) delegate];
    [v2 captureController:*(a1 + 32) needsEnvironmentUpdate:MEMORY[0x1E695E0F8]];
  }

  if (*(a1 + 41) == 1)
  {
    v3 = *(a1 + 32);

    [v3 _updateSceneSnapshotReadinessActions];
  }
}

- (PUIPosterSnapshotCaptureControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (FBSScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end