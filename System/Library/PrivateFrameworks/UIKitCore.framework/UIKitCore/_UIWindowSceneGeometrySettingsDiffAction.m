@interface _UIWindowSceneGeometrySettingsDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsGeometryMutationDiffInspector;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)_updateSceneGeometryWithSettingObserverContext:(id)a3 windowScene:(id)a4 transitionContext:(id)a5;
@end

@implementation _UIWindowSceneGeometrySettingsDiffAction

- (UIApplicationSceneSettingsDiffInspector)sceneSettingsGeometryMutationDiffInspector
{
  sceneSettingsGeometryMutationDiffInspector = self->_sceneSettingsGeometryMutationDiffInspector;
  if (!sceneSettingsGeometryMutationDiffInspector)
  {
    v4 = objc_opt_new();
    v5 = self->_sceneSettingsGeometryMutationDiffInspector;
    self->_sceneSettingsGeometryMutationDiffInspector = v4;

    [(FBSSceneSettingsDiffInspector *)self->_sceneSettingsGeometryMutationDiffInspector observeFrameWithBlock:&__block_literal_global_93];
    [(FBSSceneSettingsDiffInspector *)self->_sceneSettingsGeometryMutationDiffInspector observeInterfaceOrientationWithBlock:&__block_literal_global_3];
    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsGeometryMutationDiffInspector observeInterfaceOrientationModeWithBlock:&__block_literal_global_5_0];
    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsGeometryMutationDiffInspector observeInterfaceOrientationMapResolverWithBlock:&__block_literal_global_7_0];
    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsGeometryMutationDiffInspector observeInLiveResizeWithBlock:&__block_literal_global_9_0];
    sceneSettingsGeometryMutationDiffInspector = self->_sceneSettingsGeometryMutationDiffInspector;
  }

  return sceneSettingsGeometryMutationDiffInspector;
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v64 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v16 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v53 = [MEMORY[0x1E696AAA8] currentHandler];
    [v53 handleFailureInMethod:a2 object:self file:@"_UIWindowSceneGeometrySettingsDiffAction.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]]"}];
  }

  v17 = v13;
  v55 = 0;
  v18 = [(_UIWindowSceneGeometrySettingsDiffAction *)self sceneSettingsGeometryMutationDiffInspector];
  [v18 inspectDiff:v16 withContext:&v55];

  v19 = v55;
  if ((v55 & 4) != 0)
  {
    v20 = [v14 otherSettings];
    v21 = [v20 objectForSetting:35];
    v22 = [v21 unsignedIntegerValue];

    v23 = [v17 _effectiveUISettings];
    v24 = [v23 interfaceOrientationMode];

    if (v22 && v22 != v24 && (v22 == 100 || v24 == 100 || !v24))
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIAssertIsValidOrientationModeChange(UIApplicationSceneInterfaceOrientationMode, UIApplicationSceneInterfaceOrientationMode)"}];
      UIApplicationSceneStringForInterfaceOrientationMode(v22);
      v28 = v27 = v14;
      v29 = UIApplicationSceneStringForInterfaceOrientationMode(v24);
      [v25 handleFailureInFunction:v26 file:@"_UIWindowSceneGeometrySettingsDiffAction.m" lineNumber:44 description:{@"Unsupported change of scene orientation mode %@ -> %@", v28, v29}];

      v14 = v27;
    }

    v30 = *(__UILogGetCategoryCachedImpl("Orientation", &_MergedGlobals_1028) + 8);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v14;
      v31 = v17;
      if (v31)
      {
        v32 = MEMORY[0x1E696AEC0];
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = [v32 stringWithFormat:@"<%@: %p>", v34, v31];
      }

      else
      {
        v35 = @"(nil)";
      }

      v36 = v35;
      v37 = [v31 _persistenceIdentifier];
      v38 = UIApplicationSceneStringForInterfaceOrientationMode(v22);
      v39 = UIApplicationSceneStringForInterfaceOrientationMode(v24);
      *buf = 138544130;
      v57 = v35;
      v58 = 2114;
      v59 = v37;
      v60 = 2114;
      v61 = v38;
      v62 = 2114;
      v63 = v39;
      _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ (%{public}@) Scene did update orientation mode: %{public}@ -> %{public}@", buf, 0x2Au);

      v14 = v54;
    }

    v19 = v55;
  }

  if ((v19 & 2) != 0)
  {
    if ([(UIScene *)v17 _systemShellOwnsInterfaceOrientation])
    {
      v40 = [v17 _effectiveUISettings];
      v41 = [v40 interfaceOrientation];

      if (!v41)
      {
        v42 = *(__UILogGetCategoryCachedImpl("Orientation", &qword_1ED49CC40) + 8);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          v43 = v17;
          if (v43)
          {
            v44 = MEMORY[0x1E696AEC0];
            v45 = objc_opt_class();
            v46 = NSStringFromClass(v45);
            v47 = [v44 stringWithFormat:@"<%@: %p>", v46, v43];
          }

          else
          {
            v47 = @"(nil)";
          }

          v48 = v47;
          v49 = [v43 _persistenceIdentifier];
          *buf = 138543618;
          v57 = v47;
          v58 = 2114;
          v59 = v49;
          _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_FAULT, "%{public}@ (%{public}@) The scene is being updated with an unknown interface orientation!", buf, 0x16u);
        }
      }
    }
  }

  v50 = [v17 _effectiveUISettings];
  v51 = [v50 inLiveResize];

  if ((v55 & 0x10) != 0)
  {
    v52 = _UISceneLiveResizeSnapshotsEnabled();
    if ((v52 & 1) == 0 && ((v51 ^ 1) & 1) == 0)
    {
      _UIQOSManagedCommitsBegin(self, @"LiveResizeAnimation");
      v52 = 0;
    }
  }

  else
  {
    v52 = 1;
  }

  [(_UIWindowSceneGeometrySettingsDiffAction *)self _updateSceneGeometryWithSettingObserverContext:v55 windowScene:v17 transitionContext:v15];
  [v17 _completeGeometryUpdatesWithTransitionContext:v15];

  if (((v52 | v51) & 1) == 0)
  {
    _UIQOSManagedCommitsEnd(self, @"LiveResizeAnimation");
  }
}

