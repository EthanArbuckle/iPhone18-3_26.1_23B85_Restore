@interface _UIWindowSceneWindowingModeDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsDisplayDiffInspector;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
@end

@implementation _UIWindowSceneWindowingModeDiffAction

- (UIApplicationSceneSettingsDiffInspector)sceneSettingsDisplayDiffInspector
{
  sceneSettingsDisplayDiffInspector = self->_sceneSettingsDisplayDiffInspector;
  if (!sceneSettingsDisplayDiffInspector)
  {
    v4 = objc_opt_new();
    v5 = self->_sceneSettingsDisplayDiffInspector;
    self->_sceneSettingsDisplayDiffInspector = v4;

    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsDisplayDiffInspector observeEnhancedWindowingEnabledWithBlock:&__block_literal_global_226];
    sceneSettingsDisplayDiffInspector = self->_sceneSettingsDisplayDiffInspector;
  }

  return sceneSettingsDisplayDiffInspector;
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_UIWindowSceneWindowingModeDiffAction.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]]"}];
  }

  v18 = 0;
  v15 = [(_UIWindowSceneWindowingModeDiffAction *)self sceneSettingsDisplayDiffInspector];
  [v15 inspectDiff:v14 withContext:&v18];

  if (v18)
  {
    v16 = [v13 uiSettings];
    [v12 _setEnhancedWindowingEnabled:{objc_msgSend(v16, "enhancedWindowingEnabled")}];
  }
}

@end