@interface SBCaptureButtonSuppressionManager
- (BOOL)isInCameraCapturePose;
- (SBCaptureButtonLowLatencyPose)lowLatencyPose;
- (SBCaptureButtonSuppressionManager)init;
- (uint64_t)removeObserver:(uint64_t)result;
- (unint64_t)cameraCapturePoseType;
- (void)_notifyObserversOfSuppressionState;
- (void)_subscribeToViewObstructedUpdates;
- (void)_unsubscribeFromViewObstructedUpdates;
- (void)dealloc;
- (void)setSuppressionState:(int64_t)a3;
@end

@implementation SBCaptureButtonSuppressionManager

- (SBCaptureButtonSuppressionManager)init
{
  v5.receiver = self;
  v5.super_class = SBCaptureButtonSuppressionManager;
  v2 = [(SBCaptureButtonSuppressionManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_suppressionState = 0;
    [(SBCaptureButtonSuppressionManager *)v2 _subscribeToViewObstructedUpdates];
  }

  return v3;
}

- (void)dealloc
{
  [(SBCaptureButtonSuppressionManager *)self _unsubscribeFromViewObstructedUpdates];
  v3.receiver = self;
  v3.super_class = SBCaptureButtonSuppressionManager;
  [(SBCaptureButtonSuppressionManager *)&v3 dealloc];
}

- (void)setSuppressionState:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_suppressionState != a3)
  {
    self->_suppressionState = a3;
    v5 = SBLogCameraCaptureSuppression();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSBCaptureButtonSuppressionState(a3);
      v7 = 138543618;
      v8 = self;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@) suppression state is now: %{public}@", &v7, 0x16u);
    }

    [(SBCaptureButtonSuppressionManager *)self _notifyObserversOfSuppressionState];
  }
}

- (BOOL)isInCameraCapturePose
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  suppressionManager = self->_suppressionManager;

  return [(CMSuppressionManager *)suppressionManager isCameraCapturePose];
}

- (unint64_t)cameraCapturePoseType
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  suppressionManager = self->_suppressionManager;

  return [(CMSuppressionManager *)suppressionManager cameraCapturePoseUIHint];
}

- (SBCaptureButtonLowLatencyPose)lowLatencyPose
{
  v2 = [(CMSuppressionManager *)self->_suppressionManager staticPoseBlocking];
  v3 = [v2 isStatic];
  [v2 timeInStaticState];
  v5 = v4;
  if ((v3 & 1) == 0)
  {
    [v2 timeInMovingState];
    v5 = v5 + v6;
  }

  if ([v2 isStatic])
  {
    [v2 timeInStaticState];
    v8 = v7;
    [v2 timeInMovingState];
    v10 = v8 + v9;
  }

  else
  {
    [v2 timeInMovingState];
    v10 = v11;
  }

  v12 = [[SBCaptureButtonLowLatencyPose alloc] initWithTimeSinceLastStationary:v5 timeSinceLastNonStationary:v10];

  return v12;
}

- (void)_notifyObserversOfSuppressionState
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) captureButtonSuppressionManager:self event:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_subscribeToViewObstructedUpdates
{
  if ([MEMORY[0x277CC1D50] isAvailable])
  {
    if (!self->_suppressionManager)
    {
      v4 = [objc_alloc(MEMORY[0x277CC1D50]) initWithClientType:4];
      suppressionManager = self->_suppressionManager;
      self->_suppressionManager = v4;

      [(CMSuppressionManager *)self->_suppressionManager startService];
      v6 = SBLogCameraCaptureSuppression();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Enabling View Obstructed updates using AlwaysOnVO | FaceDown", buf, 2u);
      }

      v7 = self->_suppressionManager;
      v8 = [MEMORY[0x277CCABD8] mainQueue];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __70__SBCaptureButtonSuppressionManager__subscribeToViewObstructedUpdates__block_invoke;
      v10[3] = &unk_2783BD280;
      v10[4] = self;
      v10[5] = a2;
      [(CMSuppressionManager *)v7 startSuppressionUpdatesToQueue:v8 withOptions:24 withHandler:v10];
    }
  }

  else
  {
    v9 = SBLogCameraCaptureSuppression();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SBCaptureButtonSuppressionManager *)v9 _subscribeToViewObstructedUpdates];
    }

    self->_suppressionState = 0;
  }
}

void __70__SBCaptureButtonSuppressionManager__subscribeToViewObstructedUpdates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = (a1 + 32);
  *(*(a1 + 32) + 48) = 0;
  v8 = SBLogCameraCaptureSuppression();
  v9 = v8;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v18 = *v7;
      v19 = [v6 localizedDescription];
      v20 = [v6 localizedFailureReason];
      v21 = 138544130;
      v22 = v18;
      v23 = 2114;
      v24 = v5;
      v25 = 2114;
      v26 = v19;
      v27 = 2114;
      v28 = v20;
      _os_log_fault_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_FAULT, "(%{public}@) suppression event error - event:%{public}@ error:%{public}@ reason:%{public}@", &v21, 0x2Au);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *v7;
    v21 = 138543618;
    v22 = v10;
    v23 = 2114;
    v24 = v5;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@) suppression event: %{public}@", &v21, 0x16u);
  }

  v11 = [v5 type];
  v12 = v11;
  switch(v11)
  {
    case 1:
      v15 = 0;
LABEL_19:
      *(*v7 + 6) = v15;
      goto LABEL_20;
    case 2:
      [v5 timeSinceLastFacedownStatic];
      v15 = v14;
      v16 = SBLogCameraCaptureSuppression();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *v7;
        v21 = 138543618;
        v22 = v17;
        v23 = 2048;
        v24 = v15;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "(%{public}@) time since last face down: %g", &v21, 0x16u);
      }

      goto LABEL_19;
    case 3:
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"kCMSuppressionEventTypeMax not handled"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __70__SBCaptureButtonSuppressionManager__subscribeToViewObstructedUpdates__block_invoke_cold_1(a1, (a1 + 32), v13);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x21F3EB970);
  }

LABEL_14:
  v12 = 0;
LABEL_20:
  [*v7 setSuppressionState:v12];
}

- (void)_unsubscribeFromViewObstructedUpdates
{
  if (self->_suppressionManager)
  {
    v3 = SBLogCameraCaptureSuppression();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Disabling View Obstructed updates", v5, 2u);
    }

    [(CMSuppressionManager *)self->_suppressionManager stopSuppressionUpdates];
    [(CMSuppressionManager *)self->_suppressionManager stopService];
    suppressionManager = self->_suppressionManager;
    self->_suppressionManager = 0;
  }
}

- (uint64_t)removeObserver:(uint64_t)result
{
  if (result)
  {
    return [*(result + 16) removeObject:a2];
  }

  return result;
}

void __70__SBCaptureButtonSuppressionManager__subscribeToViewObstructedUpdates__block_invoke_cold_1(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(*(a1 + 40));
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *a2;
  v9 = 138544642;
  v10 = v5;
  v11 = 2114;
  v12 = v7;
  v13 = 2048;
  v14 = v8;
  v15 = 2114;
  v16 = @"SBCaptureButtonSuppressionManager.m";
  v17 = 1024;
  v18 = 185;
  v19 = 2114;
  v20 = a3;
  _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
}

@end