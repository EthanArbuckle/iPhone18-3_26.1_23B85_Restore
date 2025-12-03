@interface ATXShadowMetricsComputer
- (ATXShadowMetricsComputer)initWithDataSource:(id)source;
- (id)computeResultAsTrendPlotFromStartDate:(id)date toEndDate:(id)endDate resultGranularity:(int64_t)granularity;
- (id)computeResultFromStartDate:(id)date toEndDate:(id)endDate;
@end

@implementation ATXShadowMetricsComputer

- (ATXShadowMetricsComputer)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = ATXShadowMetricsComputer;
  v6 = [(ATXShadowMetricsComputer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (id)computeResultAsTrendPlotFromStartDate:(id)date toEndDate:(id)endDate resultGranularity:(int64_t)granularity
{
  dateCopy = date;
  endDateCopy = endDate;
  v10 = [[ATXTrendPlot alloc] initWithStartDate:dateCopy endDate:endDateCopy granularity:granularity binInitialDataProvider:&__block_literal_global_18];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__8;
  v26[4] = __Block_byref_object_dispose__8;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__8;
  v24[4] = __Block_byref_object_dispose__8;
  v25 = objc_opt_new();
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__8;
  v22[4] = __Block_byref_object_dispose__8;
  bins = [(ATXTrendPlot *)v10 bins];
  firstObject = [bins firstObject];

  dataSource = self->_dataSource;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __94__ATXShadowMetricsComputer_computeResultAsTrendPlotFromStartDate_toEndDate_resultGranularity___block_invoke_13;
  v17[3] = &unk_1E86A4DA0;
  v17[4] = self;
  v19 = v22;
  v20 = v26;
  v21 = v24;
  v13 = v10;
  v18 = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__ATXShadowMetricsComputer_computeResultAsTrendPlotFromStartDate_toEndDate_resultGranularity___block_invoke_15;
  v16[3] = &unk_1E86A4E18;
  v16[4] = self;
  v16[5] = v22;
  v16[6] = v26;
  v16[7] = v24;
  [(ATXShadowMetricsDataSource *)dataSource replayHistoryBetweenStartDate:dateCopy endDate:endDateCopy shadowEventHandler:v17 predictionCacheHandler:v16];
  v14 = v13;

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(v26, 8);

  return v14;
}

id __94__ATXShadowMetricsComputer_computeResultAsTrendPlotFromStartDate_toEndDate_resultGranularity___block_invoke()
{
  v0 = objc_opt_new();

  return v0;
}

void __94__ATXShadowMetricsComputer_computeResultAsTrendPlotFromStartDate_toEndDate_resultGranularity___block_invoke_13(void *a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1[6] + 8) + 40) next];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = [*(*(a1[6] + 8) + 40) next];
      v7 = [v6 startDate];
      v8 = [v3 absoluteTimestamp];
      v9 = [v7 earlierDate:v8];
      v10 = [*(*(a1[6] + 8) + 40) next];
      v11 = [v10 startDate];

      if (v9 != v11)
      {
        break;
      }

      v12 = [*(*(a1[6] + 8) + 40) next];
      v13 = *(a1[6] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v15 = [*(a1[4] + 8) numberOfPredictionsInCache:*(*(a1[7] + 8) + 40)];
      v16 = [*(*(a1[6] + 8) + 40) data];
      [v16 setNumberOfCachedPredictions:v15];

      v17 = [*(*(a1[7] + 8) + 40) numberOfPredictionsWithConfidence:4];
      v18 = [*(*(a1[6] + 8) + 40) data];
      [v18 setNumberOfCachedHighConfidencePredictions:v17];

      v19 = [*(*(a1[7] + 8) + 40) numberOfPredictionsWithConfidence:3];
      v20 = [*(*(a1[6] + 8) + 40) data];
      [v20 setNumberOfCachedMediumConfidencePredictions:v19];

      v21 = [*(*(a1[7] + 8) + 40) numberOfPredictionsWithConfidence:2];
      v22 = [*(*(a1[6] + 8) + 40) data];
      [v22 setNumberOfCachedLowConfidencePredictions:v21];

      [*(*(a1[8] + 8) + 40) removeAllObjects];
      v5 = [*(*(a1[6] + 8) + 40) next];
    }

    while (v5);
  }

  v23 = a1[5];
  v24 = [v3 absoluteTimestamp];
  v25 = [v23 binAtDate:v24];

  if (v25)
  {
    v26 = [v25 data];
    [v26 setNumberOfShadowEvents:{objc_msgSend(v26, "numberOfShadowEvents") + 1}];

    if (*(*(a1[7] + 8) + 40))
    {
      v27 = [*(a1[4] + 8) cacheHitIndexForShadowEvent:v3 predictionCache:?];
      if (v27 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = v27;
        v29 = [v25 data];
        [v29 setNumberOfShadowEventCacheHits:{objc_msgSend(v29, "numberOfShadowEventCacheHits") + 1}];

        if (v28)
        {
          if (v28 != 1)
          {
            if (v28 > 3)
            {
              v30 = 0;
              v34 = 0;
              v36 = 0;
              v37 = 0;
              v38 = 0;
              if (v28 > 7)
              {
LABEL_16:
                v39 = [v25 data];
                [v39 sumOfShadowEventCacheHitReciprocalRanks];
                [v39 setSumOfShadowEventCacheHitReciprocalRanks:1.0 / (v28 + 1) + v40];

                v41 = [*(*(a1[7] + 8) + 40) confidenceCategoryForPredictionAtIndex:v28];
                v42 = v41;
                switch(v41)
                {
                  case 2:
                    v43 = [v25 data];
                    [v43 setNumberOfShadowEventLowConfidenceCacheHits:{objc_msgSend(v43, "numberOfShadowEventLowConfidenceCacheHits") + 1}];
                    break;
                  case 4:
                    v43 = [v25 data];
                    [v43 setNumberOfShadowEventHighConfidenceCacheHits:{objc_msgSend(v43, "numberOfShadowEventHighConfidenceCacheHits") + 1}];
                    break;
                  case 3:
                    v43 = [v25 data];
                    [v43 setNumberOfShadowEventMediumConfidenceCacheHits:{objc_msgSend(v43, "numberOfShadowEventMediumConfidenceCacheHits") + 1}];
                    break;
                  default:
                    goto LABEL_23;
                }

LABEL_23:
                v44 = [*(*(a1[7] + 8) + 40) identifierForPredictionAtIndex:v28];
                if (!v44)
                {
                  v47 = __atxlog_handle_metrics();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                  {
                    __94__ATXShadowMetricsComputer_computeResultAsTrendPlotFromStartDate_toEndDate_resultGranularity___block_invoke_13_cold_1(v47);
                  }

LABEL_34:

                  goto LABEL_35;
                }

                if ([*(*(a1[8] + 8) + 40) containsObject:v44])
                {
LABEL_35:

                  goto LABEL_36;
                }

                [*(*(a1[8] + 8) + 40) addObject:v44];
                v45 = [v25 data];
                [v45 setNumberOfCorrectCachedPredictions:{objc_msgSend(v45, "numberOfCorrectCachedPredictions") + 1}];

                if (v28)
                {
                  if (!v37)
                  {
                    goto LABEL_27;
                  }
                }

                else
                {
                  v48 = [v25 data];
                  [v48 setNumberOfCorrectTop1CachedPrediction:{objc_msgSend(v48, "numberOfCorrectTop1CachedPrediction") + 1}];

                  if (!v37)
                  {
LABEL_27:
                    if (!v38)
                    {
                      goto LABEL_28;
                    }

                    goto LABEL_44;
                  }
                }

                v49 = [v25 data];
                [v49 setNumberOfCorrectTop2CachedPredictions:{objc_msgSend(v49, "numberOfCorrectTop2CachedPredictions") + 1}];

                if (!v38)
                {
LABEL_28:
                  if (!v36)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_29;
                }

LABEL_44:
                v50 = [v25 data];
                [v50 setNumberOfCorrectTop4CachedPredictions:{objc_msgSend(v50, "numberOfCorrectTop4CachedPredictions") + 1}];

                if (!v36)
                {
LABEL_30:
                  switch(v42)
                  {
                    case 2:
                      v47 = [v25 data];
                      [v47 setNumberOfCorrectLowConfidenceCachedPredictions:[v47 numberOfCorrectLowConfidenceCachedPredictions]+ 1];
                      break;
                    case 4:
                      v47 = [v25 data];
                      [v47 setNumberOfCorrectHighConfidenceCachedPredictions:[v47 numberOfCorrectHighConfidenceCachedPredictions]+ 1];
                      break;
                    case 3:
                      v47 = [v25 data];
                      [v47 setNumberOfCorrectMediumConfidenceCachedPredictions:[v47 numberOfCorrectMediumConfidenceCachedPredictions]+ 1];
                      break;
                    default:
                      goto LABEL_35;
                  }

                  goto LABEL_34;
                }

LABEL_29:
                v46 = [v25 data];
                [v46 setNumberOfCorrectTop8CachedPredictions:{objc_msgSend(v46, "numberOfCorrectTop8CachedPredictions") + 1}];

                goto LABEL_30;
              }

LABEL_15:
              v35 = [v25 data];
              [v35 setNumberOfShadowEventTop8CacheHits:{objc_msgSend(v35, "numberOfShadowEventTop8CacheHits") + 1}];

              v36 = 1;
              v37 = v30;
              v38 = v34;
              goto LABEL_16;
            }

            v30 = 0;
LABEL_14:
            v33 = [v25 data];
            [v33 setNumberOfShadowEventTop4CacheHits:{objc_msgSend(v33, "numberOfShadowEventTop4CacheHits") + 1}];

            v34 = 1;
            goto LABEL_15;
          }
        }

        else
        {
          v31 = [v25 data];
          [v31 setNumberOfShadowEventTop1CacheHits:{objc_msgSend(v31, "numberOfShadowEventTop1CacheHits") + 1}];
        }

        v32 = [v25 data];
        [v32 setNumberOfShadowEventTop2CacheHits:{objc_msgSend(v32, "numberOfShadowEventTop2CacheHits") + 1}];

        v30 = 1;
        goto LABEL_14;
      }
    }
  }

