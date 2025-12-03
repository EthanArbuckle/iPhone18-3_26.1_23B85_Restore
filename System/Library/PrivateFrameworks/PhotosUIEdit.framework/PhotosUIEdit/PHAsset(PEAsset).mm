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
  photoIrisProperties = [self photoIrisProperties];
  photoIrisVisibilityState = [photoIrisProperties photoIrisVisibilityState];

  return photoIrisVisibilityState;
}

- (uint64_t)originalFilesize
{
  [self fetchPropertySetsIfNeeded];
  originalMetadataProperties = [self originalMetadataProperties];
  originalFilesize = [originalMetadataProperties originalFilesize];

  return originalFilesize;
}

- (uint64_t)originalEXIFOrientation
{
  [self fetchPropertySetsIfNeeded];
  originalMetadataProperties = [self originalMetadataProperties];
  originalExifOrientation = [originalMetadataProperties originalExifOrientation];

  return originalExifOrientation;
}

- (uint64_t)isTrimmableType
{
  if ([self isLivePhoto])
  {
    return 1;
  }

  return [self isVideo];
}

- (uint64_t)isAnimatedImage
{
  if ([self hasAdjustments])
  {
    return 0;
  }

  if ([self isAnimatedGIF])
  {
    return 1;
  }

  return [self isHEICSequence];
}

- (void)photoIrisVideoDuration
{
  [self fetchPropertySetsIfNeeded];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  photoIrisProperties = [self photoIrisProperties];
  if (photoIrisProperties)
  {
    v5 = photoIrisProperties;
    [photoIrisProperties photoIrisVideoDuration];
    photoIrisProperties = v5;
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
  [self fetchPropertySetsIfNeeded];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  photoIrisProperties = [self photoIrisProperties];
  if (photoIrisProperties)
  {
    v5 = photoIrisProperties;
    [photoIrisProperties photoIrisStillDisplayTime];
    photoIrisProperties = v5;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

@end