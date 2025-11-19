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
  v1 = objc_getAssociatedObject(a1, "kCLSFaceInformationSummaryString");
  v2 = v1 != 0;

  return v2;
}

- (BOOL)clsSceneClassificationsArePrefetched
{
  v1 = objc_getAssociatedObject(a1, "clsSceneClassifications");
  v2 = v1 != 0;

  return v2;
}

- (BOOL)clsPeopleCountIsPrefetched
{
  v1 = objc_getAssociatedObject(a1, "clsPeopleCount");
  v2 = v1 != 0;

  return v2;
}

- (BOOL)clsPersonLocalIdentifiersArePrefetched
{
  v1 = objc_getAssociatedObject(a1, "clsPersonLocalIdentifiers");
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)prepareWithAlternateJunkingHeuristics:()Curation withContext:curationContext:blockSocialMediaImportedAssets:
{
  v10 = a4;
  v11 = a5;
  v12 = [a1 curationModel];
  v13 = v12;
  if (a3)
  {
    v14 = [v11 userFeedbackCalculator];
    v15 = [v13 isUtilityForMemoriesWithAsset:a1 userFeedbackCalculator:v14 blockSocialMediaImportedAssets:a6];
  }

  else
  {
    v15 = [v12 isUtilityWithAsset:a1];
  }

  v16 = v15 ^ [a1 clsIsUtility];
  if (v16 == 1)
  {
    [a1 clsCacheIsUtility:v15];
    [a1 scoreInContext:v10];
    v18 = v17;
    [a1 curationScore];
    if (v18 != v19)
    {
      [a1 cacheCurationScore:v18];
    }
  }

  return v16;
}

- (uint64_t)clsIsTragicFailure
{
  v2 = [a1 curationModel];
  v3 = [v2 isTragicFailureWithImageAsset:a1];

  return v3;
}

- (uint64_t)clsHasCustomPlaybackVariation
{
  result = [a1 isSubtype:8];
  if (result)
  {
    return [a1 playbackVariation] != 0;
  }

  return result;
}

- (uint64_t)clsInterestingAudioClassifications
{
  v2 = [a1 curationModel];
  v3 = [v2 interestingAudioClassificationsWithAsset:a1];

  return v3;
}

- (uint64_t)clsHasInterestingAudioClassification
{
  v2 = [a1 curationModel];
  v3 = [v2 hasInterestingAudioClassificationWithAsset:a1];

  return v3;
}

- (uint64_t)clsIsInterestingHDR
{
  v2 = [a1 curationModel];
  v3 = [v2 isInterestingHDRWithAsset:a1];

  return v3;
}

- (uint64_t)clsIsInterestingSDOF
{
  v2 = [a1 curationModel];
  v3 = [v2 isInterestingSDOFWithAsset:a1];

  return v3;
}

- (uint64_t)clsIsInterestingPanorama
{
  v2 = [a1 curationModel];
  v3 = [v2 isInterestingPanoramaWithAsset:a1];

  return v3;
}

- (uint64_t)clsIsInterestingLivePhoto
{
  v2 = [a1 curationModel];
  v3 = [v2 isInterestingLivePhotoWithAsset:a1];

  return v3;
}

- (double)clsAutoplaySuggestionScore
{
  v1 = [a1 mediaAnalysisProperties];
  [v1 autoplaySuggestionScore];
  v3 = v2;

  return v3;
}

- (uint64_t)clsIsInterestingVideo
{
  v2 = [a1 curationModel];
  v3 = [v2 isInterestingVideoWithAsset:a1];

  return v3;
}

- (double)scoreInContext:()Curation
{
  v4 = a3;
  v5 = [a1 curationModel];
  [v5 scoreWithAsset:a1 inContext:v4];
  v7 = v6;

  return v7;
}

- (void)cacheCurationScore:()Curation
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  objc_setAssociatedObject(a1, "clsCurationScore", v2, 1);
}

