@interface UIViewControllerDetachedInheritsContentOverlayInsetsFromSuperview
@end

@implementation UIViewControllerDetachedInheritsContentOverlayInsetsFromSuperview

void ___UIViewControllerDetachedInheritsContentOverlayInsetsFromSuperview_block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    v1 = [v0 objectForKey:@"UIViewControllerDetachedInheritsContentOverlayInsetsFromSuperview"];

    if (v1 || (_UIKitPreferencesOnce(), v2 = objc_claimAutoreleasedReturnValue(), [v2 objectForKey:@"UIViewControllerDetachedInheritsContentOverlayInsetsFromSuperview"], v1 = objc_claimAutoreleasedReturnValue(), v2, v1))
    {
      v3 = [v1 BOOLValue];
    }

    else
    {
      v3 = dyld_program_sdk_at_least();
    }

    byte_1ED498599 = v3;
  }
}

@end