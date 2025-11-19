@interface PNExternalAssetRelevanceUtilities
+ (BOOL)importedAssetInferredRelevant:(id)a3;
+ (id)internalPredicateToIncludeExternalAssetsNeedingProcessing;
+ (id)internalPredicateToIncludeProcessedExternalAssets;
+ (int64_t)externalAssetEligibilityForAsset:(id)a3;
@end

@implementation PNExternalAssetRelevanceUtilities

+ (BOOL)importedAssetInferredRelevant:(id)a3
{
  v3 = a3;
  v4 = [v3 curationProperties];
  v5 = [v4 importedByBundleIdentifier];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [MEMORY[0x1E69BE5C8] importedByBundleIdentifiersAllowListForMomentGeneration];
  v7 = [v6 containsObject:v5];

  if (v7)
  {
    goto LABEL_6;
  }

  if ([CLSCurationUtilities isBlocklistedImportedByBundleIdentifier:v5 withExternalAppBlocklistType:1])
  {
    v8 = 0;
    goto LABEL_7;
  }

  v9 = [v3 mediaAnalysisProperties];
  v10 = [v9 syndicationProcessingValue];

  if ((v10 & 0x3CF1) != 0)
  {
LABEL_6:
    v8 = 1;
    goto LABEL_7;
  }

  v12 = [MEMORY[0x1E69BE5C8] importedByBundleIdentifiersToIncludeIfNotProcessed];
  if ([v12 containsObject:v5])
  {
    v13 = [v3 mediaAnalysisProperties];
    v8 = [v13 syndicationProcessingVersion] == 0;
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
  v5 = [a1 internalPredicateToIncludeExternalAssetsEligibleForProcessing];
  v9[0] = v5;
  v9[1] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v4 andPredicateWithSubpredicates:v6];

  return v7;
}

+ (id)internalPredicateToIncludeExternalAssetsNeedingProcessing
{
  v12[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %llu", @"mediaAnalysisAttributes.syndicationProcessingVersion", 8];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %f", @"curationScore", 0x3FE0000000000000];
  v5 = [MEMORY[0x1E69BE540] predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion];
  v6 = [MEMORY[0x1E69BE540] predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestFaceVersion];
  v7 = MEMORY[0x1E696AB28];
  v8 = [a1 internalPredicateToIncludeExternalAssetsEligibleForProcessing];
  v12[0] = v8;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
  v10 = [v7 andPredicateWithSubpredicates:v9];

  return v10;
}

+ (int64_t)externalAssetEligibilityForAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 sceneAnalysisProperties];
  v5 = [v4 sceneAnalysisVersion];
  v6 = [MEMORY[0x1E69BE5A0] currentSceneVersion];
  v7 = [v6 intValue];

  if (v7 <= v5)
  {
    v9 = [v3 faceAdjustmentVersion];

    if (v9)
    {
      [v3 curationScore];
      if (v10 == 0.0)
      {
        v8 = -2;
      }

      else
      {
        [v3 curationScore];
        if (v11 >= *MEMORY[0x1E69BE8F8])
        {
          v12 = [v3 mediaAnalysisProperties];
          v13 = [v12 syndicationProcessingVersion];

          if (v13 == 8)
          {
            v14 = [v3 mediaAnalysisProperties];
            v15 = [v14 syndicationProcessingValue];

            if ((v15 & 0x3CF1) != 0)
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