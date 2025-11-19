@interface UINavigationController(PXImageModulationManager)
- (double)px_HDRFocus;
- (double)px_imageModulationIntensity;
- (uint64_t)px_isImageModulationEnabled;
@end

@implementation UINavigationController(PXImageModulationManager)

- (double)px_imageModulationIntensity
{
  v2 = [a1 px_topViewController];
  [v2 px_imageModulationIntensity];
  v4 = v3;

  if (px_imageModulationIntensity_onceToken != -1)
  {
    dispatch_once(&px_imageModulationIntensity_onceToken, &__block_literal_global_301_122584);
  }

  if (px_imageModulationIntensity_hookExists != 1)
  {
    return v4;
  }

  [a1 px_imageModulationIntensityWithProposedValue:v4];
  return result;
}

- (double)px_HDRFocus
{
  v1 = [a1 px_topViewController];
  [v1 px_HDRFocus];
  v3 = v2;

  return v3;
}

- (uint64_t)px_isImageModulationEnabled
{
  v1 = [a1 px_topViewController];
  v2 = [v1 px_isImageModulationEnabled];

  return v2;
}

@end