@interface PHAsset(PEAsset)
- (uint64_t)isAnimatedImage;
- (uint64_t)isTrimmableType;
- (uint64_t)livePhotoVisibilityState;
- (uint64_t)originalEXIFOrientation;
- (uint64_t)originalFilesize;
- (void)photoIrisStillDisplayTime;
- (void)photoIrisVideoDuration;
@end

@implementation PHAsset(PEAsset)

- (uint64_t)livePhotoVisibilityState
{
  v1 = [a1 photoIrisProperties];
  v2 = [v1 photoIrisVisibilityState];

  return v2;
}

- (uint64_t)originalFilesize
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 originalMetadataProperties];
  v3 = [v2 originalFilesize];

  return v3;
}

- (uint64_t)originalEXIFOrientation
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 originalMetadataProperties];
  v3 = [v2 originalExifOrientation];

  return v3;
}

- (uint64_t)isTrimmableType
{
  if ([a1 isLivePhoto])
  {
    return 1;
  }

  return [a1 isVideo];
}

- (uint64_t)isAnimatedImage
{
  if ([a1 hasAdjustments])
  {
    return 0;
  }

  if ([a1 isAnimatedGIF])
  {
    return 1;
  }

  return [a1 isHEICSequence];
}

- (void)photoIrisVideoDuration
{
  [a1 fetchPropertySetsIfNeeded];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = [a1 photoIrisProperties];
  if (v4)
  {
    v5 = v4;
    [v4 photoIrisVideoDuration];
    v4 = v5;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

- (void)photoIrisStillDisplayTime
{
  [a1 fetchPropertySetsIfNeeded];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = [a1 photoIrisProperties];
  if (v4)
  {
    v5 = v4;
    [v4 photoIrisStillDisplayTime];
    v4 = v5;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

@end