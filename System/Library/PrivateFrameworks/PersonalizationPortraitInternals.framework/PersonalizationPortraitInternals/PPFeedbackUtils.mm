@interface PPFeedbackUtils
+ (BOOL)shouldSample:(id)sample;
+ (BOOL)shouldSampleExtraction:(id)extraction;
+ (id)_flattenArraylikeToFeatures:(void *)features featureName:;
+ (id)featuresForScoreDict:(id)dict;
+ (id)feedbackItemForPPFeedbackItem:(id)item;
+ (id)feedbackItemsByItemString:(id)string;
+ (id)feedbackMetadataForBaseFeedback:(id)feedback;
+ (id)scoredItemWithFeaturesForFeatureDictionary:(id)dictionary score:(float)score;
+ (void)addBoilerplateToFeedbackLog:(id)log;
+ (void)recordUniversalSearchSpotlightStatsFromFeedback:(id)feedback clientBundleId:(id)id clientIdentifier:(id)identifier;
@end

@implementation PPFeedbackUtils

+ (id)featuresForScoreDict:(id)dict
{
  v47 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v4 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [dictCopy featureNames];
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
          v11 = [dictCopy featureValueForName:v9];
          multiArrayValue = [v11 multiArrayValue];
          v13 = [multiArrayValue objectAtIndexedSubscript:0];
          [v4 setObject:v13 forKeyedSubscript:v9];

LABEL_24:
          goto LABEL_25;
        }

        if ([v9 hasPrefix:@"array"])
        {
          v11 = [dictCopy featureValueForName:v9];
          if (v11)
          {
            v14 = v11;
          }

          else
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PPFeedbackUtils.m" lineNumber:314 description:@"The value at a listed feature output should be nonnull."];

            v14 = 0;
          }

          multiArrayValue = [PPFeedbackUtils _flattenArraylikeToFeatures:v14 featureName:v9];
LABEL_12:
          [v4 addEntriesFromDictionary:multiArrayValue];
          goto LABEL_24;
        }

        if (![v9 hasPrefix:@"object"])
        {
          goto LABEL_26;
        }

        v11 = [dictCopy featureValueForName:v9];
        type = [v11 type];
        if (type > 2)
        {
          if (type == 6)
          {
            v11 = v11;
            v22 = v9;
            v23 = objc_opt_self();
            if ([v11 type] != 6)
            {
              currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler2 handleFailureInMethod:sel__flattenDictionarylikeToFeatures_featureName_ object:v23 file:@"PPFeedbackUtils.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"value.type == MLFeatureTypeDictionary"}];
            }

            v24 = objc_alloc(MEMORY[0x277CBEB38]);
            dictionaryValue = [v11 dictionaryValue];
            v26 = [v24 initWithCapacity:{objc_msgSend(dictionaryValue, "count")}];

            dictionaryValue2 = [v11 dictionaryValue];
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __64__PPFeedbackUtils__flattenDictionarylikeToFeatures_featureName___block_invoke;
            v43[3] = &unk_278971548;
            v28 = v26;
            v44 = v28;
            v45 = v22;
            v37 = v22;
            [dictionaryValue2 enumerateKeysAndObjectsUsingBlock:v43];

            v29 = v45;
            multiArrayValue = v28;

            goto LABEL_12;
          }

          if (type == 3)
          {
            v18 = objc_alloc(MEMORY[0x277CCACA8]);
            multiArrayValue = [v11 stringValue];
            v19 = [v18 initWithFormat:@"%@_str_%@", v9, multiArrayValue];
            v20 = v4;
            v21 = &unk_284783A50;
LABEL_23:
            [v20 setObject:v21 forKeyedSubscript:v19];

            goto LABEL_24;
          }
        }

        else
        {
          if (type == 1)
          {
            multiArrayValue = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "int64Value")}];
            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_int", v9];
            goto LABEL_22;
          }

          if (type == 2)
          {
            v16 = MEMORY[0x277CCABB0];
            [v11 doubleValue];
            multiArrayValue = [v16 numberWithDouble:?];
            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_dbl", v9];
LABEL_22:
            v19 = v17;
            v20 = v4;
            v21 = multiArrayValue;
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

+ (id)_flattenArraylikeToFeatures:(void *)features featureName:
{
  v4 = a2;
  featuresCopy = features;
  v6 = objc_opt_self();
  if ([v4 type] != 5)
  {
    if ([v4 type] != 7 || (objc_msgSend(v4, "sequenceValue"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "type"), v7, v8 != 1))
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__flattenArraylikeToFeatures_featureName_ object:v6 file:@"PPFeedbackUtils.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"value.type == MLFeatureTypeMultiArray || (value.type == MLFeatureTypeSequence && value.sequenceValue.type == MLFeatureTypeInt64)"}];
    }
  }

  if ([v4 type] == 7)
  {
    sequenceValue = [v4 sequenceValue];
    int64Values = [sequenceValue int64Values];
  }

  else
  {
    sequenceValue = [v4 multiArrayValue];
    int64Values = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(sequenceValue, "count")}];
    if ([sequenceValue count])
    {
      v12 = 0;
      do
      {
        v13 = [sequenceValue objectAtIndexedSubscript:v12];
        [int64Values setObject:v13 atIndexedSubscript:v12];

        ++v12;
      }

      while (v12 < [sequenceValue count]);
    }
  }

  v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(int64Values, "count")}];
  if ([int64Values count])
  {
    v15 = 0;
    do
    {
      v16 = [int64Values objectAtIndexedSubscript:v15];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%lu", featuresCopy, v15];
      [v14 setObject:v16 forKeyedSubscript:v17];

      ++v15;
    }

    while (v15 < [int64Values count]);
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

+ (void)recordUniversalSearchSpotlightStatsFromFeedback:(id)feedback clientBundleId:(id)id clientIdentifier:(id)identifier
{
  v22[4] = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  idCopy = id;
  identifierCopy = identifier;
  v9 = objc_autoreleasePoolPush();
  v21[0] = *MEMORY[0x277D3A270];
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = [PPMetricsUtils stringifyDomain:7];
  v12 = [v10 initWithFormat:@"%@%@", @"Portrait", v11];
  v22[0] = v12;
  v21[1] = *MEMORY[0x277D3A288];
  v13 = +[PPTrialWrapper sharedInstance];
  concatenatedTreatmentNames = [v13 concatenatedTreatmentNames];
  v22[1] = concatenatedTreatmentNames;
  v21[2] = *MEMORY[0x277D3A280];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(feedbackCopy, "offeredCSSICount")}];
  v22[2] = v15;
  v21[3] = *MEMORY[0x277D3A260];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(feedbackCopy, "engagedCSSICount")}];
  v22[3] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  mEMORY[0x277D3A250] = [MEMORY[0x277D3A250] sharedInstance];
  [mEMORY[0x277D3A250] logMessage:v17 messageName:*MEMORY[0x277D3A268]];

  objc_autoreleasePoolPop(v9);
  v19 = *MEMORY[0x277D85DE8];
}

