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
  v1 = [a1 descriptionProperties];
  v2 = [v1 accessibilityDescription];

  return v2;
}

- (double)videoKeyFrameSourceTime
{
  v4 = MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(v4 + 16);
  [a1 fetchPropertySetsIfNeeded];
  v8 = 0uLL;
  v5 = [a1 mediaAnalysisProperties];
  v6 = v5;
  if (v5)
  {
    [v5 bestKeyFrameTime];
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
  v1 = [a1 pl_managedAsset];
  v2 = [v1 pathForTrimmedVideoFile];
  v3 = [v2 copy];

  return v3;
}

- (id)pathForOriginalVideoFile
{
  v1 = [a1 pl_managedAsset];
  v2 = [v1 pathForVideoFile];
  v3 = [v2 copy];

  return v3;
}

- (id)pathForOriginalImageFile
{
  v1 = [a1 pl_managedAsset];
  v2 = [v1 pathForOriginalFile];

  return v2;
}

- (uint64_t)isCloudPhotoLibraryEnabled
{
  v1 = [a1 photoLibrary];
  v2 = [v1 isCloudPhotoLibraryEnabled];

  return v2;
}

- (uint64_t)originalEXIFOrientation
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 originalMetadataProperties];
  v3 = [v2 originalExifOrientation];

  return v3;
}

- (id)videoObjectBuilder
{
  v1 = [a1 pl_managedAsset];
  v2 = [v1 isDefaultAdjustedSlomo];
  v3 = [MEMORY[0x1E69BE7F0] videoAVObjectBuilderForManagedAsset:v1 applyVideoAdjustments:v2 ^ 1u];

  return v3;
}

- (uint64_t)livePhotoVisibilityState
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 photoIrisProperties];
  v3 = [v2 photoIrisVisibilityState];

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

- (uint64_t)originalFilesize
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 originalMetadataProperties];
  v3 = [v2 originalFilesize];

  return v3;
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

- (uint64_t)contentChangeFromDisplayAsset:()PUDisplayAssetAdoption
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 contentChangeFromAsset:v4];
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
    if ([a1 hasContentEqualTo:v4])
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