@interface UIWindowSceneFBSSceneTransitionContextDrivenLifecycleSettingsDiffAction
@end

@implementation UIWindowSceneFBSSceneTransitionContextDrivenLifecycleSettingsDiffAction

void __186___UIWindowSceneFBSSceneTransitionContextDrivenLifecycleSettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setIsRespondingToLifecycleEvent:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 _effectiveSettings];
  v6 = _UISceneLifecycleSettingsUpdateBlockWithSceneAndTransitionContext(v2, v3, v4, *(a1 + 48));

  if (v6)
  {
    v6[2]();
  }

  v5 = +[_UISceneLifecycleMultiplexer sharedInstance];
  [v5 uiScene:*(a1 + 32) transitionedFromState:*(a1 + 40) withTransitionContext:*(a1 + 48)];

  [*(a1 + 32) _setIsRespondingToLifecycleEvent:0];
}

void __186___UIWindowSceneFBSSceneTransitionContextDrivenLifecycleSettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_101(uint64_t a1)
{
  v2 = [*(a1 + 32) _alertControllerStackManager];
  v3 = v2;
  if (*(a1 + 40) == 1)
  {
    [v2 _showHiddenStackedAlertControllers];
  }

  else
  {
    [v2 _hideStackedAlertControllers];
  }

  if (*(a1 + 40) == 1 && (*(UIApp + 177) & 0x20) != 0)
  {
    [UIApp _stopDeactivatingForReason:13];
  }
}

@end