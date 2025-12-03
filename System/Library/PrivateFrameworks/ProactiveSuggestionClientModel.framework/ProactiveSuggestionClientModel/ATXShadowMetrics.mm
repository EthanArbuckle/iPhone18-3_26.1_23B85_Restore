@interface ATXShadowMetrics
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXShadowMetrics:(id)metrics;
- (double)meanReciprocalRank;
- (double)precisionAllCachedPredictions;
- (double)precisionAtTop1CachedPrediction;
- (double)precisionAtTop2CachedPredictions;
- (double)precisionAtTop4CachedPredictions;
- (double)precisionAtTop8CachedPredictions;
- (double)precisionOfHighConfidenceCachedPredictions;
- (double)precisionOfLowConfidenceCachedPredictions;
- (double)precisionOfMediumConfidenceCachedPredictions;
- (double)recallAllCachedPredictions;
- (double)recallAtTop1CachedPrediction;
- (double)recallAtTop2CachedPredictions;
- (double)recallAtTop4CachedPredictions;
- (double)recallAtTop8CachedPredictions;
- (double)recallOfHighConfidenceCachedPredictions;
- (double)recallOfLowConfidenceCachedPredictions;
- (double)recallOfMediumConfidenceCachedPredictions;
- (id)asCoreAnalyticsMessageWithModelId:(id)id executableType:(int64_t)type;
- (unint64_t)hash;
- (void)meanReciprocalRank;
- (void)precisionAllCachedPredictions;
- (void)precisionAtTop1CachedPrediction;
- (void)precisionAtTop2CachedPredictions;
- (void)precisionAtTop4CachedPredictions;
- (void)precisionAtTop8CachedPredictions;
- (void)precisionOfHighConfidenceCachedPredictions;
- (void)precisionOfLowConfidenceCachedPredictions;
- (void)precisionOfMediumConfidenceCachedPredictions;
- (void)recallAllCachedPredictions;
- (void)recallAtTop1CachedPrediction;
- (void)recallAtTop2CachedPredictions;
- (void)recallAtTop4CachedPredictions;
- (void)recallAtTop8CachedPredictions;
- (void)recallOfHighConfidenceCachedPredictions;
- (void)recallOfLowConfidenceCachedPredictions;
- (void)recallOfMediumConfidenceCachedPredictions;
@end

@implementation ATXShadowMetrics

- (double)precisionAtTop1CachedPrediction
{
  numberOfCachedPredictions = self->_numberOfCachedPredictions;
  numberOfCorrectTop1CachedPrediction = self->_numberOfCorrectTop1CachedPrediction;
  if (numberOfCachedPredictions)
  {
    return numberOfCorrectTop1CachedPrediction / numberOfCachedPredictions;
  }

  v4 = 0.0;
  if (numberOfCorrectTop1CachedPrediction)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 precisionAtTop1CachedPrediction:v6];
    }
  }

  return v4;
}

- (double)precisionAtTop2CachedPredictions
{
  numberOfCachedPredictions = self->_numberOfCachedPredictions;
  numberOfCorrectTop2CachedPredictions = self->_numberOfCorrectTop2CachedPredictions;
  if (numberOfCachedPredictions)
  {
    return numberOfCorrectTop2CachedPredictions / numberOfCachedPredictions;
  }

  v4 = 0.0;
  if (numberOfCorrectTop2CachedPredictions)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 precisionAtTop2CachedPredictions:v6];
    }
  }

  return v4;
}

- (double)precisionAtTop4CachedPredictions
{
  numberOfCachedPredictions = self->_numberOfCachedPredictions;
  numberOfCorrectTop4CachedPredictions = self->_numberOfCorrectTop4CachedPredictions;
  if (numberOfCachedPredictions)
  {
    return numberOfCorrectTop4CachedPredictions / numberOfCachedPredictions;
  }

  v4 = 0.0;
  if (numberOfCorrectTop4CachedPredictions)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 precisionAtTop4CachedPredictions:v6];
    }
  }

  return v4;
}

