@interface SBFaceContactExpectationManager
- (BOOL)_sceneHasBypassEntitlement:(id)entitlement;
- (SBFaceContactExpectationManager)initWithSceneManager:(id)manager;
- (SBFaceContactExpectationManager)initWithSceneManager:(id)manager proximitySensorManager:(id)sensorManager;
- (id)_frontmostScenesExpectingFaceContactAndGetShouldDisableGracePeriod:(BOOL *)period;
- (id)_proximitySensorClientID;
- (id)description;
- (void)updateFaceContactExpectation;
@end

@implementation SBFaceContactExpectationManager

- (void)updateFaceContactExpectation
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [(SBFaceContactExpectationManager *)self _frontmostScenesExpectingFaceContactAndGetShouldDisableGracePeriod:&v9];
  v4 = [v3 count] != 0;
  if (self->_faceExpected != v4)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 bs_map:&__block_literal_global_367];
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "scenes expecting face contact:%{public}@", buf, 0xCu);
    }

    self->_faceExpected = v4;
    WeakRetained = objc_loadWeakRetained(&self->_proximitySensorManager);
    _proximitySensorClientID = [(SBFaceContactExpectationManager *)self _proximitySensorClientID];
    [WeakRetained client:_proximitySensorClientID wantsProximityDetectionEnabled:self->_faceExpected disableGracePeriod:v9];
  }
}

- (SBFaceContactExpectationManager)initWithSceneManager:(id)manager
{
  v4 = SBApp;
  managerCopy = manager;
  proximitySensorManager = [v4 proximitySensorManager];
  v7 = [(SBFaceContactExpectationManager *)self initWithSceneManager:managerCopy proximitySensorManager:proximitySensorManager];

  return v7;
}

- (SBFaceContactExpectationManager)initWithSceneManager:(id)manager proximitySensorManager:(id)sensorManager
{
  managerCopy = manager;
  sensorManagerCopy = sensorManager;
  if (!managerCopy)
  {
    [SBFaceContactExpectationManager initWithSceneManager:a2 proximitySensorManager:?];
  }

  v9 = sensorManagerCopy;
  if (!sensorManagerCopy)
  {
    [SBFaceContactExpectationManager initWithSceneManager:a2 proximitySensorManager:?];
  }

  v16.receiver = self;
  v16.super_class = SBFaceContactExpectationManager;
  v10 = [(SBFaceContactExpectationManager *)&v16 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeWeak(&v10->_sceneManager, managerCopy);
    objc_storeWeak(p_isa + 2, v9);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SBFaceContactExpectationManager_initWithSceneManager_proximitySensorManager___block_invoke;
  block[3] = &unk_2783A8C18;
  v12 = p_isa;
  v15 = v12;
  dispatch_async(MEMORY[0x277D85CD0], block);

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_faceExpected withName:@"_faceExpected"];
  build = [v3 build];

  return build;
}

- (BOOL)_sceneHasBypassEntitlement:(id)entitlement
{
  clientHandle = [entitlement clientHandle];
  processHandle = [clientHandle processHandle];

  v5 = 0;
  if (processHandle)
  {
    [processHandle auditToken];
    if (BSAuditTokenTaskHasEntitlement())
    {
      v5 = 1;
    }
  }

  return v5;
}

- (id)_frontmostScenesExpectingFaceContactAndGetShouldDisableGracePeriod:(BOOL *)period
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_sceneManager);
  v6 = [WeakRetained topmostForegroundUIScenesMatching:&__block_literal_global_21_3];
  v7 = [v6 bs_filter:&__block_literal_global_24_1];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v10 |= [(SBFaceContactExpectationManager *)self _sceneHasBypassEntitlement:*(*(&v14 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  *period = v10 & 1;

  return v7;
}

unint64_t __102__SBFaceContactExpectationManager__frontmostScenesExpectingFaceContactAndGetShouldDisableGracePeriod___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 clientSettings];
  if (([v2 proximityDetectionModes] & 4) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = ([v2 proximityDetectionModes] >> 3) & 1;
  }

  return v3;
}

- (id)_proximitySensorClientID
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  WeakRetained = objc_loadWeakRetained(&self->_sceneManager);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v3 stringWithFormat:@"%@-%@", v5, v8];

  return v9;
}

- (void)initWithSceneManager:(const char *)a1 proximitySensorManager:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"proxManager != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBFaceContactExpectationManager.m";
    v9 = 1024;
    v10 = 40;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSceneManager:(const char *)a1 proximitySensorManager:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"sceneManager != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBFaceContactExpectationManager.m";
    v9 = 1024;
    v10 = 39;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end