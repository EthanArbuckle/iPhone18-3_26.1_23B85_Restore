@interface UISceneBaseLifecycleSettingsDiffAction
@end

@implementation UISceneBaseLifecycleSettingsDiffAction

void __153___UISceneBaseLifecycleSettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke(void *a1)
{
  (*(a1[7] + 16))();
  v2 = +[_UISceneLifecycleMultiplexer sharedInstance];
  [v2 uiScene:a1[4] transitionedFromState:a1[5] withTransitionContext:a1[6]];
}

@end