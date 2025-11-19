@interface PGMeaningActionCriteria
+ (PGMeaningActionCriteria)criteriaWithDictionary:(id)a3;
+ (double)actionHighRecallThresholdForAssetMediaAnalysisVersion:(unint64_t)a3 usingActionCriteriaByValidPersonActivityMeaningLabel:(id)a4 andValidPersonActivity:(id)a5;
+ (id)actionValueStringUsingActionCriteriaByValidPersonActivityMeaningLabel:(id)a3 withPersonActivityMeaningLabel:(id)a4;
+ (id)descendingSortedMediaAnalysisVersionFromCriteriaDictionary:(id)a3 usingActionThresholdKey:(id)a4;
+ (id)parseThresholdFromCriteriaDictionary:(id)a3 usingActionThresholdKey:(id)a4;
- (BOOL)passesCriteriaWithTrait:(id)a3 withHighPrecisionThreshold:(double)a4;
- (BOOL)passesForAssets:(id)a3;
- (NSString)description;
- (double)actionThresholdForAssetMediaAnalysisVersion:(unint64_t)a3 withActionThresholdByMediaAnalysisVersion:(id)a4;
@end

@implementation PGMeaningActionCriteria

+ (double)actionHighRecallThresholdForAssetMediaAnalysisVersion:(unint64_t)a3 usingActionCriteriaByValidPersonActivityMeaningLabel:(id)a4 andValidPersonActivity:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = [v9 highRecallThresholdByMediaAnalysisVersion];

    if (v10)
    {
      v11 = [v9 highRecallThresholdByMediaAnalysisVersion];
      [v9 actionThresholdForAssetMediaAnalysisVersion:a3 withActionThresholdByMediaAnalysisVersion:v11];
      v13 = v12;
    }

    else
    {
      v13 = 1.0;
    }
  }

  else
  {
    v13 = 1.0;
  }

  return v13;
}

+ (id)actionValueStringUsingActionCriteriaByValidPersonActivityMeaningLabel:(id)a3 withPersonActivityMeaningLabel:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:v6];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v8, "actionValue")];
  }

  else
  {
    v9 = &stru_2843F5C58;
  }

  return v9;
}

+ (id)descendingSortedMediaAnalysisVersionFromCriteriaDictionary:(id)a3 usingActionThresholdKey:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:{@"operatingPoints", a4}];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v7 setNumberStyle:1];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v4 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [v7 numberFromString:*(*(&v19 + 1) + 8 * i)];
          [v6 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
    v23 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    v16 = [v6 sortedArrayUsingDescriptors:v15];

    v5 = v16;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)parseThresholdFromCriteriaDictionary:(id)a3 usingActionThresholdKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"operatingPoints"];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__PGMeaningActionCriteria_parseThresholdFromCriteriaDictionary_usingActionThresholdKey___block_invoke;
  v15[3] = &unk_278886108;
  v16 = v6;
  v9 = v8;
  v17 = v9;
  v18 = v5;
  v10 = v5;
  v11 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v15];
  v12 = v18;
  v13 = v9;

  return v9;
}

void __88__PGMeaningActionCriteria_parseThresholdFromCriteriaDictionary_usingActionThresholdKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:*(a1 + 32)];
  v7 = v6;
  if (v6)
  {
    [v6 floatValue];
    if (v8 > 0.0 && v8 < 1.0)
    {
      [*(a1 + 40) setObject:v7 forKeyedSubscript:v5];
    }
  }

  else
  {
    v10 = +[PGLogging sharedLogging];
    v11 = [v10 loggingConnection];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 48) objectForKeyedSubscript:@"actionName"];
      v14 = [0 stringValue];
      v15 = 138412802;
      v16 = v13;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v14;
      _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "[PGMeaningActionCriteria] Action %@ version %@ has invalid threshold %@", &v15, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (PGMeaningActionCriteria)criteriaWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKeyedSubscript:@"actionValue"];
  [v5 setActionValue:{objc_msgSend(v6, "intValue")}];

  v7 = [v4 objectForKeyedSubscript:@"actionName"];
  [v5 setActionName:v7];

  v8 = [a1 parseThresholdFromCriteriaDictionary:v4 usingActionThresholdKey:@"confidenceHighPrecisionThreshold"];
  [v5 setHighPrecisionThresholdByMediaAnalysisVersion:v8];

  v9 = [a1 parseThresholdFromCriteriaDictionary:v4 usingActionThresholdKey:@"confidenceHighRecallThreshold"];
  [v5 setHighRecallThresholdByMediaAnalysisVersion:v9];

  v10 = [a1 descendingSortedMediaAnalysisVersionFromCriteriaDictionary:v4 usingActionThresholdKey:@"confidenceHighPrecisionThreshold"];

  [v5 setDescendingSortedMediaAnalysisVersion:v10];

  return v5;
}

