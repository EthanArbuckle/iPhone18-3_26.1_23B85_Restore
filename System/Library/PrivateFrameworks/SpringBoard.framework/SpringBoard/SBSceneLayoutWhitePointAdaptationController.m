@interface SBSceneLayoutWhitePointAdaptationController
+ (BOOL)_isInteractiveUpdateEnabled;
+ (double)_defaultAnimationDuration;
+ (id)_defaultAnimationSettings;
+ (id)_harmonySettings;
+ (id)sharedInstance;
- (SBSceneLayoutWhitePointAdaptationController)init;
- (SBWindowScene)windowScene;
- (id)_applicationSceneHandleForLayoutElement:(id)a3;
- (id)_deviceSceneHandlesFromEntities:(id)a3;
- (id)_whitePointAdaptivityStylesForLayoutState;
- (int64_t)_whitePointAdaptivityStyleForLayoutElement:(id)a3;
- (int64_t)_whitePointAdaptivityStyleForSceneHandle:(id)a3;
- (void)_updateWhitePointAdaptationStrengthWithAnimationSettings:(id)a3;
- (void)_updateWhitePointAdaptationStrengthWithFromApplicationScenes:(id)a3 toApplicationScenes:(id)a4 fromPercentage:(double)a5 toPercentage:(double)a6 animationSettings:(id)a7 interactive:(BOOL)a8;
- (void)_updateWhitePointAdaptationStrengthWithWorkspaceTransitionRequest:(id)a3 fromPercentage:(double)a4 toPercentage:(double)a5 animationSettings:(id)a6 cancelled:(BOOL)a7 interactive:(BOOL)a8;
- (void)updateWhitePointAdaptationStrength;
- (void)updateWhitePointAdaptationStrengthWithAnimationSettings:(id)a3;
- (void)updateWhitePointAdaptationStrengthWithFromApplicationSceneEntities:(id)a3 toApplicationSceneEntities:(id)a4 fromPercentage:(double)a5 toPercentage:(double)a6 animationSettings:(id)a7 interactive:(BOOL)a8;
- (void)updateWhitePointAdaptationStrengthWithWorkspaceTransitionRequest:(id)a3 animationTransitionContext:(id)a4;
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
  [a1 _defaultAnimationDuration];

  return [v2 settingsWithDuration:?];
}

+ (double)_defaultAnimationDuration
{
  v2 = [a1 _harmonySettings];
  [v2 whitePointAdaptationUpdateDefaultDuration];
  v4 = v3;

  return v4;
}

+ (id)_harmonySettings
{
  v2 = +[SBHarmonyController sharedInstance];
  v3 = [v2 harmonySettings];

  return v3;
}

- (id)_whitePointAdaptivityStylesForLayoutState
{
  v16[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v4 = [WeakRetained switcherController];

  if ([v4 unlockedEnvironmentMode] == 2)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 sceneHandleForWhitePointAdaptivityStyle];
    v7 = [(SBSceneLayoutWhitePointAdaptationController *)self _whitePointAdaptivityStyleForSceneHandle:v6];
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

    v9 = [v6 sceneIdentifier];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
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
  v4 = [v3 supportsWhitePointAdaptation];

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = SBSceneLayoutWhitePointAdaptationController;
    self = [(SBSceneLayoutWhitePointAdaptationController *)&v7 init];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateWhitePointAdaptationStrengthWithAnimationSettings:(id)a3
{
  v4 = a3;
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

  if (v4)
  {
    [(SBSceneLayoutWhitePointAdaptationController *)self _updateWhitePointAdaptationStrengthWithAnimationSettings:v4];
  }

  else
  {
    v9 = +[SBSceneLayoutWhitePointAdaptationController _defaultAnimationSettings];
    [(SBSceneLayoutWhitePointAdaptationController *)self _updateWhitePointAdaptationStrengthWithAnimationSettings:v9];
  }
}

- (void)updateWhitePointAdaptationStrengthWithFromApplicationSceneEntities:(id)a3 toApplicationSceneEntities:(id)a4 fromPercentage:(double)a5 toPercentage:(double)a6 animationSettings:(id)a7 interactive:(BOOL)a8
{
  v8 = a8;
  v14 = a7;
  v15 = a4;
  v17 = [(SBSceneLayoutWhitePointAdaptationController *)self _deviceSceneHandlesFromEntities:a3];
  v16 = [(SBSceneLayoutWhitePointAdaptationController *)self _deviceSceneHandlesFromEntities:v15];

  [(SBSceneLayoutWhitePointAdaptationController *)self _updateWhitePointAdaptationStrengthWithFromApplicationScenes:v17 toApplicationScenes:v16 fromPercentage:v14 toPercentage:v8 animationSettings:a5 interactive:a6];
}

- (void)updateWhitePointAdaptationStrengthWithWorkspaceTransitionRequest:(id)a3 animationTransitionContext:(id)a4
{
  v15 = a4;
  v6 = a3;
  v7 = [v15 isInteractive];
  v8 = [v15 isCancelled];
  v9 = v8;
  if (v7)
  {
    [v15 percentComplete];
    v11 = v10;
    v12 = v10;
  }

  else
  {
    if (v8)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    if (v8)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }
  }

  v13 = [v15 transitionAnimationFactory];
  v14 = [v13 settings];
  [(SBSceneLayoutWhitePointAdaptationController *)self _updateWhitePointAdaptationStrengthWithWorkspaceTransitionRequest:v6 fromPercentage:v14 toPercentage:v9 animationSettings:v7 cancelled:v11 interactive:v12];
}

