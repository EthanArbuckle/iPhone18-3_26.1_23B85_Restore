@interface PHAsset(Curation)
+ (id)_filterPersonUUIDs:()Curation fromPersonUUIDsByAssetUUID:personUUIDByMergeCandidateUUID:;
+ (id)_personUUIDsByAssetUUIDWithAssetUUIDs:()Curation personUUIDs:photoLibrary:;
+ (id)_personUUIDsByAssetUUIDWithAssets:()Curation personUUIDs:;
+ (id)_petUUIDsByAssetUUIDWithAssetUUIDs:()Curation photoLibrary:;
+ (id)clsAllAssetsFromFetchResult:()Curation prefetchOptions:curationContext:;
+ (id)verifiedPersonLocalIdentifiersByAssetUUIDWithAssets:()Curation;
+ (void)_populateAsset:()Curation withPersonUUIDs:consolidatedPersonUUIDs:petUUIDs:;
+ (void)prefetchOnAssets:()Curation options:curationContext:;
+ (void)prefetchScenesOnAssets:()Curation;
- (BOOL)clsFaceInformationArePrefetched;
- (BOOL)clsIsSceneProcessed;
- (BOOL)clsPeopleCountIsPrefetched;
- (BOOL)clsPersonLocalIdentifiersArePrefetched;
- (BOOL)clsSceneClassificationsArePrefetched;
- (BOOL)hasCurationModel;
- (double)clsActivityScore;
- (double)clsAutoplaySuggestionScore;
- (double)clsContentScoreRecomputingIfNeeded:()Curation;
- (double)clsDuration;
- (double)clsExposureScore;
- (double)clsFaceScore;
- (double)clsIconicSceneScoreWithSceneGeography:()Curation;
- (double)clsIconicScore;
- (double)clsSharpnessScore;
- (double)clsSquareCropScore;
- (double)clsVideoScore;
- (double)clsWallpaperScore;
- (double)cropScoreForTargetAspectRatio:()Curation forFaces:;
- (double)pl_coordinate;
- (double)pl_gpsHorizontalAccuracy;
- (double)scoreInContext:()Curation;
- (id)clsConsolidatedPersonLocalIdentifiers;
- (id)clsFaceInformationSummary;
- (id)clsPersonAndPetLocalIdentifiers;
- (id)clsPersonLocalIdentifiers;
- (id)clsProcessedSignals;
- (id)clsSceneClassifications;
- (id)clsSceneprint;
- (id)clsUnprefetchedPersonLocalIdentifiers;
- (id)curationModel;
- (uint64_t)clsAvoidIfPossibleAsKeyItemForMemories:()Curation allowGuestAsset:reason:;
- (uint64_t)clsHasCustomPlaybackVariation;
- (uint64_t)clsHasInterestingAudioClassification;
- (uint64_t)clsHasInterestingScenes;
- (uint64_t)clsHasPoorResolution;
- (uint64_t)clsInterestingAudioClassifications;
- (uint64_t)clsIsAestheticallyPrettyGood;
- (uint64_t)clsIsBlurry;
- (uint64_t)clsIsFaceProcessed;
- (uint64_t)clsIsInhabited;
- (uint64_t)clsIsInterestingHDR;
- (uint64_t)clsIsInterestingLivePhoto;
- (uint64_t)clsIsInterestingPanorama;
- (uint64_t)clsIsInterestingSDOF;
- (uint64_t)clsIsInterestingVideo;
- (uint64_t)clsIsNonMemorable;
- (uint64_t)clsIsScreenshotOrScreenRecording;
- (uint64_t)clsIsTragicFailure;
- (uint64_t)clsIsUtility;
- (uint64_t)clsPeopleCount;
- (uint64_t)clsPlayCount;
- (uint64_t)clsShareCount;
- (uint64_t)clsSimilarityModelVersion;
- (uint64_t)clsVideoFaceCount;
- (uint64_t)clsViewCount;
- (uint64_t)prepareWithAlternateJunkingHeuristics:()Curation withContext:curationContext:blockSocialMediaImportedAssets:;
- (void)cacheCurationScore:()Curation;
- (void)clsCacheIconicSceneScore:()Curation;
- (void)clsCacheIsUtility:()Curation;
- (void)clsPetLocalIdentifiers;
- (void)clsSetPersonLocalIdentifiers:()Curation;
@end

@implementation PHAsset(Curation)

- (BOOL)clsFaceInformationArePrefetched
{
  v1 = objc_getAssociatedObject(self, "kCLSFaceInformationSummaryString");
  v2 = v1 != 0;

  return v2;
}

- (BOOL)clsSceneClassificationsArePrefetched
{
  v1 = objc_getAssociatedObject(self, "clsSceneClassifications");
  v2 = v1 != 0;

  return v2;
}

- (BOOL)clsPeopleCountIsPrefetched
{
  v1 = objc_getAssociatedObject(self, "clsPeopleCount");
  v2 = v1 != 0;

  return v2;
}

