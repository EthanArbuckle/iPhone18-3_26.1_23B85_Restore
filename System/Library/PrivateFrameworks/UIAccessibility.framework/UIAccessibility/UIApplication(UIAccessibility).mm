@interface UIApplication(UIAccessibility)
- (double)_accessibilityMaximumAllowedOutOfBoundsPercent;
- (uint64_t)_accessibilityIsAppReadyToBeProbed;
- (void)_accessibilitySetIsDictationListeningOverride:()UIAccessibility;
- (void)setAccessibilityKeyboardKeyDispatchOverride:()UIAccessibility;
@end

@implementation UIApplication(UIAccessibility)

- (void)setAccessibilityKeyboardKeyDispatchOverride:()UIAccessibility
{
  v3 = _Block_copy(aBlock);
  __UIAccessibilitySetAssociatedObject();
}

- (double)_accessibilityMaximumAllowedOutOfBoundsPercent
{
  if (UIAccessibilityIsWidgetExtension_onceToken != -1)
  {
    UIAccessibilityIsWidgetExtension_cold_1();
  }

  result = 1.0;
  if (UIAccessibilityIsWidgetExtension_IsWidget)
  {
    return 0.5;
  }

  return result;
}

- (uint64_t)_accessibilityIsAppReadyToBeProbed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v5 = 0;
  AXPerformSafeBlock();
  if (AXProcessIsSpringBoard())
  {
    _AXLogWithFacility();
    v0 = 0;
  }

  else if (v7[3])
  {
    v0 = *(v3 + 24);
  }

  else
  {
    v0 = 1;
    if ((_accessibilityIsAppReadyToBeProbed_EmittedLogSpew & 1) == 0)
    {
      _AXLogWithFacility();
      _accessibilityIsAppReadyToBeProbed_EmittedLogSpew = 1;
    }
  }

  _Block_object_dispose(&v2, 8);
  _Block_object_dispose(&v6, 8);
  return v0 & 1;
}

- (void)_accessibilitySetIsDictationListeningOverride:()UIAccessibility
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1A9B83000, v5, OS_LOG_TYPE_DEFAULT, "Set dictation override: %@", &v6, 0xCu);
  }

  [a1 _accessibilitySetRetainedValue:v4 forKey:@"_accessibilityIsDictationListeningOverride"];
}

@end