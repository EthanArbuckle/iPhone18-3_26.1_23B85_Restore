@interface UIApplicationUsesAlternateFont
@end

@implementation UIApplicationUsesAlternateFont

void ___UIApplicationUsesAlternateFont_block_invoke()
{
  if (os_variant_has_internal_diagnostics())
  {
    v0 = CFPreferencesCopyAppValue(@"UIUseAlternateFont", *MEMORY[0x1E695E890]);
    v1 = v0;
    if (v0)
    {
      v4 = v0;
      v2 = objc_opt_respondsToSelector();
      v1 = v4;
      if (v2)
      {
        v3 = [v4 BOOLValue];
        v1 = v4;
        byte_1EA992DE2 = v3;
      }
    }
  }
}

@end