- (double)clsContentScoreRecomputingIfNeeded:()Curation
{
  v5 = objc_getAssociatedObject(a1, "clsCurationScore");
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    v8 = v7;
  }

  else
  {
    [a1 curationScore];
    v8 = v9;
    if (v9 == 0.0 && a3 != 0)
    {
      v11 = [a1 curationModel];
      [v11 scoreWithAsset:a1 inContext:0];
      v8 = v12;

      [a1 cacheCurationScore:v8];
    }
  }

  return v8;
}

- (double)cropScoreForTargetAspectRatio:()Curation forFaces:
{
  [a1 faceAreaMinX];
  v7 = v6;
  [a1 faceAreaMinY];
  v9 = v8;
  [a1 faceAreaMaxX];
  v11 = v10;
  [a1 faceAreaMaxY];
  v12 = v11 - v7;
  v14 = v13 - v9;
  v32 = 0.0;
  v15 = v7;
  v16 = v9;
  v17 = v12;
  v18 = v13 - v9;
  if ((a4 & 1) == 0)
  {
    [a1 acceptableCropRect];
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
  }

  v23 = MEMORY[0x1E69C06A0];
  v24 = [a1 pixelWidth];
  v25 = [a1 pixelHeight];
  [a1 preferredCropRect];
  [v23 bestCropRectV2ForAspectRatio:v24 withFocusRegion:v25 sourcePixelWidth:&v32 sourcePixelHeight:a2 sourcePreferredCropRectNormalized:0.0 sourceAcceptableCropRectNormalized:0.0 sourceFaceAreaRectNormalized:0.0 outputCropScore:{0.0, v26, v27, v28, v29, *&v15, *&v16, *&v17, *&v18, *&v7, 1.0 - (v9 + v14), *&v12, *&v14}];
  return v32;
}

- (double)clsSquareCropScore
{
  v2 = 0.0;
  [a1 suggestedCropForTargetSize:&v2 withFocusRegion:1.0 andOutputCropScore:{1.0, 0.0, 0.0, 0.0, 0.0}];
  return v2;
}

- (uint64_t)clsHasInterestingScenes
{
  v2 = [a1 curationModel];
  v3 = [v2 hasInterestingScenesWithAsset:a1];

  return v3;
}

- (uint64_t)clsHasPoorResolution
{
  v2 = [a1 curationModel];
  v3 = [v2 hasPoorResolutionWithAsset:a1];

  return v3;
}

- (uint64_t)clsAvoidIfPossibleAsKeyItemForMemories:()Curation allowGuestAsset:reason:
{
  if ((a4 & 1) != 0 || ![a1 clsIsGuestAsset])
  {
    v9 = [a1 curationModel];
    v10 = v9;
    if (a3 && [v9 avoidIfPossibleForMemoryKeyAssetWithAsset:a1])
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
      v11 = [v10 avoidIfPossibleForKeyAssetWithAsset:a1 statistics:v13];
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
  v2 = [a1 curationModel];
  v3 = [v2 isInhabitedWithAsset:a1];

  return v3;
}

- (uint64_t)clsIsBlurry
{
  v2 = [a1 curationModel];
  v3 = [v2 isBlurryWithAsset:a1];

  return v3;
}

- (uint64_t)clsSimilarityModelVersion
{
  v1 = [a1 curationModel];
  v2 = [v1 similarityModelVersion];

  return v2;
}

- (id)clsSceneprint
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(a1, "clsSceneprint");
  if (!v2)
  {
    v5 = [a1 sceneprintProperties];
    v6 = [v5 sceneprint];

    if (v6)
    {
      v13 = 0;
      v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v13];
      v7 = v13;
      v8 = v7;
      if (v3)
      {

        objc_setAssociatedObject(a1, "clsSceneprint", v3, 1);
LABEL_13:

        goto LABEL_14;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = [a1 uuid];
        *buf = 138412546;
        v15 = v12;
        v16 = 2112;
        v17 = v8;
        _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error unarchiving sceneprint for asset %@: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v9 = [a1 uuid];
      *buf = 138412290;
      v15 = v9;
      _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Sceneprint not available for asset %@", buf, 0xCu);
    }

    v10 = [MEMORY[0x1E695DFB0] null];
    objc_setAssociatedObject(a1, "clsSceneprint", v10, 1);

    v3 = 0;
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [MEMORY[0x1E695DFB0] null];

  if (v3 == v4)
  {

    v3 = 0;
  }

LABEL_14:

  return v3;
}

- (id)clsSceneClassifications
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(a1, "clsSceneClassifications");
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = [a1 localIdentifier];
      v5 = 134218242;
      v6 = a1;
      v7 = 2112;
      v8 = v4;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "clsSceneClassifications not prefetched for asset %p %@", &v5, 0x16u);
    }

    v2 = [a1 sceneClassifications];
  }

  return v2;
}

