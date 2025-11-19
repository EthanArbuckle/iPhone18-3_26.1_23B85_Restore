@interface PUIPosterSceneSnapshotter
+ (id)fileIOQueue;
- (PUIPosterSceneSnapshotter)init;
- (PUIPosterSceneSnapshotter)initWithExtensionInstance:(id)a3 snapshotInfo:(id)a4;
- (PUIPosterSceneSnapshotterDelegate)delegate;
- (id)scene:(id)a3 handleActions:(id)a4;
- (void)_activateTimeoutTimer;
- (void)_mainQueue_captureSnapshotWithScene:(id)a3;
- (void)_mainQueue_finishWithError:(id)a3 result:(id)a4;
- (void)_mainQueue_setupScene;
- (void)_teardownSceneSynchronously:(BOOL)a3 sceneWasDeactivated:(BOOL)a4;
- (void)dealloc;
- (void)fireSceneDeactivationErrorForTesting:(id)a3;
- (void)invalidate;
- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidInvalidate:(id)a3;
- (void)sceneWillDeactivate:(id)a3 withError:(id)a4;
- (void)start;
@end

@implementation PUIPosterSceneSnapshotter

+ (id)fileIOQueue
{
  if (fileIOQueue_onceToken != -1)
  {
    +[PUIPosterSceneSnapshotter fileIOQueue];
  }

  v3 = fileIOQueue_fileIOQueue;

  return v3;
}

void __40__PUIPosterSceneSnapshotter_fileIOQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = BSDispatchQueueCreateWithAttributes();
  v1 = fileIOQueue_fileIOQueue;
  fileIOQueue_fileIOQueue = v0;
}

- (void)dealloc
{
  [(BSContinuousMachTimer *)self->_timeoutTimer invalidate];
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = 0;

  [(PUIPosterSceneSnapshotter *)self _teardownSceneSynchronously:1 sceneWasDeactivated:0];
  v4.receiver = self;
  v4.super_class = PUIPosterSceneSnapshotter;
  [(PUIPosterSceneSnapshotter *)&v4 dealloc];
}

- (PUIPosterSceneSnapshotter)initWithExtensionInstance:(id)a3 snapshotInfo:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  NSClassFromString(&cfstr_Pfposterextens.isa);
  if (!v10)
  {
    [PUIPosterSceneSnapshotter initWithExtensionInstance:a2 snapshotInfo:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PUIPosterSceneSnapshotter initWithExtensionInstance:a2 snapshotInfo:?];
  }

  if (!v9)
  {
    [PUIPosterSceneSnapshotter initWithExtensionInstance:a2 snapshotInfo:?];
  }

  v11 = [MEMORY[0x1E698E620] tokenForCurrentProcess];
  v12 = [v11 valueForEntitlement:@"com.apple.runningboard.posterkit.host"];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v24.receiver = self;
    v24.super_class = PUIPosterSceneSnapshotter;
    v14 = [(PUIPosterSceneSnapshotter *)&v24 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_extensionInstance, a3);
      objc_storeStrong(&v15->_snapshotInfo, a4);
      v16 = [objc_alloc(MEMORY[0x1E698E610]) initWithFlag:0];
      invalidationFlag = v15->_invalidationFlag;
      v15->_invalidationFlag = v16;

      v18 = [objc_alloc(MEMORY[0x1E698E610]) initWithFlag:0];
      isSnapshottingFlag = v15->_isSnapshottingFlag;
      v15->_isSnapshottingFlag = v18;

      v20 = [objc_alloc(MEMORY[0x1E698E610]) initWithFlag:0];
      isCompleteFlag = v15->_isCompleteFlag;
      v15->_isCompleteFlag = v20;
    }

    return v15;
  }

  else
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Remote snapshotting requires runningboard posterkit host entitlement"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [PUIPosterSceneSnapshotter initWithExtensionInstance:v23 snapshotInfo:?];
    }

    [v23 UTF8String];
    result = _bs_set_crash_log_message();
    __break(0);
  }

  return result;
}