- (double)actionThresholdForAssetMediaAnalysisVersion:(unint64_t)a3 withActionThresholdByMediaAnalysisVersion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(PGMeaningActionCriteria *)self descendingSortedMediaAnalysisVersion];
  v8 = [v7 lastObject];

  v9 = 1.0;
  if (v8 && [v8 unsignedIntValue] <= a3)
  {
    v10 = v8;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = [(PGMeaningActionCriteria *)self descendingSortedMediaAnalysisVersion];
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          if ([v16 unsignedIntValue] <= a3)
          {
            v17 = v16;

            v10 = v17;
            goto LABEL_13;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v18 = [v10 stringValue];
    v19 = [v6 objectForKeyedSubscript:v18];

    if (v19)
    {
      [v19 doubleValue];
      v9 = v20;
    }

    else
    {
      v9 = 1.0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

- (NSString)description
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(PGMeaningActionCriteria *)self actionName];
  [v3 appendFormat:@"%@: %@\n", @"actionName", v4];

  [v3 appendFormat:@"%@: %lu\n", @"actionValue", -[PGMeaningActionCriteria actionValue](self, "actionValue")];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(PGMeaningActionCriteria *)self highPrecisionThresholdByMediaAnalysisVersion];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [(PGMeaningActionCriteria *)self highPrecisionThresholdByMediaAnalysisVersion];
        v13 = [v12 objectForKey:v11];
        [v3 appendFormat:@"High Precision Threshold for version %@: %@\n", v11, v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = [(PGMeaningActionCriteria *)self highRecallThresholdByMediaAnalysisVersion];
  v15 = [v14 allKeys];

  v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * j);
        v21 = [(PGMeaningActionCriteria *)self highRecallThresholdByMediaAnalysisVersion];
        v22 = [v21 objectForKey:v20];
        [v3 appendFormat:@"High Recall Threshold for version %@: %@\n", v20, v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)passesCriteriaWithTrait:(id)a3 withHighPrecisionThreshold:(double)a4
{
  v6 = a3;
  if ([v6 type] == 1 && self->_actionValue == objc_msgSend(v6, "value"))
  {
    [v6 score];
    v8 = v7 >= a4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)passesForAssets:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = a3;
  if ([v17 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = v17;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v5)
    {
      v6 = *v20;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          v9 = [v8 clsFaceInformationSummary];
          v10 = [v9 faceInformationByPersonLocalIdentifier];

          v11 = [v8 mediaAnalysisProperties];
          v12 = [v11 mediaAnalysisVersion];

          if (v12)
          {
            [(PGMeaningActionCriteria *)self actionThresholdForAssetMediaAnalysisVersion:v12 withActionThresholdByMediaAnalysisVersion:self->_highPrecisionThresholdByMediaAnalysisVersion];
            v18[0] = MEMORY[0x277D85DD0];
            v18[1] = 3221225472;
            v18[2] = __43__PGMeaningActionCriteria_passesForAssets___block_invoke;
            v18[3] = &unk_2788860E0;
            v18[4] = self;
            v18[5] = &v23;
            v18[6] = v13;
            [v10 enumerateKeysAndObjectsUsingBlock:v18];
            if (v24[3])
            {

              goto LABEL_13;
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v14 = *(v24 + 24);
  _Block_object_dispose(&v23, 8);

  v15 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

void __43__PGMeaningActionCriteria_passesForAssets___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  [a3 traits];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) passesCriteriaWithTrait:*(*(&v12 + 1) + 8 * i) withHighPrecisionThreshold:{*(a1 + 48), v12}];
        if (*(*(*(a1 + 40) + 8) + 24) == 1)
        {
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

@end