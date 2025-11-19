@interface UISceneFocusSystemHostComponent
@end

@implementation UISceneFocusSystemHostComponent

id __45___UISceneFocusSystemHostComponent_setScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained debugDescription];

  return v2;
}

void __82___UISceneFocusSystemHostComponent_beginFocusSystemActivationAssertionWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [(_UISceneFocusSystemHostComponent *)WeakRetained _updateAssertionIdentifiersWithIdentifier:0 addAssertion:?];
    WeakRetained = v3;
  }
}

@end