- (double)clsFaceScore
{
  v1 = [a1 clsFaceInformationSummary];
  [v1 averageFaceQuality];
  v3 = v2;

  return v3;
}

- (uint64_t)clsVideoFaceCount
{
  v2 = [a1 mediaAnalysisProperties];
  if (v2)
  {
    v3 = [a1 mediaAnalysisProperties];
    v4 = [v3 faceCount];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)clsActivityScore
{
  v2 = [a1 mediaAnalysisProperties];
  if (v2)
  {
    v3 = [a1 mediaAnalysisProperties];
    [v3 activityScore];
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
  v2 = [a1 mediaAnalysisProperties];
  if (v2)
  {
    v3 = [a1 mediaAnalysisProperties];
    [v3 videoScore];
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
  v2 = [a1 mediaAnalysisProperties];
  if (v2)
  {
    v3 = [a1 mediaAnalysisProperties];
    [v3 blurrinessScore];
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
  v2 = [a1 mediaAnalysisProperties];
  if (v2)
  {
    v3 = [a1 mediaAnalysisProperties];
    [v3 wallpaperScore];
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
  v2 = [a1 mediaAnalysisProperties];
  if (v2)
  {
    v3 = [a1 mediaAnalysisProperties];
    [v3 exposureScore];
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
  v2 = objc_getAssociatedObject(a1, "kCLSProcessedSignalsString");
  if (!v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v4 = [a1 localIdentifier];
    v5 = 134218242;
    v6 = a1;
    v7 = 2112;
    v8 = v4;
    _os_log_fault_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "processedSignals not prefetched for asset %p %@", &v5, 0x16u);
  }

  return v2;
}

- (id)clsFaceInformationSummary
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(a1, "kCLSFaceInformationSummaryString");
  if (!v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v4 = [a1 localIdentifier];
    v5 = 134218242;
    v6 = a1;
    v7 = 2112;
    v8 = v4;
    _os_log_fault_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "faceInformationSummary not prefetched for asset %p %@", &v5, 0x16u);
  }

  return v2;
}

- (uint64_t)clsPeopleCount
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(a1, "clsPeopleCount");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [a1 localIdentifier];
      v8 = 134218242;
      v9 = a1;
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "clsPeopleCount not prefetched for asset %p %@", &v8, 0x16u);
    }

    v5 = [a1 clsUnprefetchedPersonLocalIdentifiers];
    v4 = [v5 count];
  }

  return v4;
}

- (id)clsUnprefetchedPersonLocalIdentifiers
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(a1, "clsPersonLocalIdentifiers");
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (([a1 clsIsScreenshotOrScreenRecording] & 1) == 0)
    {
      v4 = [a1 photoLibrary];
      v5 = [v4 librarySpecificFetchOptions];

      [v5 setPersonContext:1];
      v6 = [MEMORY[0x1E6978980] fetchPersonsInAsset:a1 options:v5];
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

            v11 = [*(*(&v16 + 1) + 8 * i) localIdentifier];
            if (v11)
            {
              [v3 addObject:v11];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v8);
      }
    }

    v2 = v3;
    objc_setAssociatedObject(a1, "clsPersonLocalIdentifiers", v2, 1);
    v12 = MEMORY[0x1E696AD98];
    v13 = [v2 count];

    v14 = [v12 numberWithUnsignedInteger:v13];
    objc_setAssociatedObject(a1, "clsPeopleCount", v14, 1);
  }

  return v2;
}

