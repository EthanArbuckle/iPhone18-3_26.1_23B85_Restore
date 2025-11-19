@interface _UIWindowSceneUserInterfaceStyleSettingsDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsUserInterfaceStyleDiffInspector;
- (void)_animateUserInterfaceStyleChangeInScene:(id)a3 transitionContext:(id)a4 applyChangesBlock:(id)a5;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
@end

@implementation _UIWindowSceneUserInterfaceStyleSettingsDiffAction

- (UIApplicationSceneSettingsDiffInspector)sceneSettingsUserInterfaceStyleDiffInspector
{
  sceneSettingsUserInterfaceStyleDiffInspector = self->_sceneSettingsUserInterfaceStyleDiffInspector;
  if (!sceneSettingsUserInterfaceStyleDiffInspector)
  {
    v4 = objc_opt_new();
    v5 = self->_sceneSettingsUserInterfaceStyleDiffInspector;
    self->_sceneSettingsUserInterfaceStyleDiffInspector = v4;

    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsUserInterfaceStyleDiffInspector observeUserInterfaceStyleWithBlock:&__block_literal_global_479];
    sceneSettingsUserInterfaceStyleDiffInspector = self->_sceneSettingsUserInterfaceStyleDiffInspector;
  }

  return sceneSettingsUserInterfaceStyleDiffInspector;
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v39 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && ([v13 conformsToProtocol:&unk_1EFF0F0C0] & 1) == 0)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"_UIWindowSceneUserInterfaceStyleSettingsDiffAction.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]] || [uiScene conformsToProtocol:@protocol(_UISceneUIWindowHosting)]"}];
  }

  v32 = 0;
  v17 = [(_UIWindowSceneUserInterfaceStyleSettingsDiffAction *)self sceneSettingsUserInterfaceStyleDiffInspector];
  [v17 inspectDiff:v16 withContext:&v32];

  if (v32)
  {
    v18 = [v15 animationFence];
    [v13 _synchronizeDrawingWithFence:v18];

    v19 = [v14 uiSettings];
    v20 = [v19 userInterfaceStyle];
    v21 = *(__UILogGetCategoryCachedImpl("InterfaceStyle", &_performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType____s_category_0) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v13;
      if (v22)
      {
        v23 = MEMORY[0x1E696AEC0];
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [v23 stringWithFormat:@"<%@: %p>", v25, v22];
      }

      else
      {
        v26 = @"(nil)";
      }

      v27 = v26;
      v28 = [v22 _persistenceIdentifier];
      *buf = 134349570;
      v34 = v20;
      v35 = 2114;
      v36 = v26;
      v37 = 2114;
      v38 = v28;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "Scene did update interface style to %{public}ld, %{public}@ (%{public}@)", buf, 0x20u);
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __164___UIWindowSceneUserInterfaceStyleSettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke;
    v30[3] = &unk_1E70F3590;
    v31 = v13;
    [(_UIWindowSceneUserInterfaceStyleSettingsDiffAction *)self _animateUserInterfaceStyleChangeInScene:v31 transitionContext:v15 applyChangesBlock:v30];
  }
}

- (void)_animateUserInterfaceStyleChangeInScene:(id)a3 transitionContext:(id)a4 applyChangesBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 animationSettings];
  if (!v10 || ([UIApp _isSpringBoard] & 1) != 0 || (_UIApplicationProcessIsDruid() & 1) != 0)
  {
    v9[2](v9);
  }

  else
  {
    v11 = [[_UIWindowSceneUserInterfaceStyleAnimationSnapshotWindow alloc] initWithWindowScene:v7];
    [(UIWindow *)v11 setWindowLevel:15000001.0];
    [(UIView *)v11 bounds];
    v16 = _UISnapshotScreenAtViewRectAfterCommit(v11, 0, v12, v13, v14, v15);
    [(UIView *)v11 addSubview:v16];
    [(UIWindow *)v11 setHidden:0];
    v9[2](v9);
    v17 = MEMORY[0x1E698E608];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __130___UIWindowSceneUserInterfaceStyleSettingsDiffAction__animateUserInterfaceStyleChangeInScene_transitionContext_applyChangesBlock___block_invoke;
    v21[3] = &unk_1E70F5AC0;
    v22 = v11;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __130___UIWindowSceneUserInterfaceStyleSettingsDiffAction__animateUserInterfaceStyleChangeInScene_transitionContext_applyChangesBlock___block_invoke_2;
    v19[3] = &unk_1E70F5AC0;
    v20 = v22;
    v18 = v22;
    [v17 tryAnimatingWithSettings:v10 actions:v21 completion:v19];
  }
}

@end