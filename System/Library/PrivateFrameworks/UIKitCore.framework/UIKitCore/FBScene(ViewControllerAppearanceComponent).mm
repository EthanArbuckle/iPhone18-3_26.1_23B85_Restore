@interface FBScene(ViewControllerAppearanceComponent)
- (uint64_t)_viewControllerAppearanceComponent;
@end

@implementation FBScene(ViewControllerAppearanceComponent)

- (uint64_t)_viewControllerAppearanceComponent
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [self componentForExtension:v2 ofClass:v3];
}

@end