@interface SBSceneLayoutWhitePointAdaptationController
+ (BOOL)_isInteractiveUpdateEnabled;
+ (double)_defaultAnimationDuration;
+ (id)_defaultAnimationSettings;
+ (id)_harmonySettings;
+ (id)sharedInstance;
- (SBSceneLayoutWhitePointAdaptationController)init;
- (SBWindowScene)windowScene;
- (id)_applicationSceneHandleForLayoutElement:(id)element;
- (id)_deviceSceneHandlesFromEntities:(id)entities;
- (id)_whitePointAdaptivityStylesForLayoutState;
- (int64_t)_whitePointAdaptivityStyleForLayoutElement:(id)element;
- (int64_t)_whitePointAdaptivityStyleForSceneHandle:(id)handle;
- (void)_updateWhitePointAdaptationStrengthWithAnimationSettings:(id)settings;
- (void)_updateWhitePointAdaptationStrengthWithFromApplicationScenes:(id)scenes toApplicationScenes:(id)applicationScenes fromPercentage:(double)percentage toPercentage:(double)toPercentage animationSettings:(id)settings interactive:(BOOL)interactive;
- (void)_updateWhitePointAdaptationStrengthWithWorkspaceTransitionRequest:(id)request fromPercentage:(double)percentage toPercentage:(double)toPercentage animationSettings:(id)settings cancelled:(BOOL)cancelled interactive:(BOOL)interactive;
- (void)updateWhitePointAdaptationStrength;
- (void)updateWhitePointAdaptationStrengthWithAnimationSettings:(id)settings;
- (void)updateWhitePointAdaptationStrengthWithFromApplicationSceneEntities:(id)entities toApplicationSceneEntities:(id)sceneEntities fromPercentage:(double)percentage toPercentage:(double)toPercentage animationSettings:(id)settings interactive:(BOOL)interactive;
- (void)updateWhitePointAdaptationStrengthWithWorkspaceTransitionRequest:(id)request animationTransitionContext:(id)context;
@end

@implementation SBSceneLayoutWhitePointAdaptationController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_18 != -1)
  {
    +[SBSceneLayoutWhitePointAdaptationController sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_11;

  return v3;
}

- (void)updateWhitePointAdaptationStrength
{
  v3 = SBLogCommon();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SBSceneLayoutWhitePointAdaptationController updateWhitePointAdaptationStrength];
    }

    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SBSceneLayoutWhitePointAdaptationController updateWhitePointAdaptationStrength];
    }
  }

  v7 = +[SBSceneLayoutWhitePointAdaptationController _defaultAnimationSettings];
  [(SBSceneLayoutWhitePointAdaptationController *)self _updateWhitePointAdaptationStrengthWithAnimationSettings:v7];
}

+ (id)_defaultAnimationSettings
{
  v2 = MEMORY[0x277CF0B70];
  [self _defaultAnimationDuration];

  return [v2 settingsWithDuration:?];
}

+ (double)_defaultAnimationDuration
{
  _harmonySettings = [self _harmonySettings];
  [_harmonySettings whitePointAdaptationUpdateDefaultDuration];
  v4 = v3;

  return v4;
}

+ (id)_harmonySettings
{
  v2 = +[SBHarmonyController sharedInstance];
  harmonySettings = [v2 harmonySettings];

  return harmonySettings;
}

- (id)_whitePointAdaptivityStylesForLayoutState
{
  v16[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  switcherController = [WeakRetained switcherController];

  if ([switcherController unlockedEnvironmentMode] == 2)
  {
    v5 = 0;
  }

  else
  {
    sceneHandleForWhitePointAdaptivityStyle = [switcherController sceneHandleForWhitePointAdaptivityStyle];
    v7 = [(SBSceneLayoutWhitePointAdaptationController *)self _whitePointAdaptivityStyleForSceneHandle:sceneHandleForWhitePointAdaptivityStyle];
    if (v7 > 4)
    {
      v5 = 0;
    }

    else
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
      v16[0] = v8;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    }

    sceneIdentifier = [sceneHandleForWhitePointAdaptivityStyle sceneIdentifier];
    v10 = sceneIdentifier;
    if (sceneIdentifier)
    {
      v11 = sceneIdentifier;
    }

    else
    {
      v11 = @"NONE";
    }

    SBKeyValueLog(@"SCENE IDENTIFIER", v11, 0);

    v12 = _UIStringFromWhitePointAdaptivityStyle();
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = @"NONE";
    }

    SBKeyValueLog(@"WHITE POINT ADAPTIVITY STYLE", v14, 1);
  }

  return v5;
}

