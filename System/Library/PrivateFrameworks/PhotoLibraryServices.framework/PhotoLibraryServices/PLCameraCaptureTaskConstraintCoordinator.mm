@interface PLCameraCaptureTaskConstraintCoordinator
+ (id)taskConstraintStatus;
- (NSString)description;
- (PLCameraCaptureTaskConstraintCoordinator)initWithTaskContstraintRole:(int64_t)a3 name:(id)a4;
- (id)sessionStatusDescription;
- (void)_activateCameraSessionTaskConstraints;
- (void)_cancelSessionFailsafeTimer;
- (void)_deactivateCameraSessionTaskConstraintsAfterDelay:(double)a3;
- (void)_invalidateTransactionAndStopConstrainingTasksWithDelayedDeactivation:(BOOL)a3;
- (void)_startSessionFailsafeTimer;
- (void)_startWatchingCameraActivity;
- (void)activateCameraSessionTaskConstraints;
- (void)cameraWatcherDidChangeState:(id)a3;
- (void)deactivateCameraSessionTaskConstraints;
- (void)invalidate;
@end

@implementation PLCameraCaptureTaskConstraintCoordinator

- (void)activateCameraSessionTaskConstraints
{
  activationQueue = self->_activationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PLCameraCaptureTaskConstraintCoordinator_activateCameraSessionTaskConstraints__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(activationQueue, block);
}

uint64_t __80__PLCameraCaptureTaskConstraintCoordinator_activateCameraSessionTaskConstraints__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 32))
  {
    v2 = PLCameraTaskConstraintsGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      v3 = *(a1 + 32);
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_FAULT, "%{public}@: activate camera session already has an active transaction", &v7, 0xCu);
    }
  }

  v4 = PLCameraTaskConstraintsGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: activating camera session task constraints", &v7, 0xCu);
  }

  return [*(a1 + 32) _activateCameraSessionTaskConstraints];
}

- (NSString)description
{
  if (self->_failsafeTimerEnabled)
  {
    v16.receiver = self;
    v16.super_class = PLCameraCaptureTaskConstraintCoordinator;
    v3 = [(PLCameraCaptureTaskConstraintCoordinator *)&v16 description];
    v4 = v3;
    role = self->_role;
    v6 = @"AutomaticCameraViewfinderSession";
    if (role != 2)
    {
      v6 = 0;
    }

    if (role == 1)
    {
      v7 = @"CameraAppKeepAlive";
    }

    else
    {
      v7 = v6;
    }

    [v3 stringByAppendingFormat:@" (%@, %@, %@, %@)", v7, self->_name, self->_creationDateString, self->_failsafeTimer];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PLCameraCaptureTaskConstraintCoordinator;
    v8 = [(PLCameraCaptureTaskConstraintCoordinator *)&v15 description];
    v4 = v8;
    v9 = self->_role;
    v10 = @"AutomaticCameraViewfinderSession";
    if (v9 != 2)
    {
      v10 = 0;
    }

    if (v9 == 1)
    {
      v11 = @"CameraAppKeepAlive";
    }

    else
    {
      v11 = v10;
    }

    [v8 stringByAppendingFormat:@" (%@, %@, %@)", v11, self->_name, self->_creationDateString, v14];
  }
  v12 = ;

  return v12;
}

- (void)cameraWatcherDidChangeState:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  cameraWatcherQueue = self->_cameraWatcherQueue;
  v5 = a3;
  dispatch_assert_queue_V2(cameraWatcherQueue);
  v6 = [v5 isCameraRunning];

  v7 = PLCameraTaskConstraintsGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      v9 = 138543362;
      v10 = self;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: activating camera session task constraints automatically", &v9, 0xCu);
    }

    [(PLCameraCaptureTaskConstraintCoordinator *)self activateCameraSessionTaskConstraints];
  }

  else
  {
    if (v8)
    {
      v9 = 138543362;
      v10 = self;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: deactivating camera session task constraints automatically", &v9, 0xCu);
    }

    [(PLCameraCaptureTaskConstraintCoordinator *)self deactivateCameraSessionTaskConstraints];
  }
}

- (void)_startWatchingCameraActivity
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = PLCameraTaskConstraintsGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138543362;
    v11 = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%{public}@: starting camera viewfinder monitor", &v10, 0xCu);
  }

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);

  v6 = dispatch_queue_create("com.apple.photos.backgroundjobservice.isolationqueue", v5);
  cameraWatcherQueue = self->_cameraWatcherQueue;
  self->_cameraWatcherQueue = v6;

  v8 = [objc_alloc(MEMORY[0x1E69C0690]) initWithDispatchQueue:self->_cameraWatcherQueue delegate:self];
  cameraWatcher = self->_cameraWatcher;
  self->_cameraWatcher = v8;

  [(PFCameraViewfinderSessionWatcher *)self->_cameraWatcher startWatching];
}