- (PUIPosterSceneSnapshotter)init
{
  [(PUIPosterSceneSnapshotter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)start
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__PUIPosterSceneSnapshotter_start__block_invoke;
  block[3] = &unk_1E7854320;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)sceneWillDeactivate:(id)a3 withError:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 clientHandle];
  v9 = [v8 processHandle];
  v10 = [v9 pid];

  v11 = PUILogSnapshotter();
  v12 = v11;
  if (v7)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [(PUIPosterSceneSnapshotterInfo *)self->_snapshotInfo logIdentifier];
      v14 = 138544130;
      v15 = v13;
      v16 = 1026;
      v17 = v10;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_error_impl(&dword_1A8C85000, v12, OS_LOG_TYPE_ERROR, "(%{public}@, pid: %{public}d) sceneWillDeactivate:'%@' withError:'%@'", &v14, 0x26u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(PUIPosterSceneSnapshotterInfo *)self->_snapshotInfo logIdentifier];
    v14 = 138544130;
    v15 = v13;
    v16 = 1026;
    v17 = v10;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = 0;
    _os_log_impl(&dword_1A8C85000, v12, OS_LOG_TYPE_DEFAULT, "(%{public}@, pid: %{public}d) sceneWillDeactivate:'%@' withError:'%@'", &v14, 0x26u);
    goto LABEL_6;
  }

  [(PUIPosterSceneSnapshotter *)self _mainQueue_finishWithError:v7 result:0];
}

- (void)sceneContentStateDidChange:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PUILogSnapshotter();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PUIPosterSceneSnapshotterInfo *)self->_snapshotInfo logIdentifier];
    v7 = 138543618;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1A8C85000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@) sceneContentStateDidChange:'%@'", &v7, 0x16u);
  }

  [(PUIPosterSceneSnapshotter *)self _mainQueue_captureSnapshotWithScene:v4];
}

- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v8 = a3;
  if ([a4 pui_extendedRenderSessionDidChange])
  {
    [(PUIPosterSceneSnapshotter *)self _mainQueue_captureSnapshotWithScene:v8];
  }
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v6 = a4;
  v7 = PUILogSnapshotter();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(PUIPosterSceneSnapshotterInfo *)self->_snapshotInfo logIdentifier];
    *buf = 138543618;
    v30 = v8;
    v31 = 2114;
    v32 = v6;
    _os_log_impl(&dword_1A8C85000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Received actions: %{public}@", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = 0;
    v14 = *v25;
    *&v11 = 138543362;
    v22 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = objc_opt_self();
        if (objc_opt_isKindOfClass())
        {
          v18 = [v16 isValid];

          if (v18)
          {
            v19 = PUILogSnapshotter();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [(PUIPosterSceneSnapshotterInfo *)self->_snapshotInfo logIdentifier];
              *buf = v22;
              v30 = v20;
              _os_log_impl(&dword_1A8C85000, v19, OS_LOG_TYPE_DEFAULT, "(%{public}@) Complication rendering complete", buf, 0xCu);
            }

            self->_mainQueue_complicationRenderingCompleted = 1;
            [(PUIPosterSceneSnapshotter *)self _mainQueue_captureSnapshotWithScene:v23];
            if (!v13)
            {
              v13 = objc_opt_new();
            }

            [v13 addObject:{v16, v22}];
          }
        }

        else
        {
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)sceneDidInvalidate:(id)a3
{
  v4 = [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
  [(PUIPosterSceneSnapshotter *)self _mainQueue_finishWithError:v4 result:0];
}

- (void)_mainQueue_captureSnapshotWithScene:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [objc_opt_class() fileIOQueue];
  v6 = [(PUIPosterSceneSnapshotterInfo *)self->_snapshotInfo logIdentifier];
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v7 = PUILogSnapshotter();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = v6;
      _os_log_impl(&dword_1A8C85000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Aborting capture, Invalidated", buf, 0xCu);
    }

LABEL_17:

    goto LABEL_31;
  }

  if ([v4 contentState] != 2)
  {
    v7 = PUILogSnapshotter();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = v6;
      _os_log_impl(&dword_1A8C85000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Deferring capture, Scene content state not ready", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v8 = [v4 clientSettings];
  v9 = [v8 pui_inExtendedRenderSession];

  if (v9)
  {
    v7 = PUILogSnapshotter();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = v6;
      _os_log_impl(&dword_1A8C85000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Deferring capture, scene is in extended render session", buf, 0xCu);
    }

    goto LABEL_17;
  }

  if (!self->_mainQueue_complicationRenderingCompleted && self->_mainQueue_shouldWaitForComplicationRendering)
  {
    v7 = PUILogSnapshotter();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = v6;
      _os_log_impl(&dword_1A8C85000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Deferring capture, complication rendering not completed", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v10 = PUILogSnapshotter();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 138543362;
    *(buf + 4) = v6;
    _os_log_impl(&dword_1A8C85000, v10, OS_LOG_TYPE_DEFAULT, "(%{public}@) Snapshot is capturing", buf, 0xCu);
  }

  mainQueue_startTime = self->_mainQueue_startTime;
  objc_initWeak(&location, self);
  if ([(BSAtomicFlag *)self->_isSnapshottingFlag setFlag:1])
  {
    v12 = [(PUIPosterSceneSnapshotterInfo *)self->_snapshotInfo request];
    v13 = MEMORY[0x1E698E620];
    v14 = [v4 clientHandle];
    v15 = [v14 processHandle];
    v16 = v15;
    if (v15)
    {
      [v15 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v29 = [v13 tokenFromAuditToken:buf];

    v27 = [(PUIPosterSceneSnapshotterInfo *)self->_snapshotInfo destinationProvider];
    if (v27)
    {
      v18 = [(PUIPosterSceneSnapshotterInfo *)self->_snapshotInfo path];
      v19 = [v27 snapshotDestinationFutureForPath:v18 clientAuditToken:v29];
    }

    else
    {
      v20 = MEMORY[0x1E69C5258];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __65__PUIPosterSceneSnapshotter__mainQueue_captureSnapshotWithScene___block_invoke;
      v41[3] = &unk_1E7856118;
      v42 = v29;
      v19 = [v20 futureWithBlock:v41];
      v18 = v42;
    }

    v21 = [v12 snapshotDescriptor];
    v22 = [MEMORY[0x1E69C5268] mainThreadScheduler];
    v28 = [MEMORY[0x1E69C5268] schedulerWithDispatchQueue:v5];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __65__PUIPosterSceneSnapshotter__mainQueue_captureSnapshotWithScene___block_invoke_2;
    v38[3] = &unk_1E7856140;
    v39 = v4;
    v23 = v21;
    v40 = v23;
    v24 = [v19 flatMap:v38 continuationScheduler:v22];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __65__PUIPosterSceneSnapshotter__mainQueue_captureSnapshotWithScene___block_invoke_3;
    v32[3] = &unk_1E7856168;
    objc_copyWeak(v37, &location);
    v33 = v6;
    v17 = v12;
    v34 = v17;
    v25 = v19;
    v35 = v25;
    v37[1] = *&mainQueue_startTime;
    v26 = v22;
    v36 = v26;
    [v24 addSuccessBlock:v32 scheduler:v28];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __65__PUIPosterSceneSnapshotter__mainQueue_captureSnapshotWithScene___block_invoke_2_39;
    v30[3] = &unk_1E7856190;
    objc_copyWeak(&v31, &location);
    [v24 addFailureBlock:v30 scheduler:v26];
    objc_destroyWeak(&v31);

    objc_destroyWeak(v37);
  }

  else
  {
    v17 = PUILogSnapshotter();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = v6;
      _os_log_impl(&dword_1A8C85000, v17, OS_LOG_TYPE_DEFAULT, "(%{public}@) Ignoring capture, ~already~ capturing snapshots", buf, 0xCu);
    }
  }

  objc_destroyWeak(&location);
LABEL_31:
}

void __65__PUIPosterSceneSnapshotter__mainQueue_captureSnapshotWithScene___block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    Current = CFAbsoluteTimeGetCurrent();
    WeakRetained[5] = Current;
    v6 = PUILogSnapshotter();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v18 = v7;
      _os_log_impl(&dword_1A8C85000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) Snapshot captured", buf, 0xCu);
    }

    v8 = [PUIPosterSnapshotterResult alloc];
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) result:0];
    v11 = [(PUIPosterSnapshotterResult *)v8 initWithRequest:v9 snapshotBundle:v3 destination:v10 executionTime:Current - *(a1 + 72)];

    v12 = *(a1 + 56);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__PUIPosterSceneSnapshotter__mainQueue_captureSnapshotWithScene___block_invoke_37;
    v14[3] = &unk_1E7854BC0;
    v14[4] = WeakRetained;
    v15 = 0;
    v16 = v11;
    v13 = v11;
    [v12 performBlock:v14];
  }
}

