@interface SBSystemKeyCommandScenePolicyEnforcer
- (SBSystemKeyCommandScenePolicyEnforcer)initWithSceneProvider:(id)a3 debugName:(id)a4 deliveryManager:(id)a5;
- (void)enforce:(id)a3;
- (void)stopEnforcing;
@end

@implementation SBSystemKeyCommandScenePolicyEnforcer

- (SBSystemKeyCommandScenePolicyEnforcer)initWithSceneProvider:(id)a3 debugName:(id)a4 deliveryManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = SBSystemKeyCommandScenePolicyEnforcer;
  v12 = [(SBSystemKeyCommandScenePolicyEnforcer *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deliveryManager, a5);
    v14 = [v10 copy];
    debugName = v13->_debugName;
    v13->_debugName = v14;

    objc_storeStrong(&v13->_sceneProvider, a3);
  }

  return v13;
}

- (void)enforce:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(SBKeyboardFocusSceneProviding *)self->_sceneProvider spotlightScene];
  v6 = [SBKeyboardFocusTarget targetForFBScene:v5];
  v7 = _os_feature_enabled_impl();
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || ([v4 keyboardFocusTarget], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v6, "isEqual:", v9), v9, !v10))
  {
    if (self->_spotlightSystemShortcutFocusRule)
    {
      v21 = SBLogKeyboardFocus();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [MEMORY[0x277D66B00] systemKeyCommandOverlayEnvironment];
        *buf = 138543362;
        v36 = v22;
        _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "rules: (systemKeyCommandOverlay) Spotlight is no longer focused, dropping (%{public}@) -> spotlight", buf, 0xCu);
      }

      [(BSInvalidatable *)self->_spotlightSystemShortcutFocusRule invalidate];
      spotlightSystemShortcutFocusRule = self->_spotlightSystemShortcutFocusRule;
      self->_spotlightSystemShortcutFocusRule = 0;
      goto LABEL_13;
    }
  }

  else if (!self->_spotlightSystemShortcutFocusRule)
  {
    spotlightSystemShortcutFocusRule = [v4 sbWindowSceneAncestor];
    v12 = objc_opt_new();
    v13 = [MEMORY[0x277D66B00] systemKeyCommandOverlayEnvironment];
    v34 = v12;
    [v12 setEnvironment:v13];

    v14 = [spotlightSystemShortcutFocusRule _FBSScene];
    v15 = [v14 settings];
    v16 = [v15 sb_displayConfigurationForSceneManagers];
    v17 = [v16 isExternal];
    v18 = MEMORY[0x277CF0698];
    if (v17)
    {
      v19 = [v16 hardwareIdentifier];
      v20 = [v18 displayWithHardwareIdentifier:v19];
    }

    else
    {
      v20 = [MEMORY[0x277CF0698] builtinDisplay];
    }

    [v34 setDisplay:v20];
    v23 = [spotlightSystemShortcutFocusRule _FBSScene];
    v24 = [v23 identityToken];

    v25 = MEMORY[0x277CF0650];
    v26 = [v24 stringRepresentation];
    v27 = [v25 tokenForString:v26];
    [v34 setToken:v27];

    v28 = [v4 keyboardFocusTarget];
    v29 = [(SBKeyboardFocusTarget *)v28 deferringTarget];

    v30 = [(BKSHIDEventDeliveryManager *)self->_deliveryManager deferEventsMatchingPredicate:v34 toTarget:v29 withReason:@"SpringBoard: systemKeyCommandOverlayEnvironment outbound to Spotlight"];
    v31 = self->_spotlightSystemShortcutFocusRule;
    self->_spotlightSystemShortcutFocusRule = v30;

    v32 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [MEMORY[0x277D66B00] systemKeyCommandOverlayEnvironment];
      *buf = 138543618;
      v36 = v33;
      v37 = 2114;
      v38 = v29;
      _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "rules: (systemKeyCommandOverlay) Spotlight is focused, deferring (%{public}@) -> %{public}@", buf, 0x16u);
    }

LABEL_13:
  }
}

- (void)stopEnforcing
{
  [(BSInvalidatable *)self->_spotlightSystemShortcutFocusRule invalidate];
  spotlightSystemShortcutFocusRule = self->_spotlightSystemShortcutFocusRule;
  self->_spotlightSystemShortcutFocusRule = 0;
}

@end