- (void)_cancelSessionFailsafeTimer
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_activationQueue);
  v3 = [(PLDelayedActionTimer *)self->_failsafeTimer isRunning];
  v4 = PLCameraTaskConstraintsGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      failsafeTimer = self->_failsafeTimer;
      v7 = 138543618;
      v8 = self;
      v9 = 2114;
      v10 = failsafeTimer;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: PLCameraCaptureTaskConstraintCoordinator cancelling failsafe timer %{public}@", &v7, 0x16u);
    }

    [(PLDelayedActionTimer *)self->_failsafeTimer cancel];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = self;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: PLCameraCaptureTaskConstraintCoordinator ignoring request to cancel NULL failsafe timer", &v7, 0xCu);
    }
  }
}

- (void)_startSessionFailsafeTimer
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_activationQueue);
  if ([(PLDelayedActionTimer *)self->_failsafeTimer isRunning])
  {
    v3 = PLCameraTaskConstraintsGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      failsafeTimer = self->_failsafeTimer;
      *buf = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = failsafeTimer;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: ignoring request to start active task constraint failsafe timer %{public}@", buf, 0x16u);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = self->_failsafeTimer;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__PLCameraCaptureTaskConstraintCoordinator__startSessionFailsafeTimer__block_invoke;
    v8[3] = &unk_1E75782A8;
    objc_copyWeak(&v9, &location);
    v8[4] = self;
    [(PLDelayedActionTimer *)v5 afterDelay:v8 performBlock:600.0];
    v6 = PLCameraTaskConstraintsGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = self->_failsafeTimer;
      *buf = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: started task constraint failsafe timer %{public}@", buf, 0x16u);
    }

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __70__PLCameraCaptureTaskConstraintCoordinator__startSessionFailsafeTimer__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = PLCameraTaskConstraintsGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 48);
      v5 = 138543618;
      v6 = WeakRetained;
      v7 = 2114;
      v8 = v4;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: task constraint failsafe timer fired %{public}@, deactivating task constraints", &v5, 0x16u);
    }

    [WeakRetained _deactivateCameraSessionTaskConstraintsAfterDelay:0.0];
  }
}

- (void)_invalidateTransactionAndStopConstrainingTasksWithDelayedDeactivation:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (self->_delayedDeactivationInProgress)
    {
      v4 = +[PLCameraCaptureTaskConstraints sharedTaskConstraints];
      [v4 stopConstrainingTasksWithCoordinator:self];

      transaction = self->_transaction;
      self->_transaction = 0;

      self->_delayedDeactivationInProgress = 0;
      v6 = PLCameraTaskConstraintsGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138543362;
        v13 = self;
        v7 = "%{public}@: task constraints deactivated after delay";
LABEL_7:
        v10 = v6;
        v11 = OS_LOG_TYPE_DEBUG;
LABEL_10:
        _os_log_impl(&dword_19BF1F000, v10, v11, v7, &v12, 0xCu);
      }
    }

    else
    {
      v6 = PLCameraTaskConstraintsGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = self;
        v7 = "%{public}@: delayed task constraint deactivation cancelled by re-activation";
        v10 = v6;
        v11 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = +[PLCameraCaptureTaskConstraints sharedTaskConstraints];
    [v8 stopConstrainingTasksWithCoordinator:self];

    v9 = self->_transaction;
    self->_transaction = 0;

    v6 = PLCameraTaskConstraintsGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138543362;
      v13 = self;
      v7 = "%{public}@: task constraints deactivated";
      goto LABEL_7;
    }
  }
}

- (void)_deactivateCameraSessionTaskConstraintsAfterDelay:(double)a3
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_activationQueue);
  if (self->_delayedDeactivationInProgress)
  {
    v5 = PLCameraTaskConstraintsGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = self;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: task constraint deactivation already in progress", buf, 0xCu);
    }
  }

  else
  {
    if ([(PLDelayedActionTimer *)self->_failsafeTimer isRunning])
    {
      [(PLCameraCaptureTaskConstraintCoordinator *)self _cancelSessionFailsafeTimer];
    }

    if (a3 == 0.0)
    {

      [(PLCameraCaptureTaskConstraintCoordinator *)self _invalidateTransactionAndStopConstrainingTasksWithDelayedDeactivation:0];
    }

    else
    {
      self->_delayedDeactivationInProgress = 1;
      objc_initWeak(buf, self);
      v6 = dispatch_time(0, (a3 * 1000000000.0));
      activationQueue = self->_activationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __94__PLCameraCaptureTaskConstraintCoordinator__deactivateCameraSessionTaskConstraintsAfterDelay___block_invoke;
      block[3] = &unk_1E75788C0;
      objc_copyWeak(&v9, buf);
      dispatch_after(v6, activationQueue, block);
      objc_destroyWeak(&v9);
      objc_destroyWeak(buf);
    }
  }
}

void __94__PLCameraCaptureTaskConstraintCoordinator__deactivateCameraSessionTaskConstraintsAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateTransactionAndStopConstrainingTasksWithDelayedDeactivation:1];
}

