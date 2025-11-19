@interface PNAssetCurationUtilities
+ (BOOL)_assetIsSafeForWidgetDisplay:(id)a3 sceneClassifications:(id)a4 modelSet:(id)a5;
+ (BOOL)assetIsSafeForDisplay:(id)a3 modelSet:(id)a4;
+ (BOOL)assetIsSafeForWidgetDisplay:(id)a3;
+ (NSPredicate)internalPredicateToFilterGuestSyndicatedAssetsEligibleForQuestion;
+ (NSPredicate)internalPredicateToFilterSyndicatedAssetsEligibleForCurationProcessing;
+ (NSPredicate)internalPredicateToFilterSyndicatedAssetsEligibleForGuestInferenceProcessing;
+ (NSPredicate)internalPredicateToFilterSyndicatedAssetsEligibleForQuestion;
+ (double)absolutePopularityOfPOI:(double)a3 assetLongitude:(double)a4 sceneGeography:(id)a5;
+ (double)assetIconicScoreForSceneClassificationIdentifiers:(id)a3 assetLatitude:(double)a4 assetLongitude:(double)a5;
+ (double)assetIconicScoreForSceneClassificationIdentifiers:(id)a3 assetLatitude:(double)a4 assetLongitude:(double)a5 sceneGeography:(id)a6;
+ (double)assetIconicScoreForSceneClassificationIdentifiers:(id)a3 assetLatitude:(double)a4 assetLongitude:(double)a5 sceneGeography:(id)a6 maxScenesCount:(int64_t)a7;
+ (double)assetIconicScoreForSceneClassificationIdentifiers:(id)a3 assetLatitude:(double)a4 assetLongitude:(double)a5 sceneGeography:(id)a6 maxScenesCount:(int64_t)a7 popularityWeight:(double)a8;
+ (double)assetIconicScoreForSceneClassifications:(id)a3 assetLatitude:(double)a4 assetLongitude:(double)a5 sceneGeography:(id)a6 sceneTaxonomy:(id)a7;
+ (double)relativePopularityOfPOI:(double)a3 assetLongitude:(double)a4 sceneGeography:(id)a5;
+ (id)_internalPredicateToFilterSyndicatedAssetsEligibleWithCurationScore:(double)a3;
+ (id)assetsShowcasingFoodWithoutFacesInAssets:(id)a3;
+ (id)internalPredicateToIncludeOnlySentSyndicatedAssets;
+ (id)internalPredicateToIncludeReceivedNotAnalyzedSyndicatedAssets;
+ (id)internalPredicateToIncludeReceivedNotEligibleSyndicatedAssets;
+ (id)safeAssetsForWidgetDisplay:(id)a3;
+ (id)sceneIdentifiersByScoreForPOI:(double)a3 assetLongitude:(double)a4 sceneGeography:(id)a5;
+ (id)syndicationEligibilityForAssets:(id)a3;
@end

@implementation PNAssetCurationUtilities

+ (id)sceneIdentifiersByScoreForPOI:(double)a3 assetLongitude:(double)a4 sceneGeography:(id)a5
{
  v7 = MEMORY[0x1E69786B8];
  v8 = a5;
  v9 = [v7 poiGeoHashWithGeoHashSize:6 latitude:a3 longitude:a4];
  v10 = [v8 scenesByScoreForPOIHash:v9];

  return v10;
}

+ (double)absolutePopularityOfPOI:(double)a3 assetLongitude:(double)a4 sceneGeography:(id)a5
{
  v7 = MEMORY[0x1E69786B8];
  v8 = a5;
  v9 = [v7 poiGeoHashWithGeoHashSize:6 latitude:a3 longitude:a4];
  [v8 popularityForPOI:v9 popularity:1];
  v11 = v10;

  return v11;
}

+ (double)relativePopularityOfPOI:(double)a3 assetLongitude:(double)a4 sceneGeography:(id)a5
{
  v7 = MEMORY[0x1E69786B8];
  v8 = a5;
  v9 = [v7 poiGeoHashWithGeoHashSize:6 latitude:a3 longitude:a4];
  [v8 popularityForPOI:v9 popularity:0];
  v11 = v10;

  return v11;
}

