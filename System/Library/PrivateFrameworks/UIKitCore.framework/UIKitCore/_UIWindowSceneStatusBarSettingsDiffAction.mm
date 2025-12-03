@interface _UIWindowSceneStatusBarSettingsDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsStatusBarDiffInspector;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_updateForcedStatusBarForegroundTransparentWithSceneSettings:(id)settings transitionContext:(id)context;
@end

@implementation _UIWindowSceneStatusBarSettingsDiffAction

- (UIApplicationSceneSettingsDiffInspector)sceneSettingsStatusBarDiffInspector
{
  sceneSettingsStatusBarDiffInspector = self->_sceneSettingsStatusBarDiffInspector;
  if (!sceneSettingsStatusBarDiffInspector)
  {
    v4 = objc_opt_new();
    v5 = self->_sceneSettingsStatusBarDiffInspector;
    self->_sceneSettingsStatusBarDiffInspector = v4;

    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsStatusBarDiffInspector observeStatusBarStyleOverridesToSuppressWithBlock:&__block_literal_global_100];
    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsStatusBarDiffInspector observeForcedStatusBarForegroundTransparentWithBlock:&__block_literal_global_2_6];
    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsStatusBarDiffInspector observeForcedStatusBarStyleWithBlock:&__block_literal_global_4_1];
    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsStatusBarDiffInspector observeStatusBarPartsWithBlock:&__block_literal_global_6_2];
    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsStatusBarDiffInspector observeStatusBarAvoidanceFrameWithBlock:&__block_literal_global_8_2];
    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsStatusBarDiffInspector observeStatusBarHeightWithBlock:&__block_literal_global_10_1];
    sceneSettingsStatusBarDiffInspector = self->_sceneSettingsStatusBarDiffInspector;
  }

  return sceneSettingsStatusBarDiffInspector;
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  diffCopy = diff;
  contextCopy = context;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIWindowSceneStatusBarSettingsDiffAction.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]]"}];
  }

  v15 = sceneCopy;
  v28 = 0;
  if (diffCopy)
  {
    sceneSettingsStatusBarDiffInspector = [(_UIWindowSceneStatusBarSettingsDiffAction *)self sceneSettingsStatusBarDiffInspector];
    [sceneSettingsStatusBarDiffInspector inspectDiff:diffCopy withContext:&v28];
  }

  else
  {
    v28 = 56;
  }

  _effectiveUISettings = [v15 _effectiveUISettings];
  v18 = v28;
  if ((v28 & 4) != 0)
  {
    statusBarManager = [v15 statusBarManager];
    [statusBarManager updateStatusBarAppearance];

    v18 = v28;
  }

  if ((v18 & 0x20) != 0)
  {
    [_effectiveUISettings safeAreaInsetsPortrait];
    v21 = v20;
    [_effectiveUISettings defaultStatusBarHeightForOrientation:1];
    if (v21 < v22)
    {
      _allWindows = [v15 _allWindows];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __155___UIWindowSceneStatusBarSettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke;
      v26[3] = &unk_1E70F5AC0;
      v27 = _allWindows;
      v24 = _allWindows;
      _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(contextCopy, v26, 0);
    }
  }
}

- (void)_updateForcedStatusBarForegroundTransparentWithSceneSettings:(id)settings transitionContext:(id)context
{
  contextCopy = context;
  forcedStatusBarForegroundTransparent = [settings forcedStatusBarForegroundTransparent];
  statusBarWindow = [UIApp statusBarWindow];
  _scene = [statusBarWindow _scene];

  uiClientSettings = [_scene uiClientSettings];
  isStatusBarForegroundTransparent = [uiClientSettings isStatusBarForegroundTransparent];

  if (forcedStatusBarForegroundTransparent != isStatusBarForegroundTransparent)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __124___UIWindowSceneStatusBarSettingsDiffAction__updateForcedStatusBarForegroundTransparentWithSceneSettings_transitionContext___block_invoke;
    v18[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    v19 = forcedStatusBarForegroundTransparent;
    [_scene updateUIClientSettingsWithBlock:v18];
    initWithDefaultParameters = [[UIStatusBarStyleAnimationParameters alloc] initWithDefaultParameters];
    animationSettings = [contextCopy animationSettings];
    [animationSettings duration];
    [(UIStatusBarAnimationParameters *)initWithDefaultParameters setDuration:?];

    animationSettings2 = [contextCopy animationSettings];
    [animationSettings2 delay];
    [(UIStatusBarAnimationParameters *)initWithDefaultParameters setDelay:?];

    animationFence = [contextCopy animationFence];
    [UIWindow _synchronizeDrawingWithFence:animationFence];

    statusBar = [UIApp statusBar];
    v16 = statusBar;
    v17 = 1.0;
    if (forcedStatusBarForegroundTransparent)
    {
      v17 = 0.0;
    }

    [statusBar setForegroundAlpha:initWithDefaultParameters animationParameters:v17];
  }
}

@end