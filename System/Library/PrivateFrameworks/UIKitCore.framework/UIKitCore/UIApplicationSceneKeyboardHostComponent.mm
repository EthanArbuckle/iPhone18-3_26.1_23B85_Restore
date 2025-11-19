@interface UIApplicationSceneKeyboardHostComponent
@end

@implementation UIApplicationSceneKeyboardHostComponent

void __83___UIApplicationSceneKeyboardHostComponent_suppressKeyboardFocusRequestsForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    --WeakRetained[5];
    v2 = WeakRetained;
    [WeakRetained evaluateKeyboardSuppressionSettingForActiveAssertions];
    WeakRetained = v2;
  }
}

@end