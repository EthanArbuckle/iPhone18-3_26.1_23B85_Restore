@interface SHSheetSceneSettingsDiffAction
- (SHSheetSceneSettingsDiffAction)init;
- (SHSheetSceneSettingsDiffActionDelegate)delegate;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
@end

@implementation SHSheetSceneSettingsDiffAction

- (SHSheetSceneSettingsDiffAction)init
{
  v6.receiver = self;
  v6.super_class = SHSheetSceneSettingsDiffAction;
  v2 = [(SHSheetSceneSettingsDiffAction *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sceneSettingsDisplayDiffInspector = v2->_sceneSettingsDisplayDiffInspector;
    v2->_sceneSettingsDisplayDiffInspector = v3;

    [(UIApplicationSceneSettingsDiffInspector *)v2->_sceneSettingsDisplayDiffInspector observeInterfaceOrientationWithBlock:&__block_literal_global_4];
    [(UIApplicationSceneSettingsDiffInspector *)v2->_sceneSettingsDisplayDiffInspector observeDisplayConfigurationWithBlock:&__block_literal_global_2];
  }

  return v2;
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v12 = 0;
  v9 = a5;
  v10 = [(SHSheetSceneSettingsDiffAction *)self sceneSettingsDisplayDiffInspector];
  [v10 inspectDiff:v9 withContext:&v12];

  if (v12 & 2) != 0 || (v12)
  {
    v11 = [(SHSheetSceneSettingsDiffAction *)self delegate];
    [v11 sceneSettingsDidChange:self];
  }
}

- (SHSheetSceneSettingsDiffActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end