- (double)precisionAtTop8CachedPredictions
{
  numberOfCachedPredictions = self->_numberOfCachedPredictions;
  numberOfCorrectTop8CachedPredictions = self->_numberOfCorrectTop8CachedPredictions;
  if (numberOfCachedPredictions)
  {
    return numberOfCorrectTop8CachedPredictions / numberOfCachedPredictions;
  }

  v4 = 0.0;
  if (numberOfCorrectTop8CachedPredictions)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 precisionAtTop8CachedPredictions:v6];
    }
  }

  return v4;
}

- (double)precisionOfHighConfidenceCachedPredictions
{
  numberOfCachedHighConfidencePredictions = self->_numberOfCachedHighConfidencePredictions;
  numberOfCorrectHighConfidenceCachedPredictions = self->_numberOfCorrectHighConfidenceCachedPredictions;
  if (numberOfCachedHighConfidencePredictions)
  {
    return numberOfCorrectHighConfidenceCachedPredictions / numberOfCachedHighConfidencePredictions;
  }

  v4 = 0.0;
  if (numberOfCorrectHighConfidenceCachedPredictions)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 precisionOfHighConfidenceCachedPredictions:v6];
    }
  }

  return v4;
}

- (double)precisionOfMediumConfidenceCachedPredictions
{
  numberOfCachedMediumConfidencePredictions = self->_numberOfCachedMediumConfidencePredictions;
  numberOfCorrectMediumConfidenceCachedPredictions = self->_numberOfCorrectMediumConfidenceCachedPredictions;
  if (numberOfCachedMediumConfidencePredictions)
  {
    return numberOfCorrectMediumConfidenceCachedPredictions / numberOfCachedMediumConfidencePredictions;
  }

  v4 = 0.0;
  if (numberOfCorrectMediumConfidenceCachedPredictions)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 precisionOfMediumConfidenceCachedPredictions:v6];
    }
  }

  return v4;
}

- (double)precisionOfLowConfidenceCachedPredictions
{
  numberOfCachedLowConfidencePredictions = self->_numberOfCachedLowConfidencePredictions;
  numberOfCorrectLowConfidenceCachedPredictions = self->_numberOfCorrectLowConfidenceCachedPredictions;
  if (numberOfCachedLowConfidencePredictions)
  {
    return numberOfCorrectLowConfidenceCachedPredictions / numberOfCachedLowConfidencePredictions;
  }

  v4 = 0.0;
  if (numberOfCorrectLowConfidenceCachedPredictions)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 precisionOfLowConfidenceCachedPredictions:v6];
    }
  }

  return v4;
}

- (double)precisionAllCachedPredictions
{
  numberOfCorrectCachedPredictions = self->_numberOfCorrectCachedPredictions;
  numberOfCachedPredictions = self->_numberOfCachedPredictions;
  if (numberOfCachedPredictions)
  {
    return numberOfCorrectCachedPredictions / numberOfCachedPredictions;
  }

  v4 = 0.0;
  if (numberOfCorrectCachedPredictions)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 precisionAllCachedPredictions:v6];
    }
  }

  return v4;
}

- (double)recallAtTop1CachedPrediction
{
  numberOfShadowEvents = self->_numberOfShadowEvents;
  numberOfShadowEventTop1CacheHits = self->_numberOfShadowEventTop1CacheHits;
  if (numberOfShadowEvents)
  {
    return numberOfShadowEventTop1CacheHits / numberOfShadowEvents;
  }

  v4 = 0.0;
  if (numberOfShadowEventTop1CacheHits)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 recallAtTop1CachedPrediction:v6];
    }
  }

  return v4;
}

- (double)recallAtTop2CachedPredictions
{
  numberOfShadowEvents = self->_numberOfShadowEvents;
  numberOfShadowEventTop2CacheHits = self->_numberOfShadowEventTop2CacheHits;
  if (numberOfShadowEvents)
  {
    return numberOfShadowEventTop2CacheHits / numberOfShadowEvents;
  }

  v4 = 0.0;
  if (numberOfShadowEventTop2CacheHits)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 recallAtTop2CachedPredictions:v6];
    }
  }

  return v4;
}

