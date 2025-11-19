@interface _UIWindowHostingSceneSafeAreaInsetsSettingsDiffAction
- (id)sceneSettingsSafeAreaInsetsDiffInspector;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)_updateSafeAreaInsetsWithSettingsObserverContext:(id)a3 windowHostingScene:(id)a4 transitionContext:(id)a5;
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

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v12 = a3;
  v13 = a7;
  v14 = a5;
  if (([v12 _hostsWindows] & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_UIWindowHostingSceneSafeAreaInsetsSettingsDiffAction.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"[uiScene _hostsWindows]"}];
  }

  v18 = 0;
  v15 = v12;
  v16 = [(_UIWindowHostingSceneSafeAreaInsetsSettingsDiffAction *)self sceneSettingsSafeAreaInsetsDiffInspector];
  [v16 inspectDiff:v14 withContext:&v18];

  [(_UIWindowHostingSceneSafeAreaInsetsSettingsDiffAction *)self _updateSafeAreaInsetsWithSettingsObserverContext:v18 windowHostingScene:v15 transitionContext:v13];
}

- (void)_updateSafeAreaInsetsWithSettingsObserverContext:(id)a3 windowHostingScene:(id)a4 transitionContext:(id)a5
{
  if (a3.var0)
  {
    v13 = v5;
    v14 = v6;
    v8 = a5;
    v9 = [a4 _allWindows];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __143___UIWindowHostingSceneSafeAreaInsetsSettingsDiffAction__updateSafeAreaInsetsWithSettingsObserverContext_windowHostingScene_transitionContext___block_invoke;
    v11[3] = &unk_1E70F5AC0;
    v12 = v9;
    v10 = v9;
    _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(v8, v11, 0);
  }
}

@end