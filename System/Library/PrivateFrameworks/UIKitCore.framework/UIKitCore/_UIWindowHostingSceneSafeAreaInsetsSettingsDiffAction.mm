@interface _UIWindowHostingSceneSafeAreaInsetsSettingsDiffAction
- (id)sceneSettingsSafeAreaInsetsDiffInspector;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_updateSafeAreaInsetsWithSettingsObserverContext:(id)context windowHostingScene:(id)scene transitionContext:(id)transitionContext;
@end

@implementation _UIWindowHostingSceneSafeAreaInsetsSettingsDiffAction

- (id)sceneSettingsSafeAreaInsetsDiffInspector
{
  sceneSettingsSafeAreaInsetsDiffInspector = self->_sceneSettingsSafeAreaInsetsDiffInspector;
  if (!sceneSettingsSafeAreaInsetsDiffInspector)
  {
    v4 = objc_alloc_init(UIApplicationSceneSettingsDiffInspector);
    v5 = self->_sceneSettingsSafeAreaInsetsDiffInspector;
    self->_sceneSettingsSafeAreaInsetsDiffInspector = v4;

    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsSafeAreaInsetsDiffInspector observeSafeAreaInsetsPortraitWithBlock:&__block_literal_global_94];
    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsSafeAreaInsetsDiffInspector observeSafeAreaInsetsLandscapeLeftWithBlock:&__block_literal_global_2_2];
    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsSafeAreaInsetsDiffInspector observeSafeAreaInsetsPortraitUpsideDownWithBlock:&__block_literal_global_4_0];
    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsSafeAreaInsetsDiffInspector observeSafeAreaInsetsLandscapeRightWithBlock:&__block_literal_global_6_1];
    sceneSettingsSafeAreaInsetsDiffInspector = self->_sceneSettingsSafeAreaInsetsDiffInspector;
  }

  return sceneSettingsSafeAreaInsetsDiffInspector;
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  contextCopy = context;
  diffCopy = diff;
  if (([sceneCopy _hostsWindows] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIWindowHostingSceneSafeAreaInsetsSettingsDiffAction.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"[uiScene _hostsWindows]"}];
  }

  v18 = 0;
  v15 = sceneCopy;
  sceneSettingsSafeAreaInsetsDiffInspector = [(_UIWindowHostingSceneSafeAreaInsetsSettingsDiffAction *)self sceneSettingsSafeAreaInsetsDiffInspector];
  [sceneSettingsSafeAreaInsetsDiffInspector inspectDiff:diffCopy withContext:&v18];

  [(_UIWindowHostingSceneSafeAreaInsetsSettingsDiffAction *)self _updateSafeAreaInsetsWithSettingsObserverContext:v18 windowHostingScene:v15 transitionContext:contextCopy];
}

- (void)_updateSafeAreaInsetsWithSettingsObserverContext:(id)context windowHostingScene:(id)scene transitionContext:(id)transitionContext
{
  if (context.var0)
  {
    v13 = v5;
    v14 = v6;
    transitionContextCopy = transitionContext;
    _allWindows = [scene _allWindows];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __143___UIWindowHostingSceneSafeAreaInsetsSettingsDiffAction__updateSafeAreaInsetsWithSettingsObserverContext_windowHostingScene_transitionContext___block_invoke;
    v11[3] = &unk_1E70F5AC0;
    v12 = _allWindows;
    v10 = _allWindows;
    _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(transitionContextCopy, v11, 0);
  }
}

@end