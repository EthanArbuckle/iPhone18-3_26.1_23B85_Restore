@interface UIBackdropViewHasInternalSettingsLowQualityBlurOverride
@end

@implementation UIBackdropViewHasInternalSettingsLowQualityBlurOverride

void ___UIBackdropViewHasInternalSettingsLowQualityBlurOverride_block_invoke()
{
  if (os_variant_has_internal_diagnostics())
  {
    v2 = _UIKitPreferencesOnce();
    v0 = [v2 objectForKey:@"UIBackdropViewUsesLowQualityBlur"];
    v1 = v0;
    if (v0 && [v0 BOOLValue])
    {
      byte_1ED49AF5A = 1;
    }
  }
}

@end