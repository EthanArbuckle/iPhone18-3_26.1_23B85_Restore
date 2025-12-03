@interface SBSystemKeyCommandScenePolicyEnforcer
- (SBSystemKeyCommandScenePolicyEnforcer)initWithSceneProvider:(id)provider debugName:(id)name deliveryManager:(id)manager;
- (void)enforce:(id)enforce;
- (void)stopEnforcing;
@end

@implementation SBSystemKeyCommandScenePolicyEnforcer

- (SBSystemKeyCommandScenePolicyEnforcer)initWithSceneProvider:(id)provider debugName:(id)name deliveryManager:(id)manager
{
  providerCopy = provider;
  nameCopy = name;
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = SBSystemKeyCommandScenePolicyEnforcer;
  v12 = [(SBSystemKeyCommandScenePolicyEnforcer *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deliveryManager, manager);
    v14 = [nameCopy copy];
    debugName = v13->_debugName;
    v13->_debugName = v14;

    objc_storeStrong(&v13->_sceneProvider, provider);
  }

  return v13;
}

- (void)enforce:(id)enforce
{
  v39 = *MEMORY[0x277D85DE8];
  enforceCopy = enforce;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  spotlightScene = [(SBKeyboardFocusSceneProviding *)self->_sceneProvider spotlightScene];
  v6 = [SBKeyboardFocusTarget targetForFBScene:spotlightScene];
  v7 = _os_feature_enabled_impl();
  if (spotlightScene)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || ([enforceCopy keyboardFocusTarget], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v6, "isEqual:", v9), v9, !v10))
  {
    if (self->_spotlightSystemShortcutFocusRule)
    {
      v21 = SBLogKeyboardFocus();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        systemKeyCommandOverlayEnvironment = [MEMORY[0x277D66B00] systemKeyCommandOverlayEnvironment];
        *buf = 138543362;
        v36 = systemKeyCommandOverlayEnvironment;
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
    spotlightSystemShortcutFocusRule = [enforceCopy sbWindowSceneAncestor];
    v12 = objc_opt_new();
    systemKeyCommandOverlayEnvironment2 = [MEMORY[0x277D66B00] systemKeyCommandOverlayEnvironment];
    v34 = v12;
    [v12 setEnvironment:systemKeyCommandOverlayEnvironment2];

    _FBSScene = [spotlightSystemShortcutFocusRule _FBSScene];
    settings = [_FBSScene settings];
    sb_displayConfigurationForSceneManagers = [settings sb_displayConfigurationForSceneManagers];
    isExternal = [sb_displayConfigurationForSceneManagers isExternal];
    v18 = MEMORY[0x277CF0698];
    if (isExternal)
    {
      hardwareIdentifier = [sb_displayConfigurationForSceneManagers hardwareIdentifier];
      builtinDisplay = [v18 displayWithHardwareIdentifier:hardwareIdentifier];
    }

    else
    {
      builtinDisplay = [MEMORY[0x277CF0698] builtinDisplay];
    }

    [v34 setDisplay:builtinDisplay];
    _FBSScene2 = [spotlightSystemShortcutFocusRule _FBSScene];
    identityToken = [_FBSScene2 identityToken];

    v25 = MEMORY[0x277CF0650];
    stringRepresentation = [identityToken stringRepresentation];
    v27 = [v25 tokenForString:stringRepresentation];
    [v34 setToken:v27];

    keyboardFocusTarget = [enforceCopy keyboardFocusTarget];
    deferringTarget = [(SBKeyboardFocusTarget *)keyboardFocusTarget deferringTarget];

    v30 = [(BKSHIDEventDeliveryManager *)self->_deliveryManager deferEventsMatchingPredicate:v34 toTarget:deferringTarget withReason:@"SpringBoard: systemKeyCommandOverlayEnvironment outbound to Spotlight"];
    v31 = self->_spotlightSystemShortcutFocusRule;
    self->_spotlightSystemShortcutFocusRule = v30;

    v32 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      systemKeyCommandOverlayEnvironment3 = [MEMORY[0x277D66B00] systemKeyCommandOverlayEnvironment];
      *buf = 138543618;
      v36 = systemKeyCommandOverlayEnvironment3;
      v37 = 2114;
      v38 = deferringTarget;
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