- (BOOL)clsPersonLocalIdentifiersArePrefetched
{
  v1 = objc_getAssociatedObject(self, "clsPersonLocalIdentifiers");
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)prepareWithAlternateJunkingHeuristics:()Curation withContext:curationContext:blockSocialMediaImportedAssets:
{
  v10 = a4;
  v11 = a5;
  curationModel = [self curationModel];
  v13 = curationModel;
  if (a3)
  {
    userFeedbackCalculator = [v11 userFeedbackCalculator];
    v15 = [v13 isUtilityForMemoriesWithAsset:self userFeedbackCalculator:userFeedbackCalculator blockSocialMediaImportedAssets:a6];
  }

  else
  {
    v15 = [curationModel isUtilityWithAsset:self];
  }

  v16 = v15 ^ [self clsIsUtility];
  if (v16 == 1)
  {
    [self clsCacheIsUtility:v15];
    [self scoreInContext:v10];
    v18 = v17;
    [self curationScore];
    if (v18 != v19)
    {
      [self cacheCurationScore:v18];
    }
  }

  return v16;
}

- (uint64_t)clsIsTragicFailure
{
  curationModel = [self curationModel];
  v3 = [curationModel isTragicFailureWithImageAsset:self];

  return v3;
}

- (uint64_t)clsHasCustomPlaybackVariation
{
  result = [self isSubtype:8];
  if (result)
  {
    return [self playbackVariation] != 0;
  }

  return result;
}

- (uint64_t)clsInterestingAudioClassifications
{
  curationModel = [self curationModel];
  v3 = [curationModel interestingAudioClassificationsWithAsset:self];

  return v3;
}

- (uint64_t)clsHasInterestingAudioClassification
{
  curationModel = [self curationModel];
  v3 = [curationModel hasInterestingAudioClassificationWithAsset:self];

  return v3;
}

- (uint64_t)clsIsInterestingHDR
{
  curationModel = [self curationModel];
  v3 = [curationModel isInterestingHDRWithAsset:self];

  return v3;
}

- (uint64_t)clsIsInterestingSDOF
{
  curationModel = [self curationModel];
  v3 = [curationModel isInterestingSDOFWithAsset:self];

  return v3;
}

- (uint64_t)clsIsInterestingPanorama
{
  curationModel = [self curationModel];
  v3 = [curationModel isInterestingPanoramaWithAsset:self];

  return v3;
}

- (uint64_t)clsIsInterestingLivePhoto
{
  curationModel = [self curationModel];
  v3 = [curationModel isInterestingLivePhotoWithAsset:self];

  return v3;
}

- (double)clsAutoplaySuggestionScore
{
  mediaAnalysisProperties = [self mediaAnalysisProperties];
  [mediaAnalysisProperties autoplaySuggestionScore];
  v3 = v2;

  return v3;
}

- (uint64_t)clsIsInterestingVideo
{
  curationModel = [self curationModel];
  v3 = [curationModel isInterestingVideoWithAsset:self];

  return v3;
}

- (double)scoreInContext:()Curation
{
  v4 = a3;
  curationModel = [self curationModel];
  [curationModel scoreWithAsset:self inContext:v4];
  v7 = v6;

  return v7;
}

- (void)cacheCurationScore:()Curation
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  objc_setAssociatedObject(self, "clsCurationScore", v2, 1);
}

- (double)clsContentScoreRecomputingIfNeeded:()Curation
{
  v5 = objc_getAssociatedObject(self, "clsCurationScore");
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    v8 = v7;
  }

  else
  {
    [self curationScore];
    v8 = v9;
    if (v9 == 0.0 && a3 != 0)
    {
      curationModel = [self curationModel];
      [curationModel scoreWithAsset:self inContext:0];
      v8 = v12;

      [self cacheCurationScore:v8];
    }
  }

  return v8;
}

- (double)cropScoreForTargetAspectRatio:()Curation forFaces:
{
  [self faceAreaMinX];
  v7 = v6;
  [self faceAreaMinY];
  v9 = v8;
  [self faceAreaMaxX];
  v11 = v10;
  [self faceAreaMaxY];
  v12 = v11 - v7;
  v14 = v13 - v9;
  v32 = 0.0;
  v15 = v7;
  v16 = v9;
  v17 = v12;
  v18 = v13 - v9;
  if ((a4 & 1) == 0)
  {
    [self acceptableCropRect];
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
  }

  v23 = MEMORY[0x1E69C06A0];
  pixelWidth = [self pixelWidth];
  pixelHeight = [self pixelHeight];
  [self preferredCropRect];
  [v23 bestCropRectV2ForAspectRatio:pixelWidth withFocusRegion:pixelHeight sourcePixelWidth:&v32 sourcePixelHeight:a2 sourcePreferredCropRectNormalized:0.0 sourceAcceptableCropRectNormalized:0.0 sourceFaceAreaRectNormalized:0.0 outputCropScore:{0.0, v26, v27, v28, v29, *&v15, *&v16, *&v17, *&v18, *&v7, 1.0 - (v9 + v14), *&v12, *&v14}];
  return v32;
}

- (double)clsSquareCropScore
{
  v2 = 0.0;
  [self suggestedCropForTargetSize:&v2 withFocusRegion:1.0 andOutputCropScore:{1.0, 0.0, 0.0, 0.0, 0.0}];
  return v2;
}

- (uint64_t)clsHasInterestingScenes
{
  curationModel = [self curationModel];
  v3 = [curationModel hasInterestingScenesWithAsset:self];

  return v3;
}

- (uint64_t)clsHasPoorResolution
{
  curationModel = [self curationModel];
  v3 = [curationModel hasPoorResolutionWithAsset:self];

  return v3;
}

