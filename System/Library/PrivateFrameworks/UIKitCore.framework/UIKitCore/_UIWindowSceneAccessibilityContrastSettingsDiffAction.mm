@interface _UIWindowSceneAccessibilityContrastSettingsDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsAccessibilityContrastDiffInspector;
- (void)_animateAccessibilityContrastChangeInScene:(id)scene transitionContext:(id)context applyChangesBlock:(id)block;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
@end

@implementation _UIWindowSceneAccessibilityContrastSettingsDiffAction

- (UIApplicationSceneSettingsDiffInspector)sceneSettingsAccessibilityContrastDiffInspector
{
  sceneSettingsAccessibilityContrastDiffInspector = self->_sceneSettingsAccessibilityContrastDiffInspector;
  if (!sceneSettingsAccessibilityContrastDiffInspector)
  {
    v4 = objc_opt_new();
    v5 = self->_sceneSettingsAccessibilityContrastDiffInspector;
    self->_sceneSettingsAccessibilityContrastDiffInspector = v4;

    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsAccessibilityContrastDiffInspector observeAccessibilityContrastWithBlock:&__block_literal_global_133];
    sceneSettingsAccessibilityContrastDiffInspector = self->_sceneSettingsAccessibilityContrastDiffInspector;
  }

  return sceneSettingsAccessibilityContrastDiffInspector;
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  contextCopy = context;
  diffCopy = diff;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && ([sceneCopy conformsToProtocol:&unk_1EFF0F0C0] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIWindowSceneAccessibilityContrastSettingsDiffAction.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene class]] || [uiScene conformsToProtocol:@protocol(_UISceneUIWindowHosting)]"}];
  }

  v20 = 0;
  sceneSettingsAccessibilityContrastDiffInspector = [(_UIWindowSceneAccessibilityContrastSettingsDiffAction *)self sceneSettingsAccessibilityContrastDiffInspector];
  [sceneSettingsAccessibilityContrastDiffInspector inspectDiff:diffCopy withContext:&v20];

  if (v20)
  {
    animationFence = [contextCopy animationFence];
    [sceneCopy _synchronizeDrawingWithFence:animationFence];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __167___UIWindowSceneAccessibilityContrastSettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke;
    v18[3] = &unk_1E70F3590;
    v19 = sceneCopy;
    [(_UIWindowSceneAccessibilityContrastSettingsDiffAction *)self _animateAccessibilityContrastChangeInScene:v19 transitionContext:contextCopy applyChangesBlock:v18];
  }
}

- (void)_animateAccessibilityContrastChangeInScene:(id)scene transitionContext:(id)context applyChangesBlock:(id)block
{
  sceneCopy = scene;
  blockCopy = block;
  animationSettings = [context animationSettings];
  if (animationSettings && ([UIApp _isSpringBoard] & 1) == 0)
  {
    v10 = [[_UIWindowSceneAccessibilityContrastAnimationSnapshotWindow alloc] initWithWindowScene:sceneCopy];
    [(UIWindow *)v10 setWindowLevel:15000001.0];
    [(UIView *)v10 bounds];
    v15 = _UISnapshotScreenAtViewRectAfterCommit(v10, 0, v11, v12, v13, v14);
    [(UIView *)v10 addSubview:v15];
    [(UIWindow *)v10 setHidden:0];
    blockCopy[2](blockCopy);
    v16 = MEMORY[0x1E698E608];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __136___UIWindowSceneAccessibilityContrastSettingsDiffAction__animateAccessibilityContrastChangeInScene_transitionContext_applyChangesBlock___block_invoke;
    v20[3] = &unk_1E70F5AC0;
    v21 = v10;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __136___UIWindowSceneAccessibilityContrastSettingsDiffAction__animateAccessibilityContrastChangeInScene_transitionContext_applyChangesBlock___block_invoke_2;
    v18[3] = &unk_1E70F5AC0;
    v19 = v21;
    v17 = v21;
    [v16 tryAnimatingWithSettings:animationSettings actions:v20 completion:v18];
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

@end