+ (double)assetIconicScoreForSceneClassifications:(id)a3 assetLatitude:(double)a4 assetLongitude:(double)a5 sceneGeography:(id)a6 sceneTaxonomy:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        v21 = [v20 extendedSceneIdentifier];
        if ([v13 nodeRefForExtendedSceneClassId:v21])
        {
          PFSceneTaxonomyNodeSearchThreshold();
          v23 = v22;
          [v20 confidence];
          if (v24 >= v23)
          {
            v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v21];
            [v14 addObject:v25];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v17);
  }

  [PNAssetCurationUtilities assetIconicScoreForSceneClassificationIdentifiers:v14 assetLatitude:v12 assetLongitude:a4 sceneGeography:a5];
  v27 = v26;

  return v27;
}

+ (double)assetIconicScoreForSceneClassificationIdentifiers:(id)a3 assetLatitude:(double)a4 assetLongitude:(double)a5 sceneGeography:(id)a6 maxScenesCount:(int64_t)a7 popularityWeight:(double)a8
{
  v13 = MEMORY[0x1E69786B8];
  v14 = a6;
  v15 = a3;
  v16 = [v13 poiGeoHashWithGeoHashSize:6 latitude:a4 longitude:a5];
  [PNAssetCurationUtilities assetIconicScoreForSceneClassificationIdentifiers:v15 POIGeoHash:v16 sceneGeography:v14 maxScenesCount:a7 popularityWeight:a8];
  v18 = v17;

  return v18;
}

+ (double)assetIconicScoreForSceneClassificationIdentifiers:(id)a3 assetLatitude:(double)a4 assetLongitude:(double)a5 sceneGeography:(id)a6 maxScenesCount:(int64_t)a7
{
  v11 = MEMORY[0x1E69786B8];
  v12 = a6;
  v13 = a3;
  v14 = [v11 poiGeoHashWithGeoHashSize:6 latitude:a4 longitude:a5];
  [PNAssetCurationUtilities assetIconicScoreForSceneClassificationIdentifiers:v13 POIGeoHash:v14 sceneGeography:v12 maxScenesCount:a7];
  v16 = v15;

  return v16;
}

+ (double)assetIconicScoreForSceneClassificationIdentifiers:(id)a3 assetLatitude:(double)a4 assetLongitude:(double)a5 sceneGeography:(id)a6
{
  v9 = MEMORY[0x1E69786B8];
  v10 = a6;
  v11 = a3;
  v12 = [v9 poiGeoHashWithGeoHashSize:6 latitude:a4 longitude:a5];
  [PNAssetCurationUtilities assetIconicScoreForSceneClassificationIdentifiers:v11 POIGeoHash:v12 sceneGeography:v10];
  v14 = v13;

  return v14;
}

+ (double)assetIconicScoreForSceneClassificationIdentifiers:(id)a3 assetLatitude:(double)a4 assetLongitude:(double)a5
{
  v7 = MEMORY[0x1E69C0840];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  [PNAssetCurationUtilities assetIconicScoreForSceneClassificationIdentifiers:v8 assetLatitude:v9 assetLongitude:a4 sceneGeography:a5];
  v11 = v10;

  return v11;
}

+ (id)internalPredicateToIncludeReceivedNotEligibleSyndicatedAssets
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = +[PNAssetCurationUtilities internalPredicateToIncludeOnlyReceivedSyndicatedAssets];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < %f", @"curationScore", *MEMORY[0x1E69BE8F8]];
  v4 = [MEMORY[0x1E69BE540] predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion];
  v5 = MEMORY[0x1E696AB28];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v7 = [v5 andPredicateWithSubpredicates:v6];

  return v7;
}

