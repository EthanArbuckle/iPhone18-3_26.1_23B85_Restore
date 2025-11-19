@interface _UIWindowSceneLiveResizeDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsLiveResizeDiffInspector;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
@end

@implementation _UIWindowSceneLiveResizeDiffAction

- (UIApplicationSceneSettingsDiffInspector)sceneSettingsLiveResizeDiffInspector
{
  sceneSettingsLiveResizeDiffInspector = self->_sceneSettingsLiveResizeDiffInspector;
  if (!sceneSettingsLiveResizeDiffInspector)
  {
    v4 = objc_opt_new();
    v5 = self->_sceneSettingsLiveResizeDiffInspector;
    self->_sceneSettingsLiveResizeDiffInspector = v4;

    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsLiveResizeDiffInspector observeInLiveResizeWithBlock:&__block_literal_global_621];
    sceneSettingsLiveResizeDiffInspector = self->_sceneSettingsLiveResizeDiffInspector;
  }

  return sceneSettingsLiveResizeDiffInspector;
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v11 = a3;
  v12 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UIWindowSceneLiveResizeDiffAction.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]]"}];
  }

  v13 = v11;
  v17 = 0;
  v14 = [(_UIWindowSceneLiveResizeDiffAction *)self sceneSettingsLiveResizeDiffInspector];
  [v14 inspectDiff:v12 withContext:&v17];

  if (v17)
  {
    v15 = [v13 _effectiveUISettings];
    [v15 inLiveResize];

    kdebug_trace();
    [v13 _updateEffectiveGeometryIfNeeded];
  }
}

@end