- (uint64_t)clsAvoidIfPossibleAsKeyItemForMemories:()Curation allowGuestAsset:reason:
{
  if ((a4 & 1) != 0 || ![self clsIsGuestAsset])
  {
    curationModel = [self curationModel];
    v10 = curationModel;
    if (a3 && [curationModel avoidIfPossibleForMemoryKeyAssetWithAsset:self])
    {
      if (a5)
      {
        *a5 = @"Video";
      }

      v8 = 1;
    }

    else
    {
      memset(v13, 0, sizeof(v13));
      v11 = [v10 avoidIfPossibleForKeyAssetWithAsset:self statistics:v13];
      v8 = v11;
      if (a5 && v11)
      {
        *a5 = [CLSCurationModel firstReasonForAvoidForKeyAssetFromStatistics:v13];
      }
    }
  }

  else
  {
    if (a5)
    {
      *a5 = @"Guest Asset";
    }

    return 1;
  }

  return v8;
}

- (uint64_t)clsIsInhabited
{
  curationModel = [self curationModel];
  v3 = [curationModel isInhabitedWithAsset:self];

  return v3;
}

- (uint64_t)clsIsBlurry
{
  curationModel = [self curationModel];
  v3 = [curationModel isBlurryWithAsset:self];

  return v3;
}

- (uint64_t)clsSimilarityModelVersion
{
  curationModel = [self curationModel];
  similarityModelVersion = [curationModel similarityModelVersion];

  return similarityModelVersion;
}

- (id)clsSceneprint
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(self, "clsSceneprint");
  if (!v2)
  {
    sceneprintProperties = [self sceneprintProperties];
    sceneprint = [sceneprintProperties sceneprint];

    if (sceneprint)
    {
      v13 = 0;
      v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:sceneprint error:&v13];
      v7 = v13;
      v8 = v7;
      if (v3)
      {

        objc_setAssociatedObject(self, "clsSceneprint", v3, 1);
LABEL_13:

        goto LABEL_14;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        uuid = [self uuid];
        *buf = 138412546;
        v15 = uuid;
        v16 = 2112;
        v17 = v8;
        _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error unarchiving sceneprint for asset %@: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      uuid2 = [self uuid];
      *buf = 138412290;
      v15 = uuid2;
      _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Sceneprint not available for asset %@", buf, 0xCu);
    }

    null = [MEMORY[0x1E695DFB0] null];
    objc_setAssociatedObject(self, "clsSceneprint", null, 1);

    v3 = 0;
    goto LABEL_13;
  }

  v3 = v2;
  null2 = [MEMORY[0x1E695DFB0] null];

  if (v3 == null2)
  {

    v3 = 0;
  }

LABEL_14:

  return v3;
}

- (id)clsSceneClassifications
{
  v9 = *MEMORY[0x1E69E9840];
  sceneClassifications = objc_getAssociatedObject(self, "clsSceneClassifications");
  if (!sceneClassifications)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier = [self localIdentifier];
      v5 = 134218242;
      selfCopy = self;
      v7 = 2112;
      v8 = localIdentifier;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "clsSceneClassifications not prefetched for asset %p %@", &v5, 0x16u);
    }

    sceneClassifications = [self sceneClassifications];
  }

  return sceneClassifications;
}

- (double)clsFaceScore
{
  clsFaceInformationSummary = [self clsFaceInformationSummary];
  [clsFaceInformationSummary averageFaceQuality];
  v3 = v2;

  return v3;
}

- (uint64_t)clsVideoFaceCount
{
  mediaAnalysisProperties = [self mediaAnalysisProperties];
  if (mediaAnalysisProperties)
  {
    mediaAnalysisProperties2 = [self mediaAnalysisProperties];
    faceCount = [mediaAnalysisProperties2 faceCount];
  }

  else
  {
    faceCount = 0;
  }

  return faceCount;
}

