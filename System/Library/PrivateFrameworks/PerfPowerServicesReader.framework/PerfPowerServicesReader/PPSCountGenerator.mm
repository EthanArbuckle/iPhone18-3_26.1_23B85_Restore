@interface PPSCountGenerator
+ (id)countMapWithTimeSeries:(id)series block:(id)block groupingDimensions:(id)dimensions;
+ (id)countWithTimeSeries:(id)series block:(id)block;
@end

@implementation PPSCountGenerator

+ (id)countWithTimeSeries:(id)series block:(id)block
{
  seriesCopy = series;
  blockCopy = block;
  v7 = blockCopy;
  v8 = 0;
  if (seriesCopy && blockCopy)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    v19 = &unk_287017EB0;
    array = [seriesCopy array];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__PPSCountGenerator_countWithTimeSeries_block___block_invoke;
    v11[3] = &unk_279A11268;
    v12 = v7;
    v13 = &v14;
    [array enumerateObjectsUsingBlock:v11];

    v8 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  return v8;
}

void __47__PPSCountGenerator_countWithTimeSeries_block___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  if (v2)
  {
    v3 = MEMORY[0x277CCABB0];
    v10 = v2;
    [*(*(*(a1 + 40) + 8) + 40) doubleValue];
    v5 = v4;
    [v10 doubleValue];
    v7 = [v3 numberWithDouble:v5 + v6];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v2 = v10;
  }
}

+ (id)countMapWithTimeSeries:(id)series block:(id)block groupingDimensions:(id)dimensions
{
  seriesCopy = series;
  blockCopy = block;
  dimensionsCopy = dimensions;
  v11 = dimensionsCopy;
  v12 = 0;
  if (seriesCopy && blockCopy && dimensionsCopy)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    array = [seriesCopy array];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__PPSCountGenerator_countMapWithTimeSeries_block_groupingDimensions___block_invoke;
    v15[3] = &unk_279A112E0;
    v16 = v11;
    v19 = &v21;
    selfCopy = self;
    v17 = seriesCopy;
    v18 = blockCopy;
    [array enumerateObjectsUsingBlock:v15];

    v12 = [v22[5] copy];
    _Block_object_dispose(&v21, 8);
  }

  return v12;
}

void __69__PPSCountGenerator_countMapWithTimeSeries_block_groupingDimensions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = *(a1 + 32);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__PPSCountGenerator_countMapWithTimeSeries_block_groupingDimensions___block_invoke_2;
  v17[3] = &unk_279A11290;
  v6 = v3;
  v18 = v6;
  v7 = v4;
  v19 = v7;
  [v5 enumerateObjectsUsingBlock:v17];
  v8 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = MEMORY[0x277CCAC30];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__PPSCountGenerator_countMapWithTimeSeries_block_groupingDimensions___block_invoke_3;
    v15[3] = &unk_279A112B8;
    v10 = v7;
    v16 = v10;
    v11 = [v9 predicateWithBlock:v15];
    v12 = *(a1 + 64);
    v13 = [*(a1 + 40) filteredTimeSeriesUsingPredicate:v11];
    v14 = [v12 countWithTimeSeries:v13 block:*(a1 + 48)];
    [*(*(*(a1 + 56) + 8) + 40) setObject:v14 forKeyedSubscript:v10];
  }
}

void __69__PPSCountGenerator_countMapWithTimeSeries_block_groupingDimensions___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = MEMORY[0x277CCACA8];
  v4 = [*(a1 + 32) metricKeysAndValues];
  v5 = [v10 groupBy];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v3 stringWithFormat:@"%@", v6];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [v10 groupBy];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }
}

uint64_t __69__PPSCountGenerator_countMapWithTimeSeries_block_groupingDimensions___block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [v3 metricKeysAndValues];
        v11 = [v10 objectForKeyedSubscript:v9];
        v12 = [*(a1 + 32) objectForKeyedSubscript:v9];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          v14 = 0;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

@end