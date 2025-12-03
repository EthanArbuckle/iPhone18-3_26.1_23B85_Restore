@interface PHAsset(PUDisplayAssetAdoption)
- (double)videoKeyFrameSourceTime;
- (id)accessibilityDescription;
- (id)pathForOriginalImageFile;
- (id)pathForOriginalVideoFile;
- (id)pathForTrimmedVideoFile;
- (id)videoObjectBuilder;
- (uint64_t)contentChangeFromDisplayAsset:()PUDisplayAssetAdoption;
- (uint64_t)isCloudPhotoLibraryEnabled;
- (uint64_t)isContentEqualTo:()PUDisplayAssetAdoption;
- (uint64_t)isTrimmableType;
- (uint64_t)livePhotoVisibilityState;
- (uint64_t)originalEXIFOrientation;
- (uint64_t)originalFilesize;
- (void)photoIrisStillDisplayTime;
- (void)photoIrisVideoDuration;
@end

@implementation PHAsset(PUDisplayAssetAdoption)

- (id)accessibilityDescription
{
  descriptionProperties = [self descriptionProperties];
  accessibilityDescription = [descriptionProperties accessibilityDescription];

  return accessibilityDescription;
}

- (double)videoKeyFrameSourceTime
{
  v4 = MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(v4 + 16);
  [self fetchPropertySetsIfNeeded];
  v8 = 0uLL;
  mediaAnalysisProperties = [self mediaAnalysisProperties];
  v6 = mediaAnalysisProperties;
  if (mediaAnalysisProperties)
  {
    [mediaAnalysisProperties bestKeyFrameTime];
  }

  else
  {
    v8 = 0uLL;
  }

  if (BYTE12(v8))
  {
    result = *&v8;
    *a2 = v8;
    *(a2 + 16) = 0;
  }

  return result;
}

- (id)pathForTrimmedVideoFile
{
  pl_managedAsset = [self pl_managedAsset];
  pathForTrimmedVideoFile = [pl_managedAsset pathForTrimmedVideoFile];
  v3 = [pathForTrimmedVideoFile copy];

  return v3;
}

- (id)pathForOriginalVideoFile
{
  pl_managedAsset = [self pl_managedAsset];
  pathForVideoFile = [pl_managedAsset pathForVideoFile];
  v3 = [pathForVideoFile copy];

  return v3;
}

- (id)pathForOriginalImageFile
{
  pl_managedAsset = [self pl_managedAsset];
  pathForOriginalFile = [pl_managedAsset pathForOriginalFile];

  return pathForOriginalFile;
}

- (uint64_t)isCloudPhotoLibraryEnabled
{
  photoLibrary = [self photoLibrary];
  isCloudPhotoLibraryEnabled = [photoLibrary isCloudPhotoLibraryEnabled];

  return isCloudPhotoLibraryEnabled;
}

- (uint64_t)originalEXIFOrientation
{
  [self fetchPropertySetsIfNeeded];
  originalMetadataProperties = [self originalMetadataProperties];
  originalExifOrientation = [originalMetadataProperties originalExifOrientation];

  return originalExifOrientation;
}

- (id)videoObjectBuilder
{
  pl_managedAsset = [self pl_managedAsset];
  isDefaultAdjustedSlomo = [pl_managedAsset isDefaultAdjustedSlomo];
  v3 = [MEMORY[0x1E69BE7F0] videoAVObjectBuilderForManagedAsset:pl_managedAsset applyVideoAdjustments:isDefaultAdjustedSlomo ^ 1u];

  return v3;
}

- (uint64_t)livePhotoVisibilityState
{
  [self fetchPropertySetsIfNeeded];
  photoIrisProperties = [self photoIrisProperties];
  photoIrisVisibilityState = [photoIrisProperties photoIrisVisibilityState];

  return photoIrisVisibilityState;
}

- (uint64_t)isTrimmableType
{
  if ([self isLivePhoto])
  {
    return 1;
  }

  return [self isVideo];
}

- (uint64_t)originalFilesize
{
  [self fetchPropertySetsIfNeeded];
  originalMetadataProperties = [self originalMetadataProperties];
  originalFilesize = [originalMetadataProperties originalFilesize];

  return originalFilesize;
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

- (uint64_t)contentChangeFromDisplayAsset:()PUDisplayAssetAdoption
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self contentChangeFromAsset:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (uint64_t)isContentEqualTo:()PUDisplayAssetAdoption
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([self hasContentEqualTo:v4])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = v4 == 0;
  }

  return v5;
}

@end