- (double)clsActivityScore
{
  mediaAnalysisProperties = [self mediaAnalysisProperties];
  if (mediaAnalysisProperties)
  {
    mediaAnalysisProperties2 = [self mediaAnalysisProperties];
    [mediaAnalysisProperties2 activityScore];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (double)clsVideoScore
{
  mediaAnalysisProperties = [self mediaAnalysisProperties];
  if (mediaAnalysisProperties)
  {
    mediaAnalysisProperties2 = [self mediaAnalysisProperties];
    [mediaAnalysisProperties2 videoScore];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (double)clsSharpnessScore
{
  mediaAnalysisProperties = [self mediaAnalysisProperties];
  if (mediaAnalysisProperties)
  {
    mediaAnalysisProperties2 = [self mediaAnalysisProperties];
    [mediaAnalysisProperties2 blurrinessScore];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (double)clsWallpaperScore
{
  mediaAnalysisProperties = [self mediaAnalysisProperties];
  if (mediaAnalysisProperties)
  {
    mediaAnalysisProperties2 = [self mediaAnalysisProperties];
    [mediaAnalysisProperties2 wallpaperScore];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (double)clsExposureScore
{
  mediaAnalysisProperties = [self mediaAnalysisProperties];
  if (mediaAnalysisProperties)
  {
    mediaAnalysisProperties2 = [self mediaAnalysisProperties];
    [mediaAnalysisProperties2 exposureScore];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (id)clsProcessedSignals
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(self, "kCLSProcessedSignalsString");
  if (!v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    localIdentifier = [self localIdentifier];
    v5 = 134218242;
    selfCopy = self;
    v7 = 2112;
    v8 = localIdentifier;
    _os_log_fault_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "processedSignals not prefetched for asset %p %@", &v5, 0x16u);
  }

  return v2;
}

- (id)clsFaceInformationSummary
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(self, "kCLSFaceInformationSummaryString");
  if (!v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    localIdentifier = [self localIdentifier];
    v5 = 134218242;
    selfCopy = self;
    v7 = 2112;
    v8 = localIdentifier;
    _os_log_fault_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "faceInformationSummary not prefetched for asset %p %@", &v5, 0x16u);
  }

  return v2;
}

- (uint64_t)clsPeopleCount
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(self, "clsPeopleCount");
  v3 = v2;
  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier = [self localIdentifier];
      v8 = 134218242;
      selfCopy = self;
      v10 = 2112;
      v11 = localIdentifier;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "clsPeopleCount not prefetched for asset %p %@", &v8, 0x16u);
    }

    clsUnprefetchedPersonLocalIdentifiers = [self clsUnprefetchedPersonLocalIdentifiers];
    unsignedIntegerValue = [clsUnprefetchedPersonLocalIdentifiers count];
  }

  return unsignedIntegerValue;
}

- (id)clsUnprefetchedPersonLocalIdentifiers
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(self, "clsPersonLocalIdentifiers");
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (([self clsIsScreenshotOrScreenRecording] & 1) == 0)
    {
      photoLibrary = [self photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      [librarySpecificFetchOptions setPersonContext:1];
      v6 = [MEMORY[0x1E6978980] fetchPersonsInAsset:self options:librarySpecificFetchOptions];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            localIdentifier = [*(*(&v16 + 1) + 8 * i) localIdentifier];
            if (localIdentifier)
            {
              [v3 addObject:localIdentifier];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v8);
      }
    }

    v2 = v3;
    objc_setAssociatedObject(self, "clsPersonLocalIdentifiers", v2, 1);
    v12 = MEMORY[0x1E696AD98];
    v13 = [v2 count];

    v14 = [v12 numberWithUnsignedInteger:v13];
    objc_setAssociatedObject(self, "clsPeopleCount", v14, 1);
  }

  return v2;
}

- (id)clsConsolidatedPersonLocalIdentifiers
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(self, "clsConsolidatedPersonLocalIdentifiers");
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier = [self localIdentifier];
      v5 = 134218242;
      selfCopy = self;
      v7 = 2112;
      v8 = localIdentifier;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "clsConsolidatedPersonLocalIdentifiers not prefetched for asset %p %@", &v5, 0x16u);
    }

    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (void)clsSetPersonLocalIdentifiers:()Curation
{
  v4 = a3;
  objc_setAssociatedObject(self, "clsPersonLocalIdentifiers", v4, 1);
  v5 = MEMORY[0x1E696AD98];
  v6 = [v4 count];

  v7 = [v5 numberWithUnsignedInteger:v6];
  objc_setAssociatedObject(self, "clsPeopleCount", v7, 1);
}

- (id)clsPersonLocalIdentifiers
{
  v9 = *MEMORY[0x1E69E9840];
  clsUnprefetchedPersonLocalIdentifiers = objc_getAssociatedObject(self, "clsPersonLocalIdentifiers");
  if (!clsUnprefetchedPersonLocalIdentifiers)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier = [self localIdentifier];
      v5 = 134218242;
      selfCopy = self;
      v7 = 2112;
      v8 = localIdentifier;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "clsPersonLocalIdentifiers not prefetched for asset %p %@", &v5, 0x16u);
    }

    clsUnprefetchedPersonLocalIdentifiers = [self clsUnprefetchedPersonLocalIdentifiers];
  }

  return clsUnprefetchedPersonLocalIdentifiers;
}

- (void)clsPetLocalIdentifiers
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(self, "clsPetLocalIdentifiers");
  v3 = v2;
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier = [self localIdentifier];
      v7 = 134218242;
      selfCopy = self;
      v9 = 2112;
      v10 = localIdentifier;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "clsPetLocalIdentifiers not prefetched for asset %p %@", &v7, 0x16u);
    }

    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;

  return v3;
}

- (id)clsPersonAndPetLocalIdentifiers
{
  clsPersonLocalIdentifiers = [self clsPersonLocalIdentifiers];
  clsPetLocalIdentifiers = [self clsPetLocalIdentifiers];
  v4 = [clsPersonLocalIdentifiers arrayByAddingObjectsFromArray:clsPetLocalIdentifiers];

  return v4;
}

- (double)pl_gpsHorizontalAccuracy
{
  coarseLocationProperties = [self coarseLocationProperties];
  [coarseLocationProperties gpsHorizontalAccuracy];
  v3 = v2;

  return v3;
}

- (double)pl_coordinate
{
  location = [self location];

  if (!location)
  {
    return *MEMORY[0x1E6985CC0];
  }

  location2 = [self location];
  [location2 coordinate];
  v5 = v4;

  if (v5 == 0.0)
  {
    return *MEMORY[0x1E6985CC0];
  }

  return v5;
}

- (void)clsCacheIconicSceneScore:()Curation
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  objc_setAssociatedObject(self, "clsIconicSceneScore", v2, 1);
}

