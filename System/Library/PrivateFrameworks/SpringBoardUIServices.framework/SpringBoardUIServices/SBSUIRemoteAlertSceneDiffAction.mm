@interface SBSUIRemoteAlertSceneDiffAction
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
@end

@implementation SBSUIRemoteAlertSceneDiffAction

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  sSceneCopy = sScene;
  diffCopy = diff;
  contextCopy = context;
  v22 = sceneCopy;
  delegate = [v22 delegate];
  if ([contextCopy isInvalidatedForHostInvalidation])
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:v22];
    }
  }

  else
  {
    remoteAlertActivationContext = [contextCopy remoteAlertActivationContext];

    if (remoteAlertActivationContext)
    {
      sBSUI_remoteAlertComponent = [sSceneCopy SBSUI_remoteAlertComponent];
      remoteAlertActivationContext2 = [contextCopy remoteAlertActivationContext];
      [sBSUI_remoteAlertComponent setActivationContext:remoteAlertActivationContext2];

      if (objc_opt_respondsToSelector())
      {
        [delegate remoteAlertSceneDidUpdateActivationContext:v22];
      }
    }

    buttonActions = [contextCopy buttonActions];
    if (buttonActions && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate remoteAlertScene:v22 handleButtonActions:buttonActions];
    }

    if ([diffCopy containsProperty:sel_isAttachedToWindowedAccessory] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      settings = [sSceneCopy settings];
      isAttachedToWindowedAccessory = [settings isAttachedToWindowedAccessory];
      [settings windowedAccessoryCutoutFrameInScreen];
      [delegate remoteAlertScene:v22 didTransitionToAttachedToWindowedAccessory:isAttachedToWindowedAccessory windowedAccessoryCutoutFrameInScreen:?];
    }
  }
}

@end