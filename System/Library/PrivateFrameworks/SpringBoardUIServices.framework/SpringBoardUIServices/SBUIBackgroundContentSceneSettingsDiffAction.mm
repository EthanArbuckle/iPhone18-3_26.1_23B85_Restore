@interface SBUIBackgroundContentSceneSettingsDiffAction
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
@end

@implementation SBUIBackgroundContentSceneSettingsDiffAction

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  diffCopy = diff;
  sSceneCopy = sScene;
  v13 = objc_opt_class();
  v19 = sceneCopy;
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

  delegate = [v15 delegate];
  settings = [sSceneCopy settings];

  v18 = [diffCopy containsProperty:sel_isContentObscured];
  if (v18 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate backgroundContentScene:v15 contentObscuredDidChange:{objc_msgSend(settings, "isContentObscured")}];
  }
}

@end