- (double)clsIconicSceneScoreWithSceneGeography:()Curation
{
  v4 = a3;
  v5 = objc_getAssociatedObject(self, "clsIconicSceneScore");
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    v8 = v7;
  }

  else
  {
    curationModel = [self curationModel];
    sceneModel = [curationModel sceneModel];
    clsSceneClassifications = [self clsSceneClassifications];
    v12 = [sceneModel sceneIdentifiersFromSceneClassifications:clsSceneClassifications passingThresholdOfType:1];

    [self locationCoordinate];
    [PNAssetCurationUtilities assetIconicScoreForSceneClassificationIdentifiers:"assetIconicScoreForSceneClassificationIdentifiers:assetLatitude:assetLongitude:sceneGeography:maxScenesCount:" assetLatitude:v12 assetLongitude:v4 sceneGeography:5 maxScenesCount:?];
    v8 = v13;
    [self clsCacheIconicSceneScore:?];
  }

  return v8;
}

- (double)clsIconicScore
{
  iconicScoreProperties = [self iconicScoreProperties];
  [iconicScoreProperties iconicScore];
  v3 = v2;

  return v3;
}

- (uint64_t)clsIsFaceProcessed
{
  faceAnalysisVersion = [self faceAnalysisVersion];
  if (*MEMORY[0x1E69BE9E8] != faceAnalysisVersion)
  {
    return 1;
  }

  faceAdjustmentVersion = [self faceAdjustmentVersion];
  v4 = faceAdjustmentVersion != 0;

  return v4;
}

- (BOOL)clsIsSceneProcessed
{
  sceneAnalysisProperties = [self sceneAnalysisProperties];
  sceneAnalysisVersion = [sceneAnalysisProperties sceneAnalysisVersion];
  v3 = *MEMORY[0x1E69BE9F0] != sceneAnalysisVersion;

  return v3;
}

- (uint64_t)clsIsAestheticallyPrettyGood
{
  curationModel = [self curationModel];
  v3 = [curationModel isAestheticallyPrettyGoodWithAsset:self];

  return v3;
}

- (uint64_t)clsIsScreenshotOrScreenRecording
{
  if ([self isSubtype:4])
  {
    return 1;
  }

  return [self isScreenRecording];
}

- (void)clsCacheIsUtility:()Curation
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, "clsIsUtility", v2, 1);
}

- (uint64_t)clsIsUtility
{
  v2 = objc_getAssociatedObject(self, "clsIsUtility");
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    curationModel = [self curationModel];
    bOOLValue = [curationModel isUtilityWithAsset:self];

    [self clsCacheIsUtility:bOOLValue];
  }

  return bOOLValue;
}

- (uint64_t)clsIsNonMemorable
{
  curationModel = [self curationModel];
  v3 = [curationModel isNonMemorableWithAsset:self];

  return v3;
}

- (double)clsDuration
{
  [self duration];
  Seconds = v2;
  if ([self isMediaSubtype:8])
  {
    photoIrisProperties = [self photoIrisProperties];
    v5 = photoIrisProperties;
    if (photoIrisProperties)
    {
      [photoIrisProperties photoIrisVideoDuration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
  }

  return Seconds;
}

- (uint64_t)clsShareCount
{
  assetUserActivityProperties = [self assetUserActivityProperties];
  shareCount = [assetUserActivityProperties shareCount];

  return shareCount;
}

- (uint64_t)clsPlayCount
{
  assetUserActivityProperties = [self assetUserActivityProperties];
  playCount = [assetUserActivityProperties playCount];

  return playCount;
}

- (uint64_t)clsViewCount
{
  assetUserActivityProperties = [self assetUserActivityProperties];
  viewCount = [assetUserActivityProperties viewCount];

  return viewCount;
}

- (BOOL)hasCurationModel
{
  v1 = objc_getAssociatedObject(self, "clsCurationModel");
  v2 = v1 != 0;

  return v2;
}

- (id)curationModel
{
  v2 = objc_getAssociatedObject(self, "clsCurationModel");
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_fault_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Asset curation requires a curation model, call [CLSCurationSession prepareAssets:] on your asset", v5, 2u);
    }

    v3 = objc_alloc_init(CLSCurationSession);
    [self fetchPropertySetsIfNeeded];
    v2 = [(CLSCurationSession *)v3 curationModelForAsset:self];
    [self setCurationModel:v2];
  }

  return v2;
}

