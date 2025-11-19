@interface PHAsset(PXDisplayAssetAdoption)
- (__CFString)localizedDetailedGeoDescriptionForRTL:()PXDisplayAssetAdoption;
- (double)bestCropRectForAspectRatio:()PXDisplayAssetAdoption verticalContentMode:cropMode:;
- (double)bestCropRectForAspectRatioV2:()PXDisplayAssetAdoption verticalContentMode:cropMode:;
- (float)audioScore;
- (id)fetchColorNormalizationData;
- (id)focalLength;
- (id)focalLengthIn35mm;
- (id)importDate;
- (id)localizedGeoDescription;
- (uint64_t)isContentAnalyzedAsPreviewable;
- (uint64_t)isContentEqualTo:()PXDisplayAssetAdoption;
- (uint64_t)isEligibleForAutoPlayback;
- (uint64_t)originalFileSize;
- (uint64_t)thumbnailVersion;
- (void)livePhotoStillDisplayTime;
- (void)livePhotoVideoDuration;
@end

@implementation PHAsset(PXDisplayAssetAdoption)

- (uint64_t)isContentAnalyzedAsPreviewable
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [MEMORY[0x1E6978AB0] isContentPreviewableForAsset:a1 outError:&v7];
  v3 = v7;
  if (v3)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [a1 localIdentifier];
      *buf = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Error determining isContentPreviewableForAsset localIdentifier: %@ error: %@", buf, 0x16u);
    }
  }

  return v2;
}

- (id)focalLengthIn35mm
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 photosInfoPanelExtendedProperties];
  v3 = [v2 focalLengthIn35mm];

  return v3;
}

- (id)focalLength
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 photosInfoPanelExtendedProperties];
  v3 = [v2 focalLength];

  return v3;
}

- (id)fetchColorNormalizationData
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 mediaAnalysisProperties];
  v3 = [v2 colorNormalizationData];

  return v3;
}

- (void)livePhotoStillDisplayTime
{
  [a1 fetchPropertySetsIfNeeded];
  v4 = [a1 photoIrisProperties];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v4)
  {
    v5 = v4;
    [v4 photoIrisStillDisplayTime];
    v4 = v5;
  }
}

- (void)livePhotoVideoDuration
{
  [a1 fetchPropertySetsIfNeeded];
  v4 = [a1 photoIrisProperties];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v4)
  {
    v5 = v4;
    [v4 photoIrisVideoDuration];
    v4 = v5;
  }
}

- (float)audioScore
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 mediaAnalysisProperties];
  [v2 audioScore];
  v4 = v3;

  return v4;
}

- (uint64_t)isEligibleForAutoPlayback
{
  if (![a1 isAutoPlaybackEligibilityEstimated])
  {
    [a1 highlightVisibilityScore];
    v5 = 0.769230769;
    return v4 >= v5;
  }

  v2 = [a1 playbackStyle];
  if (v2 == 5)
  {
    return 1;
  }

  if (v2 == 4)
  {
    [a1 duration];
    v5 = 2.0;
    return v4 >= v5;
  }

  if (v2 != 3 || ([MEMORY[0x1E696AF00] isMainThread] & 1) != 0)
  {
    return 0;
  }

  [a1 fetchPropertySetsIfNeeded];
  v7 = [off_1E7721810 sharedInstance];
  [v7 minAutoplaySuggestionScore];
  v9 = v8;

  v10 = [a1 mediaAnalysisProperties];
  [v10 autoplaySuggestionScore];
  v3 = v9 < v11;

  return v3;
}

- (id)importDate
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 curationProperties];
  v3 = [v2 addedDate];

  return v3;
}