- (id)clsConsolidatedPersonLocalIdentifiers
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(a1, "clsConsolidatedPersonLocalIdentifiers");
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = [a1 localIdentifier];
      v5 = 134218242;
      v6 = a1;
      v7 = 2112;
      v8 = v4;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "clsConsolidatedPersonLocalIdentifiers not prefetched for asset %p %@", &v5, 0x16u);
    }

    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (void)clsSetPersonLocalIdentifiers:()Curation
{
  v4 = a3;
  objc_setAssociatedObject(a1, "clsPersonLocalIdentifiers", v4, 1);
  v5 = MEMORY[0x1E696AD98];
  v6 = [v4 count];

  v7 = [v5 numberWithUnsignedInteger:v6];
  objc_setAssociatedObject(a1, "clsPeopleCount", v7, 1);
}

- (id)clsPersonLocalIdentifiers
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(a1, "clsPersonLocalIdentifiers");
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = [a1 localIdentifier];
      v5 = 134218242;
      v6 = a1;
      v7 = 2112;
      v8 = v4;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "clsPersonLocalIdentifiers not prefetched for asset %p %@", &v5, 0x16u);
    }

    v2 = [a1 clsUnprefetchedPersonLocalIdentifiers];
  }

  return v2;
}

- (void)clsPetLocalIdentifiers
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(a1, "clsPetLocalIdentifiers");
  v3 = v2;
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [a1 localIdentifier];
      v7 = 134218242;
      v8 = a1;
      v9 = 2112;
      v10 = v6;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "clsPetLocalIdentifiers not prefetched for asset %p %@", &v7, 0x16u);
    }

    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;

  return v3;
}

- (id)clsPersonAndPetLocalIdentifiers
{
  v2 = [a1 clsPersonLocalIdentifiers];
  v3 = [a1 clsPetLocalIdentifiers];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (double)pl_gpsHorizontalAccuracy
{
  v1 = [a1 coarseLocationProperties];
  [v1 gpsHorizontalAccuracy];
  v3 = v2;

  return v3;
}

- (double)pl_coordinate
{
  v2 = [a1 location];

  if (!v2)
  {
    return *MEMORY[0x1E6985CC0];
  }

  v3 = [a1 location];
  [v3 coordinate];
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
  objc_setAssociatedObject(a1, "clsIconicSceneScore", v2, 1);
}

- (double)clsIconicSceneScoreWithSceneGeography:()Curation
{
  v4 = a3;
  v5 = objc_getAssociatedObject(a1, "clsIconicSceneScore");
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    v8 = v7;
  }

  else
  {
    v9 = [a1 curationModel];
    v10 = [v9 sceneModel];
    v11 = [a1 clsSceneClassifications];
    v12 = [v10 sceneIdentifiersFromSceneClassifications:v11 passingThresholdOfType:1];

    [a1 locationCoordinate];
    [PNAssetCurationUtilities assetIconicScoreForSceneClassificationIdentifiers:"assetIconicScoreForSceneClassificationIdentifiers:assetLatitude:assetLongitude:sceneGeography:maxScenesCount:" assetLatitude:v12 assetLongitude:v4 sceneGeography:5 maxScenesCount:?];
    v8 = v13;
    [a1 clsCacheIconicSceneScore:?];
  }

  return v8;
}

- (double)clsIconicScore
{
  v1 = [a1 iconicScoreProperties];
  [v1 iconicScore];
  v3 = v2;

  return v3;
}