void __61__SBSceneLayoutWhitePointAdaptationController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBSceneLayoutWhitePointAdaptationController);
  v1 = sharedInstance___sharedInstance_11;
  sharedInstance___sharedInstance_11 = v0;
}

- (SBSceneLayoutWhitePointAdaptationController)init
{
  v3 = +[SBHarmonyController sharedInstance];
  supportsWhitePointAdaptation = [v3 supportsWhitePointAdaptation];

  if (supportsWhitePointAdaptation)
  {
    v7.receiver = self;
    v7.super_class = SBSceneLayoutWhitePointAdaptationController;
    self = [(SBSceneLayoutWhitePointAdaptationController *)&v7 init];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)updateWhitePointAdaptationStrengthWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  v5 = SBLogCommon();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SBSceneLayoutWhitePointAdaptationController updateWhitePointAdaptationStrength];
    }

    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SBSceneLayoutWhitePointAdaptationController updateWhitePointAdaptationStrengthWithAnimationSettings:];
    }
  }

  if (settingsCopy)
  {
    [(SBSceneLayoutWhitePointAdaptationController *)self _updateWhitePointAdaptationStrengthWithAnimationSettings:settingsCopy];
  }

  else
  {
    v9 = +[SBSceneLayoutWhitePointAdaptationController _defaultAnimationSettings];
    [(SBSceneLayoutWhitePointAdaptationController *)self _updateWhitePointAdaptationStrengthWithAnimationSettings:v9];
  }
}

- (void)updateWhitePointAdaptationStrengthWithFromApplicationSceneEntities:(id)entities toApplicationSceneEntities:(id)sceneEntities fromPercentage:(double)percentage toPercentage:(double)toPercentage animationSettings:(id)settings interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  settingsCopy = settings;
  sceneEntitiesCopy = sceneEntities;
  v17 = [(SBSceneLayoutWhitePointAdaptationController *)self _deviceSceneHandlesFromEntities:entities];
  v16 = [(SBSceneLayoutWhitePointAdaptationController *)self _deviceSceneHandlesFromEntities:sceneEntitiesCopy];

  [(SBSceneLayoutWhitePointAdaptationController *)self _updateWhitePointAdaptationStrengthWithFromApplicationScenes:v17 toApplicationScenes:v16 fromPercentage:settingsCopy toPercentage:interactiveCopy animationSettings:percentage interactive:toPercentage];
}

- (void)updateWhitePointAdaptationStrengthWithWorkspaceTransitionRequest:(id)request animationTransitionContext:(id)context
{
  contextCopy = context;
  requestCopy = request;
  isInteractive = [contextCopy isInteractive];
  isCancelled = [contextCopy isCancelled];
  v9 = isCancelled;
  if (isInteractive)
  {
    [contextCopy percentComplete];
    v11 = v10;
    v12 = v10;
  }

  else
  {
    if (isCancelled)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    if (isCancelled)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }
  }

  transitionAnimationFactory = [contextCopy transitionAnimationFactory];
  settings = [transitionAnimationFactory settings];
  [(SBSceneLayoutWhitePointAdaptationController *)self _updateWhitePointAdaptationStrengthWithWorkspaceTransitionRequest:requestCopy fromPercentage:settings toPercentage:v9 animationSettings:isInteractive cancelled:v11 interactive:v12];
}