+ (void)prefetchOnAssets:()Curation options:curationContext:
{
  v128 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v83 = a5;
  firstObject = [v7 firstObject];
  photoLibrary = [firstObject photoLibrary];
  if (!photoLibrary)
  {
    goto LABEL_68;
  }

  if ((a4 & 3) != 0)
  {
    v98 = [firstObject clsPeopleCountIsPrefetched] ^ 1;
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v98 = 0;
    if ((a4 & 0x10) == 0)
    {
LABEL_4:
      v10 = 0;
      if ((a4 & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v97 = 0;
      if ((a4 & 8) != 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      v99 = 0;
      goto LABEL_11;
    }
  }

  v10 = [firstObject canUseLocationCoordinateForLocation] ^ 1;
  if ((a4 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v97 = [firstObject clsSceneClassificationsArePrefetched] ^ 1;
  if ((a4 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v99 = [firstObject clsFaceInformationArePrefetched] ^ 1;
LABEL_11:
  if (((v98 | v10 | v97) & 1) != 0 || v99)
  {
    v93 = v10;
    if ((a4 & 0xC) != 0)
    {
      firstObject2 = [v7 firstObject];
      hasCurationModel = [firstObject2 hasCurationModel];

      if ((hasCurationModel & 1) == 0)
      {
        v13 = objc_autoreleasePoolPush();
        curationSession = [v83 curationSession];
        [curationSession prepareAssets:v7];

        objc_autoreleasePoolPop(v13);
      }
    }

    if ((v98 | v99))
    {
      contextb = objc_autoreleasePoolPush();
      personUUIDByMergeCandidateUUID = [v83 personUUIDByMergeCandidateUUID];
      verifiedPersonUUIDs = [v83 verifiedPersonUUIDs];
      hiddenOrBlockedPersonUUIDs = [v83 hiddenOrBlockedPersonUUIDs];
      v18 = MEMORY[0x1E695DFD8];
      allKeys = [personUUIDByMergeCandidateUUID allKeys];
      v20 = [v18 setWithArray:allKeys];

      v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [v21 unionSet:verifiedPersonUUIDs];
      v80 = hiddenOrBlockedPersonUUIDs;
      [v21 unionSet:hiddenOrBlockedPersonUUIDs];
      [v21 unionSet:v20];
      v74 = v20;
      v22 = [verifiedPersonUUIDs setByAddingObjectsFromSet:v20];
      v23 = [v7 _pl_map:&__block_literal_global_309];
      v24 = [self _personUUIDsByAssetUUIDWithAssetUUIDs:v23 personUUIDs:v21 photoLibrary:photoLibrary];
      v81 = verifiedPersonUUIDs;
      v96 = [self _filterPersonUUIDs:verifiedPersonUUIDs fromPersonUUIDsByAssetUUID:v24 personUUIDByMergeCandidateUUID:0];
      v82 = personUUIDByMergeCandidateUUID;
      v95 = [self _filterPersonUUIDs:v22 fromPersonUUIDsByAssetUUID:v24 personUUIDByMergeCandidateUUID:personUUIDByMergeCandidateUUID];
      v94 = [self _petUUIDsByAssetUUIDWithAssetUUIDs:v23 photoLibrary:photoLibrary];

      objc_autoreleasePoolPop(contextb);
    }

    else
    {
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v74 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
    }

    v76 = photoLibrary;
    v77 = v7;
    v75 = firstObject;
    if (v99)
    {
      v104 = objc_autoreleasePoolPush();
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
      [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F46E5600];
      [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
      [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
      v101 = librarySpecificFetchOptions;
      v26 = [MEMORY[0x1E69787C8] fetchFacesGroupedByAssetLocalIdentifierForAssets:v7 options:librarySpecificFetchOptions];
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v79 = v26;
      context = [v26 objectEnumerator];
      v28 = [context countByEnumeratingWithState:&v119 objects:v127 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v120;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v120 != v30)
            {
              objc_enumerationMutation(context);
            }

            v32 = *(*(&v119 + 1) + 8 * i);
            v33 = objc_autoreleasePoolPush();
            if ([v32 count])
            {
              v34 = 0;
              do
              {
                v35 = objc_autoreleasePoolPush();
                v36 = [v32 objectAtIndexedSubscript:v34];
                uuid = [v36 uuid];
                [v27 addObject:uuid];

                objc_autoreleasePoolPop(v35);
                ++v34;
              }

              while (v34 < [v32 count]);
            }

            objc_autoreleasePoolPop(v33);
          }

          v29 = [context countByEnumeratingWithState:&v119 objects:v127 count:16];
        }

        while (v29);
      }

      v78 = [MEMORY[0x1E69787B8] detectionTraitsByFaceLocalIdentifierForFaceUUIDs:v27 photoLibrary:v76];

      objc_autoreleasePoolPop(v104);
      v7 = v77;
    }

    else
    {
      v78 = 0;
      v79 = 0;
    }

    if (v97)
    {
      v38 = objc_autoreleasePoolPush();
      v84 = [MEMORY[0x1E6978A38] fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:v7 sceneClassificationType:0 includeTemporalClassifications:0];
      objc_autoreleasePoolPop(v38);
    }

    else
    {
      v84 = 0;
    }

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    obj = v7;
    v100 = [obj countByEnumeratingWithState:&v115 objects:v126 count:16];
    if (v100)
    {
      v92 = *v116;
      do
      {
        v39 = 0;
        do
        {
          if (*v116 != v92)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v115 + 1) + 8 * v39);
          uuid2 = [v40 uuid];
          v42 = [v96 objectForKeyedSubscript:uuid2];
          v43 = [v95 objectForKeyedSubscript:uuid2];
          v44 = [v94 objectForKeyedSubscript:uuid2];
          if (v98)
          {
            [self _populateAsset:v40 withPersonUUIDs:v42 consolidatedPersonUUIDs:v43 petUUIDs:v44];
          }

          if (v93)
          {
            [v40 setCanUseLocationCoordinateForLocation:1];
          }

          if (v97)
          {
            localIdentifier = [v40 localIdentifier];
            v46 = [v84 objectForKeyedSubscript:localIdentifier];

            v91 = v46;
            if (v46)
            {
              v89 = v44;
              v90 = uuid2;
              v102 = v43;
              v105 = v42;
              contexta = v39;
              v87 = [MEMORY[0x1E695DFD8] setWithArray:v46];
              [v40 clsSetSceneClassifications:?];
              v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v88 = v40;
              curationModel = [v40 curationModel];
              sceneModel = [curationModel sceneModel];

              v113 = 0u;
              v114 = 0u;
              v111 = 0u;
              v112 = 0u;
              v50 = v46;
              v51 = [v50 countByEnumeratingWithState:&v111 objects:v125 count:16];
              if (v51)
              {
                v52 = v51;
                v53 = *v112;
                do
                {
                  for (j = 0; j != v52; ++j)
                  {
                    if (*v112 != v53)
                    {
                      objc_enumerationMutation(v50);
                    }

                    v55 = *(*(&v111 + 1) + 8 * j);
                    extendedSceneIdentifier = [v55 extendedSceneIdentifier];
                    if (([sceneModel isResponsibleForSignalIdentifier:extendedSceneIdentifier] & 1) == 0)
                    {
                      v57 = MEMORY[0x1E696AD98];
                      [v55 confidence];
                      v58 = [v57 numberWithDouble:?];
                      v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:extendedSceneIdentifier];
                      [v47 setObject:v58 forKeyedSubscript:v59];
                    }
                  }

                  v52 = [v50 countByEnumeratingWithState:&v111 objects:v125 count:16];
                }

                while (v52);
              }

              v40 = v88;
              curationModel2 = [v88 curationModel];
              v61 = [curationModel2 processedSignalsFromSignals:v47];

              [v88 clsSetProcessedSignals:v61];
              v42 = v105;
              v39 = contexta;
              v44 = v89;
              uuid2 = v90;
              v43 = v102;
              v62 = v87;
            }

            else
            {
              v63 = objc_alloc_init(MEMORY[0x1E695DFD8]);
              [v40 clsSetSceneClassifications:v63];

              v62 = objc_alloc_init(CLSAssetProcessedSignals);
              [v40 clsSetProcessedSignals:v62];
            }
          }

          if (v99)
          {
            if ([v40 faceAnalysisVersionWasFetched])
            {
              userFeedbackCalculator = [v83 userFeedbackCalculator];
              [v40 localIdentifier];
              v65 = contextc = v39;
              [v79 objectForKeyedSubscript:v65];
              v106 = v42;
              v67 = v66 = uuid2;
              [v67 fetchedObjects];
              v68 = v103 = v43;

              curationModel3 = [v40 curationModel];
              clsIdentifier = [v40 clsIdentifier];
              [curationModel3 faceInformationSummaryWithFaces:v68 detectionTraitsByFaceLocalIdentifier:v78 verifiedPersonUUIDs:v81 hiddenPersonUUIDs:v80 personUUIDByMergeCandidateUUID:v82 userFeedbackCalculator:userFeedbackCalculator assetUUID:clsIdentifier];
              v72 = v71 = v44;

              uuid2 = v66;
              v42 = v106;

              v39 = contextc;
              [v40 clsSetFaceInformationSummary:v72];

              v44 = v71;
              v43 = v103;
LABEL_61:

              goto LABEL_63;
            }

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              userFeedbackCalculator = [v40 uuid];
              *buf = 138412290;
              v124 = userFeedbackCalculator;
              goto LABEL_61;
            }
          }

LABEL_63:

          v39 = v39 + 1;
        }

        while (v39 != v100);
        v73 = [obj countByEnumeratingWithState:&v115 objects:v126 count:16];
        v100 = v73;
      }

      while (v73);
    }

    photoLibrary = v76;
    v7 = v77;
    firstObject = v75;
  }

LABEL_68:
}

+ (void)prefetchScenesOnAssets:()Curation
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v26 = [MEMORY[0x1E6978A38] fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:v3 sceneClassificationType:0 includeTemporalClassifications:0];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v3;
  v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v27)
  {
    v25 = *v37;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v36 + 1) + 8 * i);
        localIdentifier = [v5 localIdentifier];
        v7 = [v26 objectForKeyedSubscript:localIdentifier];

        if (v7)
        {
          v31 = i;
          v28 = [MEMORY[0x1E695DFD8] setWithArray:v7];
          [v5 clsSetSceneClassifications:?];
          v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v29 = v5;
          curationModel = [v5 curationModel];
          sceneModel = [curationModel sceneModel];

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = v7;
          v11 = v7;
          v12 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v33;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v33 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v32 + 1) + 8 * j);
                extendedSceneIdentifier = [v16 extendedSceneIdentifier];
                if (([sceneModel isResponsibleForSignalIdentifier:extendedSceneIdentifier] & 1) == 0)
                {
                  v18 = MEMORY[0x1E696AD98];
                  [v16 confidence];
                  v19 = [v18 numberWithDouble:?];
                  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:extendedSceneIdentifier];
                  [v8 setObject:v19 forKeyedSubscript:v20];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v13);
          }

          curationModel2 = [v29 curationModel];
          v22 = [curationModel2 processedSignalsFromSignals:v8];

          [v29 clsSetProcessedSignals:v22];
          v7 = v30;
          i = v31;
          v23 = v28;
        }

        else
        {
          v23 = objc_alloc_init(MEMORY[0x1E695DFD8]);
          [v5 clsSetSceneClassifications:v23];
        }
      }

      v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v27);
  }
}

