@interface _UISceneBaseLifecycleSettingsDiffAction
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
@end

@implementation _UISceneBaseLifecycleSettingsDiffAction

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v10 = a3;
  v11 = a6;
  v12 = a7;
  if ([v10 _hasLifecycle])
  {
    v13 = [v10 _effectiveSettings];
    v14 = _UISceneLifecycleSettingsUpdateBlockWithSceneAndTransitionContext(v10, v11, v13, v12);

    if (v14)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __153___UISceneBaseLifecycleSettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke;
      v15[3] = &unk_1E70FA0C8;
      v19 = v14;
      v16 = v10;
      v17 = v11;
      v18 = v12;
      _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(v18, v15, 0);
    }
  }
}

@end