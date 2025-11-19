@interface PPFeedbackUtils
+ (BOOL)shouldSample:(id)a3;
+ (BOOL)shouldSampleExtraction:(id)a3;
+ (id)_flattenArraylikeToFeatures:(void *)a3 featureName:;
+ (id)featuresForScoreDict:(id)a3;
+ (id)feedbackItemForPPFeedbackItem:(id)a3;
+ (id)feedbackItemsByItemString:(id)a3;
+ (id)feedbackMetadataForBaseFeedback:(id)a3;
+ (id)scoredItemWithFeaturesForFeatureDictionary:(id)a3 score:(float)a4;
+ (void)addBoilerplateToFeedbackLog:(id)a3;
+ (void)recordUniversalSearchSpotlightStatsFromFeedback:(id)a3 clientBundleId:(id)a4 clientIdentifier:(id)a5;
@end

@implementation PPFeedbackUtils

+ (id)featuresForScoreDict:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [v3 featureNames];
  v5 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    do
    {
      v8 = 0;
      do
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v39 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        if ([v9 hasPrefix:@"scalar"])
        {
          v11 = [v3 featureValueForName:v9];
          v12 = [v11 multiArrayValue];
          v13 = [v12 objectAtIndexedSubscript:0];
          [v4 setObject:v13 forKeyedSubscript:v9];

LABEL_24:
          goto LABEL_25;
        }

        if ([v9 hasPrefix:@"array"])
        {
          v11 = [v3 featureValueForName:v9];
          if (v11)
          {
            v14 = v11;
          }

          else
          {
            v30 = [MEMORY[0x277CCA890] currentHandler];
            [v30 handleFailureInMethod:a2 object:a1 file:@"PPFeedbackUtils.m" lineNumber:314 description:@"The value at a listed feature output should be nonnull."];

            v14 = 0;
          }

          v12 = [PPFeedbackUtils _flattenArraylikeToFeatures:v14 featureName:v9];
LABEL_12:
          [v4 addEntriesFromDictionary:v12];
          goto LABEL_24;
        }

        if (![v9 hasPrefix:@"object"])
        {
          goto LABEL_26;
        }

        v11 = [v3 featureValueForName:v9];
        v15 = [v11 type];
        if (v15 > 2)
        {
          if (v15 == 6)
          {
            v11 = v11;
            v22 = v9;
            v23 = objc_opt_self();
            if ([v11 type] != 6)
            {
              v31 = [MEMORY[0x277CCA890] currentHandler];
              [v31 handleFailureInMethod:sel__flattenDictionarylikeToFeatures_featureName_ object:v23 file:@"PPFeedbackUtils.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"value.type == MLFeatureTypeDictionary"}];
            }

            v24 = objc_alloc(MEMORY[0x277CBEB38]);
            v25 = [v11 dictionaryValue];
            v26 = [v24 initWithCapacity:{objc_msgSend(v25, "count")}];

            v27 = [v11 dictionaryValue];
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __64__PPFeedbackUtils__flattenDictionarylikeToFeatures_featureName___block_invoke;
            v43[3] = &unk_278971548;
            v28 = v26;
            v44 = v28;
            v45 = v22;
            v37 = v22;
            [v27 enumerateKeysAndObjectsUsingBlock:v43];

            v29 = v45;
            v12 = v28;

            goto LABEL_12;
          }

          if (v15 == 3)
          {
            v18 = objc_alloc(MEMORY[0x277CCACA8]);
            v12 = [v11 stringValue];
            v19 = [v18 initWithFormat:@"%@_str_%@", v9, v12];
            v20 = v4;
            v21 = &unk_284783A50;
LABEL_23:
            [v20 setObject:v21 forKeyedSubscript:v19];

            goto LABEL_24;
          }
        }

        else
        {
          if (v15 == 1)
          {
            v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "int64Value")}];
            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_int", v9];
            goto LABEL_22;
          }

          if (v15 == 2)
          {
            v16 = MEMORY[0x277CCABB0];
            [v11 doubleValue];
            v12 = [v16 numberWithDouble:?];
            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_dbl", v9];
LABEL_22:
            v19 = v17;
            v20 = v4;
            v21 = v12;
            goto LABEL_23;
          }
        }

LABEL_25:

LABEL_26:
        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v32 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
      v6 = v32;
    }

    while (v32);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_flattenArraylikeToFeatures:(void *)a3 featureName:
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if ([v4 type] != 5)
  {
    if ([v4 type] != 7 || (objc_msgSend(v4, "sequenceValue"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "type"), v7, v8 != 1))
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:sel__flattenArraylikeToFeatures_featureName_ object:v6 file:@"PPFeedbackUtils.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"value.type == MLFeatureTypeMultiArray || (value.type == MLFeatureTypeSequence && value.sequenceValue.type == MLFeatureTypeInt64)"}];
    }
  }

  if ([v4 type] == 7)
  {
    v10 = [v4 sequenceValue];
    v11 = [v10 int64Values];
  }

  else
  {
    v10 = [v4 multiArrayValue];
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
    if ([v10 count])
    {
      v12 = 0;
      do
      {
        v13 = [v10 objectAtIndexedSubscript:v12];
        [v11 setObject:v13 atIndexedSubscript:v12];

        ++v12;
      }

      while (v12 < [v10 count]);
    }
  }

  v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v11, "count")}];
  if ([v11 count])
  {
    v15 = 0;
    do
    {
      v16 = [v11 objectAtIndexedSubscript:v15];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%lu", v5, v15];
      [v14 setObject:v16 forKeyedSubscript:v17];

      ++v15;
    }

    while (v15 < [v11 count]);
  }

  return v14;
}

