@interface SHSheetSceneSettingsDiffAction
- (SHSheetSceneSettingsDiffAction)init;
- (SHSheetSceneSettingsDiffActionDelegate)delegate;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
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

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  v12 = 0;
  diffCopy = diff;
  sceneSettingsDisplayDiffInspector = [(SHSheetSceneSettingsDiffAction *)self sceneSettingsDisplayDiffInspector];
  [sceneSettingsDisplayDiffInspector inspectDiff:diffCopy withContext:&v12];

  if (v12 & 2) != 0 || (v12)
  {
    delegate = [(SHSheetSceneSettingsDiffAction *)self delegate];
    [delegate sceneSettingsDidChange:self];
  }
}

- (SHSheetSceneSettingsDiffActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end