- (double)bestCropRectForAspectRatioV2:()PXDisplayAssetAdoption verticalContentMode:cropMode:
{
  v4 = [a1 pixelWidth];
  v5 = [a1 pixelHeight];
  if (!v4)
  {
    return *off_1E77221F8;
  }

  v6 = v5;
  if (!v5)
  {
    return *off_1E77221F8;
  }

  v7 = MEMORY[0x1E69C06A0];
  [a1 preferredCropRect];
  v32 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [a1 acceptableCropRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [a1 normalizedFaceAreaRect];
  [v7 bestCropRectV2ForAspectRatio:v4 withFocusRegion:v6 sourcePixelWidth:a2 sourcePixelHeight:*MEMORY[0x1E695F050] sourcePreferredCropRectNormalized:*(MEMORY[0x1E695F050] + 8) sourceAcceptableCropRectNormalized:*(MEMORY[0x1E695F050] + 16) sourceFaceAreaRectNormalized:{*(MEMORY[0x1E695F050] + 24), v32, v10, v12, v14, v16, v18, v20, v22, v23, v24, v25, v26}];
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  if (CGRectIsEmpty(v33))
  {
    PXAssertGetLog();
  }

  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = 1.0;
  v34.size.height = 1.0;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  if (!CGRectContainsRect(v34, v35))
  {
    PXAssertGetLog();
  }

  return x;
}

- (double)bestCropRectForAspectRatio:()PXDisplayAssetAdoption verticalContentMode:cropMode:
{
  v8 = MEMORY[0x1E69C06A0];
  v9 = [a1 pixelWidth];
  v10 = [a1 pixelHeight];
  [a1 preferredCropRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [a1 acceptableCropRect];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [a1 normalizedFaceAreaRect];
  [v8 bestCropRectForAspectRatio:a4 verticalContentMode:a5 cropMode:v9 sourcePixelWidth:v10 sourcePixelHeight:a2 sourcePreferredCropRectNormalized:v12 sourceAcceptableCropRectNormalized:v14 sourceFaceAreaRectNormalized:{v16, v18, v20, v22, v24, v26, v27, v28, v29, v30}];
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  if (CGRectIsEmpty(v37))
  {
    PXAssertGetLog();
  }

  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = 1.0;
  v38.size.height = 1.0;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  if (!CGRectContainsRect(v38, v39))
  {
    PXAssertGetLog();
  }

  return x;
}

- (uint64_t)thumbnailVersion
{
  v2 = [a1 modificationDate];
  v3 = [v2 hash];
  v4 = [a1 pixelWidth] ^ v3;
  v5 = v4 ^ ([a1 pixelHeight] << 32);

  return v5;
}

- (uint64_t)isContentEqualTo:()PXDisplayAssetAdoption
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

- (__CFString)localizedDetailedGeoDescriptionForRTL:()PXDisplayAssetAdoption
{
  v15 = 0;
  [a1 fetchPropertySetsIfNeeded];
  v5 = [a1 photosOneUpProperties];
  v6 = [v5 placeNamesForLocalizedDetailedDescriptionIsHome:&v15];

  if (v15 == 1)
  {
    v7 = PXLocalizedStringFromTable(@"PXPHOTOBROWSER_TITLE_AT_HOME", @"PhotosUICore");
  }

  else if ([v6 count])
  {
    v8 = PXLocalizedStringFromTable(@"PXOneUpPlaceNamesDelimiter", @"PhotosUICore");
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"⁩", v8, @"⁨"];
    v10 = MEMORY[0x1E696AEC0];
    if (a3)
    {
      v11 = @"\u200F";
    }

    else
    {
      v11 = @"\u200E";
    }

    v12 = [v6 array];
    v13 = [v12 componentsJoinedByString:v9];
    v7 = [v10 stringWithFormat:@"%@%@%@%@", v11, @"⁨", v13, @"⁩"];
  }

  else
  {
    v7 = &stru_1F1741150;
  }

  return v7;
}

- (id)localizedGeoDescription
{
  v6 = 0;
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 photosOneUpProperties];
  v3 = [v2 localizedGeoDescriptionIsHome:&v6];

  if (v6 == 1)
  {
    v4 = PXLocalizedStringFromTable(@"PXPHOTOBROWSER_TITLE_AT_HOME", @"PhotosUICore");

    v3 = v4;
  }

  return v3;
}

- (uint64_t)originalFileSize
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 originalMetadataProperties];
  v3 = [v2 originalFilesize];

  return v3;
}

@end