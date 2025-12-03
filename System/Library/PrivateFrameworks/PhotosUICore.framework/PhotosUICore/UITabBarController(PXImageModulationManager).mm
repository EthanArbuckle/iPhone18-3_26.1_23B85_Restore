@interface UITabBarController(PXImageModulationManager)
- (double)px_HDRFocus;
- (double)px_imageModulationIntensity;
- (uint64_t)px_isImageModulationEnabled;
@end

@implementation UITabBarController(PXImageModulationManager)

- (double)px_imageModulationIntensity
{
  selectedViewController = [self selectedViewController];
  [selectedViewController px_imageModulationIntensity];
  v3 = v2;

  return v3;
}

- (double)px_HDRFocus
{
  selectedViewController = [self selectedViewController];
  [selectedViewController px_HDRFocus];
  v3 = v2;

  return v3;
}

- (uint64_t)px_isImageModulationEnabled
{
  selectedViewController = [self selectedViewController];
  px_isImageModulationEnabled = [selectedViewController px_isImageModulationEnabled];

  return px_isImageModulationEnabled;
}

@end