@interface CRPerformanceStatistics
+ (uint64_t)_canEnableRecentPeakReset;
- (CRPerformanceStatistics)initWithDictionary:(id)a3;
- (CRPerformanceStatistics)initWithName:(id)a3 measureRecentPeak:(BOOL)a4;
- (CRPerformanceStatistics)initWithStatistics:(id)a3;
- (id)_startMeasurement;
- (id)description;
- (id)dictionary;
- (void)_addMetricWithKey:(void *)a3 name:(void *)a4 unit:(uint64_t)a5 denominator:(double)a6 pcMetricID:;
- (void)_endMeasurement:(id)a3;
- (void)_evaluateEndedSession:(double)a3 duration:;
- (void)addStatistics:(id)a3;
- (void)measureBlock:(id)a3;
@end

@implementation CRPerformanceStatistics

- (CRPerformanceStatistics)initWithName:(id)a3 measureRecentPeak:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CRPerformanceStatistics;
  v8 = [(CRPerformanceStatistics *)&v12 init];
  if (v8)
  {
    v9 = objc_opt_new();
    [(CRPerformanceStatistics *)v8 setMetrics:v9];

    objc_storeStrong(&v8->_name, a3);
    if (v4)
    {
      canEnableRecentPeak = +[CRPerformanceStatistics _canEnableRecentPeakReset];
    }

    else
    {
      canEnableRecentPeak = 0;
    }

    v8->_measureRecentPeak = canEnableRecentPeak;
    [(CRPerformanceStatistics *)v8 _addMetricWithKey:@"Execution Time" name:@"ms" unit:0 denominator:1.0 pcMetricID:?];
    [(CRPerformanceStatistics *)v8 _addMetricWithKey:@"CPU Time" name:@"ms" unit:0x63707574696D6500 denominator:1000000.0 pcMetricID:?];
    [(CRPerformanceStatistics *)v8 _addMetricWithKey:@"Lifetime Mem Peak" name:@"MB" unit:0x6C6966657065616BLL denominator:1000.0 pcMetricID:?];
    [(CRPerformanceStatistics *)v8 _addMetricWithKey:@"Delta Mem" name:@"MB" unit:0x6D656D64656C7461 denominator:1000.0 pcMetricID:?];
    if (v8->_measureRecentPeak)
    {
      [(CRPerformanceStatistics *)v8 _addMetricWithKey:@"Delta Mem Peak" name:@"MB" unit:0x7065616B646C7461 denominator:1000.0 pcMetricID:?];
      [(CRPerformanceStatistics *)v8 _addMetricWithKey:@"Recent Mem Peak" name:@"MB" unit:0x72636E747065616BLL denominator:1000.0 pcMetricID:?];
    }
  }

  return v8;
}

+ (uint64_t)_canEnableRecentPeakReset
{
  objc_opt_self();
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"com.apple.CoreRecognition.enable_recent_peak_reset"];

  return v1;
}

- (void)_addMetricWithKey:(void *)a3 name:(void *)a4 unit:(uint64_t)a5 denominator:(double)a6 pcMetricID:
{
  v18 = a3;
  v11 = a4;
  v12 = MEMORY[0x1E695DF90];
  v13 = a2;
  v14 = [a1 metrics];
  v15 = [v12 dictionaryWithDictionary:v14];

  if (a5)
  {
    [CRPerformanceMetric pcMetricWithDisplayName:v18 pcMetricID:a5 unit:v11 denominator:v13 serializationKey:a6];
  }

  else
  {
    [CRPerformanceMetric metricWithDisplayName:v18 unit:v11 denominator:v13 serializationKey:a6];
  }
  v16 = ;
  [v15 setObject:v16 forKeyedSubscript:v13];

  v17 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v15];
  [a1 setMetrics:v17];
}

- (CRPerformanceStatistics)initWithStatistics:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 copy];
  v7 = -[CRPerformanceStatistics initWithName:measureRecentPeak:](self, "initWithName:measureRecentPeak:", v6, [v4 measureRecentPeak]);

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    v9 = [v4 metrics];
    v10 = [v8 initWithDictionary:v9 copyItems:1];
    [(CRPerformanceStatistics *)v7 setMetrics:v10];
  }

  return v7;
}

- (CRPerformanceStatistics)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"CRPerformanceStatisticsName"];
  v6 = [v4 objectForKey:@"CRPerformanceMetricMeasureRecentPeak"];
  if ([v6 BOOLValue])
  {
    canEnableRecentPeak = +[CRPerformanceStatistics _canEnableRecentPeakReset];
  }

  else
  {
    canEnableRecentPeak = 0;
  }

  v8 = [(CRPerformanceStatistics *)self initWithName:v5 measureRecentPeak:canEnableRecentPeak];
  if (v8)
  {
    v9 = [v4 objectForKeyedSubscript:@"CRPerformanceStatisticsMetrics"];
    v10 = objc_opt_new();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__CRPerformanceStatistics_initWithDictionary___block_invoke;
    v13[3] = &unk_1E7BC3518;
    v14 = v10;
    v11 = v10;
    [v9 enumerateKeysAndObjectsUsingBlock:v13];
    [(CRPerformanceStatistics *)v8 setMetrics:v11];
  }

  return v8;
}

