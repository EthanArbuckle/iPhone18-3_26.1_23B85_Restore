@interface UITabBarController(PXImageModulationManager)
- (double)px_HDRFocus;
- (double)px_imageModulationIntensity;
- (uint64_t)px_isImageModulationEnabled;
@end

@implementation UITabBarController(PXImageModulationManager)

- (double)px_imageModulationIntensity
{
  v1 = [a1 selectedViewController];
  [v1 px_imageModulationIntensity];
  v3 = v2;

  return v3;
}

- (double)px_HDRFocus
{
  v1 = [a1 selectedViewController];
  [v1 px_HDRFocus];
  v3 = v2;

  return v3;
}

- (uint64_t)px_isImageModulationEnabled
{
  v1 = [a1 selectedViewController];
  v2 = [v1 px_isImageModulationEnabled];

  return v2;
}

@end