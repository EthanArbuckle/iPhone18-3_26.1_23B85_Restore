@interface PNExternalAssetRelevanceUtilities
+ (BOOL)importedAssetInferredRelevant:(id)relevant;
+ (id)internalPredicateToIncludeExternalAssetsNeedingProcessing;
+ (id)internalPredicateToIncludeProcessedExternalAssets;
+ (int64_t)externalAssetEligibilityForAsset:(id)asset;
@end

@implementation PNExternalAssetRelevanceUtilities

+ (BOOL)importedAssetInferredRelevant:(id)relevant
{
  relevantCopy = relevant;
  curationProperties = [relevantCopy curationProperties];
  importedByBundleIdentifier = [curationProperties importedByBundleIdentifier];

  if (!importedByBundleIdentifier)
  {
    goto LABEL_6;
  }

  importedByBundleIdentifiersAllowListForMomentGeneration = [MEMORY[0x1E69BE5C8] importedByBundleIdentifiersAllowListForMomentGeneration];
  v7 = [importedByBundleIdentifiersAllowListForMomentGeneration containsObject:importedByBundleIdentifier];

  if (v7)
  {
    goto LABEL_6;
  }

  if ([CLSCurationUtilities isBlocklistedImportedByBundleIdentifier:importedByBundleIdentifier withExternalAppBlocklistType:1])
  {
    v8 = 0;
    goto LABEL_7;
  }

  mediaAnalysisProperties = [relevantCopy mediaAnalysisProperties];
  syndicationProcessingValue = [mediaAnalysisProperties syndicationProcessingValue];

  if ((syndicationProcessingValue & 0x3CF1) != 0)
  {
LABEL_6:
    v8 = 1;
    goto LABEL_7;
  }

  importedByBundleIdentifiersToIncludeIfNotProcessed = [MEMORY[0x1E69BE5C8] importedByBundleIdentifiersToIncludeIfNotProcessed];
  if ([importedByBundleIdentifiersToIncludeIfNotProcessed containsObject:importedByBundleIdentifier])
  {
    mediaAnalysisProperties2 = [relevantCopy mediaAnalysisProperties];
    v8 = [mediaAnalysisProperties2 syndicationProcessingVersion] == 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_7:
  return v8;
}

+ (id)internalPredicateToIncludeProcessedExternalAssets
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %llu", @"mediaAnalysisAttributes.syndicationProcessingVersion", 8];
  v4 = MEMORY[0x1E696AB28];
  internalPredicateToIncludeExternalAssetsEligibleForProcessing = [self internalPredicateToIncludeExternalAssetsEligibleForProcessing];
  v9[0] = internalPredicateToIncludeExternalAssetsEligibleForProcessing;
  v9[1] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v4 andPredicateWithSubpredicates:v6];

  return v7;
}

+ (id)internalPredicateToIncludeExternalAssetsNeedingProcessing
{
  v12[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %llu", @"mediaAnalysisAttributes.syndicationProcessingVersion", 8];
  0x3FE0000000000000 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %f", @"curationScore", 0x3FE0000000000000];
  predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion = [MEMORY[0x1E69BE540] predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion];
  predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestFaceVersion = [MEMORY[0x1E69BE540] predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestFaceVersion];
  v7 = MEMORY[0x1E696AB28];
  internalPredicateToIncludeExternalAssetsEligibleForProcessing = [self internalPredicateToIncludeExternalAssetsEligibleForProcessing];
  v12[0] = internalPredicateToIncludeExternalAssetsEligibleForProcessing;
  v12[1] = v3;
  v12[2] = 0x3FE0000000000000;
  v12[3] = predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion;
  v12[4] = predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestFaceVersion;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
  v10 = [v7 andPredicateWithSubpredicates:v9];

  return v10;
}

+ (int64_t)externalAssetEligibilityForAsset:(id)asset
{
  assetCopy = asset;
  sceneAnalysisProperties = [assetCopy sceneAnalysisProperties];
  sceneAnalysisVersion = [sceneAnalysisProperties sceneAnalysisVersion];
  currentSceneVersion = [MEMORY[0x1E69BE5A0] currentSceneVersion];
  intValue = [currentSceneVersion intValue];

  if (intValue <= sceneAnalysisVersion)
  {
    faceAdjustmentVersion = [assetCopy faceAdjustmentVersion];

    if (faceAdjustmentVersion)
    {
      [assetCopy curationScore];
      if (v10 == 0.0)
      {
        v8 = -2;
      }

      else
      {
        [assetCopy curationScore];
        if (v11 >= *MEMORY[0x1E69BE8F8])
        {
          mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
          syndicationProcessingVersion = [mediaAnalysisProperties syndicationProcessingVersion];

          if (syndicationProcessingVersion == 8)
          {
            mediaAnalysisProperties2 = [assetCopy mediaAnalysisProperties];
            syndicationProcessingValue = [mediaAnalysisProperties2 syndicationProcessingValue];

            if ((syndicationProcessingValue & 0x3CF1) != 0)
            {
              v8 = 2;
            }

            else
            {
              v8 = 1;
            }
          }

          else
          {
            v8 = -1;
          }
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = -3;
    }
  }

  else
  {
    v8 = -4;
  }

  return v8;
}

@end