+ (id)scoredItemWithFeaturesForFeatureDictionary:(id)dictionary score:(float)score
{
  v24 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = dictionaryCopy;
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
          score = v14;
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

  *&v16 = score;
  [v6 setScore:v16];

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)feedbackMetadataForBaseFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v4 = objc_opt_new();
  clientBundleId = [feedbackCopy clientBundleId];
  [v4 setClientBundleId:clientBundleId];

  clientIdentifier = [feedbackCopy clientIdentifier];
  [v4 setClientIdentifier:clientIdentifier];

  isMapped = [feedbackCopy isMapped];
  [v4 setIsMapped:isMapped];

  return v4;
}

+ (id)feedbackItemForPPFeedbackItem:(id)item
{
  itemCopy = item;
  v4 = objc_opt_new();
  [v4 setFeedbackType:0];
  itemFeedbackType = [itemCopy itemFeedbackType];

  if (itemFeedbackType <= 5)
  {
    [v4 setFeedbackType:itemFeedbackType];
  }

  return v4;
}

+ (void)addBoilerplateToFeedbackLog:(id)log
{
  logCopy = log;
  v3 = objc_opt_new();
  v4 = +[PPTrialWrapper sharedInstance];
  concatenatedTreatmentNames = [v4 concatenatedTreatmentNames];
  [v3 setAbGroupIdentifier:concatenatedTreatmentNames];

  [logCopy addExperimentalGroups:v3];
  v6 = +[PPConfiguration sharedInstance];
  feedbackSessionLogsGeohashLength = [v6 feedbackSessionLogsGeohashLength];

  if (feedbackSessionLogsGeohashLength >= 1)
  {
    v8 = +[PPSettings sharedInstance];
    isAuthorizedToLogLocation = [v8 isAuthorizedToLogLocation];

    if (isAuthorizedToLogLocation)
    {
      v10 = [PPRoutineSupport fetchLocationOfInterestByType:0];
      v11 = v10;
      if (v10)
      {
        v12 = MEMORY[0x277D3A578];
        location = [v10 location];
        [location latitude];
        v15 = v14;
        location2 = [v11 location];
        [location2 longitude];
        v18 = [v12 coordinatesToGeoHashWithLength:feedbackSessionLogsGeohashLength latitude:v15 longitude:v17];
        [logCopy setHomeLocationGeohash:v18];
      }
    }
  }
}

+ (BOOL)shouldSampleExtraction:(id)extraction
{
  if (![MEMORY[0x277D3A578] isFirstPartyApp:extraction])
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

+ (BOOL)shouldSample:(id)sample
{
  sampleCopy = sample;
  v4 = +[PPConfiguration sharedInstance];
  feedbackSessionLogsSamplingRateOverrides = [v4 feedbackSessionLogsSamplingRateOverrides];

  allKeys = [feedbackSessionLogsSamplingRateOverrides allKeys];
  v7 = [allKeys containsObject:sampleCopy];

  if (v7)
  {
    v8 = [feedbackSessionLogsSamplingRateOverrides objectForKeyedSubscript:sampleCopy];
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

+ (id)feedbackItemsByItemString:(id)string
{
  v23 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = stringCopy;
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
        itemString = [v10 itemString];
        v13 = [v4 objectForKeyedSubscript:itemString];

        if (!v13)
        {
          v14 = objc_opt_new();
          [v4 setObject:v14 forKeyedSubscript:itemString];
        }

        v15 = [v4 objectForKeyedSubscript:itemString];
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