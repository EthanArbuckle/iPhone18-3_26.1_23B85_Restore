@interface UIBarsApplyChromelessEverywhere
@end

@implementation UIBarsApplyChromelessEverywhere

void ___UIBarsApplyChromelessEverywhere_block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    v1 = [v0 objectForKey:@"UIBarsApplyChromelessEverywhere"];

    if (v1 || (_UIKitPreferencesOnce(), v2 = objc_claimAutoreleasedReturnValue(), [v2 objectForKey:@"UIBarsApplyChromelessEverywhere"], v1 = objc_claimAutoreleasedReturnValue(), v2, v1))
    {
      v3 = [v1 BOOLValue];
    }

    else
    {
      v3 = 1;
    }

    byte_1ED49BF63 = v3;
  }
}

@end