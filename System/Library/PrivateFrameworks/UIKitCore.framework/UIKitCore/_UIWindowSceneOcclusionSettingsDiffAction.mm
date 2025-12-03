@interface _UIWindowSceneOcclusionSettingsDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsBackgroundAndOcclusionDiffInspector;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
@end

@implementation _UIWindowSceneOcclusionSettingsDiffAction

- (UIApplicationSceneSettingsDiffInspector)sceneSettingsBackgroundAndOcclusionDiffInspector
{
  sceneSettingsBackgroundAndOcclusionDiffInspector = self->_sceneSettingsBackgroundAndOcclusionDiffInspector;
  if (!sceneSettingsBackgroundAndOcclusionDiffInspector)
  {
    v4 = objc_opt_new();
    v5 = self->_sceneSettingsBackgroundAndOcclusionDiffInspector;
    self->_sceneSettingsBackgroundAndOcclusionDiffInspector = v4;

    [(FBSSceneSettingsDiffInspector *)self->_sceneSettingsBackgroundAndOcclusionDiffInspector observeOcclusionsWithBlock:&__block_literal_global_99];
    [(FBSSceneSettingsDiffInspector *)self->_sceneSettingsBackgroundAndOcclusionDiffInspector observeIsForegroundWithBlock:&__block_literal_global_2_5];
    sceneSettingsBackgroundAndOcclusionDiffInspector = self->_sceneSettingsBackgroundAndOcclusionDiffInspector;
  }

  return sceneSettingsBackgroundAndOcclusionDiffInspector;
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  v28[4] = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  sSceneCopy = sScene;
  diffCopy = diff;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIWindowSceneOcclusionSettingsDiffAction.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]]"}];
  }

  v26 = 0;
  sceneSettingsBackgroundAndOcclusionDiffInspector = [(_UIWindowSceneOcclusionSettingsDiffAction *)self sceneSettingsBackgroundAndOcclusionDiffInspector];
  [sceneSettingsBackgroundAndOcclusionDiffInspector inspectDiff:diffCopy withContext:&v26];

  if (v26 & 2) != 0 || (v26)
  {
    settings = [sSceneCopy settings];
    v28[0] = sSceneCopy;
    v27[0] = @"scene";
    v27[1] = @"isOccluded";
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(settings, "isOccluded")}];
    v28[1] = v17;
    v27[2] = @"isBackgrounded";
    v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(settings, "isForeground") ^ 1}];
    v28[2] = v18;
    v27[3] = @"isCarDisplay";
    v19 = MEMORY[0x1E696AD98];
    settings2 = [sSceneCopy settings];
    displayConfiguration = [settings2 displayConfiguration];
    v22 = [v19 numberWithBool:{objc_msgSend(displayConfiguration, "isCarDisplay")}];
    v28[3] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIApplicationSceneOcclusionChangedNotification" object:self userInfo:v23];
  }
}

@end