- (void)_updateWhitePointAdaptationStrengthWithAnimationSettings:(id)a3
{
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v6 = [WeakRetained transientOverlayPresenter];
  v7 = [v6 preferredWhitePointAdaptivityStyleValue];

  if (v7)
  {
    v8 = [v7 integerValue];
    if (v8 > 4)
    {
      v10 = &unk_28336E1D8;
    }

    else
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      v35[0] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    }

    v12 = _UIStringFromWhitePointAdaptivityStyle();
    v11 = v12;
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
    v11 = [(SBSceneLayoutWhitePointAdaptationController *)self _whitePointAdaptivityStylesForLayoutState];
    if ([v11 count])
    {
      v10 = v11;
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
    v16 = [MEMORY[0x277CBEB18] array];
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

          [v16 addObject:v24];
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v19);
    }

    v25 = [v16 componentsJoinedByString:{@", "}];
    SBKeyValueLog(@"SET WHITE POINT ADAPTIVITY STYLE", v25, 0);

    [v4 duration];
    SBKeyDoubleValueLog(@"ANIMATION DURATION", 1, v26);
    [v4 delay];
    SBKeyDoubleValueLog(@"ANIMATION DELAY", 1, v27);
    v28 = SBLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [SBSceneLayoutWhitePointAdaptationController _updateWhitePointAdaptationStrengthWithAnimationSettings:];
    }
  }

  v29 = +[SBHarmonyController sharedInstance];
  [v29 setWhitePointAdaptivityStyleWithStyles:v10 animationSettings:v4];
}

- (void)_updateWhitePointAdaptationStrengthWithWorkspaceTransitionRequest:(id)a3 fromPercentage:(double)a4 toPercentage:(double)a5 animationSettings:(id)a6 cancelled:(BOOL)a7 interactive:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v14 = a6;
  if (a3)
  {
    v32 = v14;
    v15 = [a3 applicationContext];
    v16 = v15;
    if (!v15)
    {
      v19 = 0;
      v20 = 0;
      if (!v9)
      {
        goto LABEL_18;
      }

LABEL_16:
      if (!v8)
      {
        v25 = self;
        v26 = v19;
        v27 = v20;
        v28 = a4;
        v29 = a5;
        v30 = v32;
        v31 = 0;
LABEL_19:
        [(SBSceneLayoutWhitePointAdaptationController *)v25 _updateWhitePointAdaptationStrengthWithFromApplicationScenes:v26 toApplicationScenes:v27 fromPercentage:v30 toPercentage:v31 animationSettings:v28 interactive:v29];

        v14 = v32;
        goto LABEL_20;
      }

LABEL_18:
      v25 = self;
      v26 = v20;
      v27 = v19;
      v28 = a4;
      v29 = a5;
      v30 = v32;
      v31 = v8;
      goto LABEL_19;
    }

    v17 = [v15 previousLayoutState];
    objc_opt_class();
    v18 = (objc_opt_isKindOfClass() & 1) != 0 && [v17 unlockedEnvironmentMode] == 2;
    v21 = [v16 layoutState];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 unlockedEnvironmentMode] == 2;
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
        v23 = [v16 previousApplicationSceneEntities];
        v20 = [(SBSceneLayoutWhitePointAdaptationController *)self _deviceSceneHandlesFromEntities:v23];

        if (!v22)
        {
LABEL_11:
          v24 = [v16 applicationSceneEntities];
          v19 = [(SBSceneLayoutWhitePointAdaptationController *)self _deviceSceneHandlesFromEntities:v24];

          goto LABEL_15;
        }

