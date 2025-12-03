@interface _UISceneTargetOfEventDeferringEnvironmentsDiffAction
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
@end

@implementation _UISceneTargetOfEventDeferringEnvironmentsDiffAction

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  selfCopy = self;
  v15 = 0;
  if (self)
  {
    sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector = self->_sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector;
    if (!sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector)
    {
      v12 = objc_opt_new();
      v13 = selfCopy->_sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector;
      selfCopy->_sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector = v12;

      [(UIApplicationSceneSettingsDiffInspector *)selfCopy->_sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector observeTargetOfEventDeferringEnvironmentsWithBlock:&__block_literal_global_91];
      sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector = selfCopy->_sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector;
    }

    selfCopy = sceneSettingsTargetOfEventDeferringEnvironmentsDiffInspector;
  }

  [(_UISceneTargetOfEventDeferringEnvironmentsDiffAction *)selfCopy inspectDiff:diff withContext:&v15, diff, settings, context, *&type];

  if (v15)
  {
    _keyWindowSceneObserver = [scene _keyWindowSceneObserver];
    [(_UIKeyWindowSceneObserver *)_keyWindowSceneObserver evaluateTargetOfEventDeferringEnvironments];
  }
}

@end