void __65__PUIPosterSceneSnapshotter__mainQueue_captureSnapshotWithScene___block_invoke_2_39(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[5] = CFAbsoluteTimeGetCurrent();
    [(CFAbsoluteTime *)WeakRetained _mainQueue_finishWithError:v4 result:0];
  }
}

- (void)_teardownSceneSynchronously:(BOOL)a3 sceneWasDeactivated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v30 = *MEMORY[0x1E69E9840];
  v7 = self->_mainQueue_scene;
  mainQueue_scene = self->_mainQueue_scene;
  self->_mainQueue_scene = 0;

  if (v7)
  {
    v9 = [(PUIPosterSceneSnapshotterInfo *)self->_snapshotInfo logIdentifier];
    v10 = [(PUIPosterSceneSnapshotterInfo *)self->_snapshotInfo request];
    snapshotInfo = self->_snapshotInfo;
    self->_snapshotInfo = 0;

    if (v5)
    {
      location[1] = MEMORY[0x1E69E9820];
      location[2] = 3221225472;
      location[3] = __77__PUIPosterSceneSnapshotter__teardownSceneSynchronously_sceneWasDeactivated___block_invoke;
      location[4] = &unk_1E7854320;
      v25 = v7;
      BSDispatchMain();
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained sceneSnapshotterDidInvalidateScene:self didWaitForSceneInvalidation:0 forRequest:v10];
    }

    else
    {
      objc_initWeak(location, self);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __77__PUIPosterSceneSnapshotter__teardownSceneSynchronously_sceneWasDeactivated___block_invoke_2;
      v19[3] = &unk_1E78561B8;
      objc_copyWeak(&v23, location);
      v13 = v9;
      v20 = v13;
      v21 = self;
      v22 = v10;
      v14 = MEMORY[0x1AC5769F0](v19);
      v15 = PUILogSnapshotter();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = @"after scene invalidation completion";
        if (v4)
        {
          v16 = @"immediately";
        }

        *buf = 138543618;
        v27 = v13;
        v28 = 2114;
        v29 = v16;
        _os_log_impl(&dword_1A8C85000, v15, OS_LOG_TYPE_DEFAULT, "(%{public}@) Signaling scene invalidation %{public}@", buf, 0x16u);
      }

      if (v4)
      {
        v14[2](v14);
      }

      else
      {
        v17 = v7;
        v18 = v14;
        BSDispatchMain();
      }

      objc_destroyWeak(&v23);
      objc_destroyWeak(location);
    }
  }
}

uint64_t __77__PUIPosterSceneSnapshotter__teardownSceneSynchronously_sceneWasDeactivated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:0];
  v2 = *(a1 + 32);

  return [v2 pui_invalidateWithCompletion:0];
}

void __77__PUIPosterSceneSnapshotter__teardownSceneSynchronously_sceneWasDeactivated___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = PUILogSnapshotter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_1A8C85000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) Signaling scene invalidation", &v6, 0xCu);
    }

    v5 = objc_loadWeakRetained(WeakRetained + 11);
    [v5 sceneSnapshotterDidInvalidateScene:*(a1 + 40) didWaitForSceneInvalidation:1 forRequest:*(a1 + 48)];
  }
}

void __77__PUIPosterSceneSnapshotter__teardownSceneSynchronously_sceneWasDeactivated___block_invoke_47(uint64_t a1)
{
  [*(a1 + 32) setDelegate:0];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__PUIPosterSceneSnapshotter__teardownSceneSynchronously_sceneWasDeactivated___block_invoke_2_48;
  v3[3] = &unk_1E7854B48;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 pui_invalidateWithCompletion:v3];
}

