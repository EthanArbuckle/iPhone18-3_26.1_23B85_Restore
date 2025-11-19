@interface UISceneSendNotificationResponseActionCallbackForScene
@end

@implementation UISceneSendNotificationResponseActionCallbackForScene

void ___UISceneSendNotificationResponseActionCallbackForScene_block_invoke(uint64_t a1)
{
  v2 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = UIApp;
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 _updateSnapshotAndStateRestorationWithAction:v5 windowScene:v6];
  }
}

@end