- (void)_updateWhitePointAdaptationStrengthWithAnimationSettings:(id)settings
{
  v35[1] = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  transientOverlayPresenter = [WeakRetained transientOverlayPresenter];
  preferredWhitePointAdaptivityStyleValue = [transientOverlayPresenter preferredWhitePointAdaptivityStyleValue];

  if (preferredWhitePointAdaptivityStyleValue)
  {
    integerValue = [preferredWhitePointAdaptivityStyleValue integerValue];
    if (integerValue > 4)
    {
      v10 = &unk_28336E1D8;
    }

    else
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
      v35[0] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    }

    v12 = _UIStringFromWhitePointAdaptivityStyle();
    _whitePointAdaptivityStylesForLayoutState = v12;
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = @"NONE";
    }

    SBKeyValueLog(@"TRANSIENT OVERLAY WHITE POINT ADAPTIVITY STYLE", v13, 1);
  }

  else
  {
    _whitePointAdaptivityStylesForLayoutState = [(SBSceneLayoutWhitePointAdaptationController *)self _whitePointAdaptivityStylesForLayoutState];
    if ([_whitePointAdaptivityStylesForLayoutState count])
    {
      v10 = _whitePointAdaptivityStylesForLayoutState;
    }

    else
    {
      v10 = &unk_28336E1D8;
    }
  }

  v14 = SBLogCommon();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);

  if (v15)
  {
    array = [MEMORY[0x277CBEB18] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v30 + 1) + 8 * i) integerValue];
          v22 = _UIStringFromWhitePointAdaptivityStyle();
          v23 = v22;
          if (v22)
          {
            v24 = v22;
          }

          else
          {
            v24 = @"NONE";
          }

          [array addObject:v24];
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v19);
    }

    v25 = [array componentsJoinedByString:{@", "}];
    SBKeyValueLog(@"SET WHITE POINT ADAPTIVITY STYLE", v25, 0);

    [settingsCopy duration];
    SBKeyDoubleValueLog(@"ANIMATION DURATION", 1, v26);
    [settingsCopy delay];
    SBKeyDoubleValueLog(@"ANIMATION DELAY", 1, v27);
    v28 = SBLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [SBSceneLayoutWhitePointAdaptationController _updateWhitePointAdaptationStrengthWithAnimationSettings:];
    }
  }

  v29 = +[SBHarmonyController sharedInstance];
  [v29 setWhitePointAdaptivityStyleWithStyles:v10 animationSettings:settingsCopy];
}

- (void)_updateWhitePointAdaptationStrengthWithWorkspaceTransitionRequest:(id)request fromPercentage:(double)percentage toPercentage:(double)toPercentage animationSettings:(id)settings cancelled:(BOOL)cancelled interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  cancelledCopy = cancelled;
  settingsCopy = settings;
  if (request)
  {
    v32 = settingsCopy;
    applicationContext = [request applicationContext];
    v16 = applicationContext;
    if (!applicationContext)
    {
      v19 = 0;
      v20 = 0;
      if (!cancelledCopy)
      {
        goto LABEL_18;
      }

LABEL_16:
      if (!interactiveCopy)
      {
        selfCopy2 = self;
        v26 = v19;
        v27 = v20;
        percentageCopy2 = percentage;
        toPercentageCopy2 = toPercentage;
        v30 = v32;
        v31 = 0;
LABEL_19:
        [(SBSceneLayoutWhitePointAdaptationController *)selfCopy2 _updateWhitePointAdaptationStrengthWithFromApplicationScenes:v26 toApplicationScenes:v27 fromPercentage:v30 toPercentage:v31 animationSettings:percentageCopy2 interactive:toPercentageCopy2];

        settingsCopy = v32;
        goto LABEL_20;
      }

LABEL_18:
      selfCopy2 = self;
      v26 = v20;
      v27 = v19;
      percentageCopy2 = percentage;
      toPercentageCopy2 = toPercentage;
      v30 = v32;
      v31 = interactiveCopy;
      goto LABEL_19;
    }

    previousLayoutState = [applicationContext previousLayoutState];
    objc_opt_class();
    v18 = (objc_opt_isKindOfClass() & 1) != 0 && [previousLayoutState unlockedEnvironmentMode] == 2;
    layoutState = [v16 layoutState];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [layoutState unlockedEnvironmentMode] == 2;
      if (!v18)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v22 = 0;
      if (!v18)
      {
LABEL_10:
        previousApplicationSceneEntities = [v16 previousApplicationSceneEntities];
        v20 = [(SBSceneLayoutWhitePointAdaptationController *)self _deviceSceneHandlesFromEntities:previousApplicationSceneEntities];

        if (!v22)
        {
LABEL_11:
          applicationSceneEntities = [v16 applicationSceneEntities];
          v19 = [(SBSceneLayoutWhitePointAdaptationController *)self _deviceSceneHandlesFromEntities:applicationSceneEntities];

          goto LABEL_15;
        }

LABEL_14:
        v19 = 0;
LABEL_15:

        if (!cancelledCopy)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }
    }

    v20 = 0;
    if (!v22)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