void __64__PPFeedbackUtils__flattenDictionarylikeToFeatures_featureName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = a2;
  v9 = [[v6 alloc] initWithFormat:@"%@_dict_%@", *(a1 + 40), v8];

  [v5 setObject:v7 forKeyedSubscript:v9];
}

+ (void)recordUniversalSearchSpotlightStatsFromFeedback:(id)a3 clientBundleId:(id)a4 clientIdentifier:(id)a5
{
  v22[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v20 = a4;
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v21[0] = *MEMORY[0x277D3A270];
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = [PPMetricsUtils stringifyDomain:7];
  v12 = [v10 initWithFormat:@"%@%@", @"Portrait", v11];
  v22[0] = v12;
  v21[1] = *MEMORY[0x277D3A288];
  v13 = +[PPTrialWrapper sharedInstance];
  v14 = [v13 concatenatedTreatmentNames];
  v22[1] = v14;
  v21[2] = *MEMORY[0x277D3A280];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "offeredCSSICount")}];
  v22[2] = v15;
  v21[3] = *MEMORY[0x277D3A260];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "engagedCSSICount")}];
  v22[3] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v18 = [MEMORY[0x277D3A250] sharedInstance];
  [v18 logMessage:v17 messageName:*MEMORY[0x277D3A268]];

  objc_autoreleasePoolPop(v9);
  v19 = *MEMORY[0x277D85DE8];
}

+ (id)scoredItemWithFeaturesForFeatureDictionary:(id)a3 score:(float)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([v12 isEqualToString:{@"score", v19}])
        {
          v13 = [v7 objectForKeyedSubscript:v12];
          [v13 floatValue];
          a4 = v14;
        }

        else
        {
          v13 = objc_opt_new();
          [v13 setFeatureId:v12];
          v15 = [v7 objectForKeyedSubscript:v12];
          [v15 floatValue];
          [v13 setValue:?];

          [v6 addFeatures:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  *&v16 = a4;
  [v6 setScore:v16];

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)feedbackMetadataForBaseFeedback:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 clientBundleId];
  [v4 setClientBundleId:v5];

  v6 = [v3 clientIdentifier];
  [v4 setClientIdentifier:v6];

  v7 = [v3 isMapped];
  [v4 setIsMapped:v7];

  return v4;
}

+ (id)feedbackItemForPPFeedbackItem:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setFeedbackType:0];
  v5 = [v3 itemFeedbackType];

  if (v5 <= 5)
  {
    [v4 setFeedbackType:v5];
  }

  return v4;
}

+ (void)addBoilerplateToFeedbackLog:(id)a3
{
  v19 = a3;
  v3 = objc_opt_new();
  v4 = +[PPTrialWrapper sharedInstance];
  v5 = [v4 concatenatedTreatmentNames];
  [v3 setAbGroupIdentifier:v5];

  [v19 addExperimentalGroups:v3];
  v6 = +[PPConfiguration sharedInstance];
  v7 = [v6 feedbackSessionLogsGeohashLength];

  if (v7 >= 1)
  {
    v8 = +[PPSettings sharedInstance];
    v9 = [v8 isAuthorizedToLogLocation];

    if (v9)
    {
      v10 = [PPRoutineSupport fetchLocationOfInterestByType:0];
      v11 = v10;
      if (v10)
      {
        v12 = MEMORY[0x277D3A578];
        v13 = [v10 location];
        [v13 latitude];
        v15 = v14;
        v16 = [v11 location];
        [v16 longitude];
        v18 = [v12 coordinatesToGeoHashWithLength:v7 latitude:v15 longitude:v17];
        [v19 setHomeLocationGeohash:v18];
      }
    }
  }
}

+ (BOOL)shouldSampleExtraction:(id)a3
{
  if (![MEMORY[0x277D3A578] isFirstPartyApp:a3])
  {
    return 0;
  }

  v3 = +[PPConfiguration sharedInstance];
  [v3 feedbackSessionLogsExtractionsSamplingRate];
  v5 = v4;
  objc_opt_self();
  v6 = arc4random_uniform(0xFFFFFFFF) / 4294967300.0 < v5;

  return v6;
}

+ (BOOL)shouldSample:(id)a3
{
  v3 = a3;
  v4 = +[PPConfiguration sharedInstance];
  v5 = [v4 feedbackSessionLogsSamplingRateOverrides];

  v6 = [v5 allKeys];
  v7 = [v6 containsObject:v3];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:v3];
    [v8 doubleValue];
    v10 = v9;
    objc_opt_self();
    v11 = arc4random_uniform(0xFFFFFFFF) / 4294967300.0 < v10;
  }

  else
  {
    v12 = +[PPConfiguration sharedInstance];
    [v12 feedbackSessionLogsSamplingRate];
    v14 = v13;

    objc_opt_self();
    v11 = arc4random_uniform(0xFFFFFFFF) / 4294967300.0 < v14;
  }

  return v11;
}

+ (id)feedbackItemsByItemString:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 itemString];
        v13 = [v4 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v14 = objc_opt_new();
          [v4 setObject:v14 forKeyedSubscript:v12];
        }

        v15 = [v4 objectForKeyedSubscript:v12];
        [v15 addObject:v10];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

@end