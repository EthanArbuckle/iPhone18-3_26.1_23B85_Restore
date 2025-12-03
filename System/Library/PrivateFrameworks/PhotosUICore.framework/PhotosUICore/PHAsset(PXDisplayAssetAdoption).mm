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
  v2 = [MEMORY[0x1E6978AB0] isContentPreviewableForAsset:self outError:&v7];
  v3 = v7;
  if (v3)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      localIdentifier = [self localIdentifier];
      *buf = 138412546;
      v9 = localIdentifier;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Error determining isContentPreviewableForAsset localIdentifier: %@ error: %@", buf, 0x16u);
    }
  }

  return v2;
}

- (id)focalLengthIn35mm
{
  [self fetchPropertySetsIfNeeded];
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  focalLengthIn35mm = [photosInfoPanelExtendedProperties focalLengthIn35mm];

  return focalLengthIn35mm;
}

- (id)focalLength
{
  [self fetchPropertySetsIfNeeded];
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  focalLength = [photosInfoPanelExtendedProperties focalLength];

  return focalLength;
}

- (id)fetchColorNormalizationData
{
  [self fetchPropertySetsIfNeeded];
  mediaAnalysisProperties = [self mediaAnalysisProperties];
  colorNormalizationData = [mediaAnalysisProperties colorNormalizationData];

  return colorNormalizationData;
}

- (void)livePhotoStillDisplayTime
{
  [self fetchPropertySetsIfNeeded];
  photoIrisProperties = [self photoIrisProperties];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (photoIrisProperties)
  {
    v5 = photoIrisProperties;
    [photoIrisProperties photoIrisStillDisplayTime];
    photoIrisProperties = v5;
  }
}

- (void)livePhotoVideoDuration
{
  [self fetchPropertySetsIfNeeded];
  photoIrisProperties = [self photoIrisProperties];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (photoIrisProperties)
  {
    v5 = photoIrisProperties;
    [photoIrisProperties photoIrisVideoDuration];
    photoIrisProperties = v5;
  }
}

- (float)audioScore
{
  [self fetchPropertySetsIfNeeded];
  mediaAnalysisProperties = [self mediaAnalysisProperties];
  [mediaAnalysisProperties audioScore];
  v4 = v3;

  return v4;
}

- (uint64_t)isEligibleForAutoPlayback
{
  if (![self isAutoPlaybackEligibilityEstimated])
  {
    [self highlightVisibilityScore];
    v5 = 0.769230769;
    return v4 >= v5;
  }

  playbackStyle = [self playbackStyle];
  if (playbackStyle == 5)
  {
    return 1;
  }

  if (playbackStyle == 4)
  {
    [self duration];
    v5 = 2.0;
    return v4 >= v5;
  }

  if (playbackStyle != 3 || ([MEMORY[0x1E696AF00] isMainThread] & 1) != 0)
  {
    return 0;
  }

  [self fetchPropertySetsIfNeeded];
  sharedInstance = [off_1E7721810 sharedInstance];
  [sharedInstance minAutoplaySuggestionScore];
  v9 = v8;

  mediaAnalysisProperties = [self mediaAnalysisProperties];
  [mediaAnalysisProperties autoplaySuggestionScore];
  v3 = v9 < v11;

  return v3;
}

- (id)importDate
{
  [self fetchPropertySetsIfNeeded];
  curationProperties = [self curationProperties];
  addedDate = [curationProperties addedDate];

  return addedDate;
}

- (double)bestCropRectForAspectRatioV2:()PXDisplayAssetAdoption verticalContentMode:cropMode:
{
  pixelWidth = [self pixelWidth];
  pixelHeight = [self pixelHeight];
  if (!pixelWidth)
  {
    return *off_1E77221F8;
  }

  v6 = pixelHeight;
  if (!pixelHeight)
  {
    return *off_1E77221F8;
  }

  v7 = MEMORY[0x1E69C06A0];
  [self preferredCropRect];
  v32 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [self acceptableCropRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [self normalizedFaceAreaRect];
  [v7 bestCropRectV2ForAspectRatio:pixelWidth withFocusRegion:v6 sourcePixelWidth:a2 sourcePixelHeight:*MEMORY[0x1E695F050] sourcePreferredCropRectNormalized:*(MEMORY[0x1E695F050] + 8) sourceAcceptableCropRectNormalized:*(MEMORY[0x1E695F050] + 16) sourceFaceAreaRectNormalized:{*(MEMORY[0x1E695F050] + 24), v32, v10, v12, v14, v16, v18, v20, v22, v23, v24, v25, v26}];
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
  pixelWidth = [self pixelWidth];
  pixelHeight = [self pixelHeight];
  [self preferredCropRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [self acceptableCropRect];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [self normalizedFaceAreaRect];
  [v8 bestCropRectForAspectRatio:a4 verticalContentMode:a5 cropMode:pixelWidth sourcePixelWidth:pixelHeight sourcePixelHeight:a2 sourcePreferredCropRectNormalized:v12 sourceAcceptableCropRectNormalized:v14 sourceFaceAreaRectNormalized:{v16, v18, v20, v22, v24, v26, v27, v28, v29, v30}];
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
  modificationDate = [self modificationDate];
  v3 = [modificationDate hash];
  v4 = [self pixelWidth] ^ v3;
  v5 = v4 ^ ([self pixelHeight] << 32);

  return v5;
}

- (uint64_t)isContentEqualTo:()PXDisplayAssetAdoption
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

- (__CFString)localizedDetailedGeoDescriptionForRTL:()PXDisplayAssetAdoption
{
  v15 = 0;
  [self fetchPropertySetsIfNeeded];
  photosOneUpProperties = [self photosOneUpProperties];
  v6 = [photosOneUpProperties placeNamesForLocalizedDetailedDescriptionIsHome:&v15];

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

    array = [v6 array];
    v13 = [array componentsJoinedByString:v9];
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
  [self fetchPropertySetsIfNeeded];
  photosOneUpProperties = [self photosOneUpProperties];
  v3 = [photosOneUpProperties localizedGeoDescriptionIsHome:&v6];

  if (v6 == 1)
  {
    v4 = PXLocalizedStringFromTable(@"PXPHOTOBROWSER_TITLE_AT_HOME", @"PhotosUICore");

    v3 = v4;
  }

  return v3;
}

- (uint64_t)originalFileSize
{
  [self fetchPropertySetsIfNeeded];
  originalMetadataProperties = [self originalMetadataProperties];
  originalFilesize = [originalMetadataProperties originalFilesize];

  return originalFilesize;
}

@end