LABEL_20:
}

- (id)_deviceSceneHandlesFromEntities:(id)entities
{
  v22 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  v4 = [MEMORY[0x277CBEB58] set];
  if ([entitiesCopy count])
  {
    v16 = v4;
    v5 = [MEMORY[0x277CBEB58] set];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = entitiesCopy;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = objc_opt_class();
          sceneHandle = [v11 sceneHandle];
          v14 = SBSafeCast(v12, sceneHandle);

          if (v14)
          {
            [v5 addObject:v14];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v4 = [MEMORY[0x277CBEB98] setWithSet:v5];
  }

  return v4;
}

- (void)_updateWhitePointAdaptationStrengthWithFromApplicationScenes:(id)scenes toApplicationScenes:(id)applicationScenes fromPercentage:(double)percentage toPercentage:(double)toPercentage animationSettings:(id)settings interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  scenesCopy = scenes;
  applicationScenesCopy = applicationScenes;
  settingsCopy = settings;
  if (!interactiveCopy || +[SBSceneLayoutWhitePointAdaptationController _isInteractiveUpdateEnabled])
  {
    v16 = SBLogCommon();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v17)
    {
      v18 = SBLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [SBSceneLayoutWhitePointAdaptationController updateWhitePointAdaptationStrength];
      }

      v19 = SBLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [SBSceneLayoutWhitePointAdaptationController _updateWhitePointAdaptationStrengthWithFromApplicationScenes:toApplicationScenes:fromPercentage:toPercentage:animationSettings:interactive:];
      }

      v21 = __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke(v20, scenesCopy);
      v22 = [v21 componentsJoinedByString:{@", "}];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = @"NONE";
      }

      SBKeyValueLog(@"FROM APPLICATIONS", v24, 0);

      v26 = __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke_2(v25, scenesCopy);
      v27 = [v26 componentsJoinedByString:{@", "}];
      v28 = v27;
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = @"NONE";
      }

      SBKeyValueLog(@"WHITE POINT ADAPTIVITY STYLE", v29, 1);

      v31 = __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke(v30, applicationScenesCopy);
      v32 = [v31 componentsJoinedByString:{@", "}];
      v33 = v32;
      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = @"NONE";
      }

      SBKeyValueLog(@"TO APPLICATIONS", v34, 0);

      v36 = __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke_2(v35, applicationScenesCopy);
      v37 = [v36 componentsJoinedByString:{@", "}];
      v38 = v37;
      if (v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = @"NONE";
      }

      SBKeyValueLog(@"WHITE POINT ADAPTIVITY STYLE", v39, 1);
    }

    v40 = [scenesCopy count];
    if (v40)
    {
      v41 = __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke_3(v40, scenesCopy);
    }

    else
    {
      v41 = &unk_28336E1F0;
    }

    v42 = [applicationScenesCopy count];
    if (v42)
    {
      v43 = __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke_3(v42, applicationScenesCopy);
    }

    else
    {
      v43 = &unk_28336E208;
    }

    v44 = SBLogCommon();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG);

    if (v45)
    {
      v46 = SBLogCommon();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        [SBSceneLayoutWhitePointAdaptationController _updateWhitePointAdaptationStrengthWithFromApplicationScenes:toApplicationScenes:fromPercentage:toPercentage:animationSettings:interactive:];
      }

      if (interactiveCopy)
      {
        v47 = @"INTERACTIVE";
      }

      else
      {
        v47 = @"STANDARD";
      }

      SBKeyValueLog(@"TYPE", v47, 1);
      v49 = __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke_4(v48, v41);
      v50 = [v49 componentsJoinedByString:{@", "}];
      v51 = v50;
      if (v50)
      {
        v52 = v50;
      }

      else
      {
        v52 = @"NONE";
      }

      SBKeyValueLog(@"FROM", v52, 1);

      SBKeyDoubleValueLog(@"PERCENTAGE", 2, percentage);
      v54 = __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke_4(v53, v43);
      v55 = [v54 componentsJoinedByString:{@", "}];
      v56 = v55;
      if (v55)
      {
        v57 = v55;
      }

      else
      {
        v57 = @"NONE";
      }

      SBKeyValueLog(@"TO", v57, 1);

      SBKeyDoubleValueLog(@"PERCENTAGE", 2, toPercentage);
      [settingsCopy duration];
      SBKeyDoubleValueLog(@"ANIMATION DURATION", 1, v58);
      [settingsCopy delay];
      SBKeyDoubleValueLog(@"ANIMATION DELAY", 1, v59);
      v60 = SBLogCommon();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        [SBSceneLayoutWhitePointAdaptationController _updateWhitePointAdaptationStrengthWithAnimationSettings:];
      }
    }

    v61 = +[SBHarmonyController sharedInstance];
    [v61 transitionFromWhitePointAdaptivityStyleWithStyles:v41 toWhitePointAdaptivityStyleWithStyles:v43 fromPercentage:settingsCopy toPercentage:percentage animationSettings:toPercentage];
  }
}

