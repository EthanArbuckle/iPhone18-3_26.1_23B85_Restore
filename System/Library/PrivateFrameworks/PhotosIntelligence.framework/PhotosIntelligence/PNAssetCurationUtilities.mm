@interface PNAssetCurationUtilities
+ (BOOL)_assetIsSafeForWidgetDisplay:(id)display sceneClassifications:(id)classifications modelSet:(id)set;
+ (BOOL)assetIsSafeForDisplay:(id)display modelSet:(id)set;
+ (BOOL)assetIsSafeForWidgetDisplay:(id)display;
+ (NSPredicate)internalPredicateToFilterGuestSyndicatedAssetsEligibleForQuestion;
+ (NSPredicate)internalPredicateToFilterSyndicatedAssetsEligibleForCurationProcessing;
+ (NSPredicate)internalPredicateToFilterSyndicatedAssetsEligibleForGuestInferenceProcessing;
+ (NSPredicate)internalPredicateToFilterSyndicatedAssetsEligibleForQuestion;
+ (double)absolutePopularityOfPOI:(double)i assetLongitude:(double)longitude sceneGeography:(id)geography;
+ (double)assetIconicScoreForSceneClassificationIdentifiers:(id)identifiers assetLatitude:(double)latitude assetLongitude:(double)longitude;
+ (double)assetIconicScoreForSceneClassificationIdentifiers:(id)identifiers assetLatitude:(double)latitude assetLongitude:(double)longitude sceneGeography:(id)geography;
+ (double)assetIconicScoreForSceneClassificationIdentifiers:(id)identifiers assetLatitude:(double)latitude assetLongitude:(double)longitude sceneGeography:(id)geography maxScenesCount:(int64_t)count;
+ (double)assetIconicScoreForSceneClassificationIdentifiers:(id)identifiers assetLatitude:(double)latitude assetLongitude:(double)longitude sceneGeography:(id)geography maxScenesCount:(int64_t)count popularityWeight:(double)weight;
+ (double)assetIconicScoreForSceneClassifications:(id)classifications assetLatitude:(double)latitude assetLongitude:(double)longitude sceneGeography:(id)geography sceneTaxonomy:(id)taxonomy;
+ (double)relativePopularityOfPOI:(double)i assetLongitude:(double)longitude sceneGeography:(id)geography;
+ (id)_internalPredicateToFilterSyndicatedAssetsEligibleWithCurationScore:(double)score;
+ (id)assetsShowcasingFoodWithoutFacesInAssets:(id)assets;
+ (id)internalPredicateToIncludeOnlySentSyndicatedAssets;
+ (id)internalPredicateToIncludeReceivedNotAnalyzedSyndicatedAssets;
+ (id)internalPredicateToIncludeReceivedNotEligibleSyndicatedAssets;
+ (id)safeAssetsForWidgetDisplay:(id)display;
+ (id)sceneIdentifiersByScoreForPOI:(double)i assetLongitude:(double)longitude sceneGeography:(id)geography;
+ (id)syndicationEligibilityForAssets:(id)assets;
@end

@implementation PNAssetCurationUtilities

+ (id)sceneIdentifiersByScoreForPOI:(double)i assetLongitude:(double)longitude sceneGeography:(id)geography
{
  v7 = MEMORY[0x1E69786B8];
  geographyCopy = geography;
  v9 = [v7 poiGeoHashWithGeoHashSize:6 latitude:i longitude:longitude];
  v10 = [geographyCopy scenesByScoreForPOIHash:v9];

  return v10;
}

+ (double)absolutePopularityOfPOI:(double)i assetLongitude:(double)longitude sceneGeography:(id)geography
{
  v7 = MEMORY[0x1E69786B8];
  geographyCopy = geography;
  v9 = [v7 poiGeoHashWithGeoHashSize:6 latitude:i longitude:longitude];
  [geographyCopy popularityForPOI:v9 popularity:1];
  v11 = v10;

  return v11;
}

