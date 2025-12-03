@interface _UIWindowSceneFBSSceneTransitionContextDrivenLifecycleSettingsDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsApplicationLifecycleEventDiffInspector;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
@end

@implementation _UIWindowSceneFBSSceneTransitionContextDrivenLifecycleSettingsDiffAction

- (UIApplicationSceneSettingsDiffInspector)sceneSettingsApplicationLifecycleEventDiffInspector
{
  sceneSettingsApplicationLifecycleEventDiffInspector = self->_sceneSettingsApplicationLifecycleEventDiffInspector;
  if (!sceneSettingsApplicationLifecycleEventDiffInspector)
  {
    v4 = objc_opt_new();
    v5 = self->_sceneSettingsApplicationLifecycleEventDiffInspector;
    self->_sceneSettingsApplicationLifecycleEventDiffInspector = v4;

    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsApplicationLifecycleEventDiffInspector observeIdleModeEnabledWithBlock:&__block_literal_global_98];
    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsApplicationLifecycleEventDiffInspector observeCanShowAlertsWithBlock:&__block_literal_global_2_4];
    sceneSettingsApplicationLifecycleEventDiffInspector = self->_sceneSettingsApplicationLifecycleEventDiffInspector;
  }

  return sceneSettingsApplicationLifecycleEventDiffInspector;
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  v42 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  sSceneCopy = sScene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && ([sceneCopy conformsToProtocol:&unk_1EFF0F0C0] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIWindowSceneFBSSceneTransitionContextDrivenLifecycleSettingsDiffAction.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]] || [uiScene conformsToProtocol:@protocol(_UISceneUIWindowHosting)]"}];
  }

  v37 = 0;
  sceneSettingsApplicationLifecycleEventDiffInspector = [(_UIWindowSceneFBSSceneTransitionContextDrivenLifecycleSettingsDiffAction *)self sceneSettingsApplicationLifecycleEventDiffInspector];
  [sceneSettingsApplicationLifecycleEventDiffInspector inspectDiff:diffCopy withContext:&v37];

  if ([sceneCopy _hasLifecycle])
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __186___UIWindowSceneFBSSceneTransitionContextDrivenLifecycleSettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke;
    v33[3] = &unk_1E70F4638;
    v34 = sceneCopy;
    v35 = settingsCopy;
    v36 = contextCopy;
    _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(v36, v33, 0);
  }

  v20 = v37;
  if (v37)
  {
    [UIApp _updateIdleModeStatus];
    v20 = v37;
  }

  if ((v20 & 2) != 0)
  {
    v21 = *(__UILogGetCategoryCachedImpl("UIAlertControllerStackManager", &_performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType____s_category) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = diffCopy;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "canShowAlerts Updated: %@", buf, 0xCu);
    }

    uiSettings = [sSceneCopy uiSettings];
    canShowAlerts = [uiSettings canShowAlerts];
    v24 = sceneCopy;
    if (NSClassFromString(&cfstr_Uiwindowscene.isa))
    {
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    v27 = v26;
    if (!v24 || v26)
    {

      if (!v27)
      {
LABEL_24:

        goto LABEL_25;
      }

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __186___UIWindowSceneFBSSceneTransitionContextDrivenLifecycleSettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_101;
      v30[3] = &unk_1E70FA0F0;
      v31 = v27;
      v32 = canShowAlerts;
      _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(contextCopy, v30, 0);
      v24 = v31;
    }

    else
    {
      v28 = BSLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v39 = "uiScene";
        v40 = 2082;
        v41 = "UIWindowScene";
        _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_DEFAULT, "BSSafeCast: %{public}s was not of expected class %{public}s", buf, 0x16u);
      }
    }

    goto LABEL_24;
  }

LABEL_25:
}

@end