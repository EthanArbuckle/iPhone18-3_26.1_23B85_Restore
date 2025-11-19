@interface UIViewControllerModernContentOverlayInsetsPropagation
@end

@implementation UIViewControllerModernContentOverlayInsetsPropagation

void ___UIViewControllerModernContentOverlayInsetsPropagation_block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    v1 = [v0 objectForKey:@"ModernContentOverlayInsetsPropagation"];

    if (v1 || (_UIKitPreferencesOnce(), v2 = objc_claimAutoreleasedReturnValue(), [v2 objectForKey:@"ModernContentOverlayInsetsPropagation"], v1 = objc_claimAutoreleasedReturnValue(), v2, v1))
    {
      v3 = [v1 BOOLValue];
    }

    else
    {
      v3 = 1;
    }

    byte_1ED498594 = v3;
  }
}

@end