+ (double)relativePopularityOfPOI:(double)i assetLongitude:(double)longitude sceneGeography:(id)geography
{
  v7 = MEMORY[0x1E69786B8];
  geographyCopy = geography;
  v9 = [v7 poiGeoHashWithGeoHashSize:6 latitude:i longitude:longitude];
  [geographyCopy popularityForPOI:v9 popularity:0];
  v11 = v10;

  return v11;
}

+ (double)assetIconicScoreForSceneClassifications:(id)classifications assetLatitude:(double)latitude assetLongitude:(double)longitude sceneGeography:(id)geography sceneTaxonomy:(id)taxonomy
{
  v34 = *MEMORY[0x1E69E9840];
  classificationsCopy = classifications;
  geographyCopy = geography;
  taxonomyCopy = taxonomy;
  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = classificationsCopy;
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
        extendedSceneIdentifier = [v20 extendedSceneIdentifier];
        if ([taxonomyCopy nodeRefForExtendedSceneClassId:extendedSceneIdentifier])
        {
          PFSceneTaxonomyNodeSearchThreshold();
          v23 = v22;
          [v20 confidence];
          if (v24 >= v23)
          {
            v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:extendedSceneIdentifier];
            [v14 addObject:v25];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v17);
  }

  [PNAssetCurationUtilities assetIconicScoreForSceneClassificationIdentifiers:v14 assetLatitude:geographyCopy assetLongitude:latitude sceneGeography:longitude];
  v27 = v26;

  return v27;
}

+ (double)assetIconicScoreForSceneClassificationIdentifiers:(id)identifiers assetLatitude:(double)latitude assetLongitude:(double)longitude sceneGeography:(id)geography maxScenesCount:(int64_t)count popularityWeight:(double)weight
{
  v13 = MEMORY[0x1E69786B8];
  geographyCopy = geography;
  identifiersCopy = identifiers;
  v16 = [v13 poiGeoHashWithGeoHashSize:6 latitude:latitude longitude:longitude];
  [PNAssetCurationUtilities assetIconicScoreForSceneClassificationIdentifiers:identifiersCopy POIGeoHash:v16 sceneGeography:geographyCopy maxScenesCount:count popularityWeight:weight];
  v18 = v17;

  return v18;
}

+ (double)assetIconicScoreForSceneClassificationIdentifiers:(id)identifiers assetLatitude:(double)latitude assetLongitude:(double)longitude sceneGeography:(id)geography maxScenesCount:(int64_t)count
{
  v11 = MEMORY[0x1E69786B8];
  geographyCopy = geography;
  identifiersCopy = identifiers;
  v14 = [v11 poiGeoHashWithGeoHashSize:6 latitude:latitude longitude:longitude];
  [PNAssetCurationUtilities assetIconicScoreForSceneClassificationIdentifiers:identifiersCopy POIGeoHash:v14 sceneGeography:geographyCopy maxScenesCount:count];
  v16 = v15;

  return v16;
}

+ (double)assetIconicScoreForSceneClassificationIdentifiers:(id)identifiers assetLatitude:(double)latitude assetLongitude:(double)longitude sceneGeography:(id)geography
{
  v9 = MEMORY[0x1E69786B8];
  geographyCopy = geography;
  identifiersCopy = identifiers;
  v12 = [v9 poiGeoHashWithGeoHashSize:6 latitude:latitude longitude:longitude];
  [PNAssetCurationUtilities assetIconicScoreForSceneClassificationIdentifiers:identifiersCopy POIGeoHash:v12 sceneGeography:geographyCopy];
  v14 = v13;

  return v14;
}

+ (double)assetIconicScoreForSceneClassificationIdentifiers:(id)identifiers assetLatitude:(double)latitude assetLongitude:(double)longitude
{
  v7 = MEMORY[0x1E69C0840];
  identifiersCopy = identifiers;
  v9 = objc_alloc_init(v7);
  [PNAssetCurationUtilities assetIconicScoreForSceneClassificationIdentifiers:identifiersCopy assetLatitude:v9 assetLongitude:latitude sceneGeography:longitude];
  v11 = v10;

  return v11;
}

