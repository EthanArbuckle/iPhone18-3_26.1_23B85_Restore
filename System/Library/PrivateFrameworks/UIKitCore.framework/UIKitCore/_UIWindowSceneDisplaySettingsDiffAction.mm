@interface _UIWindowSceneDisplaySettingsDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsDisplayDiffInspector;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
@end

@implementation _UIWindowSceneDisplaySettingsDiffAction

- (UIApplicationSceneSettingsDiffInspector)sceneSettingsDisplayDiffInspector
{
  sceneSettingsDisplayDiffInspector = self->_sceneSettingsDisplayDiffInspector;
  if (!sceneSettingsDisplayDiffInspector)
  {
    v4 = objc_opt_new();
    v5 = self->_sceneSettingsDisplayDiffInspector;
    self->_sceneSettingsDisplayDiffInspector = v4;

    [(FBSSceneSettingsDiffInspector *)self->_sceneSettingsDisplayDiffInspector observeDisplayConfigurationWithBlock:&__block_literal_global_96];
    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsDisplayDiffInspector observeScreenReferenceDisplayModeStatus:&__block_literal_global_2_3];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIWindowSceneDisplaySettingsDiffAction.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]]"}];
  }

  v16 = sceneCopy;
  v28 = 0;
  sceneSettingsDisplayDiffInspector = [(_UIWindowSceneDisplaySettingsDiffAction *)self sceneSettingsDisplayDiffInspector];
  [sceneSettingsDisplayDiffInspector inspectDiff:diffCopy withContext:&v28];

  if (settings)
  {
    v18 = v28;
  }

  else
  {
    uiSettings = [sSceneCopy uiSettings];
    v20 = [uiSettings _containsSetting:38];

    v18 = v28;
    if (v20)
    {
      v18 = v28 | 2;
      v28 |= 2u;
    }
  }

  if (v18 & 2) != 0 || (v18)
  {
    settings = [sSceneCopy settings];
    displayConfiguration = [settings displayConfiguration];

    identity = [displayConfiguration identity];
    v24 = [UIScreen _screenWithFBSDisplayIdentity:identity];

    if (v24)
    {
      if ((v28 & 1) != 0 && ([UIApp isFrontBoard] & 1) == 0)
      {
        [v24 _updateDisplayConfiguration:displayConfiguration];
      }

      uiSettings2 = [sSceneCopy uiSettings];
      [v24 _setReferenceDisplayModeStatus:{objc_msgSend(uiSettings2, "screenReferenceDisplayModeStatus")}];
    }

    if (v28)
    {
      v26 = [(UIScene *)v16 _renderingEnvironmentSceneComponentRegisteringIfNecessary:?];
      [(_UIRenderingEnvironmentSceneComponent *)v26 _invalidateTraitOverrides];
    }
  }
}

@end