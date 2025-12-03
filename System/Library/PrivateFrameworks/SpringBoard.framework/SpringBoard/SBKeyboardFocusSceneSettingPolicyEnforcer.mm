@interface SBKeyboardFocusSceneSettingPolicyEnforcer
- (FBScene)sbWindowSceneAncestorForTargetScene;
- (FBScene)targetSceneForKeyboardFocusDeferring;
- (SBKeyboardFocusSceneSettingPolicyEnforcer)initWithSceneProvider:(id)provider;
- (void)_moveKeyboardFocusDeferringEnvironmentSceneSettingFromScene:(id)scene withSBAncestor:(id)ancestor toScene:(id)toScene withSBAncestor:(id)bAncestor target:(id)target activeDisplayChanging:(BOOL)changing;
- (void)enforce:(id)enforce;
- (void)invalidate;
- (void)stopEnforcing;
@end

@implementation SBKeyboardFocusSceneSettingPolicyEnforcer

- (SBKeyboardFocusSceneSettingPolicyEnforcer)initWithSceneProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SBKeyboardFocusSceneSettingPolicyEnforcer;
  v6 = [(SBKeyboardFocusSceneSettingPolicyEnforcer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sceneProvider, provider);
  }

  return v7;
}

- (void)enforce:(id)enforce
{
  enforceCopy = enforce;
  WeakRetained = objc_loadWeakRetained(&self->_targetSceneForKeyboardFocusDeferring);
  v6 = objc_loadWeakRetained(&self->_sbWindowSceneAncestorForTargetScene);
  sceneProvider = self->_sceneProvider;
  keyboardFocusTarget = [enforceCopy keyboardFocusTarget];
  v9 = [(SBKeyboardFocusSceneProviding *)sceneProvider sceneForFocusTarget:keyboardFocusTarget];

  v10 = self->_sceneProvider;
  sbWindowSceneAncestor = [enforceCopy sbWindowSceneAncestor];
  v12 = [SBKeyboardFocusTarget targetForSBWindowScene:sbWindowSceneAncestor];
  v13 = [(SBKeyboardFocusSceneProviding *)v10 sceneForFocusTarget:v12];

  identityToken = [WeakRetained identityToken];
  identityToken2 = [v9 identityToken];
  v16 = BSEqualObjects();

  identityToken3 = [v6 identityToken];
  identityToken4 = [v13 identityToken];
  v19 = BSEqualObjects();

  if (v9)
  {
    if ((v16 & v19 & 1) == 0)
    {
      v20 = v19 ^ 1;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__SBKeyboardFocusSceneSettingPolicyEnforcer_enforce___block_invoke;
      block[3] = &unk_2783B5F48;
      block[4] = self;
      v25 = WeakRetained;
      v26 = v6;
      v21 = v9;
      v27 = v21;
      v22 = v13;
      v28 = v22;
      v29 = enforceCopy;
      v30 = v20;
      dispatch_async(MEMORY[0x277D85CD0], block);
      objc_storeWeak(&self->_targetSceneForKeyboardFocusDeferring, v21);
      objc_storeWeak(&self->_sbWindowSceneAncestorForTargetScene, v22);
    }
  }

  else
  {
    v23 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [(SBKeyboardFocusSceneSettingPolicyEnforcer *)enforceCopy enforce:v23];
    }
  }
}

void __53__SBKeyboardFocusSceneSettingPolicyEnforcer_enforce___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = [*(a1 + 72) keyboardFocusTarget];
  [v2 _moveKeyboardFocusDeferringEnvironmentSceneSettingFromScene:v3 withSBAncestor:v4 toScene:v5 withSBAncestor:v6 target:v7 activeDisplayChanging:*(a1 + 80)];
}

