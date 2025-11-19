@interface UIWindowHostingSceneSystemReferenceAngleDiffAction
@end

@implementation UIWindowHostingSceneSystemReferenceAngleDiffAction

void __165___UIWindowHostingSceneSystemReferenceAngleDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __165___UIWindowHostingSceneSystemReferenceAngleDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_2;
  v2[3] = &unk_1E70F3CD8;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(v1, v2, 0);
}

void __165___UIWindowHostingSceneSystemReferenceAngleDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_2(uint64_t a1)
{
  v2 = +[_UISystemReferenceAngleMultiplexer sharedMultiplexer];
  [v2 systemReferenceAngleDidChange:*(a1 + 48) mode:*(a1 + 32) forWindows:*(a1 + 40)];
}

@end