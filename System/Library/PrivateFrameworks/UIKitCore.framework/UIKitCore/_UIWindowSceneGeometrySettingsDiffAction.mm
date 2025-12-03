@interface _UIWindowSceneGeometrySettingsDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsGeometryMutationDiffInspector;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_updateSceneGeometryWithSettingObserverContext:(id)context windowScene:(id)scene transitionContext:(id)transitionContext;
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

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  v64 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  settingsCopy = settings;
  contextCopy = context;
  diffCopy = diff;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIWindowSceneGeometrySettingsDiffAction.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]]"}];
  }

  v17 = sceneCopy;
  v55 = 0;
  sceneSettingsGeometryMutationDiffInspector = [(_UIWindowSceneGeometrySettingsDiffAction *)self sceneSettingsGeometryMutationDiffInspector];
  [sceneSettingsGeometryMutationDiffInspector inspectDiff:diffCopy withContext:&v55];

  v19 = v55;
  if ((v55 & 4) != 0)
  {
    otherSettings = [settingsCopy otherSettings];
    v21 = [otherSettings objectForSetting:35];
    unsignedIntegerValue = [v21 unsignedIntegerValue];

    _effectiveUISettings = [v17 _effectiveUISettings];
    interfaceOrientationMode = [_effectiveUISettings interfaceOrientationMode];

    if (unsignedIntegerValue && unsignedIntegerValue != interfaceOrientationMode && (unsignedIntegerValue == 100 || interfaceOrientationMode == 100 || !interfaceOrientationMode))
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIAssertIsValidOrientationModeChange(UIApplicationSceneInterfaceOrientationMode, UIApplicationSceneInterfaceOrientationMode)"}];
      UIApplicationSceneStringForInterfaceOrientationMode(unsignedIntegerValue);
      v28 = v27 = settingsCopy;
      v29 = UIApplicationSceneStringForInterfaceOrientationMode(interfaceOrientationMode);
      [currentHandler2 handleFailureInFunction:v26 file:@"_UIWindowSceneGeometrySettingsDiffAction.m" lineNumber:44 description:{@"Unsupported change of scene orientation mode %@ -> %@", v28, v29}];

      settingsCopy = v27;
    }

    v30 = *(__UILogGetCategoryCachedImpl("Orientation", &_MergedGlobals_1028) + 8);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v54 = settingsCopy;
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
      _persistenceIdentifier = [v31 _persistenceIdentifier];
      v38 = UIApplicationSceneStringForInterfaceOrientationMode(unsignedIntegerValue);
      v39 = UIApplicationSceneStringForInterfaceOrientationMode(interfaceOrientationMode);
      *buf = 138544130;
      v57 = v35;
      v58 = 2114;
      v59 = _persistenceIdentifier;
      v60 = 2114;
      v61 = v38;
      v62 = 2114;
      v63 = v39;
      _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ (%{public}@) Scene did update orientation mode: %{public}@ -> %{public}@", buf, 0x2Au);

      settingsCopy = v54;
    }

    v19 = v55;
  }

  if ((v19 & 2) != 0)
  {
    if ([(UIScene *)v17 _systemShellOwnsInterfaceOrientation])
    {
      _effectiveUISettings2 = [v17 _effectiveUISettings];
      interfaceOrientation = [_effectiveUISettings2 interfaceOrientation];

      if (!interfaceOrientation)
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
          _persistenceIdentifier2 = [v43 _persistenceIdentifier];
          *buf = 138543618;
          v57 = v47;
          v58 = 2114;
          v59 = _persistenceIdentifier2;
          _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_FAULT, "%{public}@ (%{public}@) The scene is being updated with an unknown interface orientation!", buf, 0x16u);
        }
      }
    }
  }

  _effectiveUISettings3 = [v17 _effectiveUISettings];
  inLiveResize = [_effectiveUISettings3 inLiveResize];

  if ((v55 & 0x10) != 0)
  {
    v52 = _UISceneLiveResizeSnapshotsEnabled();
    if ((v52 & 1) == 0 && ((inLiveResize ^ 1) & 1) == 0)
    {
      _UIQOSManagedCommitsBegin(self, @"LiveResizeAnimation");
      v52 = 0;
    }
  }

  else
  {
    v52 = 1;
  }

  [(_UIWindowSceneGeometrySettingsDiffAction *)self _updateSceneGeometryWithSettingObserverContext:v55 windowScene:v17 transitionContext:contextCopy];
  [v17 _completeGeometryUpdatesWithTransitionContext:contextCopy];

  if (((v52 | inLiveResize) & 1) == 0)
  {
    _UIQOSManagedCommitsEnd(self, @"LiveResizeAnimation");
  }
}

- (void)_updateSceneGeometryWithSettingObserverContext:(id)context windowScene:(id)scene transitionContext:(id)transitionContext
{
  contextCopy = context;
  v41 = *MEMORY[0x1E69E9840];
  contextCopy2 = context;
  sceneCopy = scene;
  transitionContextCopy = transitionContext;
  _effectiveUISettings = [sceneCopy _effectiveUISettings];
  inLiveResize = [_effectiveUISettings inLiveResize];

  if (!inLiveResize)
  {
LABEL_7:
    if ((contextCopy2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  AnimationMode = _UISceneLiveResizeGetAnimationMode();
  if (AnimationMode == 2)
  {
    [transitionContextCopy setAnimationSettings:0];
    goto LABEL_7;
  }

  if (AnimationMode != 1)
  {
    goto LABEL_7;
  }

  animationSettings = [transitionContextCopy animationSettings];
  if (animationSettings)
  {
    [transitionContextCopy setAnimationSettings:animationSettings];
  }

  else
  {
    v16 = [MEMORY[0x1E698E780] settingsWithMass:3.0 stiffness:1000.0 damping:500.0];
    [transitionContextCopy setAnimationSettings:v16];
  }

  if ((contextCopy2 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ([sceneCopy _canDynamicallySpecifySupportedInterfaceOrientations])
  {
    v14 = 0;
    v15 = contextCopy2 & 2;
    if ((contextCopy & 1) == 0 && (contextCopy2 & 2) == 0)
    {
      v14 = (contextCopy2 & 4) == 0;
    }

    goto LABEL_17;
  }

LABEL_14:
  if ((contextCopy & 1) == 0 && (contextCopy2 & 6) == 0)
  {
    goto LABEL_26;
  }

  v14 = 0;
  v15 = contextCopy2 & 2;
LABEL_17:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121___UIWindowSceneGeometrySettingsDiffAction__updateSceneGeometryWithSettingObserverContext_windowScene_transitionContext___block_invoke;
  aBlock[3] = &unk_1E70F8A60;
  v34 = v14;
  v17 = sceneCopy;
  v32 = v17;
  v18 = transitionContextCopy;
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
      _persistenceIdentifier = [v21 _persistenceIdentifier];
      [v21 _interfaceOrientation];
      v28 = BSInterfaceOrientationDescription();
      *buf = 138543874;
      v36 = v25;
      v37 = 2114;
      v38 = _persistenceIdentifier;
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