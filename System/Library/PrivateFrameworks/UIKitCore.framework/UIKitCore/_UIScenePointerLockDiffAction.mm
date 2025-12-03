@interface _UIScenePointerLockDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsPointerLockedDiffInspector;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
@end

@implementation _UIScenePointerLockDiffAction

- (UIApplicationSceneSettingsDiffInspector)sceneSettingsPointerLockedDiffInspector
{
  sceneSettingsPointerLockedDiffInspector = self->_sceneSettingsPointerLockedDiffInspector;
  if (!sceneSettingsPointerLockedDiffInspector)
  {
    v4 = objc_opt_new();
    v5 = self->_sceneSettingsPointerLockedDiffInspector;
    self->_sceneSettingsPointerLockedDiffInspector = v4;

    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsPointerLockedDiffInspector observePointerLockStatusWithBlock:&__block_literal_global_641];
    sceneSettingsPointerLockedDiffInspector = self->_sceneSettingsPointerLockedDiffInspector;
  }

  return sceneSettingsPointerLockedDiffInspector;
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  diffCopy = diff;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && ([sceneCopy conformsToProtocol:&unk_1EFF0F0C0] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScenePointerLockDiffAction.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]] || [uiScene conformsToProtocol:@protocol(_UISceneUIWindowHosting)]"}];
  }

  v16 = 0;
  sceneSettingsPointerLockedDiffInspector = [(_UIScenePointerLockDiffAction *)self sceneSettingsPointerLockedDiffInspector];
  [sceneSettingsPointerLockedDiffInspector inspectDiff:diffCopy withContext:&v16];

  if (v16)
  {
    pointerLockState = [sceneCopy pointerLockState];
    [pointerLockState _pointerLockStatusUpdated];
  }
}

@end