@interface SBUIBackgroundContentSceneSettingsDiffAction
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
@end

@implementation SBUIBackgroundContentSceneSettingsDiffAction

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = objc_opt_class();
  v19 = v10;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v19;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = [v15 delegate];
  v17 = [v12 settings];

  v18 = [v11 containsProperty:sel_isContentObscured];
  if (v18 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v16 backgroundContentScene:v15 contentObscuredDidChange:{objc_msgSend(v17, "isContentObscured")}];
  }
}

@end