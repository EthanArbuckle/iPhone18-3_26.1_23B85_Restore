@interface _UIWindowSceneLiveResizeDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsLiveResizeDiffInspector;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
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

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  diffCopy = diff;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIWindowSceneLiveResizeDiffAction.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]]"}];
  }

  v13 = sceneCopy;
  v17 = 0;
  sceneSettingsLiveResizeDiffInspector = [(_UIWindowSceneLiveResizeDiffAction *)self sceneSettingsLiveResizeDiffInspector];
  [sceneSettingsLiveResizeDiffInspector inspectDiff:diffCopy withContext:&v17];

  if (v17)
  {
    _effectiveUISettings = [v13 _effectiveUISettings];
    [_effectiveUISettings inLiveResize];

    kdebug_trace();
    [v13 _updateEffectiveGeometryIfNeeded];
  }
}

@end