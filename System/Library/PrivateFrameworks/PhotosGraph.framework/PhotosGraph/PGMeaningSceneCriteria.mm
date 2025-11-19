@interface PGMeaningSceneCriteria
+ (id)criteriaWithDictionary:(id)a3;
- (BOOL)isValid;
- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4;
- (NSString)description;
@end

@implementation PGMeaningSceneCriteria

+ (id)criteriaWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKeyedSubscript:@"positiveScenes"];
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;

  [v5 setPositiveScenes:v10];
  v11 = [v4 objectForKeyedSubscript:@"minimumNumberOfPositiveScenes"];
  v12 = [v11 unsignedIntegerValue];

  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  [v5 setMinimumNumberOfPositiveScenes:v13];
  v14 = [v4 objectForKeyedSubscript:@"minimumNumberOfNegativeScenes"];
  v15 = [v14 unsignedIntegerValue];

  if (v15 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  [v5 setMinimumNumberOfNegativeScenes:v16];
  v17 = [v4 objectForKeyedSubscript:@"minimumNumberOfAssetsWithPositiveScenes"];
  [v5 setMinimumNumberOfAssetsWithPositiveScenes:{objc_msgSend(v17, "unsignedIntegerValue")}];

  v18 = [v4 objectForKeyedSubscript:@"accumulateAssetCountsWithPositiveScenes"];
  [v5 setAccumulateAssetCountsWithPositiveScenes:{objc_msgSend(v18, "BOOLValue")}];

  v19 = [v4 objectForKeyedSubscript:@"minimumNumberOfAssetsWithNegativeScenes"];
  [v5 setMinimumNumberOfAssetsWithNegativeScenes:{objc_msgSend(v19, "unsignedIntegerValue")}];

  v20 = [v4 objectForKeyedSubscript:@"minimumRatioOfAssetsWithPositiveScenes"];
  [v20 doubleValue];
  [v5 setMinimumRatioOfAssetsWithPositiveScenes:?];

  v21 = [v4 objectForKeyedSubscript:@"negativeScenes"];

  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v8;
  }

  v23 = v22;

  [v5 setNegativeScenes:v23];

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(PGMeaningSceneCriteria *)self positiveScenes];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = [(PGMeaningSceneCriteria *)self negativeScenes];
  v7 = [v6 componentsJoinedByString:{@", "}];

  [v3 appendFormat:@"positiveScenes: %@\n", v5];
  [v3 appendFormat:@"minimumNumberOfPositiveScenes: %d\n", -[PGMeaningSceneCriteria minimumNumberOfPositiveScenes](self, "minimumNumberOfPositiveScenes")];
  [v3 appendFormat:@"minimumNumberOfAssetsWithPositiveScenes: %d\n", -[PGMeaningSceneCriteria minimumNumberOfAssetsWithPositiveScenes](self, "minimumNumberOfAssetsWithPositiveScenes")];
  [(PGMeaningSceneCriteria *)self minimumRatioOfAssetsWithPositiveScenes];
  [v3 appendFormat:@"minimumRatioOfAssetsWithPositiveScenes: %d\n", v8];
  v9 = [(PGMeaningSceneCriteria *)self accumulateAssetCountsWithPositiveScenes];
  v10 = @"NO";
  if (v9)
  {
    v10 = @"YES";
  }

  [v3 appendFormat:@"accumulateAssetCountsWithPositiveScenes: %@\n", v10];
  [v3 appendFormat:@"negativeScenes: %@\n", v7];
  [v3 appendFormat:@"minimumNumberOfNegativeScenes: %d\n", -[PGMeaningSceneCriteria minimumNumberOfNegativeScenes](self, "minimumNumberOfNegativeScenes")];
  [v3 appendFormat:@"minimumNumberOfAssetsWithNegativeScenes: %d\n", -[PGMeaningSceneCriteria minimumNumberOfAssetsWithNegativeScenes](self, "minimumNumberOfAssetsWithNegativeScenes")];

  return v3;
}