- (uint64_t)clsIsFaceProcessed
{
  v2 = [a1 faceAnalysisVersion];
  if (*MEMORY[0x1E69BE9E8] != v2)
  {
    return 1;
  }

  v3 = [a1 faceAdjustmentVersion];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)clsIsSceneProcessed
{
  v1 = [a1 sceneAnalysisProperties];
  v2 = [v1 sceneAnalysisVersion];
  v3 = *MEMORY[0x1E69BE9F0] != v2;

  return v3;
}

- (uint64_t)clsIsAestheticallyPrettyGood
{
  v2 = [a1 curationModel];
  v3 = [v2 isAestheticallyPrettyGoodWithAsset:a1];

  return v3;
}

- (uint64_t)clsIsScreenshotOrScreenRecording
{
  if ([a1 isSubtype:4])
  {
    return 1;
  }

  return [a1 isScreenRecording];
}

- (void)clsCacheIsUtility:()Curation
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, "clsIsUtility", v2, 1);
}

- (uint64_t)clsIsUtility
{
  v2 = objc_getAssociatedObject(a1, "clsIsUtility");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v5 = [a1 curationModel];
    v4 = [v5 isUtilityWithAsset:a1];

    [a1 clsCacheIsUtility:v4];
  }

  return v4;
}

- (uint64_t)clsIsNonMemorable
{
  v2 = [a1 curationModel];
  v3 = [v2 isNonMemorableWithAsset:a1];

  return v3;
}

- (double)clsDuration
{
  [a1 duration];
  Seconds = v2;
  if ([a1 isMediaSubtype:8])
  {
    v4 = [a1 photoIrisProperties];
    v5 = v4;
    if (v4)
    {
      [v4 photoIrisVideoDuration];
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
  v1 = [a1 assetUserActivityProperties];
  v2 = [v1 shareCount];

  return v2;
}

- (uint64_t)clsPlayCount
{
  v1 = [a1 assetUserActivityProperties];
  v2 = [v1 playCount];

  return v2;
}

- (uint64_t)clsViewCount
{
  v1 = [a1 assetUserActivityProperties];
  v2 = [v1 viewCount];

  return v2;
}

- (BOOL)hasCurationModel
{
  v1 = objc_getAssociatedObject(a1, "clsCurationModel");
  v2 = v1 != 0;

  return v2;
}

- (id)curationModel
{
  v2 = objc_getAssociatedObject(a1, "clsCurationModel");
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_fault_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Asset curation requires a curation model, call [CLSCurationSession prepareAssets:] on your asset", v5, 2u);
    }

    v3 = objc_alloc_init(CLSCurationSession);
    [a1 fetchPropertySetsIfNeeded];
    v2 = [(CLSCurationSession *)v3 curationModelForAsset:a1];
    [a1 setCurationModel:v2];
  }

  return v2;
}