LABEL_14:
        v19 = 0;
LABEL_15:

        if (!v9)
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

- (id)_deviceSceneHandlesFromEntities:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  if ([v3 count])
  {
    v16 = v4;
    v5 = [MEMORY[0x277CBEB58] set];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v3;
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
          v13 = [v11 sceneHandle];
          v14 = SBSafeCast(v12, v13);

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

- (void)_updateWhitePointAdaptationStrengthWithFromApplicationScenes:(id)a3 toApplicationScenes:(id)a4 fromPercentage:(double)a5 toPercentage:(double)a6 animationSettings:(id)a7 interactive:(BOOL)a8
{
  v8 = a8;
  v13 = a3;
  v14 = a4;
  v15 = a7;
  if (!v8 || +[SBSceneLayoutWhitePointAdaptationController _isInteractiveUpdateEnabled])
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

      v21 = __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke(v20, v13);
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

      v26 = __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke_2(v25, v13);
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

      v31 = __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke(v30, v14);
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

      v36 = __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke_2(v35, v14);
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

    v40 = [v13 count];
    if (v40)
    {
      v41 = __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke_3(v40, v13);
    }

    else
    {
      v41 = &unk_28336E1F0;
    }

    v42 = [v14 count];
    if (v42)
    {
      v43 = __186__SBSceneLayoutWhitePointAdaptationController__updateWhitePointAdaptationStrengthWithFromApplicationScenes_toApplicationScenes_fromPercentage_toPercentage_animationSettings_interactive___block_invoke_3(v42, v14);
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

      if (v8)
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

      SBKeyDoubleValueLog(@"PERCENTAGE", 2, a5);
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

      SBKeyDoubleValueLog(@"PERCENTAGE", 2, a6);
      [v15 duration];
      SBKeyDoubleValueLog(@"ANIMATION DURATION", 1, v58);
      [v15 delay];
      SBKeyDoubleValueLog(@"ANIMATION DELAY", 1, v59);
      v60 = SBLogCommon();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        [SBSceneLayoutWhitePointAdaptationController _updateWhitePointAdaptationStrengthWithAnimationSettings:];
      }
    }

    v61 = +[SBHarmonyController sharedInstance];
    [v61 transitionFromWhitePointAdaptivityStyleWithStyles:v41 toWhitePointAdaptivityStyleWithStyles:v43 fromPercentage:v15 toPercentage:a5 animationSettings:a6];
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

- (int64_t)_whitePointAdaptivityStyleForLayoutElement:(id)a3
{
  if (!a3)
  {
    return -1;
  }

  v4 = [(SBSceneLayoutWhitePointAdaptationController *)self _applicationSceneHandleForLayoutElement:?];
  v5 = [(SBSceneLayoutWhitePointAdaptationController *)self _whitePointAdaptivityStyleForSceneHandle:v4];

  return v5;
}

- (int64_t)_whitePointAdaptivityStyleForSceneHandle:(id)a3
{
  if (a3)
  {
    return [a3 whitePointAdaptivityStyle];
  }

  else
  {
    return -1;
  }
}

- (id)_applicationSceneHandleForLayoutElement:(id)a3
{
  if (a3)
  {
    v3 = [a3 workspaceEntity];
    v4 = [v3 deviceApplicationSceneEntity];
    v5 = [v4 sceneHandle];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_isInteractiveUpdateEnabled
{
  v2 = [a1 _harmonySettings];
  v3 = [v2 whitePointAdaptationInteractiveUpdateEnabled];

  return v3;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end