LABEL_36:
}

void __94__ATXShadowMetricsComputer_computeResultAsTrendPlotFromStartDate_toEndDate_resultGranularity___block_invoke_15(void *a1, void *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1[5] + 8) + 40) data];
  [v4 setNumberOfPredictionCacheRefreshes:{objc_msgSend(v4, "numberOfPredictionCacheRefreshes") + 1}];

  v5 = [*(*(a1[5] + 8) + 40) next];
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = [*(*(a1[5] + 8) + 40) next];
      v8 = [v7 startDate];
      v9 = [v3 date];
      v10 = [v8 earlierDate:v9];
      v11 = [*(*(a1[5] + 8) + 40) next];
      v12 = [v11 startDate];

      if (v10 != v12)
      {
        break;
      }

      v13 = [*(*(a1[5] + 8) + 40) next];
      v14 = *(a1[5] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v16 = [*(a1[4] + 8) numberOfPredictionsInCache:*(*(a1[6] + 8) + 40)];
      v17 = [*(*(a1[5] + 8) + 40) data];
      [v17 setNumberOfCachedPredictions:v16];

      v18 = [*(*(a1[6] + 8) + 40) numberOfPredictionsWithConfidence:4];
      v19 = [*(*(a1[5] + 8) + 40) data];
      [v19 setNumberOfCachedHighConfidencePredictions:v18];

      v20 = [*(*(a1[6] + 8) + 40) numberOfPredictionsWithConfidence:3];
      v21 = [*(*(a1[5] + 8) + 40) data];
      [v21 setNumberOfCachedMediumConfidencePredictions:v20];

      v22 = [*(*(a1[6] + 8) + 40) numberOfPredictionsWithConfidence:2];
      v23 = [*(*(a1[5] + 8) + 40) data];
      [v23 setNumberOfCachedLowConfidencePredictions:v22];

      [*(*(a1[7] + 8) + 40) removeAllObjects];
      v6 = [*(*(a1[5] + 8) + 40) next];
    }

    while (v6);
  }

  v24 = objc_opt_new();
  v25 = v24;
  v26 = a1[6];
  v27 = *(*(v26 + 8) + 40);
  if (v27)
  {
    v28 = *(a1[4] + 8);
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __94__ATXShadowMetricsComputer_computeResultAsTrendPlotFromStartDate_toEndDate_resultGranularity___block_invoke_2;
    v65[3] = &unk_1E86A4DC8;
    v67 = v26;
    v66 = v24;
    [v28 enumeratePredictionsInCache:v27 usingBlock:v65];
  }

  v29 = objc_opt_new();
  v30 = *(a1[4] + 8);
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __94__ATXShadowMetricsComputer_computeResultAsTrendPlotFromStartDate_toEndDate_resultGranularity___block_invoke_3;
  v59[3] = &unk_1E86A4DF0;
  v31 = v3;
  v60 = v31;
  v32 = v29;
  v61 = v32;
  v33 = v25;
  v62 = v33;
  v34 = *(a1 + 3);
  v63 = *(a1 + 2);
  v64 = v34;
  [v30 enumeratePredictionsInCache:v31 usingBlock:v59];
  v35 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v36 = *(*(a1[7] + 8) + 40);
  v37 = [v36 countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v56;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v56 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v55 + 1) + 8 * i);
        if (([v32 containsObject:v41] & 1) == 0)
        {
          [v35 addObject:v41];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v55 objects:v69 count:16];
    }

    while (v38);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v42 = v35;
  v43 = [v42 countByEnumeratingWithState:&v51 objects:v68 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v52;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v52 != v45)
        {
          objc_enumerationMutation(v42);
        }

        [*(*(a1[7] + 8) + 40) removeObject:{*(*(&v51 + 1) + 8 * j), v51}];
      }

      v44 = [v42 countByEnumeratingWithState:&v51 objects:v68 count:16];
    }

    while (v44);
  }

  v47 = *(a1[6] + 8);
  v48 = *(v47 + 40);
  *(v47 + 40) = v31;
  v49 = v31;

  v50 = *MEMORY[0x1E69E9840];
}