+ (id)clsAllAssetsFromFetchResult:()Curation prefetchOptions:curationContext:
{
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v10 = objc_alloc(MEMORY[0x1E695DEC8]);
    fetchedObjects = [v8 fetchedObjects];
    v12 = [v10 initWithArray:fetchedObjects copyItems:0];

    if ((a4 & 4) != 0 && ([v8 fetchPropertySets], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "containsObject:", *MEMORY[0x1E6978CF0]), v13, (v14 & 1) == 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Asking for scene information but sceneAnalysisVersion is not available", buf, 2u);
      if ((a4 & 8) != 0)
      {
        goto LABEL_6;
      }
    }

    else if ((a4 & 8) != 0)
    {
LABEL_6:
      fetchPropertySets = [v8 fetchPropertySets];
      v16 = [fetchPropertySets containsObject:*MEMORY[0x1E6978C48]];

      if ((v16 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *v18 = 0;
        _os_log_fault_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Asking for face information but faceAnalysisVersion is not available", v18, 2u);
      }
    }

    [self prefetchOnAssets:v12 options:a4 curationContext:v9];
    goto LABEL_11;
  }

  v12 = MEMORY[0x1E695E0F0];
LABEL_11:

  return v12;
}

+ (void)_populateAsset:()Curation withPersonUUIDs:consolidatedPersonUUIDs:petUUIDs:
{
  v23 = a4;
  v9 = a5;
  v10 = a6;
  v11 = a3;
  if ([v11 clsIsScreenshotOrScreenRecording])
  {
    v12 = MEMORY[0x1E695E0F0];
    [v11 clsSetPersonLocalIdentifiers:MEMORY[0x1E695E0F0]];
    [v11 clsSetConsolidatedPersonLocalIdentifiers:v12];
    [v11 clsSetPetLocalIdentifiers:v12];
  }

  else
  {
    v13 = [v23 _pl_map:&__block_literal_global_300];
    v14 = v13;
    v15 = MEMORY[0x1E695E0F0];
    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = MEMORY[0x1E695E0F0];
    }

    [v11 clsSetPersonLocalIdentifiers:v16];
    v17 = [v9 _pl_map:&__block_literal_global_302];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v15;
    }

    [v11 clsSetConsolidatedPersonLocalIdentifiers:v19];
    v20 = [v10 _pl_map:&__block_literal_global_304];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v15;
    }

    [v11 clsSetPetLocalIdentifiers:v22];

    v11 = v14;
  }
}