+ (id)internalPredicateToIncludeReceivedNotEligibleSyndicatedAssets
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = +[PNAssetCurationUtilities internalPredicateToIncludeOnlyReceivedSyndicatedAssets];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < %f", @"curationScore", *MEMORY[0x1E69BE8F8]];
  predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion = [MEMORY[0x1E69BE540] predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion];
  v5 = MEMORY[0x1E696AB28];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion;
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
  predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion = [MEMORY[0x1E69BE540] predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion];
  v6 = [v4 notPredicateWithSubpredicate:predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion];

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
  internalPredicateToFilterAssetsEligibleForSyndication = [self internalPredicateToFilterAssetsEligibleForSyndication];
  4096 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K & %i) != %i", @"mediaAnalysisAttributes.syndicationProcessingValue", 4096, 4096];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (%K == %llu OR (%K == nil && %K == %llu))", @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x1E6978D38], @"faceAdjustmentVersion", @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x1E6978D30]];
  v5 = MEMORY[0x1E696AB28];
  v9[0] = internalPredicateToFilterAssetsEligibleForSyndication;
  v9[1] = 4096;
  v9[2] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v7 = [v5 andPredicateWithSubpredicates:v6];

  return v7;
}

+ (NSPredicate)internalPredicateToFilterSyndicatedAssetsEligibleForCurationProcessing
{
  v9[3] = *MEMORY[0x1E69E9840];
  internalPredicateToIncludeOnlyReceivedSyndicatedAssets = [self internalPredicateToIncludeOnlyReceivedSyndicatedAssets];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == 0.0", @"curationScore"];
  predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion = [MEMORY[0x1E69BE540] predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion];
  v5 = MEMORY[0x1E696AB28];
  v9[0] = internalPredicateToIncludeOnlyReceivedSyndicatedAssets;
  v9[1] = v3;
  v9[2] = predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v7 = [v5 andPredicateWithSubpredicates:v6];

  return v7;
}

+ (NSPredicate)internalPredicateToFilterGuestSyndicatedAssetsEligibleForQuestion
{
  v14[2] = *MEMORY[0x1E69E9840];
  internalPredicateToFilterSyndicatedAssetsEligibleForQuestion = [self internalPredicateToFilterSyndicatedAssetsEligibleForQuestion];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %llu", @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x1E6978D38]];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %llu", @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x1E6978D30]];
  v5 = MEMORY[0x1E696AB28];
  v14[0] = v3;
  v14[1] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v7 = [v5 orPredicateWithSubpredicates:v6];

  v8 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForGuestAsset"), 1}];
  v9 = MEMORY[0x1E696AB28];
  v13[0] = internalPredicateToFilterSyndicatedAssetsEligibleForQuestion;
  v13[1] = v8;
  v13[2] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  v11 = [v9 andPredicateWithSubpredicates:v10];

  return v11;
}

+ (NSPredicate)internalPredicateToFilterSyndicatedAssetsEligibleForQuestion
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = [self _internalPredicateToFilterSyndicatedAssetsEligibleWithCurationScore:0.0];
  v3 = MEMORY[0x1E696AE18];
  identifier = [*MEMORY[0x1E6982DE8] identifier];
  v5 = [v3 predicateWithFormat:@"%K != %@", @"uniformTypeIdentifier", identifier];

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K != %d) AND (%K != %d)", @"kindSubtype", 10, @"kindSubtype", 103];
  v7 = MEMORY[0x1E696AB28];
  v11[0] = v2;
  v11[1] = v5;
  v11[2] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v9 = [v7 andPredicateWithSubpredicates:v8];

  return v9;
}

