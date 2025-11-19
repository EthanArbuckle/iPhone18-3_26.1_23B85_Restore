@interface _UISceneTargetOfEventDeferringEnvironmentsDiffAction
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
@end

@implementation _UISceneTargetOfEventDeferringEnvironmentsDiffAction

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v10 = self;
  v15 = 0;
  if (self)
  {
    sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector = self->_sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector;
    if (!sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector)
    {
      v12 = objc_opt_new();
      v13 = v10->_sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector;
      v10->_sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector = v12;

      [(UIApplicationSceneSettingsDiffInspector *)v10->_sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector observeTargetOfEventDeferringEnvironmentsWithBlock:&__block_literal_global_91];
      sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector = v10->_sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector;
    }

    v10 = sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector;
  }

  [(_UISceneTargetOfEventDeferringEnvironmentsDiffAction *)v10 inspectDiff:a5 withContext:&v15, a5, a6, a7, *&a8];

  if (v15)
  {
    v14 = [a3 _keyWindowSceneObserver];
    [(_UIKeyWindowSceneObserver *)v14 evaluateTargetOfEventDeferringEnvironments];
  }
}

@end