- (double)recallAtTop4CachedPredictions
{
  numberOfShadowEvents = self->_numberOfShadowEvents;
  numberOfShadowEventTop4CacheHits = self->_numberOfShadowEventTop4CacheHits;
  if (numberOfShadowEvents)
  {
    return numberOfShadowEventTop4CacheHits / numberOfShadowEvents;
  }

  v4 = 0.0;
  if (numberOfShadowEventTop4CacheHits)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 recallAtTop4CachedPredictions:v6];
    }
  }

  return v4;
}

- (double)recallAtTop8CachedPredictions
{
  numberOfShadowEvents = self->_numberOfShadowEvents;
  numberOfShadowEventTop8CacheHits = self->_numberOfShadowEventTop8CacheHits;
  if (numberOfShadowEvents)
  {
    return numberOfShadowEventTop8CacheHits / numberOfShadowEvents;
  }

  v4 = 0.0;
  if (numberOfShadowEventTop8CacheHits)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 recallAtTop8CachedPredictions:v6];
    }
  }

  return v4;
}

- (double)recallOfHighConfidenceCachedPredictions
{
  numberOfShadowEvents = self->_numberOfShadowEvents;
  numberOfShadowEventHighConfidenceCacheHits = self->_numberOfShadowEventHighConfidenceCacheHits;
  if (numberOfShadowEvents)
  {
    return numberOfShadowEventHighConfidenceCacheHits / numberOfShadowEvents;
  }

  v4 = 0.0;
  if (numberOfShadowEventHighConfidenceCacheHits)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 recallOfHighConfidenceCachedPredictions:v6];
    }
  }

  return v4;
}

- (double)recallOfMediumConfidenceCachedPredictions
{
  numberOfShadowEvents = self->_numberOfShadowEvents;
  numberOfShadowEventMediumConfidenceCacheHits = self->_numberOfShadowEventMediumConfidenceCacheHits;
  if (numberOfShadowEvents)
  {
    return numberOfShadowEventMediumConfidenceCacheHits / numberOfShadowEvents;
  }

  v4 = 0.0;
  if (numberOfShadowEventMediumConfidenceCacheHits)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 recallOfMediumConfidenceCachedPredictions:v6];
    }
  }

  return v4;
}

- (double)recallOfLowConfidenceCachedPredictions
{
  numberOfShadowEvents = self->_numberOfShadowEvents;
  numberOfShadowEventLowConfidenceCacheHits = self->_numberOfShadowEventLowConfidenceCacheHits;
  if (numberOfShadowEvents)
  {
    return numberOfShadowEventLowConfidenceCacheHits / numberOfShadowEvents;
  }

  v4 = 0.0;
  if (numberOfShadowEventLowConfidenceCacheHits)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 recallOfLowConfidenceCachedPredictions:v6];
    }
  }

  return v4;
}

- (double)recallAllCachedPredictions
{
  numberOfShadowEventCacheHits = self->_numberOfShadowEventCacheHits;
  numberOfShadowEvents = self->_numberOfShadowEvents;
  if (numberOfShadowEvents)
  {
    return numberOfShadowEventCacheHits / numberOfShadowEvents;
  }

  v4 = 0.0;
  if (numberOfShadowEventCacheHits)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 recallAllCachedPredictions:v6];
    }
  }

  return v4;
}

- (double)meanReciprocalRank
{
  numberOfShadowEventCacheHits = self->_numberOfShadowEventCacheHits;
  sumOfShadowEventCacheHitReciprocalRanks = self->_sumOfShadowEventCacheHitReciprocalRanks;
  if (numberOfShadowEventCacheHits)
  {
    return sumOfShadowEventCacheHitReciprocalRanks / numberOfShadowEventCacheHits;
  }

  v4 = 0.0;
  if (sumOfShadowEventCacheHitReciprocalRanks != 0.0)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXShadowMetrics *)v5 meanReciprocalRank:v6];
    }
  }

  return v4;
}

