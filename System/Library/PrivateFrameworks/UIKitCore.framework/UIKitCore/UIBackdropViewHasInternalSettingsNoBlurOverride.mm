@interface UIBackdropViewHasInternalSettingsNoBlurOverride
@end

@implementation UIBackdropViewHasInternalSettingsNoBlurOverride

void ___UIBackdropViewHasInternalSettingsNoBlurOverride_block_invoke()
{
  if (os_variant_has_internal_diagnostics())
  {
    v2 = _UIKitPreferencesOnce();
    v0 = [v2 objectForKey:@"UIBackdropViewNoBlur"];
    v1 = v0;
    if (v0 && [v0 BOOLValue])
    {
      byte_1ED49AF59 = 1;
    }
  }
}

@end