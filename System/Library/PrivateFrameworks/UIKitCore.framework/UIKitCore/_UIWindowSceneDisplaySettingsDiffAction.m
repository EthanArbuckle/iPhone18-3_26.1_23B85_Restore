@interface _UIWindowSceneDisplaySettingsDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsDisplayDiffInspector;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
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

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"_UIWindowSceneDisplaySettingsDiffAction.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]]"}];
  }

  v16 = v13;
  v28 = 0;
  v17 = [(_UIWindowSceneDisplaySettingsDiffAction *)self sceneSettingsDisplayDiffInspector];
  [v17 inspectDiff:v15 withContext:&v28];

  if (a6)
  {
    v18 = v28;
  }

  else
  {
    v19 = [v14 uiSettings];
    v20 = [v19 _containsSetting:38];

    v18 = v28;
    if (v20)
    {
      v18 = v28 | 2;
      v28 |= 2u;
    }
  }

  if (v18 & 2) != 0 || (v18)
  {
    v21 = [v14 settings];
    v22 = [v21 displayConfiguration];

    v23 = [v22 identity];
    v24 = [UIScreen _screenWithFBSDisplayIdentity:v23];

    if (v24)
    {
      if ((v28 & 1) != 0 && ([UIApp isFrontBoard] & 1) == 0)
      {
        [v24 _updateDisplayConfiguration:v22];
      }

      v25 = [v14 uiSettings];
      [v24 _setReferenceDisplayModeStatus:{objc_msgSend(v25, "screenReferenceDisplayModeStatus")}];
    }

    if (v28)
    {
      v26 = [(UIScene *)v16 _renderingEnvironmentSceneComponentRegisteringIfNecessary:?];
      [(_UIRenderingEnvironmentSceneComponent *)v26 _invalidateTraitOverrides];
    }
  }
}

@end