+ (id)_internalPredicateToFilterSyndicatedAssetsEligibleWithCurationScore:(double)score
{
  v12[4] = *MEMORY[0x1E69E9840];
  internalPredicateToIncludeOnlyReceivedSyndicatedAssets = [self internalPredicateToIncludeOnlyReceivedSyndicatedAssets];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %f", @"curationScore", *&score];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"additionalAttributes.importedByBundleIdentifier", *MEMORY[0x1E69BFF00]];
  predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion = [MEMORY[0x1E69BE540] predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion];
  v8 = MEMORY[0x1E696AB28];
  v12[0] = internalPredicateToIncludeOnlyReceivedSyndicatedAssets;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToLatestSceneVersion;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  v10 = [v8 andPredicateWithSubpredicates:v9];

  return v10;
}

+ (id)syndicationEligibilityForAssets:(id)assets
{
  v21 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = assetsCopy;
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
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PNAssetCurationUtilities.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:PHAsset.class]"}];
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

+ (id)safeAssetsForWidgetDisplay:(id)display
{
  v4 = MEMORY[0x1E6978A38];
  displayCopy = display;
  v6 = [v4 fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:displayCopy];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(displayCopy, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__PNAssetCurationUtilities_safeAssetsForWidgetDisplay___block_invoke;
  v13[3] = &unk_1E82A2370;
  v14 = v6;
  selfCopy = self;
  v8 = v7;
  v15 = v8;
  v9 = v6;
  [displayCopy enumerateObjectsUsingBlock:v13];

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

+ (BOOL)_assetIsSafeForWidgetDisplay:(id)display sceneClassifications:(id)classifications modelSet:(id)set
{
  v51 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  classificationsCopy = classifications;
  setCopy = set;
  if (displayCopy)
  {
    v11 = setCopy;
    v12 = v11;
    if (!v11)
    {
      sceneAnalysisProperties = [displayCopy sceneAnalysisProperties];
      sceneAnalysisVersion = [sceneAnalysisProperties sceneAnalysisVersion];

      v15 = [PNAssetSafeForDisplayModelSet alloc];
      v16 = sceneAnalysisVersion;
      v11 = 0;
      v12 = [(PNAssetSafeForDisplayModelSet *)v15 initWithSceneAnalysisVersion:v16];
    }

    ivsNSFWModel = [(PNAssetSafeForDisplayModelSet *)v12 ivsNSFWModel];
    anyNode = [ivsNSFWModel anyNode];

    nsfwModel = [(PNAssetSafeForDisplayModelSet *)v12 nsfwModel];
    generalNode = [nsfwModel generalNode];

    v45 = v12;
    tabooEventModel = [(PNAssetSafeForDisplayModelSet *)v12 tabooEventModel];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v22 = classificationsCopy;
    v23 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v23)
    {
      v24 = v23;
      v42 = v11;
      v43 = classificationsCopy;
      v44 = displayCopy;
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
          extendedSceneIdentifier = [v27 extendedSceneIdentifier];
          if (extendedSceneIdentifier != [anyNode identifier] || (objc_msgSend(v27, "confidence"), v30 = v29, objc_msgSend(anyNode, "highRecallOperatingPoint"), v30 < v31))
          {
            if (anyNode || extendedSceneIdentifier != [generalNode identifier] || (objc_msgSend(v27, "confidence"), v33 = v32, objc_msgSend(generalNode, "highRecallOperatingPoint"), v33 < v34))
            {
              if (![self _isSupportedTabooEventIdentifier:extendedSceneIdentifier])
              {
                continue;
              }

              v35 = [tabooEventModel nodeForSignalIdentifier:extendedSceneIdentifier];
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
      classificationsCopy = v43;
      displayCopy = v44;
      v11 = v42;
    }

    else
    {
      v40 = 1;
    }

    setCopy = v45;
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

+ (BOOL)assetIsSafeForWidgetDisplay:(id)display
{
  displayCopy = display;
  sceneClassifications = [displayCopy sceneClassifications];
  LOBYTE(self) = [self _assetIsSafeForWidgetDisplay:displayCopy sceneClassifications:sceneClassifications modelSet:0];

  return self;
}

+ (BOOL)assetIsSafeForDisplay:(id)display modelSet:(id)set
{
  v18 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  setCopy = set;
  sceneAnalysisProperties = [displayCopy sceneAnalysisProperties];
  sceneAnalysisVersion = [sceneAnalysisProperties sceneAnalysisVersion];
  sceneAnalysisVersion2 = [setCopy sceneAnalysisVersion];

  if (sceneAnalysisVersion != sceneAnalysisVersion2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sceneAnalysisProperties2 = [displayCopy sceneAnalysisProperties];
    v15[0] = 67109376;
    v15[1] = [sceneAnalysisProperties2 sceneAnalysisVersion];
    v16 = 1024;
    sceneAnalysisVersion3 = [setCopy sceneAnalysisVersion];
    _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PNAssetCurationUtilities] assetIsSafeForDisplay asset and modelSet sceneAnalysisVersion mismatch (%d != %d)", v15, 0xEu);
  }

  sceneClassifications = [displayCopy sceneClassifications];
  v12 = [self _assetIsSafeForWidgetDisplay:displayCopy sceneClassifications:sceneClassifications modelSet:setCopy];

  return v12;
}

+ (id)assetsShowcasingFoodWithoutFacesInAssets:(id)assets
{
  v67[1] = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  firstObject = [assetsCopy firstObject];
  photoLibrary = [firstObject photoLibrary];
  if (photoLibrary)
  {
    v42 = photoLibrary;
    v43 = firstObject;
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v67[0] = *MEMORY[0x1E6978D88];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v7];

    v41 = librarySpecificFetchOptions;
    v8 = [MEMORY[0x1E69787C8] fetchFacesGroupedByAssetLocalIdentifierForAssets:assetsCopy options:librarySpecificFetchOptions];
    v48 = [MEMORY[0x1E6978A38] fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:assetsCopy];
    [MEMORY[0x1E695DF70] array];
    v45 = v44 = assetsCopy;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = assetsCopy;
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
        localIdentifier = [v13 localIdentifier];
        v16 = [v8 objectForKeyedSubscript:localIdentifier];
        v17 = [v16 count];

        if (!v17)
        {
          v55 = v14;
          v56 = v12;
          v54 = localIdentifier;
          v18 = [v48 objectForKeyedSubscript:localIdentifier];
          v51 = v13;
          sceneAnalysisProperties = [v13 sceneAnalysisProperties];
          sceneAnalysisVersion = [sceneAnalysisProperties sceneAnalysisVersion];

          v53 = [objc_alloc(MEMORY[0x1E69C1A88]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
          foodDrinkFoodieNode = [v53 foodDrinkFoodieNode];
          v52 = [objc_alloc(MEMORY[0x1E69C1A58]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
          foodOrDrinkNode = [v52 foodOrDrinkNode];
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
              extendedSceneIdentifier = [v30 extendedSceneIdentifier];
              if (extendedSceneIdentifier == [foodDrinkFoodieNode identifier] && (objc_msgSend(v30, "confidence"), v33 = v32, objc_msgSend(foodDrinkFoodieNode, "operatingPoint"), v33 >= v34))
              {
                v27 = 1;
              }

              else
              {
                extendedSceneIdentifier2 = [v30 extendedSceneIdentifier];
                if (extendedSceneIdentifier2 == [foodOrDrinkNode identifier])
                {
                  [v30 confidence];
                  v37 = v36;
                  [foodOrDrinkNode highPrecisionOperatingPoint];
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
              localIdentifier = v54;
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

        firstObject = v43;
        assetsCopy = v44;
        photoLibrary = v42;
        goto LABEL_31;
      }
    }
  }

  v45 = MEMORY[0x1E695E0F0];
LABEL_31:

  return v45;
}

@end