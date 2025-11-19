@interface UIMotionEffectsAreSupported
@end

@implementation UIMotionEffectsAreSupported

void ___UIMotionEffectsAreSupported_block_invoke()
{
  v5 = MGCopyAnswer();
  _MergedGlobals_13_4 = [v5 BOOLValue];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v1 = v5;
  if (has_internal_diagnostics)
  {
    v2 = _UIKitUserDefaults();
    v3 = [v2 objectForKey:@"UIMotionEffectsEnabled"];
    v4 = v3;
    if (v3 && [v3 BOOLValue])
    {
      _MergedGlobals_13_4 = 1;
    }

    v1 = v5;
  }
}

@end