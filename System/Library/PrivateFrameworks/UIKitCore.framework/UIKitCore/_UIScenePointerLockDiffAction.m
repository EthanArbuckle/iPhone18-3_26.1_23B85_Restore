@interface _UIScenePointerLockDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsPointerLockedDiffInspector;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
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

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v11 = a3;
  v12 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && ([v11 conformsToProtocol:&unk_1EFF0F0C0] & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIScenePointerLockDiffAction.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]] || [uiScene conformsToProtocol:@protocol(_UISceneUIWindowHosting)]"}];
  }

  v16 = 0;
  v13 = [(_UIScenePointerLockDiffAction *)self sceneSettingsPointerLockedDiffInspector];
  [v13 inspectDiff:v12 withContext:&v16];

  if (v16)
  {
    v14 = [v11 pointerLockState];
    [v14 _pointerLockStatusUpdated];
  }
}

@end