+ (void)prefetchOnAssets:()Curation options:curationContext:
{
  v128 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v83 = a5;
  v8 = [v7 firstObject];
  v9 = [v8 photoLibrary];
  if (!v9)
  {
    goto LABEL_68;
  }

  if ((a4 & 3) != 0)
  {
    v98 = [v8 clsPeopleCountIsPrefetched] ^ 1;
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

  v10 = [v8 canUseLocationCoordinateForLocation] ^ 1;
  if ((a4 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v97 = [v8 clsSceneClassificationsArePrefetched] ^ 1;
  if ((a4 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v99 = [v8 clsFaceInformationArePrefetched] ^ 1;
LABEL_11:
  if (((v98 | v10 | v97) & 1) != 0 || v99)
  {
    v93 = v10;
    if ((a4 & 0xC) != 0)
    {
      v11 = [v7 firstObject];
      v12 = [v11 hasCurationModel];

      if ((v12 & 1) == 0)
      {
        v13 = objc_autoreleasePoolPush();
        v14 = [v83 curationSession];
        [v14 prepareAssets:v7];

        objc_autoreleasePoolPop(v13);
      }
    }

    if ((v98 | v99))
    {
      contextb = objc_autoreleasePoolPush();
      v15 = [v83 personUUIDByMergeCandidateUUID];
      v16 = [v83 verifiedPersonUUIDs];
      v17 = [v83 hiddenOrBlockedPersonUUIDs];
      v18 = MEMORY[0x1E695DFD8];
      v19 = [v15 allKeys];
      v20 = [v18 setWithArray:v19];

      v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [v21 unionSet:v16];
      v80 = v17;
      [v21 unionSet:v17];
      [v21 unionSet:v20];
      v74 = v20;
      v22 = [v16 setByAddingObjectsFromSet:v20];
      v23 = [v7 _pl_map:&__block_literal_global_309];
      v24 = [a1 _personUUIDsByAssetUUIDWithAssetUUIDs:v23 personUUIDs:v21 photoLibrary:v9];
      v81 = v16;
      v96 = [a1 _filterPersonUUIDs:v16 fromPersonUUIDsByAssetUUID:v24 personUUIDByMergeCandidateUUID:0];
      v82 = v15;
      v95 = [a1 _filterPersonUUIDs:v22 fromPersonUUIDsByAssetUUID:v24 personUUIDByMergeCandidateUUID:v15];
      v94 = [a1 _petUUIDsByAssetUUIDWithAssetUUIDs:v23 photoLibrary:v9];

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

    v76 = v9;
    v77 = v7;
    v75 = v8;
    if (v99)
    {
      v104 = objc_autoreleasePoolPush();
      v25 = [v9 librarySpecificFetchOptions];
      [v25 setIncludedDetectionTypes:&unk_1F46E5600];
      [v25 setIncludeTorsoAndFaceDetectionData:1];
      [v25 setWantsIncrementalChangeDetails:0];
      v101 = v25;
      v26 = [MEMORY[0x1E69787C8] fetchFacesGroupedByAssetLocalIdentifierForAssets:v7 options:v25];
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
                v37 = [v36 uuid];
                [v27 addObject:v37];

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
          v41 = [v40 uuid];
          v42 = [v96 objectForKeyedSubscript:v41];
          v43 = [v95 objectForKeyedSubscript:v41];
          v44 = [v94 objectForKeyedSubscript:v41];
          if (v98)
          {
            [a1 _populateAsset:v40 withPersonUUIDs:v42 consolidatedPersonUUIDs:v43 petUUIDs:v44];
          }

          if (v93)
          {
            [v40 setCanUseLocationCoordinateForLocation:1];
          }

          if (v97)
          {
            v45 = [v40 localIdentifier];
            v46 = [v84 objectForKeyedSubscript:v45];

            v91 = v46;
            if (v46)
            {
              v89 = v44;
              v90 = v41;
              v102 = v43;
              v105 = v42;
              contexta = v39;
              v87 = [MEMORY[0x1E695DFD8] setWithArray:v46];
              [v40 clsSetSceneClassifications:?];
              v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v88 = v40;
              v48 = [v40 curationModel];
              v49 = [v48 sceneModel];

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
                    v56 = [v55 extendedSceneIdentifier];
                    if (([v49 isResponsibleForSignalIdentifier:v56] & 1) == 0)
                    {
                      v57 = MEMORY[0x1E696AD98];
                      [v55 confidence];
                      v58 = [v57 numberWithDouble:?];
                      v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v56];
                      [v47 setObject:v58 forKeyedSubscript:v59];
                    }
                  }

                  v52 = [v50 countByEnumeratingWithState:&v111 objects:v125 count:16];
                }

                while (v52);
              }

              v40 = v88;
              v60 = [v88 curationModel];
              v61 = [v60 processedSignalsFromSignals:v47];

              [v88 clsSetProcessedSignals:v61];
              v42 = v105;
              v39 = contexta;
              v44 = v89;
              v41 = v90;
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
              v64 = [v83 userFeedbackCalculator];
              [v40 localIdentifier];
              v65 = contextc = v39;
              [v79 objectForKeyedSubscript:v65];
              v106 = v42;
              v67 = v66 = v41;
              [v67 fetchedObjects];
              v68 = v103 = v43;

              v69 = [v40 curationModel];
              v70 = [v40 clsIdentifier];
              [v69 faceInformationSummaryWithFaces:v68 detectionTraitsByFaceLocalIdentifier:v78 verifiedPersonUUIDs:v81 hiddenPersonUUIDs:v80 personUUIDByMergeCandidateUUID:v82 userFeedbackCalculator:v64 assetUUID:v70];
              v72 = v71 = v44;

              v41 = v66;
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
              v64 = [v40 uuid];
              *buf = 138412290;
              v124 = v64;
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

    v9 = v76;
    v7 = v77;
    v8 = v75;
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
        v6 = [v5 localIdentifier];
        v7 = [v26 objectForKeyedSubscript:v6];

        if (v7)
        {
          v31 = i;
          v28 = [MEMORY[0x1E695DFD8] setWithArray:v7];
          [v5 clsSetSceneClassifications:?];
          v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v29 = v5;
          v9 = [v5 curationModel];
          v10 = [v9 sceneModel];

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
                v17 = [v16 extendedSceneIdentifier];
                if (([v10 isResponsibleForSignalIdentifier:v17] & 1) == 0)
                {
                  v18 = MEMORY[0x1E696AD98];
                  [v16 confidence];
                  v19 = [v18 numberWithDouble:?];
                  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17];
                  [v8 setObject:v19 forKeyedSubscript:v20];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v13);
          }

          v21 = [v29 curationModel];
          v22 = [v21 processedSignalsFromSignals:v8];

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
    v11 = [v8 fetchedObjects];
    v12 = [v10 initWithArray:v11 copyItems:0];

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
      v15 = [v8 fetchPropertySets];
      v16 = [v15 containsObject:*MEMORY[0x1E6978C48]];

      if ((v16 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *v18 = 0;
        _os_log_fault_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Asking for face information but faceAnalysisVersion is not available", v18, 2u);
      }
    }

    [a1 prefetchOnAssets:v12 options:a4 curationContext:v9];
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
  v5 = [MEMORY[0x1E695DF90] dictionary];
  if ([v4 count])
  {
    v6 = [a1 _personUUIDsByAssetUUIDWithAssets:v4 personUUIDs:0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__PHAsset_Curation__verifiedPersonLocalIdentifiersByAssetUUIDWithAssets___block_invoke;
    v8[3] = &unk_1E82A2300;
    v9 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:v8];
  }

  return v5;
}

+ (id)_petUUIDsByAssetUUIDWithAssetUUIDs:()Curation photoLibrary:
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v6 librarySpecificFetchOptions];
    [v7 setIncludedDetectionTypes:&unk_1F46E55E8];
    v8 = [MEMORY[0x1E6978980] fetchVerifiedPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v5 options:v7];
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
    v10 = [v9 librarySpecificFetchOptions];
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"personForFace.type", 0xFFFFFFFFLL];
    [v10 setInternalPredicate:v14];

    v12 = [MEMORY[0x1E6978980] fetchVerifiedPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v7 options:v10];
    goto LABEL_7;
  }

  if (![v8 count])
  {
LABEL_5:
    v13 = MEMORY[0x1E695E0F8];
    goto LABEL_8;
  }

  v10 = [v9 librarySpecificFetchOptions];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"personForFace.personUUID", v8];
  [v10 setInternalPredicate:v11];

  v12 = [MEMORY[0x1E6978980] fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v7 options:v10];
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

          v14 = [*(*(&v19 + 1) + 8 * i) uuid];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v15 = [v9 firstObject];
    v16 = [v15 photoLibrary];
    v17 = [a1 _personUUIDsByAssetUUIDWithAssetUUIDs:v8 personUUIDs:v7 photoLibrary:v16];
  }

  else
  {
    v17 = MEMORY[0x1E695E0F8];
  }

  return v17;
}

@end