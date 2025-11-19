@interface UIWindowSceneUserInterfaceStyleSettingsDiffAction
@end

@implementation UIWindowSceneUserInterfaceStyleSettingsDiffAction

void __164___UIWindowSceneUserInterfaceStyleSettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 _updateSceneTraitsAndPushTraitsToScreen:1 callParentWillTransitionToTraitCollection:1];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"UIWindowSceneDidUpdateSystemUserInterfaceStyle" object:*(a1 + 32)];
}

uint64_t __130___UIWindowSceneUserInterfaceStyleSettingsDiffAction__animateUserInterfaceStyleChangeInScene_transitionContext_applyChangesBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  v2 = *(a1 + 32);

  return [v2 setWindowScene:0];
}

@end