- (id)asCoreAnalyticsMessageWithModelId:(id)id executableType:(int64_t)type
{
  v53[25] = *MEMORY[0x1E69E9840];
  v53[0] = id;
  v52[0] = @"modelID";
  v52[1] = @"executableType";
  v6 = MEMORY[0x1E696AD98];
  idCopy = id;
  v51 = [v6 numberWithInteger:type];
  v53[1] = v51;
  v52[2] = @"cacheHitMRR";
  v7 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self meanReciprocalRank];
  v50 = [v7 numberWithDouble:?];
  v53[2] = v50;
  v52[3] = @"numEvent";
  v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ATXShadowMetrics numberOfShadowEvents](self, "numberOfShadowEvents")}];
  v53[3] = v49;
  v52[4] = @"numPrediction";
  v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ATXShadowMetrics numberOfCachedPredictions](self, "numberOfCachedPredictions")}];
  v53[4] = v48;
  v52[5] = @"numPredictionHConf";
  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ATXShadowMetrics numberOfCachedHighConfidencePredictions](self, "numberOfCachedHighConfidencePredictions")}];
  v53[5] = v47;
  v52[6] = @"numPredictionLConf";
  v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ATXShadowMetrics numberOfCachedLowConfidencePredictions](self, "numberOfCachedLowConfidencePredictions")}];
  v53[6] = v45;
  v52[7] = @"numPredictionMConf";
  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ATXShadowMetrics numberOfCachedMediumConfidencePredictions](self, "numberOfCachedMediumConfidencePredictions")}];
  v53[7] = v44;
  v52[8] = @"numRefresh";
  v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ATXShadowMetrics numberOfPredictionCacheRefreshes](self, "numberOfPredictionCacheRefreshes")}];
  v53[8] = v43;
  v52[9] = @"precisionAll";
  v8 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self precisionAllCachedPredictions];
  v42 = [v8 numberWithDouble:?];
  v53[9] = v42;
  v52[10] = @"precisionAt1";
  v9 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self precisionAtTop1CachedPrediction];
  v41 = [v9 numberWithDouble:?];
  v53[10] = v41;
  v52[11] = @"precisionAt2";
  v10 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self precisionAtTop2CachedPredictions];
  v40 = [v10 numberWithDouble:?];
  v53[11] = v40;
  v52[12] = @"precisionAt4";
  v11 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self precisionAtTop4CachedPredictions];
  v39 = [v11 numberWithDouble:?];
  v53[12] = v39;
  v52[13] = @"precisionAt8";
  v12 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self precisionAtTop8CachedPredictions];
  v38 = [v12 numberWithDouble:?];
  v53[13] = v38;
  v52[14] = @"precisionHConf";
  v13 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self precisionOfHighConfidenceCachedPredictions];
  v37 = [v13 numberWithDouble:?];
  v53[14] = v37;
  v52[15] = @"precisionLConf";
  v14 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self precisionOfLowConfidenceCachedPredictions];
  v36 = [v14 numberWithDouble:?];
  v53[15] = v36;
  v52[16] = @"precisionMConf";
  v15 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self precisionOfMediumConfidenceCachedPredictions];
  v16 = [v15 numberWithDouble:?];
  v53[16] = v16;
  v52[17] = @"recallAll";
  v17 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self recallAllCachedPredictions];
  v18 = [v17 numberWithDouble:?];
  v53[17] = v18;
  v52[18] = @"recallAt1";
  v19 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self recallAtTop1CachedPrediction];
  v20 = [v19 numberWithDouble:?];
  v53[18] = v20;
  v52[19] = @"recallAt2";
  v21 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self recallAtTop2CachedPredictions];
  v22 = [v21 numberWithDouble:?];
  v53[19] = v22;
  v52[20] = @"recallAt4";
  v23 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self recallAtTop4CachedPredictions];
  v24 = [v23 numberWithDouble:?];
  v53[20] = v24;
  v52[21] = @"recallAt8";
  v25 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self recallAtTop8CachedPredictions];
  v26 = [v25 numberWithDouble:?];
  v53[21] = v26;
  v52[22] = @"recallHConf";
  v27 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self recallOfHighConfidenceCachedPredictions];
  v28 = [v27 numberWithDouble:?];
  v53[22] = v28;
  v52[23] = @"recallLConf";
  v29 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self recallOfLowConfidenceCachedPredictions];
  v30 = [v29 numberWithDouble:?];
  v53[23] = v30;
  v52[24] = @"recallMConf";
  v31 = MEMORY[0x1E696AD98];
  [(ATXShadowMetrics *)self recallOfMediumConfidenceCachedPredictions];
  v32 = [v31 numberWithDouble:?];
  v53[24] = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:25];

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXShadowMetrics *)self isEqualToATXShadowMetrics:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXShadowMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = *&self->_numberOfCorrectTop1CachedPrediction == *(metricsCopy + 8) && self->_numberOfCorrectTop4CachedPredictions == *(metricsCopy + 3) && self->_numberOfCorrectTop8CachedPredictions == *(metricsCopy + 4) && self->_numberOfCorrectHighConfidenceCachedPredictions == *(metricsCopy + 5) && self->_numberOfCorrectMediumConfidenceCachedPredictions == *(metricsCopy + 6) && self->_numberOfCorrectLowConfidenceCachedPredictions == *(metricsCopy + 7) && self->_numberOfCorrectCachedPredictions == *(metricsCopy + 8) && self->_numberOfCachedPredictions == *(metricsCopy + 9) && self->_numberOfCachedHighConfidencePredictions == *(metricsCopy + 10) && self->_numberOfCachedMediumConfidencePredictions == *(metricsCopy + 11) && self->_numberOfCachedLowConfidencePredictions == *(metricsCopy + 12) && self->_numberOfShadowEventTop1CacheHits == *(metricsCopy + 13) && self->_numberOfShadowEventTop2CacheHits == *(metricsCopy + 14) && self->_numberOfShadowEventTop4CacheHits == *(metricsCopy + 15) && self->_numberOfShadowEventTop8CacheHits == *(metricsCopy + 16) && self->_numberOfShadowEventHighConfidenceCacheHits == *(metricsCopy + 17) && self->_numberOfShadowEventMediumConfidenceCacheHits == *(metricsCopy + 18) && self->_numberOfShadowEventLowConfidenceCacheHits == *(metricsCopy + 19) && self->_numberOfShadowEventCacheHits == *(metricsCopy + 20) && self->_numberOfShadowEvents == *(metricsCopy + 21) && self->_numberOfPredictionCacheRefreshes == *(metricsCopy + 22) && self->_sumOfShadowEventCacheHitReciprocalRanks == *(metricsCopy + 23);

  return v5;
}

