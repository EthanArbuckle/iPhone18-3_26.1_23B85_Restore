@interface NSObject
@end

@implementation NSObject

uint64_t __56__NSObject_UIAccessibilityAction__accessibilityActivate__block_invoke()
{
  _AXSApplicationAccessibilitySetEnabled();
  v0 = UIApp;

  return [v0 _accessibilityInit];
}

void __54__NSObject_AccessibilityActivation___keyboardActivate__block_invoke(uint64_t a1)
{
  [UIApp _enqueueHIDEvent:*(a1 + 32)];
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __63__NSObject_ConformsToProtocolCached__conformsToProtocolCached___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _MergedGlobals_1154;
  _MergedGlobals_1154 = v0;
}

@end