- (void)_mainQueue_setupScene
{
  v1 = [a1 logIdentifier];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0(&dword_1A8C85000, v2, v3, "(%{public}@) Aborting snapshot, Invalidated", v4, v5, v6, v7, v8);
}

void __50__PUIPosterSceneSnapshotter__mainQueue_setupScene__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PUIPosterSceneSnapshotter__mainQueue_setupScene__block_invoke_2;
  v4[3] = &unk_1E78561E0;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  [v3 updateSettingsWithBlock:v4];

  objc_destroyWeak(&v6);
}

void __50__PUIPosterSceneSnapshotter__mainQueue_setupScene__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    BSDispatchQueueAssertMain();
    [*(a1 + 32) applyToSceneSettings:v9];
    [v9 setForeground:1];
    v4 = [v9 pui_isInlineComplicationConfigured];
    v5 = [v9 pui_isComplicationRowConfigured];
    v6 = [v9 pui_isComplicationSidebarConfigured];
    v7 = [v9 pui_showsComplications];
    if (v4 & 1 | ((v7 & 1) == 0))
    {
      v8 = v7;
    }

    else
    {
      v8 = v5 | v6;
    }

    WeakRetained[25] = v8 & 1;
  }
}

- (void)_activateTimeoutTimer
{
  v3 = [(PUIPosterSceneSnapshotterInfo *)self->_snapshotInfo request];
  [v3 timeoutInterval];
  v5 = v4;

  if (v5 > 0.0)
  {
    objc_initWeak(&location, self);
    v6 = objc_alloc(MEMORY[0x1E698E660]);
    v7 = [(PUIPosterSceneSnapshotterInfo *)self->_snapshotInfo logIdentifier];
    v8 = [@"Timeout timer for " stringByAppendingString:v7];
    v9 = [v6 initWithIdentifier:v8];
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = v9;

    v11 = self->_timeoutTimer;
    v12 = MEMORY[0x1E69E96A0];
    v13 = MEMORY[0x1E69E96A0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__PUIPosterSceneSnapshotter__activateTimeoutTimer__block_invoke;
    v14[3] = &unk_1E7856230;
    objc_copyWeak(&v15, &location);
    [(BSContinuousMachTimer *)v11 scheduleWithFireInterval:v12 leewayInterval:v14 queue:v5 handler:5.0];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __50__PUIPosterSceneSnapshotter__activateTimeoutTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained[6] getFlag])
    {
      v3 = PUILogSnapshotter();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __50__PUIPosterSceneSnapshotter__activateTimeoutTimer__block_invoke_cold_1(v2);
      }
    }

    else
    {
      v3 = [MEMORY[0x1E696ABC0] pui_errorWithCode:8];
      [v2 _mainQueue_finishWithError:v3 result:0];
    }
  }
}