id __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 count])
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v12 + 1) + 8 * i) sceneIdentifier];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = [MEMORY[0x277CBEA60] arrayWithArray:v3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 count])
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v12 + 1) + 8 * i) whitePointAdaptivityStyle];
          v9 = _UIStringFromWhitePointAdaptivityStyle();
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = [MEMORY[0x277CBEA60] arrayWithArray:v3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "whitePointAdaptivityStyle", v12)}];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  return v10;
}

id __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke_4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 count])
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v14 + 1) + 8 * i) integerValue];
          v9 = _UIStringFromWhitePointAdaptivityStyle();
          v10 = v9;
          if (v9)
          {
            v11 = v9;
          }

          else
          {
            v11 = @"NONE";
          }

          [v3 addObject:v11];
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    v12 = [MEMORY[0x277CBEA60] arrayWithArray:v3];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)_whitePointAdaptivityStyleForLayoutElement:(id)element
{
  if (!element)
  {
    return -1;
  }

  v4 = [(SBSceneLayoutWhitePointAdaptationController *)self _applicationSceneHandleForLayoutElement:?];
  v5 = [(SBSceneLayoutWhitePointAdaptationController *)self _whitePointAdaptivityStyleForSceneHandle:v4];

  return v5;
}

- (int64_t)_whitePointAdaptivityStyleForSceneHandle:(id)handle
{
  if (handle)
  {
    return [handle whitePointAdaptivityStyle];
  }

  else
  {
    return -1;
  }
}

- (id)_applicationSceneHandleForLayoutElement:(id)element
{
  if (element)
  {
    workspaceEntity = [element workspaceEntity];
    deviceApplicationSceneEntity = [workspaceEntity deviceApplicationSceneEntity];
    sceneHandle = [deviceApplicationSceneEntity sceneHandle];
  }

  else
  {
    sceneHandle = 0;
  }

  return sceneHandle;
}

+ (BOOL)_isInteractiveUpdateEnabled
{
  _harmonySettings = [self _harmonySettings];
  whitePointAdaptationInteractiveUpdateEnabled = [_harmonySettings whitePointAdaptationInteractiveUpdateEnabled];

  return whitePointAdaptationInteractiveUpdateEnabled;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end