+ (id)_filterPersonUUIDs:()Curation fromPersonUUIDsByAssetUUID:personUUIDByMergeCandidateUUID:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __98__PHAsset_Curation___filterPersonUUIDs_fromPersonUUIDsByAssetUUID_personUUIDByMergeCandidateUUID___block_invoke;
    v15[3] = &unk_1E82A2328;
    v16 = v7;
    v17 = v9;
    v11 = v10;
    v18 = v11;
    [v8 enumerateKeysAndObjectsUsingBlock:v15];
    v12 = v18;
    v13 = v11;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F8];
  }

  return v13;
}

+ (id)verifiedPersonLocalIdentifiersByAssetUUIDWithAssets:()Curation
{
  v4 = a3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([v4 count])
  {
    v6 = [self _personUUIDsByAssetUUIDWithAssets:v4 personUUIDs:0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__PHAsset_Curation__verifiedPersonLocalIdentifiersByAssetUUIDWithAssets___block_invoke;
    v8[3] = &unk_1E82A2300;
    v9 = dictionary;
    [v6 enumerateKeysAndObjectsUsingBlock:v8];
  }

  return dictionary;
}

+ (id)_petUUIDsByAssetUUIDWithAssetUUIDs:()Curation photoLibrary:
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    librarySpecificFetchOptions = [v6 librarySpecificFetchOptions];
    [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F46E55E8];
    v8 = [MEMORY[0x1E6978980] fetchVerifiedPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v5 options:librarySpecificFetchOptions];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  return v8;
}

+ (id)_personUUIDsByAssetUUIDWithAssetUUIDs:()Curation personUUIDs:photoLibrary:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (![v7 count])
  {
    goto LABEL_5;
  }

  if (!v8)
  {
    librarySpecificFetchOptions = [v9 librarySpecificFetchOptions];
    0xFFFFFFFFLL = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"personForFace.type", 0xFFFFFFFFLL];
    [librarySpecificFetchOptions setInternalPredicate:0xFFFFFFFFLL];

    v12 = [MEMORY[0x1E6978980] fetchVerifiedPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v7 options:librarySpecificFetchOptions];
    goto LABEL_7;
  }

  if (![v8 count])
  {
LABEL_5:
    v13 = MEMORY[0x1E695E0F8];
    goto LABEL_8;
  }

  librarySpecificFetchOptions = [v9 librarySpecificFetchOptions];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"personForFace.personUUID", v8];
  [librarySpecificFetchOptions setInternalPredicate:v11];

  v12 = [MEMORY[0x1E6978980] fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v7 options:librarySpecificFetchOptions];
LABEL_7:
  v13 = v12;

LABEL_8:

  return v13;
}

+ (id)_personUUIDsByAssetUUIDWithAssets:()Curation personUUIDs:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          uuid = [*(*(&v19 + 1) + 8 * i) uuid];
          [v8 addObject:uuid];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    firstObject = [v9 firstObject];
    photoLibrary = [firstObject photoLibrary];
    v17 = [self _personUUIDsByAssetUUIDWithAssetUUIDs:v8 personUUIDs:v7 photoLibrary:photoLibrary];
  }

  else
  {
    v17 = MEMORY[0x1E695E0F8];
  }

  return v17;
}

@end