+ (id)internalPredicateToIncludeReceivedNotAnalyzedSyndicatedAssets
{
  v19[5] = *MEMORY[0x1E69E9840];
  v17 = +[PNAssetCurationUtilities internalPredicateToIncludeOnlyReceivedSyndicatedAssets];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < 0", @"thumbnailIndex"];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K <= 0.0", @"curationScore"];
  v4 = MEMORY[0x1E696AB28];
  v5 = [MEMORY[0x1E69BE540] predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion];
  v6 = [v4 notPredicateWithSubpredicate:v5];

  v7 = *MEMORY[0x1E69BE8F8];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %f && %K != nil && %K != %llu", @"curationScore", *MEMORY[0x1E69BE8F8], @"faceAdjustmentVersion", @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x1E6978D38]];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %f && %K == nil && %K != %llu", @"curationScore", v7, @"faceAdjustmentVersion", @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x1E6978D30]];
  v10 = MEMORY[0x1E696AB28];
  v19[0] = v2;
  v19[1] = v3;
  v19[2] = v6;
  v19[3] = v8;
  v19[4] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];
  v12 = [v10 orPredicateWithSubpredicates:v11];

  v13 = MEMORY[0x1E696AB28];
  v18[0] = v17;
  v18[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v15 = [v13 andPredicateWithSubpredicates:v14];

  return v15;
}

+ (id)internalPredicateToIncludeOnlySentSyndicatedAssets
{
  v2 = MEMORY[0x1E696AB28];
  v3 = +[PNAssetCurationUtilities internalPredicateToIncludeOnlyReceivedSyndicatedAssets];
  v4 = [v2 notPredicateWithSubpredicate:v3];

  return v4;
}

+ (NSPredicate)internalPredicateToFilterSyndicatedAssetsEligibleForGuestInferenceProcessing
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [a1 internalPredicateToFilterAssetsEligibleForSyndication];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K & %i) != %i", @"mediaAnalysisAttributes.syndicationProcessingValue", 4096, 4096];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (%K == %llu OR (%K == nil && %K == %llu))", @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x1E6978D38], @"faceAdjustmentVersion", @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x1E6978D30]];
  v5 = MEMORY[0x1E696AB28];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v7 = [v5 andPredicateWithSubpredicates:v6];

  return v7;
}

+ (NSPredicate)internalPredicateToFilterSyndicatedAssetsEligibleForCurationProcessing
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [a1 internalPredicateToIncludeOnlyReceivedSyndicatedAssets];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == 0.0", @"curationScore"];
  v4 = [MEMORY[0x1E69BE540] predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion];
  v5 = MEMORY[0x1E696AB28];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v7 = [v5 andPredicateWithSubpredicates:v6];

  return v7;
}

+ (NSPredicate)internalPredicateToFilterGuestSyndicatedAssetsEligibleForQuestion
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = [a1 internalPredicateToFilterSyndicatedAssetsEligibleForQuestion];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %llu", @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x1E6978D38]];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %llu", @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x1E6978D30]];
  v5 = MEMORY[0x1E696AB28];
  v14[0] = v3;
  v14[1] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v7 = [v5 orPredicateWithSubpredicates:v6];

  v8 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForGuestAsset"), 1}];
  v9 = MEMORY[0x1E696AB28];
  v13[0] = v2;
  v13[1] = v8;
  v13[2] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  v11 = [v9 andPredicateWithSubpredicates:v10];

  return v11;
}

+ (NSPredicate)internalPredicateToFilterSyndicatedAssetsEligibleForQuestion
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = [a1 _internalPredicateToFilterSyndicatedAssetsEligibleWithCurationScore:0.0];
  v3 = MEMORY[0x1E696AE18];
  v4 = [*MEMORY[0x1E6982DE8] identifier];
  v5 = [v3 predicateWithFormat:@"%K != %@", @"uniformTypeIdentifier", v4];

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K != %d) AND (%K != %d)", @"kindSubtype", 10, @"kindSubtype", 103];
  v7 = MEMORY[0x1E696AB28];
  v11[0] = v2;
  v11[1] = v5;
  v11[2] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v9 = [v7 andPredicateWithSubpredicates:v8];

  return v9;
}

+ (id)_internalPredicateToFilterSyndicatedAssetsEligibleWithCurationScore:(double)a3
{
  v12[4] = *MEMORY[0x1E69E9840];
  v4 = [a1 internalPredicateToIncludeOnlyReceivedSyndicatedAssets];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %f", @"curationScore", *&a3];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"additionalAttributes.importedByBundleIdentifier", *MEMORY[0x1E69BFF00]];
  v7 = [MEMORY[0x1E69BE540] predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion];
  v8 = MEMORY[0x1E696AB28];
  v12[0] = v4;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  v10 = [v8 andPredicateWithSubpredicates:v9];

  return v10;
}

