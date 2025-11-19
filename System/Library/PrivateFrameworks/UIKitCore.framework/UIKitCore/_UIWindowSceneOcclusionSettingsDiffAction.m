@interface _UIWindowSceneOcclusionSettingsDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsBackgroundAndOcclusionDiffInspector;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
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

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v28[4] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"_UIWindowSceneOcclusionSettingsDiffAction.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]]"}];
  }

  v26 = 0;
  v15 = [(_UIWindowSceneOcclusionSettingsDiffAction *)self sceneSettingsBackgroundAndOcclusionDiffInspector];
  [v15 inspectDiff:v14 withContext:&v26];

  if (v26 & 2) != 0 || (v26)
  {
    v16 = [v13 settings];
    v28[0] = v13;
    v27[0] = @"scene";
    v27[1] = @"isOccluded";
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "isOccluded")}];
    v28[1] = v17;
    v27[2] = @"isBackgrounded";
    v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v16, "isForeground") ^ 1}];
    v28[2] = v18;
    v27[3] = @"isCarDisplay";
    v19 = MEMORY[0x1E696AD98];
    v20 = [v13 settings];
    v21 = [v20 displayConfiguration];
    v22 = [v19 numberWithBool:{objc_msgSend(v21, "isCarDisplay")}];
    v28[3] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];

    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    [v24 postNotificationName:@"UIApplicationSceneOcclusionChangedNotification" object:self userInfo:v23];
  }
}

@end