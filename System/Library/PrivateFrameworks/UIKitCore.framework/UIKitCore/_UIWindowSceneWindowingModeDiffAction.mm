@interface _UIWindowSceneWindowingModeDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsDisplayDiffInspector;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
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

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  sSceneCopy = sScene;
  diffCopy = diff;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIWindowSceneWindowingModeDiffAction.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]]"}];
  }

  v18 = 0;
  sceneSettingsDisplayDiffInspector = [(_UIWindowSceneWindowingModeDiffAction *)self sceneSettingsDisplayDiffInspector];
  [sceneSettingsDisplayDiffInspector inspectDiff:diffCopy withContext:&v18];

  if (v18)
  {
    uiSettings = [sSceneCopy uiSettings];
    [sceneCopy _setEnhancedWindowingEnabled:{objc_msgSend(uiSettings, "enhancedWindowingEnabled")}];
  }
}

@end