- (void)_updateSceneGeometryWithSettingObserverContext:(id)a3 windowScene:(id)a4 transitionContext:(id)a5
{
  v6 = a3;
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 _effectiveUISettings];
  v11 = [v10 inLiveResize];

  if (!v11)
  {
LABEL_7:
    if ((v7 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  AnimationMode = _UISceneLiveResizeGetAnimationMode();
  if (AnimationMode == 2)
  {
    [v9 setAnimationSettings:0];
    goto LABEL_7;
  }

  if (AnimationMode != 1)
  {
    goto LABEL_7;
  }

  v13 = [v9 animationSettings];
  if (v13)
  {
    [v9 setAnimationSettings:v13];
  }

  else
  {
    v16 = [MEMORY[0x1E698E780] settingsWithMass:3.0 stiffness:1000.0 damping:500.0];
    [v9 setAnimationSettings:v16];
  }

  if ((v7 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ([v8 _canDynamicallySpecifySupportedInterfaceOrientations])
  {
    v14 = 0;
    v15 = v7 & 2;
    if ((v6 & 1) == 0 && (v7 & 2) == 0)
    {
      v14 = (v7 & 4) == 0;
    }

    goto LABEL_17;
  }

LABEL_14:
  if ((v6 & 1) == 0 && (v7 & 6) == 0)
  {
    goto LABEL_26;
  }

  v14 = 0;
  v15 = v7 & 2;
LABEL_17:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121___UIWindowSceneGeometrySettingsDiffAction__updateSceneGeometryWithSettingObserverContext_windowScene_transitionContext___block_invoke;
  aBlock[3] = &unk_1E70F8A60;
  v34 = v14;
  v17 = v8;
  v32 = v17;
  v18 = v9;
  v33 = v18;
  v19 = _Block_copy(aBlock);
  if (v15)
  {
    v20 = *(__UILogGetCategoryCachedImpl("Orientation", &_updateSceneGeometryWithSettingObserverContext_windowScene_transitionContext____s_category) + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v17;
      if (v21)
      {
        v22 = MEMORY[0x1E696AEC0];
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = [v22 stringWithFormat:@"<%@: %p>", v24, v21];
      }

      else
      {
        v25 = @"(nil)";
      }

      v26 = v25;
      v27 = [v21 _persistenceIdentifier];
      [v21 _interfaceOrientation];
      v28 = BSInterfaceOrientationDescription();
      *buf = 138543874;
      v36 = v25;
      v37 = 2114;
      v38 = v27;
      v39 = 2114;
      v40 = v28;
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ (%{public}@) Scene will change interface orientation: %{public}@", buf, 0x20u);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __121___UIWindowSceneGeometrySettingsDiffAction__updateSceneGeometryWithSettingObserverContext_windowScene_transitionContext___block_invoke_26;
    v29[3] = &unk_1E70F5AC0;
    v30 = v17;
    _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(v18, v19, v29);
  }

  else
  {
    _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(v18, v19, 0);
  }

LABEL_26:
}

@end