- (unint64_t)hash
{
  v2 = self->_numberOfCorrectTop2CachedPredictions - self->_numberOfCorrectTop1CachedPrediction + 32 * self->_numberOfCorrectTop1CachedPrediction;
  v3 = self->_numberOfCorrectTop4CachedPredictions - v2 + 32 * v2;
  v4 = self->_numberOfCorrectTop8CachedPredictions - v3 + 32 * v3;
  v5 = self->_numberOfCorrectHighConfidenceCachedPredictions - v4 + 32 * v4;
  v6 = self->_numberOfCorrectMediumConfidenceCachedPredictions - v5 + 32 * v5;
  v7 = self->_numberOfCorrectLowConfidenceCachedPredictions - v6 + 32 * v6;
  v8 = self->_numberOfCorrectCachedPredictions - v7 + 32 * v7;
  v9 = self->_numberOfCachedPredictions - v8 + 32 * v8;
  v10 = self->_numberOfCachedHighConfidencePredictions - v9 + 32 * v9;
  v11 = self->_numberOfCachedMediumConfidencePredictions - v10 + 32 * v10;
  v12 = self->_numberOfCachedLowConfidencePredictions - v11 + 32 * v11;
  v13 = self->_numberOfShadowEventTop1CacheHits - v12 + 32 * v12;
  v14 = self->_numberOfShadowEventTop2CacheHits - v13 + 32 * v13;
  v15 = self->_numberOfShadowEventTop4CacheHits - v14 + 32 * v14;
  v16 = self->_numberOfShadowEventTop8CacheHits - v15 + 32 * v15;
  v17 = self->_numberOfShadowEventHighConfidenceCacheHits - v16 + 32 * v16;
  v18 = self->_numberOfShadowEventMediumConfidenceCacheHits - v17 + 32 * v17;
  v19 = self->_numberOfShadowEventLowConfidenceCacheHits - v18 + 32 * v18;
  v20 = self->_numberOfShadowEventCacheHits - v19 + 32 * v19;
  v21 = self->_numberOfShadowEvents - v20 + 32 * v20;
  v22 = self->_numberOfPredictionCacheRefreshes - v21 + 32 * v21;
  return self->_sumOfShadowEventCacheHitReciprocalRanks - v22 + 32 * v22;
}