+ (id)syndicationEligibilityForAssets:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = [MEMORY[0x1E696AAA8] currentHandler];
          [v13 handleFailureInMethod:a2 object:a1 file:@"PNAssetCurationUtilities.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:PHAsset.class]"}];
        }

        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "syndicationEligibility")}];
        [v5 setObject:v12 forKeyedSubscript:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)safeAssetsForWidgetDisplay:(id)a3
{
  v4 = MEMORY[0x1E6978A38];
  v5 = a3;
  v6 = [v4 fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:v5];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__PNAssetCurationUtilities_safeAssetsForWidgetDisplay___block_invoke;
  v13[3] = &unk_1E82A2370;
  v14 = v6;
  v16 = a1;
  v8 = v7;
  v15 = v8;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

void __55__PNAssetCurationUtilities_safeAssetsForWidgetDisplay___block_invoke(id *a1, void *a2)
{
  v9 = a2;
  v3 = [v9 localIdentifier];
  v4 = [a1[4] objectForKeyedSubscript:v3];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [a1[6] assetIsSafeForWidgetDisplay:v9 sceneClassifications:v7];
  if (v8)
  {
    [a1[5] addObject:v9];
  }
}

+ (BOOL)_assetIsSafeForWidgetDisplay:(id)a3 sceneClassifications:(id)a4 modelSet:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = v10;
    v12 = v11;
    if (!v11)
    {
      v13 = [v8 sceneAnalysisProperties];
      v14 = [v13 sceneAnalysisVersion];

      v15 = [PNAssetSafeForDisplayModelSet alloc];
      v16 = v14;
      v11 = 0;
      v12 = [(PNAssetSafeForDisplayModelSet *)v15 initWithSceneAnalysisVersion:v16];
    }

    v17 = [(PNAssetSafeForDisplayModelSet *)v12 ivsNSFWModel];
    v18 = [v17 anyNode];

    v19 = [(PNAssetSafeForDisplayModelSet *)v12 nsfwModel];
    v20 = [v19 generalNode];

    v45 = v12;
    v21 = [(PNAssetSafeForDisplayModelSet *)v12 tabooEventModel];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v22 = v9;
    v23 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v23)
    {
      v24 = v23;
      v42 = v11;
      v43 = v9;
      v44 = v8;
      v25 = *v47;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v46 + 1) + 8 * i);
          v28 = [v27 extendedSceneIdentifier];
          if (v28 != [v18 identifier] || (objc_msgSend(v27, "confidence"), v30 = v29, objc_msgSend(v18, "highRecallOperatingPoint"), v30 < v31))
          {
            if (v18 || v28 != [v20 identifier] || (objc_msgSend(v27, "confidence"), v33 = v32, objc_msgSend(v20, "highRecallOperatingPoint"), v33 < v34))
            {
              if (![a1 _isSupportedTabooEventIdentifier:v28])
              {
                continue;
              }

              v35 = [v21 nodeForSignalIdentifier:v28];
              [v35 highRecallOperatingPoint];
              v37 = v36;
              [v27 confidence];
              v39 = v38;

              if (v39 < v37)
              {
                continue;
              }
            }
          }

          v40 = 0;
          goto LABEL_20;
        }

        v24 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }

      v40 = 1;
LABEL_20:
      v9 = v43;
      v8 = v44;
      v11 = v42;
    }

    else
    {
      v40 = 1;
    }

    v10 = v45;
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

+ (BOOL)assetIsSafeForWidgetDisplay:(id)a3
{
  v4 = a3;
  v5 = [v4 sceneClassifications];
  LOBYTE(a1) = [a1 _assetIsSafeForWidgetDisplay:v4 sceneClassifications:v5 modelSet:0];

  return a1;
}

