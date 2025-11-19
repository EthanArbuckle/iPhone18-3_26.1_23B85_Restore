@interface PPMostCommonFeatureValue
- (PPMostCommonFeatureValue)initWithModelDescription:(id)a3 parameterDictionary:(id)a4 error:(id *)a5;
- (id)_dominantItem;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionsFromBatch:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation PPMostCommonFeatureValue

- (id)predictionsFromBatch:(id)a3 options:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_new();
  itemCounts = self->_itemCounts;
  self->_itemCounts = v11;

  if ([v9 count] < 0)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PPNamedEntityUtils.m" lineNumber:96 description:{@"MLBatchProvider has a negative count: %td", objc_msgSend(v9, "count")}];
  }

  if ([v9 count])
  {
    v13 = 0;
    while (1)
    {
      v14 = [v9 featuresAtIndex:v13];
      v15 = [v14 featureValueForName:self->_featureName];

      if (!v15)
      {
        break;
      }

      [(NSCountedSet *)self->_itemCounts addObject:v15];

      if (++v13 >= [v9 count])
      {
        goto LABEL_7;
      }
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      featureName = self->_featureName;
      *buf = 138412802;
      v36 = v9;
      v37 = 2048;
      v38 = v13;
      v39 = 2112;
      v40 = featureName;
      _os_log_fault_impl(&dword_23224A000, v16, OS_LOG_TYPE_FAULT, "predictionsFromBatch:options:error: failed to get feature value from %@ at %tu for %@", buf, 0x20u);
    }

    v27 = 0;
  }

  else
  {
LABEL_7:
    v16 = [(PPMostCommonFeatureValue *)self _dominantItem];
    v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLong:{-[NSCountedSet countForObject:](self->_itemCounts, "countForObject:", v16)}];
    v18 = objc_opt_new();
    v19 = self->_itemCounts;
    self->_itemCounts = v18;

    v20 = objc_alloc(MEMORY[0x277CBFED0]);
    dominantItemCountFeatureValueKey = self->_dominantItemCountFeatureValueKey;
    v33[0] = self->_dominantItemFeatureValueKey;
    v33[1] = dominantItemCountFeatureValueKey;
    v34[0] = v16;
    v34[1] = v17;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v23 = [v20 initWithDictionary:v22 error:a5];

    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x277CBFEB0]);
      v25 = objc_autoreleasePoolPush();
      v32 = v23;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
      objc_autoreleasePoolPop(v25);
      v27 = [v24 initWithFeatureProviderArray:v26];
    }

    else
    {
      v27 = 0;
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 featureValueForName:self->_featureName];
  v9 = v8;
  if (v8)
  {
    if ([v8 type] != 7)
    {
      [(NSCountedSet *)self->_itemCounts addObject:v9];
LABEL_13:
      v13 = [(PPMostCommonFeatureValue *)self _dominantItem];
      v16 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLong:{-[NSCountedSet countForObject:](self->_itemCounts, "countForObject:", v13)}];
      v17 = objc_alloc(MEMORY[0x277CBFED0]);
      dominantItemCountFeatureValueKey = self->_dominantItemCountFeatureValueKey;
      v23[0] = self->_dominantItemFeatureValueKey;
      v23[1] = dominantItemCountFeatureValueKey;
      v24[0] = v13;
      v24[1] = v16;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
      v14 = [v17 initWithDictionary:v19 error:a5];

      goto LABEL_14;
    }

    v10 = [v9 sequenceValue];
    if ([v10 type] == 3)
    {
      itemCounts = self->_itemCounts;
      v12 = [v10 stringValues];
    }

    else
    {
      if ([v10 type] != 1)
      {
LABEL_12:

        goto LABEL_13;
      }

      itemCounts = self->_itemCounts;
      v12 = [v10 int64Values];
    }

    v15 = v12;
    [(NSCountedSet *)itemCounts addObjectsFromArray:v12];

    goto LABEL_12;
  }

  v13 = pp_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    featureName = self->_featureName;
    *buf = 138412546;
    v26 = v7;
    v27 = 2112;
    v28 = featureName;
    _os_log_fault_impl(&dword_23224A000, v13, OS_LOG_TYPE_FAULT, "predictionFromFeatures:options:error: failed to get feature value from %@ for %@", buf, 0x16u);
  }

  v14 = 0;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

- (PPMostCommonFeatureValue)initWithModelDescription:(id)a3 parameterDictionary:(id)a4 error:(id *)a5
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = PPMostCommonFeatureValue;
  v7 = [(PPMostCommonFeatureValue *)&v17 init];
  if (v7)
  {
    v8 = objc_opt_new();
    itemCounts = v7->_itemCounts;
    v7->_itemCounts = v8;

    v10 = [v6 objectForKeyedSubscript:@"feature_name"];
    featureName = v7->_featureName;
    v7->_featureName = v10;

    v12 = [v6 objectForKeyedSubscript:@"dominant_item_name"];
    dominantItemFeatureValueKey = v7->_dominantItemFeatureValueKey;
    v7->_dominantItemFeatureValueKey = v12;

    v14 = [v6 objectForKeyedSubscript:@"dominant_item_count_name"];
    dominantItemCountFeatureValueKey = v7->_dominantItemCountFeatureValueKey;
    v7->_dominantItemCountFeatureValueKey = v14;
  }

  return v7;
}

- (id)_dominantItem
{
  if ([(NSCountedSet *)self->_itemCounts count])
  {
    v3 = [(NSCountedSet *)self->_itemCounts allObjects];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__PPMostCommonFeatureValue__dominantItem__block_invoke;
    v7[3] = &unk_278971A28;
    v7[4] = self;
    v4 = [v3 sortedArrayUsingComparator:v7];
    v5 = [v4 lastObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __41__PPMostCommonFeatureValue__dominantItem__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = a3;
  v7 = [v5 countForObject:a2];
  v8 = [*(*(a1 + 32) + 8) countForObject:v6];

  v9 = -1;
  if (v7 >= v8)
  {
    v9 = 1;
  }

  if (v7 == v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

@end