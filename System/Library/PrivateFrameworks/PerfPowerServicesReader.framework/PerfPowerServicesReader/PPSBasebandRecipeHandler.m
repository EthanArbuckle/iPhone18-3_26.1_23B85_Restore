@interface PPSBasebandRecipeHandler
+ (id)formatBins:(id)a3;
+ (id)timeSeriesRecipes;
@end

@implementation PPSBasebandRecipeHandler

+ (id)timeSeriesRecipes
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"BasebandMetrics::Events";
  v3 = [a1 basebandEventRecipe];
  v8[1] = @"BasebandMetrics::Histogram";
  v9[0] = v3;
  v4 = [a1 basebandHistogramRecipe];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

PPSTimeSeries *__47__PPSBasebandRecipeHandler_basebandEventRecipe__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v29 = a3;
  v27 = objc_alloc_init(PPSTimeSeries);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 metrics];
        v11 = [v10 objectForKeyedSubscript:@"data"];

        if (v11)
        {
          v12 = [v9 metrics];
          v13 = [v12 objectForKeyedSubscript:@"data"];
          v14 = [v29 objectForKeyedSubscript:@"data"];
          v15 = [PPSBasebandDecoder decodeValue:v13 withMetric:v14];
          v16 = [v15 mutableCopy];

          if (v16)
          {
            v17 = [v16 objectForKeyedSubscript:@"metric_name"];
            [v16 removeObjectForKey:@"metric_name"];
            [v9 monotonicTimestamp];
            v19 = v18;
            [v9 timeOffset];
            v21 = v20;
            v22 = [v9 groupId];
            v23 = [v9 label];
            v24 = [PPSEvent eventWithMonotonicTimestamp:v16 timeOffset:v22 dictionary:v23 groupId:v19 label:v21];

            [v24 setLabel:v17];
            [(PPSTimeSeries *)v27 addEvent:v24];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v27;
}

PPSTimeSeries *__51__PPSBasebandRecipeHandler_basebandHistogramRecipe__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v43 = a3;
  v40 = objc_alloc_init(PPSTimeSeries);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v4;
  v38 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v38)
  {
    v37 = *v57;
    do
    {
      v5 = 0;
      do
      {
        if (*v57 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v5;
        v6 = *(*(&v56 + 1) + 8 * v5);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v45 = [v6 metrics];
        v7 = [v45 countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v53;
          v41 = *v53;
          v42 = v6;
          do
          {
            v10 = 0;
            v44 = v8;
            do
            {
              if (*v53 != v9)
              {
                objc_enumerationMutation(v45);
              }

              v11 = *(*(&v52 + 1) + 8 * v10);
              if ([v11 hasPrefix:@"data"])
              {
                v47 = v10;
                v12 = [v6 metrics];
                v13 = [v12 objectForKeyedSubscript:v11];
                v14 = [v43 objectForKeyedSubscript:@"data"];
                v15 = [PPSBasebandDecoder decodeValue:v13 withMetric:v14];
                v16 = [v15 mutableCopy];

                if (v16)
                {
                  v46 = [v16 objectForKeyedSubscript:@"metric_name"];
                  [v16 removeObjectForKey:@"metric_name"];
                  v50 = 0u;
                  v51 = 0u;
                  v48 = 0u;
                  v49 = 0u;
                  v17 = [v16 copy];
                  v18 = [v17 countByEnumeratingWithState:&v48 objects:v60 count:16];
                  if (v18)
                  {
                    v19 = v18;
                    v20 = *v49;
                    do
                    {
                      for (i = 0; i != v19; ++i)
                      {
                        if (*v49 != v20)
                        {
                          objc_enumerationMutation(v17);
                        }

                        v22 = *(*(&v48 + 1) + 8 * i);
                        v23 = [v16 objectForKeyedSubscript:v22];
                        objc_opt_class();
                        isKindOfClass = objc_opt_isKindOfClass();

                        if (isKindOfClass)
                        {
                          v25 = [v16 objectForKeyedSubscript:v22];
                          v26 = [PPSBasebandRecipeHandler formatBins:v25];
                          [v16 setValuesForKeysWithDictionary:v26];

                          [v16 removeObjectForKey:v22];
                        }
                      }

                      v19 = [v17 countByEnumeratingWithState:&v48 objects:v60 count:16];
                    }

                    while (v19);
                  }

                  v6 = v42;
                  [v42 monotonicTimestamp];
                  v28 = v27;
                  [v42 timeOffset];
                  v30 = v29;
                  v31 = [v42 groupId];
                  v32 = [v42 label];
                  v33 = [PPSEvent eventWithMonotonicTimestamp:v16 timeOffset:v31 dictionary:v32 groupId:v28 label:v30];

                  [v33 setLabel:v46];
                  [(PPSTimeSeries *)v40 addEvent:v33];

                  v9 = v41;
                }

                v8 = v44;
                v10 = v47;
              }

              ++v10;
            }

            while (v10 != v8);
            v8 = [v45 countByEnumeratingWithState:&v52 objects:v61 count:16];
          }

          while (v8);
        }

        v5 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v38);
  }

  v34 = *MEMORY[0x277D85DE8];

  return v40;
}

+ (id)formatBins:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__PPSBasebandRecipeHandler_formatBins___block_invoke;
  v16[3] = &unk_279A115F8;
  v17 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v16];
  v18[0] = @"bin_size";
  v7 = MEMORY[0x277CCABB0];
  v8 = [v4 count];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v18[1] = @"duration_bins";
  v19[0] = v9;
  v10 = MEMORY[0x277CCACA8];
  v11 = [v6 componentsJoinedByString:{@", "}];
  v12 = [v10 stringWithFormat:@"[%@]", v11];
  v19[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __39__PPSBasebandRecipeHandler_formatBins___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 hasPrefix:@"duration"])
        {
          v9 = [v3 objectForKeyedSubscript:v8];
          if ([v9 intValue] < 1)
          {
            v12 = @"-";
          }

          else
          {
            v10 = MEMORY[0x277CCACA8];
            v11 = [v3 objectForKeyedSubscript:v8];
            v12 = [v10 stringWithFormat:@"%d", objc_msgSend(v11, "intValue")];
          }

          [*(a1 + 32) addObject:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end