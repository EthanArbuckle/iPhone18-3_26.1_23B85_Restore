@interface UINavigationController(PXImageModulationManager)
- (double)px_HDRFocus;
- (double)px_imageModulationIntensity;
- (uint64_t)px_isImageModulationEnabled;
@end

@implementation UINavigationController(PXImageModulationManager)

- (double)px_imageModulationIntensity
{
  px_topViewController = [self px_topViewController];
  [px_topViewController px_imageModulationIntensity];
  v4 = v3;

  if (px_imageModulationIntensity_onceToken != -1)
  {
    dispatch_once(&px_imageModulationIntensity_onceToken, &__block_literal_global_301_122584);
  }

  if (px_imageModulationIntensity_hookExists != 1)
  {
    return v4;
  }

  [self px_imageModulationIntensityWithProposedValue:v4];
  return result;
}

- (double)px_HDRFocus
{
  px_topViewController = [self px_topViewController];
  [px_topViewController px_HDRFocus];
  v3 = v2;

  return v3;
}

- (uint64_t)px_isImageModulationEnabled
{
  px_topViewController = [self px_topViewController];
  px_isImageModulationEnabled = [px_topViewController px_isImageModulationEnabled];

  return px_isImageModulationEnabled;
}

@end