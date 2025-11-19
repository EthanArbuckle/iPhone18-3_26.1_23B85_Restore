@interface AXSAutomationPreferredLocalization
@end

@implementation AXSAutomationPreferredLocalization

void ___AXSAutomationPreferredLocalization_block_invoke()
{
  _AXSAutomationPreferredLocalization_loc = _copyValuePreferenceApp(kAXSAutomationPreferredLanguagePreference, 0, 0);
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v0 = [v3 arrayForKey:@"AppleLanguages"];
  v1 = [v0 firstObject];
  v2 = [v1 isEqualToString:_AXSAutomationPreferredLocalization_loc];

  if (v2)
  {
    CFRelease(_AXSAutomationPreferredLocalization_loc);
    _AXSAutomationPreferredLocalization_loc = 0;
  }
}

@end