@interface PUIPosterSceneComponent
- (PUIPosterSceneComponent)initWithScene:(id)scene bundleIdentifier:(id)identifier processIdentity:(id)identity options:(unint64_t)options;
- (void)_invalidateLocationInUseAssertion;
- (void)_main_remoteMLMInvalidation:(id)invalidation;
- (void)_main_updateState;
- (void)invalidate;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
@end

@implementation PUIPosterSceneComponent

- (void)_main_updateState
{
  v1 = NSStringFromSelector(self);
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x3Au);
}

- (void)_invalidateLocationInUseAssertion
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_locationInUseAssertion)
  {
    v3 = PUILogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      locationInUseAssertion = self->_locationInUseAssertion;
      v6 = 138412290;
      v7 = locationInUseAssertion;
      _os_log_impl(&dword_1A8C85000, v3, OS_LOG_TYPE_DEFAULT, "invalidating CLInUseAssertion: %@", &v6, 0xCu);
    }

    [(CLInUseAssertion *)self->_locationInUseAssertion invalidate];
    v5 = self->_locationInUseAssertion;
    self->_locationInUseAssertion = 0;
  }
}

- (PUIPosterSceneComponent)initWithScene:(id)scene bundleIdentifier:(id)identifier processIdentity:(id)identity options:(unint64_t)options
{
  sceneCopy = scene;
  identifierCopy = identifier;
  identityCopy = identity;
  v14 = [(PUIPosterSceneComponent *)self init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_scene, scene);
    v16 = [identifierCopy copy];
    bundleIdentifier = v15->_bundleIdentifier;
    v15->_bundleIdentifier = v16;

    objc_storeStrong(&v15->_processIdentity, identity);
    v15->_options = options;
    [(FBScene *)v15->_scene addObserver:v15];
    [(PUIPosterSceneComponent *)v15 _main_updateState];
  }

  return v15;
}

- (void)invalidate
{
  v10 = *MEMORY[0x1E69E9840];
  [(BSAbsoluteMachTimer *)self->_wakeTimer invalidate];
  [(BSTimerScheduleQuerying *)self->_eventTimer invalidate];
  [(FBScene *)self->_scene removeObserver:self];
  if (self->_mlmAssertion)
  {
    v3 = PUILogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      pui_shortDescription = [(FBScene *)self->_scene pui_shortDescription];
      v8 = 138543362;
      v9 = pui_shortDescription;
      _os_log_impl(&dword_1A8C85000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating MLM assertion.", &v8, 0xCu);
    }

    [(RBSAssertion *)self->_mlmAssertion invalidate];
    mlmAssertion = self->_mlmAssertion;
    self->_mlmAssertion = 0;
  }

  [(RBSAssertion *)self->_taskAssertion invalidate];
  taskAssertion = self->_taskAssertion;
  self->_taskAssertion = 0;

  [(PUIPosterSceneComponent *)self _invalidateLocationInUseAssertion];
  scene = self->_scene;
  self->_scene = 0;
}

- (void)_main_remoteMLMInvalidation:(id)invalidation
{
  mlmAssertion = self->_mlmAssertion;
  if (mlmAssertion == invalidation)
  {
    [(RBSAssertion *)mlmAssertion invalidate];
    v5 = self->_mlmAssertion;
    self->_mlmAssertion = 0;

    [(PUIPosterSceneComponent *)self _main_updateState];
  }
}

void __44__PUIPosterSceneComponent__main_updateState__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PUILogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1A8C85000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] MLM assertion for %{public}@ was invalidated remotely.", buf, 0x16u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PUIPosterSceneComponent__main_updateState__block_invoke_44;
  v8[3] = &unk_1E7854C68;
  objc_copyWeak(&v10, (a1 + 48));
  v9 = v3;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  objc_destroyWeak(&v10);
}

void __44__PUIPosterSceneComponent__main_updateState__block_invoke_44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _main_remoteMLMInvalidation:*(a1 + 32)];
}

