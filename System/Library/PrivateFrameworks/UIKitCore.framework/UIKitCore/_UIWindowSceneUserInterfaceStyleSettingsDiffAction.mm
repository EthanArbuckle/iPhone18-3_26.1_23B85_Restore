@interface _UIWindowSceneUserInterfaceStyleSettingsDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsUserInterfaceStyleDiffInspector;
- (void)_animateUserInterfaceStyleChangeInScene:(id)scene transitionContext:(id)context applyChangesBlock:(id)block;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
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

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  v39 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  sSceneCopy = sScene;
  contextCopy = context;
  diffCopy = diff;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && ([sceneCopy conformsToProtocol:&unk_1EFF0F0C0] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIWindowSceneUserInterfaceStyleSettingsDiffAction.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]] || [uiScene conformsToProtocol:@protocol(_UISceneUIWindowHosting)]"}];
  }

  v32 = 0;
  sceneSettingsUserInterfaceStyleDiffInspector = [(_UIWindowSceneUserInterfaceStyleSettingsDiffAction *)self sceneSettingsUserInterfaceStyleDiffInspector];
  [sceneSettingsUserInterfaceStyleDiffInspector inspectDiff:diffCopy withContext:&v32];

  if (v32)
  {
    animationFence = [contextCopy animationFence];
    [sceneCopy _synchronizeDrawingWithFence:animationFence];

    uiSettings = [sSceneCopy uiSettings];
    userInterfaceStyle = [uiSettings userInterfaceStyle];
    v21 = *(__UILogGetCategoryCachedImpl("InterfaceStyle", &_performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType____s_category_0) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = sceneCopy;
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
      _persistenceIdentifier = [v22 _persistenceIdentifier];
      *buf = 134349570;
      v34 = userInterfaceStyle;
      v35 = 2114;
      v36 = v26;
      v37 = 2114;
      v38 = _persistenceIdentifier;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "Scene did update interface style to %{public}ld, %{public}@ (%{public}@)", buf, 0x20u);
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __164___UIWindowSceneUserInterfaceStyleSettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke;
    v30[3] = &unk_1E70F3590;
    v31 = sceneCopy;
    [(_UIWindowSceneUserInterfaceStyleSettingsDiffAction *)self _animateUserInterfaceStyleChangeInScene:v31 transitionContext:contextCopy applyChangesBlock:v30];
  }
}

- (void)_animateUserInterfaceStyleChangeInScene:(id)scene transitionContext:(id)context applyChangesBlock:(id)block
{
  sceneCopy = scene;
  contextCopy = context;
  blockCopy = block;
  animationSettings = [contextCopy animationSettings];
  if (!animationSettings || ([UIApp _isSpringBoard] & 1) != 0 || (_UIApplicationProcessIsDruid() & 1) != 0)
  {
    blockCopy[2](blockCopy);
  }

  else
  {
    v11 = [[_UIWindowSceneUserInterfaceStyleAnimationSnapshotWindow alloc] initWithWindowScene:sceneCopy];
    [(UIWindow *)v11 setWindowLevel:15000001.0];
    [(UIView *)v11 bounds];
    v16 = _UISnapshotScreenAtViewRectAfterCommit(v11, 0, v12, v13, v14, v15);
    [(UIView *)v11 addSubview:v16];
    [(UIWindow *)v11 setHidden:0];
    blockCopy[2](blockCopy);
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
    [v17 tryAnimatingWithSettings:animationSettings actions:v21 completion:v19];
  }
}

@end