- (void)precisionAtTop1CachedPrediction
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _numberOfCorrectTop1CachedPrediction != 0 while _numberOfCachedPredictions == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)precisionAtTop2CachedPredictions
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _numberOfCorrectTop2CachedPrediction != 0 while _numberOfCachedPredictions == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)precisionAtTop4CachedPredictions
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _numberOfCorrectTop4CachedPrediction != 0 while _numberOfCachedPredictions == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)precisionAtTop8CachedPredictions
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _numberOfCorrectTop8CachedPrediction != 0 while _numberOfCachedPredictions == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)precisionOfHighConfidenceCachedPredictions
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _numberOfCorrectHighConfidenceCachedPredictions != 0 while _numberOfCachedHighConfidencePredictions == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)precisionOfMediumConfidenceCachedPredictions
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _numberOfCorrectMediumConfidenceCachedPredictions != 0 while _numberOfCachedMediumConfidencePredictions == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)precisionOfLowConfidenceCachedPredictions
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _numberOfCorrectLowConfidenceCachedPredictions != 0 while _numberOfCachedLowConfidencePredictions == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)precisionAllCachedPredictions
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _numberOfCorrectCachedPrediction != 0 while _numberOfCachedPredictions == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)recallAtTop1CachedPrediction
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _numberOfShadowEventTop1CacheHits != 0 while _numberOfShadowEvents == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)recallAtTop2CachedPredictions
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _numberOfShadowEventTop2CacheHits != 0 while _numberOfShadowEvents == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)recallAtTop4CachedPredictions
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _numberOfShadowEventTop4CacheHits != 0 while _numberOfShadowEvents == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)recallAtTop8CachedPredictions
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _numberOfShadowEventTop8CacheHits != 0 while _numberOfShadowEvents == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)recallOfHighConfidenceCachedPredictions
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _numberOfShadowEventHighConfidenceCacheHits != 0 while _numberOfShadowEvents == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)recallOfMediumConfidenceCachedPredictions
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _numberOfShadowEventMediumConfidenceCacheHits != 0 while _numberOfShadowEvents == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)recallOfLowConfidenceCachedPredictions
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _numberOfShadowEventLowConfidenceCacheHits != 0 while _numberOfShadowEvents == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)recallAllCachedPredictions
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _numberOfShadowEventCacheHits != 0 while _numberOfShadowEvents == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)meanReciprocalRank
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12(&dword_1DEFC4000, self, a3, "%s: _sumOfShadowEventCacheHitReciprocalRanks != 0 while _numberOfShadowEventCacheHits == 0.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end