uint64_t __44__PUIPosterSceneComponent__main_updateState__block_invoke_47(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PUILogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1A8C85000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finalizing delayed invalidation of MLM assertion %p.", &v6, 0x16u);
  }

  return [*(a1 + 40) invalidate];
}

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  v50 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  diffCopy = diff;
  pui_significantEventTimeDidChange = [diffCopy pui_significantEventTimeDidChange];
  pui_significantEventsDidChange = [diffCopy pui_significantEventsDidChange];

  if ((pui_significantEventTimeDidChange & 1) != 0 || pui_significantEventsDidChange)
  {
    [(BSTimerScheduleQuerying *)self->_eventTimer invalidate];
    eventTimer = self->_eventTimer;
    self->_eventTimer = 0;

    clientSettings = [sceneCopy clientSettings];
    pui_significantEventOptions = [clientSettings pui_significantEventOptions];

    clientSettings2 = [sceneCopy clientSettings];
    pui_significantEventOptions2 = [clientSettings2 pui_significantEventOptions];

    pui_isLegacyProvider = [sceneCopy pui_isLegacyProvider];
    if ((pui_significantEventOptions & 1) != 0 || (pui_significantEventOptions2 & 8) != 0 && ((pui_isLegacyProvider ^ 1) & 1) == 0)
    {
      clientSettings3 = [sceneCopy clientSettings];
      pui_significantEventTime = [clientSettings3 pui_significantEventTime];

      v44 = 0;
      v45 = 0;
      if (!dispatch_time_to_nsec())
      {
        v20 = PUILogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [PUIPosterSceneComponent scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:];
        }

        goto LABEL_23;
      }

      if (pui_significantEventTime == (v44 == 2) << 63)
      {
        v20 = PUILogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [PUIPosterSceneComponent scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:];
        }

LABEL_23:

        goto LABEL_24;
      }

      v43 = 0;
      if (!dispatch_time_to_nsec())
      {
        v20 = PUILogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [PUIPosterSceneComponent scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:];
        }

        goto LABEL_23;
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __101__PUIPosterSceneComponent_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
      v42[3] = &unk_1E78560A0;
      v42[4] = self;
      v21 = MEMORY[0x1AC5769F0](v42);
      v22 = (v45 - v43) / 1000000000.0;
      if (v22 <= 0.0)
      {
        v27 = PUILogCommon();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [PUIPosterSceneComponent scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:];
        }
      }

      else
      {
        if (v44 == 3)
        {
          v33 = objc_alloc(MEMORY[0x1E698E7A0]);
          pui_shortDescription = [sceneCopy pui_shortDescription];
          v35 = [v33 initWithIdentifier:pui_shortDescription];
          v36 = self->_eventTimer;
          self->_eventTimer = v35;

          v37 = self->_eventTimer;
          v38 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v22];
          [(BSTimerScheduleQuerying *)v37 scheduleForDate:v38 leewayInterval:MEMORY[0x1E69E96A0] queue:v21 handler:0.1];

          v32 = @"wall";
        }

        else if (v44 == 2)
        {
          v28 = objc_alloc(MEMORY[0x1E698E660]);
          pui_shortDescription2 = [sceneCopy pui_shortDescription];
          v30 = [v28 initWithIdentifier:pui_shortDescription2];
          v31 = self->_eventTimer;
          self->_eventTimer = v30;

          [(BSTimerScheduleQuerying *)self->_eventTimer scheduleWithFireInterval:MEMORY[0x1E69E96A0] leewayInterval:v21 queue:v22 handler:0.1];
          v32 = @"monotonic";
        }

        else
        {
          if (v44 == 1)
          {
            v23 = objc_alloc(MEMORY[0x1E698E5E8]);
            pui_shortDescription3 = [sceneCopy pui_shortDescription];
            v25 = [v23 initWithIdentifier:pui_shortDescription3];
            v26 = self->_eventTimer;
            self->_eventTimer = v25;

            [(BSTimerScheduleQuerying *)self->_eventTimer scheduleWithFireInterval:MEMORY[0x1E69E96A0] leewayInterval:v21 queue:v22 handler:0.1];
          }

          else
          {
            v39 = PUILogCommon();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              [PUIPosterSceneComponent scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:];
            }
          }

          v32 = @"default";
        }

        if (!self->_eventTimer)
        {
          goto LABEL_41;
        }

        if (v22 <= 60.0)
        {
          v27 = PUILogCommon();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v47 = v22;
            v48 = 2112;
            v49 = v32;
            _os_log_impl(&dword_1A8C85000, v27, OS_LOG_TYPE_DEFAULT, "Setting significant time interval to %.1fs (%@)", buf, 0x16u);
          }
        }

        else
        {
          v27 = objc_alloc_init(MEMORY[0x1E696AB70]);
          [v27 setUnitsStyle:1];
          v40 = [v27 stringFromTimeInterval:v22];
          v41 = PUILogCommon();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v47 = *&v40;
            v48 = 2112;
            v49 = v32;
            _os_log_impl(&dword_1A8C85000, v41, OS_LOG_TYPE_DEFAULT, "Setting significant time interval to %{public}@ (%@)", buf, 0x16u);
          }
        }
      }

LABEL_41:
      goto LABEL_24;
    }

    if (!(((pui_significantEventOptions2 & 8) == 0) | pui_isLegacyProvider & 1))
    {
      v20 = PUILogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [PUIPosterSceneComponent scene:sceneCopy didUpdateClientSettingsWithDiff:v20 oldClientSettings:? transitionContext:?];
      }

      goto LABEL_23;
    }
  }

LABEL_24:
}

void __101__PUIPosterSceneComponent_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  if ([v4 isActive])
  {
    v5 = PUILogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 pui_shortDescription];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1A8C85000, v5, OS_LOG_TYPE_DEFAULT, "Significant event timer fired for %{public}@", &v7, 0xCu);
    }

    [v4 pui_postSignificantEvent:1];
  }

  [v3 invalidate];
}

- (void)scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:.cold.3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:.cold.5()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)scene:(void *)a1 didUpdateClientSettingsWithDiff:(NSObject *)a2 oldClientSettings:transitionContext:.cold.6(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 pui_shortDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_fault_impl(&dword_1A8C85000, a2, OS_LOG_TYPE_FAULT, "PRPosterSignificantEventOptionLegacySettingsUpdate requested from *not* LegacyPoster BUT: %{public}@", &v4, 0xCu);
}

@end