void __46__CRPerformanceStatistics_initWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[CRPerformanceMetric alloc] initWithDictionary:v5 key:v6];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)description
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__15;
  v16 = __Block_byref_object_dispose__15;
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CRPerformanceStatistics *)self name];
  v5 = [(CRPerformanceStatistics *)self metrics];
  v6 = [v5 allValues];
  v7 = [v6 objectAtIndexedSubscript:0];
  v17 = [v3 stringWithFormat:@"\n===========%@ (# Samples = %ld)===========\n", v4, objc_msgSend(v7, "numSamples")];

  v8 = [(CRPerformanceStatistics *)self metrics];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__CRPerformanceStatistics_description__block_invoke;
  v11[3] = &unk_1E7BC3540;
  v11[4] = &v12;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __38__CRPerformanceStatistics_description__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = a3;
  if ([v19 numSamples] >= 1)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [v19 displayName];
    v6 = [v19 unit];
    v7 = [v5 stringByAppendingFormat:@" (%@)", v6];
    v8 = [v7 cStringUsingEncoding:4];
    [v19 mean];
    v10 = v9;
    [v19 stdDev];
    v12 = v11;
    [v19 first];
    v14 = v13;
    [v19 max];
    v16 = [v4 stringByAppendingFormat:@"%*s: %.3f (σ = %.3f | first = %.3f | max = %.3f)\n", 22, v8, v10, v12, v14, v15];
    v17 = *(*(a1 + 32) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }
}

- (void)measureBlock:(id)a3
{
  v4 = a3;
  v5 = pc_session_create();
  v6 = [MEMORY[0x1E696AE30] processInfo];
  [v6 processIdentifier];
  pc_session_set_procpid();

  if (self->_measureRecentPeak)
  {
    pc_session_add_metric();
    pc_session_add_metric();
  }

  v9 = objc_opt_new();
  pc_session_begin();
  v4[2](v4);

  pc_session_end();
  v7 = objc_opt_new();
  [v7 timeIntervalSinceDate:v9];
  [(CRPerformanceStatistics *)self _evaluateEndedSession:v5 duration:v8];

  pc_session_destroy();
}

- (void)_evaluateEndedSession:(double)a3 duration:
{
  if (a1)
  {
    v5 = a1;
    objc_sync_enter(v5);
    v6 = [v5 metrics];
    v7 = [v6 objectForKeyedSubscript:@"CRPerformanceMetricExecutionTime"];
    [v7 addSample:a3 * 1000.0];

    v8 = [v5 metrics];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__CRPerformanceStatistics__evaluateEndedSession_duration___block_invoke;
    v9[3] = &__block_descriptor_40_e46_v32__0__NSString_8__CRPerformanceMetric_16_B24l;
    v9[4] = a2;
    [v8 enumerateKeysAndObjectsUsingBlock:v9];

    objc_sync_exit(v5);
  }
}

- (void)addStatistics:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 metrics];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CRPerformanceStatistics_addStatistics___block_invoke;
  v7[3] = &unk_1E7BC3568;
  v7[4] = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];

  objc_sync_exit(v5);
}

void __41__CRPerformanceStatistics_addStatistics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) metrics];
  v7 = [v6 objectForKeyedSubscript:v10];

  if (v7)
  {
    v8 = [*(a1 + 32) metrics];
    v9 = [v8 objectForKeyedSubscript:v10];
    [v9 mergeMetric:v5];
  }
}

- (id)dictionary
{
  v3 = objc_opt_new();
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"CRPerformanceStatisticsName"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_measureRecentPeak];
  [v4 setObject:v6 forKey:@"CRPerformanceMetricMeasureRecentPeak"];

  v7 = objc_opt_new();
  v8 = [(CRPerformanceStatistics *)self metrics];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__CRPerformanceStatistics_dictionary__block_invoke;
  v12[3] = &unk_1E7BC3568;
  v13 = v7;
  v9 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:v12];

  [v4 setObject:v9 forKeyedSubscript:@"CRPerformanceStatisticsMetrics"];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v4];

  return v10;
}

void __37__CRPerformanceStatistics_dictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 dictionary];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __58__CRPerformanceStatistics__evaluateEndedSession_duration___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 pcMetricID])
  {
    [v3 pcMetricID];
    pc_session_get_value();
    [v3 denominator];
    [v3 addSample:0.0 / v4];
  }
}

- (id)_startMeasurement
{
  v3 = pc_session_create();
  v4 = [MEMORY[0x1E696AE30] processInfo];
  [v4 processIdentifier];
  pc_session_set_procpid();

  if (self->_measureRecentPeak)
  {
    pc_session_add_metric();
    pc_session_add_metric();
  }

  v5 = objc_opt_new();
  pc_session_begin();
  v6 = objc_opt_new();
  [v6 setSession:v3];
  [v6 setStart:v5];

  return v6;
}

- (void)_endMeasurement:(id)a3
{
  v4 = a3;
  [v4 session];
  pc_session_end();
  v5 = [v4 session];
  v6 = objc_opt_new();
  v7 = [v4 start];
  [v6 timeIntervalSinceDate:v7];
  [(CRPerformanceStatistics *)self _evaluateEndedSession:v5 duration:v8];

  [v4 session];

  pc_session_destroy();
}

@end