+ (BOOL)assetIsSafeForDisplay:(id)a3 modelSet:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 sceneAnalysisProperties];
  v9 = [v8 sceneAnalysisVersion];
  v10 = [v7 sceneAnalysisVersion];

  if (v9 != v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [v6 sceneAnalysisProperties];
    v15[0] = 67109376;
    v15[1] = [v14 sceneAnalysisVersion];
    v16 = 1024;
    v17 = [v7 sceneAnalysisVersion];
    _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PNAssetCurationUtilities] assetIsSafeForDisplay asset and modelSet sceneAnalysisVersion mismatch (%d != %d)", v15, 0xEu);
  }

  v11 = [v6 sceneClassifications];
  v12 = [a1 _assetIsSafeForWidgetDisplay:v6 sceneClassifications:v11 modelSet:v7];

  return v12;
}

+ (id)assetsShowcasingFoodWithoutFacesInAssets:(id)a3
{
  v67[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = [v4 photoLibrary];
  if (v5)
  {
    v42 = v5;
    v43 = v4;
    v6 = [v5 librarySpecificFetchOptions];
    v67[0] = *MEMORY[0x1E6978D88];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
    [v6 setFetchPropertySets:v7];

    v41 = v6;
    v8 = [MEMORY[0x1E69787C8] fetchFacesGroupedByAssetLocalIdentifierForAssets:v3 options:v6];
    v48 = [MEMORY[0x1E6978A38] fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:v3];
    [MEMORY[0x1E695DF70] array];
    v45 = v44 = v3;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v3;
    v9 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    if (!v9)
    {
      goto LABEL_29;
    }

    v10 = v9;
    v11 = *v62;
    v46 = *v62;
    v47 = v8;
    while (1)
    {
      v12 = 0;
      v49 = v10;
      do
      {
        if (*v62 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v61 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 localIdentifier];
        v16 = [v8 objectForKeyedSubscript:v15];
        v17 = [v16 count];

        if (!v17)
        {
          v55 = v14;
          v56 = v12;
          v54 = v15;
          v18 = [v48 objectForKeyedSubscript:v15];
          v51 = v13;
          v19 = [v13 sceneAnalysisProperties];
          v20 = [v19 sceneAnalysisVersion];

          v53 = [objc_alloc(MEMORY[0x1E69C1A88]) initWithSceneAnalysisVersion:v20];
          v21 = [v53 foodDrinkFoodieNode];
          v52 = [objc_alloc(MEMORY[0x1E69C1A58]) initWithSceneAnalysisVersion:v20];
          v22 = [v52 foodOrDrinkNode];
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v23 = v18;
          v24 = [v23 countByEnumeratingWithState:&v57 objects:v65 count:16];
          if (!v24)
          {
            goto LABEL_26;
          }

          v25 = v24;
          v26 = 0;
          v27 = 0;
          v28 = *v58;
          while (1)
          {
            v29 = 0;
            do
            {
              if (*v58 != v28)
              {
                objc_enumerationMutation(v23);
              }

              v30 = *(*(&v57 + 1) + 8 * v29);
              v31 = [v30 extendedSceneIdentifier];
              if (v31 == [v21 identifier] && (objc_msgSend(v30, "confidence"), v33 = v32, objc_msgSend(v21, "operatingPoint"), v33 >= v34))
              {
                v27 = 1;
              }

              else
              {
                v35 = [v30 extendedSceneIdentifier];
                if (v35 == [v22 identifier])
                {
                  [v30 confidence];
                  v37 = v36;
                  [v22 highPrecisionOperatingPoint];
                  if (v37 >= v38)
                  {
                    v26 = 1;
                  }
                }

                if ((v27 & 1) == 0)
                {
                  goto LABEL_20;
                }
              }

              if (v26)
              {
                [v45 addObject:v51];
                goto LABEL_26;
              }

LABEL_20:
              ++v29;
            }

            while (v25 != v29);
            v39 = [v23 countByEnumeratingWithState:&v57 objects:v65 count:16];
            v25 = v39;
            if (!v39)
            {
LABEL_26:

              v11 = v46;
              v8 = v47;
              v10 = v49;
              v14 = v55;
              v12 = v56;
              v15 = v54;
              break;
            }
          }
        }

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (!v10)
      {
LABEL_29:

        v4 = v43;
        v3 = v44;
        v5 = v42;
        goto LABEL_31;
      }
    }
  }

  v45 = MEMORY[0x1E695E0F0];
LABEL_31:

  return v45;
}

@end