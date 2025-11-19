@interface PTUISettingsController
@end

@implementation PTUISettingsController

uint64_t __90__PTUISettingsController_PXSettingsSearch__px_performWithoutAnimations_completionHandler___block_invoke()
{
  [objc_opt_class() px_swizzleMethod:sel_pushViewController_animated_ withMethod:sel__pxswizzled_pushViewController_animated_];
  v0 = objc_opt_class();

  return [v0 px_swizzleMethod:sel_presentViewController_animated_completion_ withMethod:sel__pxswizzled_presentViewController_animated_completion_];
}

@end