- (void)_activateCameraSessionTaskConstraints
{
  v9 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_activationQueue);
  v3 = [MEMORY[0x1E69BF360] transaction:"PLCameraCaptureTaskConstraintCoordinator"];
  transaction = self->_transaction;
  self->_transaction = v3;

  if (self->_delayedDeactivationInProgress)
  {
    v5 = PLCameraTaskConstraintsGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138543362;
      v8 = self;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: cancelling delayed deactivation", &v7, 0xCu);
    }

    self->_delayedDeactivationInProgress = 0;
  }

  if ([(PLDelayedActionTimer *)self->_failsafeTimer isRunning])
  {
    [(PLCameraCaptureTaskConstraintCoordinator *)self _cancelSessionFailsafeTimer];
  }

  v6 = +[PLCameraCaptureTaskConstraints sharedTaskConstraints];
  [v6 startConstrainingTasksWithCoordinator:self];

  if (self->_failsafeTimerEnabled)
  {
    [(PLCameraCaptureTaskConstraintCoordinator *)self _startSessionFailsafeTimer];
  }
}

- (void)deactivateCameraSessionTaskConstraints
{
  activationQueue = self->_activationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PLCameraCaptureTaskConstraintCoordinator_deactivateCameraSessionTaskConstraints__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(activationQueue, block);
}

uint64_t __82__PLCameraCaptureTaskConstraintCoordinator_deactivateCameraSessionTaskConstraints__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!*(v2 + 32))
  {
    v3 = PLCameraTaskConstraintsGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v4 = *(a1 + 32);
      v15 = 138543362;
      v16 = v4;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_FAULT, "%{public}@: deactivate camera session with no active transaction", &v15, 0xCu);
    }

    v2 = *(a1 + 32);
  }

  v5 = *(v2 + 80);
  v6 = PLCameraTaskConstraintsGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 2)
  {
    v8 = 2.0;
    if (v7)
    {
      v9 = *(a1 + 32);
      v15 = 138543618;
      v16 = v9;
      v17 = 2048;
      v18 = 0x4000000000000000;
      v10 = "%{public}@: deactivating camera session task constraints after %1.1f delay";
      v11 = v6;
      v12 = 22;
LABEL_10:
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
    }
  }

  else
  {
    v8 = 0.0;
    if (v7)
    {
      v13 = *(a1 + 32);
      v15 = 138543362;
      v16 = v13;
      v10 = "%{public}@: deactivating camera session task constraints";
      v11 = v6;
      v12 = 12;
      goto LABEL_10;
    }
  }

  return [*(a1 + 32) _deactivateCameraSessionTaskConstraintsAfterDelay:v8];
}

- (id)sessionStatusDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__54082;
  v10 = __Block_byref_object_dispose__54083;
  v11 = @"inactive";
  activationQueue = self->_activationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PLCameraCaptureTaskConstraintCoordinator_sessionStatusDescription__block_invoke;
  v5[3] = &unk_1E7578910;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(activationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __68__PLCameraCaptureTaskConstraintCoordinator_sessionStatusDescription__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    v1 = *(*(a1 + 40) + 8);
    v2 = *(v1 + 40);
    *(v1 + 40) = @"active";
  }
}

- (void)invalidate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLCameraTaskConstraintsGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: invalidate", &v5, 0xCu);
  }

  v4 = +[PLCameraCaptureTaskConstraints sharedTaskConstraints];
  [v4 stopConstrainingTasksWithCoordinator:self];
}

- (PLCameraCaptureTaskConstraintCoordinator)initWithTaskContstraintRole:(int64_t)a3 name:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v20.receiver = self;
  v20.super_class = PLCameraCaptureTaskConstraintCoordinator;
  v7 = [(PLCameraCaptureTaskConstraintCoordinator *)&v20 init];
  if (v7)
  {
    v8 = [v6 copy];
    name = v7->_name;
    v7->_name = v8;

    v10 = [MEMORY[0x1E695DF00] date];
    v11 = PLDateToISO8160StringWithLocalTimeZone(v10);
    creationDateString = v7->_creationDateString;
    v7->_creationDateString = v11;

    v7->_role = a3;
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = pl_dispatch_queue_create_with_fallback_qos();
    activationQueue = v7->_activationQueue;
    v7->_activationQueue = v14;

    if ([PLCameraCaptureTaskConstraintCoordinator _shouldWatchCameraViewfinderForRole:a3])
    {
      [(PLCameraCaptureTaskConstraintCoordinator *)v7 _startWatchingCameraActivity];
    }

    if ([PLCameraCaptureTaskConstraintCoordinator _shouldUseFailsafeTimerForRole:a3])
    {
      v7->_failsafeTimerEnabled = 1;
      v16 = [objc_alloc(MEMORY[0x1E69BF1F8]) initWithTargetQueue:v7->_activationQueue];
      failsafeTimer = v7->_failsafeTimer;
      v7->_failsafeTimer = v16;
    }

    v18 = PLCameraTaskConstraintsGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v7;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: initialized", buf, 0xCu);
    }
  }

  return v7;
}

+ (id)taskConstraintStatus
{
  v2 = +[PLCameraCaptureTaskConstraints sharedTaskConstraints];
  v3 = [v2 taskConstraintStatus];

  return v3;
}

@end