- (void)stopEnforcing
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not implemented"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"SBKeyboardFocusSceneSettingPolicyEnforcer.m";
    v16 = 1024;
    v17 = 72;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidate
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not implemented"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"SBKeyboardFocusSceneSettingPolicyEnforcer.m";
    v16 = 1024;
    v17 = 79;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_moveKeyboardFocusDeferringEnvironmentSceneSettingFromScene:(id)scene withSBAncestor:(id)ancestor toScene:(id)toScene withSBAncestor:(id)bAncestor target:(id)target activeDisplayChanging:(BOOL)changing
{
  sceneCopy = scene;
  toSceneCopy = toScene;
  bAncestorCopy = bAncestor;
  targetCopy = target;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (toSceneCopy)
  {
    identityToken = [toSceneCopy identityToken];
    identityToken2 = [bAncestorCopy identityToken];
    v18 = [identityToken isEqual:identityToken2];
  }

  else
  {
    v18 = 0;
  }

  if (sceneCopy)
  {
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __172__SBKeyboardFocusSceneSettingPolicyEnforcer__moveKeyboardFocusDeferringEnvironmentSceneSettingFromScene_withSBAncestor_toScene_withSBAncestor_target_activeDisplayChanging___block_invoke;
    v35[3] = &unk_2783B5F70;
    v36 = sceneCopy;
    [v36 updateUISettingsWithBlock:v35];
  }

  if (toSceneCopy)
  {
    keyboardFocusEnvironment = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
    if (!(v18 & 1 | !changing))
    {
      uiSettings = [bAncestorCopy uiSettings];
      targetOfEventDeferringEnvironments = [uiSettings targetOfEventDeferringEnvironments];

      if (([targetOfEventDeferringEnvironments containsObject:keyboardFocusEnvironment] & 1) == 0)
      {
        if (targetOfEventDeferringEnvironments)
        {
          v22 = [targetOfEventDeferringEnvironments setByAddingObject:keyboardFocusEnvironment];
        }

        else
        {
          v22 = [MEMORY[0x277CBEB98] setWithObject:keyboardFocusEnvironment];
        }

        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __172__SBKeyboardFocusSceneSettingPolicyEnforcer__moveKeyboardFocusDeferringEnvironmentSceneSettingFromScene_withSBAncestor_toScene_withSBAncestor_target_activeDisplayChanging___block_invoke_9;
        v32[3] = &unk_2783B5F98;
        v33 = bAncestorCopy;
        targetOfEventDeferringEnvironments = v22;
        v34 = targetOfEventDeferringEnvironments;
        [v33 updateUISettingsWithBlock:v32];
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __172__SBKeyboardFocusSceneSettingPolicyEnforcer__moveKeyboardFocusDeferringEnvironmentSceneSettingFromScene_withSBAncestor_toScene_withSBAncestor_target_activeDisplayChanging___block_invoke_10;
      v28[3] = &unk_2783B5FE8;
      v29 = bAncestorCopy;
      v30 = targetOfEventDeferringEnvironments;
      v31 = keyboardFocusEnvironment;
      v24 = targetOfEventDeferringEnvironments;
      [v29 updateUISettingsWithBlock:v28];
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __172__SBKeyboardFocusSceneSettingPolicyEnforcer__moveKeyboardFocusDeferringEnvironmentSceneSettingFromScene_withSBAncestor_toScene_withSBAncestor_target_activeDisplayChanging___block_invoke_2;
    v25[3] = &unk_2783B5F98;
    v26 = toSceneCopy;
    v27 = keyboardFocusEnvironment;
    v23 = keyboardFocusEnvironment;
    [v26 updateUISettingsWithBlock:v25];
  }

  else
  {
    v23 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SBKeyboardFocusSceneSettingPolicyEnforcer _moveKeyboardFocusDeferringEnvironmentSceneSettingFromScene:targetCopy withSBAncestor:v23 toScene:? withSBAncestor:? target:? activeDisplayChanging:?];
    }
  }
}

void __172__SBKeyboardFocusSceneSettingPolicyEnforcer__moveKeyboardFocusDeferringEnvironmentSceneSettingFromScene_withSBAncestor_toScene_withSBAncestor_target_activeDisplayChanging___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) identifier];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "rules: (scene setting) REMOVED keyboardFocus environment from scene: %{public}@", &v6, 0xCu);
  }

  [v3 setTargetOfEventDeferringEnvironments:0];
}

void __172__SBKeyboardFocusSceneSettingPolicyEnforcer__moveKeyboardFocusDeferringEnvironmentSceneSettingFromScene_withSBAncestor_toScene_withSBAncestor_target_activeDisplayChanging___block_invoke_9(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) identifier];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "rules: (scene setting) temporarily added keyboardFocus environment to SpringBoard scene: %{public}@", &v6, 0xCu);
  }

  [v3 setTargetOfEventDeferringEnvironments:*(a1 + 40)];
}

void __172__SBKeyboardFocusSceneSettingPolicyEnforcer__moveKeyboardFocusDeferringEnvironmentSceneSettingFromScene_withSBAncestor_toScene_withSBAncestor_target_activeDisplayChanging___block_invoke_10(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) identifier];
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "rules: (scene setting) immediately removed keyboardFocus environment from SpringBoard scene: %{public}@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __172__SBKeyboardFocusSceneSettingPolicyEnforcer__moveKeyboardFocusDeferringEnvironmentSceneSettingFromScene_withSBAncestor_toScene_withSBAncestor_target_activeDisplayChanging___block_invoke_11;
  v8[3] = &unk_2783B5FC0;
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v7 = [v6 objectsPassingTest:v8];
  [v3 setTargetOfEventDeferringEnvironments:v7];
}

void __172__SBKeyboardFocusSceneSettingPolicyEnforcer__moveKeyboardFocusDeferringEnvironmentSceneSettingFromScene_withSBAncestor_toScene_withSBAncestor_target_activeDisplayChanging___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) identifier];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "rules: (scene setting) ADDED keyboardFocus environment to scene: %{public}@", &v7, 0xCu);
  }

  v6 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
  [v3 setTargetOfEventDeferringEnvironments:v6];
}

- (FBScene)targetSceneForKeyboardFocusDeferring
{
  WeakRetained = objc_loadWeakRetained(&self->_targetSceneForKeyboardFocusDeferring);

  return WeakRetained;
}

- (FBScene)sbWindowSceneAncestorForTargetScene
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowSceneAncestorForTargetScene);

  return WeakRetained;
}

- (void)enforce:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 keyboardFocusTarget];
  v6 = [a2 identityToken];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "rules: (scene setting) couldn't find scene with target: %{public}@, leaving scene setting on %{public}@", &v7, 0x16u);
}

- (void)_moveKeyboardFocusDeferringEnvironmentSceneSettingFromScene:(uint64_t)a1 withSBAncestor:(NSObject *)a2 toScene:withSBAncestor:target:activeDisplayChanging:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "rules: (scene setting) keyboardFocus environment scene not found for target: %{public}@", &v2, 0xCu);
}

@end