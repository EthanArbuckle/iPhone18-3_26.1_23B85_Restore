@interface UIDevice(SpringBoardFoundation)
- (uint64_t)sbf_animatedBlurRadiusGraphicsQuality;
- (uint64_t)sbf_featherBlurGraphicsQuality;
- (uint64_t)sbf_homeGrabberGraphicsQuality;
- (uint64_t)sbf_homescreenBlurGraphicsQuality;
- (uint64_t)sbf_homescreenFolderBackgroundGraphicsQuality;
- (uint64_t)sbf_isLowEndForSlideOverMoveGesture;
@end

@implementation UIDevice(SpringBoardFoundation)

- (uint64_t)sbf_homeGrabberGraphicsQuality
{
  if (SBFIsReducedQualityDevice_onceToken != -1)
  {
    [UIDevice(SpringBoardFoundation) sbf_homeGrabberGraphicsQuality];
  }

  if (SBFIsReducedQualityDevice_isReducedQualityDevice)
  {
    return -100;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)sbf_animatedBlurRadiusGraphicsQuality
{
  if (SBFIsReducedQualityDevice_onceToken != -1)
  {
    [UIDevice(SpringBoardFoundation) sbf_homeGrabberGraphicsQuality];
  }

  if (SBFIsReducedQualityDevice_isReducedQualityDevice)
  {
    return 40;
  }

  else
  {
    return 100;
  }
}

- (uint64_t)sbf_homescreenFolderBackgroundGraphicsQuality
{
  if (SBFIsReducedQualityDevice_onceToken != -1)
  {
    [UIDevice(SpringBoardFoundation) sbf_homeGrabberGraphicsQuality];
  }

  if (SBFIsReducedQualityDevice_isReducedQualityDevice)
  {
    return 40;
  }

  else
  {
    return 100;
  }
}

- (uint64_t)sbf_featherBlurGraphicsQuality
{
  if (SBFIsReducedQualityDevice_onceToken != -1)
  {
    [UIDevice(SpringBoardFoundation) sbf_homeGrabberGraphicsQuality];
  }

  if (SBFIsReducedQualityDevice_isReducedQualityDevice)
  {
    return 40;
  }

  else
  {
    return 100;
  }
}

- (uint64_t)sbf_isLowEndForSlideOverMoveGesture
{
  if (SBFIsReducedQualityDevice_onceToken != -1)
  {
    [UIDevice(SpringBoardFoundation) sbf_homeGrabberGraphicsQuality];
  }

  return SBFIsReducedQualityDevice_isReducedQualityDevice;
}

- (uint64_t)sbf_homescreenBlurGraphicsQuality
{
  if (SBFIsReducedQualityDevice_onceToken != -1)
  {
    [UIDevice(SpringBoardFoundation) sbf_homeGrabberGraphicsQuality];
  }

  if (SBFIsReducedQualityDevice_isReducedQualityDevice)
  {
    return 10;
  }

  else
  {
    return 100;
  }
}

@end