- (void)_mainQueue_finishWithError:(id)a3 result:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = [(PUIPosterSceneSnapshotterInfo *)self->_snapshotInfo logIdentifier];
  v9 = [(FBScene *)self->_mainQueue_scene clientHandle];
  v10 = [v9 processHandle];
  v11 = [v10 pid];

  if ([(BSAtomicFlag *)self->_isCompleteFlag setFlag:1])
  {
    if (self->_mainQueue_endTime != 0.0)
    {
      self->_mainQueue_endTime = CFAbsoluteTimeGetCurrent();
    }

    [(BSContinuousMachTimer *)self->_timeoutTimer invalidate];
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = 0;

    v13 = PUILogSnapshotter();
    v14 = v13;
    if (v6)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = self->_mainQueue_endTime - self->_mainQueue_startTime;
        v19 = 138544386;
        v20 = v8;
        v21 = 1026;
        v22 = v11;
        v23 = 2114;
        v24 = v6;
        v25 = 2112;
        v26 = v7;
        v27 = 2048;
        v28 = v15;
        _os_log_error_impl(&dword_1A8C85000, v14, OS_LOG_TYPE_ERROR, "(%{public}@, pid: %{public}d) _mainQueue_finishWithError:'%{public}@' result:'%@'; runtime: %f", &v19, 0x30u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_mainQueue_endTime - self->_mainQueue_startTime;
      v19 = 138544386;
      v20 = v8;
      v21 = 1026;
      v22 = v11;
      v23 = 2114;
      v24 = 0;
      v25 = 2112;
      v26 = v7;
      v27 = 2048;
      v28 = v17;
      _os_log_impl(&dword_1A8C85000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@, pid: %{public}d) _mainQueue_finishWithError:'%{public}@' result:'%@'; runtime: %f", &v19, 0x30u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sceneSnapshotterDidFinish:self result:v7 error:v6];

    [(PUIPosterSceneSnapshotter *)self _teardownSceneSynchronously:0 sceneWasDeactivated:v6 != 0];
    v16 = PUILogSnapshotter();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543618;
      v20 = v8;
      v21 = 1026;
      v22 = v11;
      _os_log_impl(&dword_1A8C85000, v16, OS_LOG_TYPE_DEFAULT, "(%{public}@, pid: %{public}d) scene torn down", &v19, 0x12u);
    }
  }

  else
  {
    v16 = PUILogSnapshotter();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PUIPosterSceneSnapshotter _mainQueue_finishWithError:result:];
    }
  }
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = PUILogSnapshotter();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PUIPosterSceneSnapshotterInfo *)self->_snapshotInfo logIdentifier];
    v5 = [(BSAtomicFlag *)self->_isCompleteFlag getFlag];
    *buf = 138543618;
    v10 = v4;
    v11 = 1026;
    v12 = v5;
    _os_log_impl(&dword_1A8C85000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) calling PUIPosterSceneSnapshotter invalidate. isComplete: %{public}d", buf, 0x12u);
  }

  if (([(BSAtomicFlag *)self->_isCompleteFlag getFlag]& 1) == 0 && [(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    v6 = PUILogSnapshotter();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PUIPosterSceneSnapshotterInfo *)self->_snapshotInfo logIdentifier];
      *buf = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1A8C85000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) PUIPosterSceneSnapshotter invalidated", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PUIPosterSceneSnapshotter_invalidate__block_invoke;
    block[3] = &unk_1E7854320;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __39__PUIPosterSceneSnapshotter_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
  [v1 _mainQueue_finishWithError:v2 result:0];
}

- (void)fireSceneDeactivationErrorForTesting:(id)a3
{
  v5 = a3;
  if ((MEMORY[0x1AC5764B0]("[PUIPosterSceneSnapshotter fireSceneDeactivationErrorForTesting:]") & 1) == 0)
  {
    [PUIPosterSceneSnapshotter fireSceneDeactivationErrorForTesting:a2];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PUIPosterSceneSnapshotter_fireSceneDeactivationErrorForTesting___block_invoke;
  v7[3] = &unk_1E78548A0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (PUIPosterSceneSnapshotterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithExtensionInstance:(char *)a1 snapshotInfo:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFPosterExtensionInstanceClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithExtensionInstance:(uint64_t)a1 snapshotInfo:.cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PUIPosterSceneSnapshotter initWithExtensionInstance:snapshotInfo:]"];
  OUTLINED_FUNCTION_3_0();
  v4 = 2114;
  v5 = @"PUIPosterSceneSnapshotter.m";
  v6 = 1024;
  v7 = 81;
  v8 = 2114;
  v9 = a1;
  _os_log_error_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, 0x26u);
}

- (void)initWithExtensionInstance:(char *)a1 snapshotInfo:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"snapshotInfo", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithExtensionInstance:(char *)a1 snapshotInfo:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __50__PUIPosterSceneSnapshotter__activateTimeoutTimer__block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 80) logIdentifier];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0(&dword_1A8C85000, v2, v3, "(%{public}@) Timeout timer fired but snapshot is no longer active", v4, v5, v6, v7, v8);
}

- (void)_mainQueue_finishWithError:result:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  v3 = 1026;
  v4 = v0;
  _os_log_error_impl(&dword_1A8C85000, v1, OS_LOG_TYPE_ERROR, "(%{public}@, pid: %{public}d) _mainQueue_finishWithError: Called on already-complete snapshot session", v2, 0x12u);
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