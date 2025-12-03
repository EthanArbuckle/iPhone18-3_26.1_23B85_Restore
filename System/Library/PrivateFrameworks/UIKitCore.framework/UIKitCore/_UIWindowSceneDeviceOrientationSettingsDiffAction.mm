@interface _UIWindowSceneDeviceOrientationSettingsDiffAction
- (FBSSceneSettingsDiffInspector)sceneSettingsDeviceOrientationDiffInspector;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_updateDeviceOrientationWithSettingObserverContext:(id)context windowScene:(id)scene transitionContext:(id)transitionContext;
@end

@implementation _UIWindowSceneDeviceOrientationSettingsDiffAction

- (FBSSceneSettingsDiffInspector)sceneSettingsDeviceOrientationDiffInspector
{
  sceneSettingsDeviceOrientationDiffInspector = self->_sceneSettingsDeviceOrientationDiffInspector;
  if (!sceneSettingsDeviceOrientationDiffInspector)
  {
    v4 = objc_opt_new();
    v5 = self->_sceneSettingsDeviceOrientationDiffInspector;
    self->_sceneSettingsDeviceOrientationDiffInspector = v4;

    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsDeviceOrientationDiffInspector observeDeviceOrientationWithBlock:&__block_literal_global_92];
    sceneSettingsDeviceOrientationDiffInspector = self->_sceneSettingsDeviceOrientationDiffInspector;
  }

  return sceneSettingsDeviceOrientationDiffInspector;
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  contextCopy = context;
  diffCopy = diff;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIWindowSceneDeviceOrientationSettingsDiffAction.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]]"}];
  }

  v18 = 0;
  v15 = sceneCopy;
  sceneSettingsDeviceOrientationDiffInspector = [(_UIWindowSceneDeviceOrientationSettingsDiffAction *)self sceneSettingsDeviceOrientationDiffInspector];
  [sceneSettingsDeviceOrientationDiffInspector inspectDiff:diffCopy withContext:&v18];

  [(_UIWindowSceneDeviceOrientationSettingsDiffAction *)self _updateDeviceOrientationWithSettingObserverContext:v18 windowScene:v15 transitionContext:contextCopy];
}

- (void)_updateDeviceOrientationWithSettingObserverContext:(id)context windowScene:(id)scene transitionContext:(id)transitionContext
{
  contextCopy = context;
  sceneCopy = scene;
  if (contextCopy)
  {
    transitionContextCopy = transitionContext;
    _settingsScene = [sceneCopy _settingsScene];
    _FBSScene = [_settingsScene _FBSScene];

    uiSettings = [_FBSScene uiSettings];
    deviceOrientation = [uiSettings deviceOrientation];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __134___UIWindowSceneDeviceOrientationSettingsDiffAction__updateDeviceOrientationWithSettingObserverContext_windowScene_transitionContext___block_invoke;
    v13[3] = &unk_1E70F9B38;
    v14 = sceneCopy;
    v15 = deviceOrientation;
    _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(transitionContextCopy, v13, 0);
  }
}

@end