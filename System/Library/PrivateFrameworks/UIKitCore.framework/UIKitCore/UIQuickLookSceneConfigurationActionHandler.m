@interface UIQuickLookSceneConfigurationActionHandler
@end

@implementation UIQuickLookSceneConfigurationActionHandler

void __118___UIQuickLookSceneConfigurationActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 UIActionType] == 42)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

@end