- (BOOL)isValid
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3B4C8] sharedTaxonomy];
  v4 = [(PGMeaningSceneCriteria *)self positiveScenes];
  v5 = [(PGMeaningSceneCriteria *)self negativeScenes];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v23;
    v12 = 1;
    *&v9 = 138412290;
    v21 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 lowercaseString];
        v16 = [v3 nodeForName:v15];
        if (!v16)
        {
          v17 = +[PGLogging sharedLogging];
          v18 = [v17 loggingConnection];

          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = v21;
            v27 = v14;
            _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[MEANING CRITERIA] Invalid scene name %@", buf, 0xCu);
          }

          v12 = 0;
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PGMeaningSceneCriteria *)self positiveScenes];
  v9 = [v8 count];

  v10 = [(PGMeaningSceneCriteria *)self negativeScenes];
  v11 = [v10 count];

  if (v9 | v11)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = v9 == 0;
    v13 = [v6 numberOfAssets];
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 0;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = 0;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__PGMeaningSceneCriteria_passesForMomentNode_momentNodeCache___block_invoke;
    v15[3] = &unk_278881198;
    v15[4] = self;
    v15[5] = &v20;
    v15[6] = v19;
    v15[7] = v17;
    v15[10] = v13;
    v15[11] = v11;
    v15[8] = v18;
    v15[9] = v16;
    [v7 enumerateSceneEdgesAndNodesUsingBlock:v15];
    v12 = *(v21 + 24);
    _Block_object_dispose(v16, 8);
    _Block_object_dispose(v17, 8);
    _Block_object_dispose(v18, 8);
    _Block_object_dispose(v19, 8);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

void __62__PGMeaningSceneCriteria_passesForMomentNode_momentNodeCache___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v20 = a2;
  v7 = [a3 sceneName];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v8 = [*(a1 + 32) positiveScenes];
    v9 = [v8 containsObject:v7];

    if (v9)
    {
      if (([*(a1 + 32) accumulateAssetCountsWithPositiveScenes] & 1) != 0 || (v10 = objc_msgSend(v20, "numberOfHighConfidenceAssets"), v10 >= objc_msgSend(*(a1 + 32), "minimumNumberOfAssetsWithPositiveScenes")))
      {
        ++*(*(*(a1 + 48) + 8) + 24);
      }

      *(*(*(a1 + 56) + 8) + 24) += [v20 numberOfHighConfidenceAssets];
      v11 = *(*(*(a1 + 56) + 8) + 24);
      v12 = *(a1 + 80);
      v13 = *(*(*(a1 + 48) + 8) + 24);
      if (v13 >= [*(a1 + 32) minimumNumberOfPositiveScenes])
      {
        v14 = *(*(*(a1 + 56) + 8) + 24);
        if (v14 >= [*(a1 + 32) minimumNumberOfAssetsWithPositiveScenes])
        {
          [*(a1 + 32) minimumRatioOfAssetsWithPositiveScenes];
          if (v11 / v12 >= v15)
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;
          }
        }
      }
    }
  }

  if (*(a1 + 88))
  {
    v16 = [*(a1 + 32) negativeScenes];
    v17 = [v16 containsObject:v7];

    if (v17)
    {
      ++*(*(*(a1 + 64) + 8) + 24);
      *(*(*(a1 + 72) + 8) + 24) += [v20 numberOfHighConfidenceAssets];
      v18 = *(*(*(a1 + 64) + 8) + 24);
      if (v18 >= [*(a1 + 32) minimumNumberOfNegativeScenes])
      {
        v19 = *(*(*(a1 + 72) + 8) + 24);
        if (v19 >= [*(a1 + 32) minimumNumberOfAssetsWithNegativeScenes])
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          *a4 = 1;
        }
      }
    }
  }
}

@end