void __94__ATXShadowMetricsComputer_computeResultAsTrendPlotFromStartDate_toEndDate_resultGranularity___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = a2;
  v7 = [v5 identifierForPredictionAtIndex:a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

void __94__ATXShadowMetricsComputer_computeResultAsTrendPlotFromStartDate_toEndDate_resultGranularity___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [*(a1 + 32) identifierForPredictionAtIndex:a3];
  [*(a1 + 40) addObject:v5];
  v6 = [*(a1 + 48) objectForKeyedSubscript:v5];
  if (!v6 || ([*(*(a1 + 56) + 8) isPrediction:v6 equalToPrediction:v10] & 1) == 0)
  {
    v7 = [*(*(*(a1 + 64) + 8) + 40) data];
    [v7 setNumberOfCachedPredictions:{objc_msgSend(v7, "numberOfCachedPredictions") + 1}];

    v8 = [*(*(*(a1 + 72) + 8) + 40) confidenceCategoryForPredictionAtIndex:a3];
    switch(v8)
    {
      case 4:
        v9 = [*(*(*(a1 + 64) + 8) + 40) data];
        [v9 setNumberOfCachedHighConfidencePredictions:{objc_msgSend(v9, "numberOfCachedHighConfidencePredictions") + 1}];
        break;
      case 3:
        v9 = [*(*(*(a1 + 64) + 8) + 40) data];
        [v9 setNumberOfCachedMediumConfidencePredictions:{objc_msgSend(v9, "numberOfCachedMediumConfidencePredictions") + 1}];
        break;
      case 2:
        v9 = [*(*(*(a1 + 64) + 8) + 40) data];
        [v9 setNumberOfCachedLowConfidencePredictions:{objc_msgSend(v9, "numberOfCachedLowConfidencePredictions") + 1}];
        break;
      default:
LABEL_10:
        [*(*(*(a1 + 80) + 8) + 40) removeObject:v5];
        goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (id)computeResultFromStartDate:(id)date toEndDate:(id)endDate
{
  v4 = [(ATXShadowMetricsComputer *)self computeResultAsTrendPlotFromStartDate:date toEndDate:endDate resultGranularity:0];
  bins = [v4 bins];
  firstObject = [bins firstObject];
  data = [firstObject data];

  return data;
}

@end