@interface PPSValueConverter
- (BOOL)_allowConversionFromMetric:(id)a3 toMetric:(id)a4;
- (BOOL)_shouldConvertAtTimestamp:(double)a3;
- (BOOL)_shouldConvertEvent:(id)a3;
- (PPSValueConverter)initWithFilepath:(id)a3 andMetrics:(id)a4;
- (id)_category;
- (id)_convertEvent:(id)a3;
- (id)_convertValue:(id)a3 atTimestamp:(double)a4 usingMetric:(id)a5;
- (id)_latestHistory;
- (id)_latestMetricForMetricName:(id)a3;
- (id)_sourceMetricForMetricName:(id)a3;
- (id)_subsystem;
- (id)convertEventIfNecessary:(id)a3;
- (id)convertValueIfNeccesary:(id)a3 atTimestamp:(double)a4 usingMetric:(id)a5;
- (void)_performGeneration;
@end

@implementation PPSValueConverter

- (PPSValueConverter)initWithFilepath:(id)a3 andMetrics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PPSValueConverter;
  v8 = [(PPSValueConverter *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    filepath = v8->_filepath;
    v8->_filepath = v9;

    objc_storeStrong(&v8->_metrics, a4);
  }

  return v8;
}

- (id)convertEventIfNecessary:(id)a3
{
  v4 = a3;
  if (![(PPSValueConverter *)self _isInitialized])
  {
    [(PPSValueConverter *)self _performGeneration];
  }

  if ([(PPSValueConverter *)self _shouldConvertEvent:v4])
  {
    v5 = [(PPSValueConverter *)self _convertEvent:v4];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (id)convertValueIfNeccesary:(id)a3 atTimestamp:(double)a4 usingMetric:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (![(PPSValueConverter *)self _isInitialized])
  {
    [(PPSValueConverter *)self _performGeneration];
  }

  if ([(PPSValueConverter *)self _shouldConvertAtTimestamp:a4])
  {
    v10 = [(PPSValueConverter *)self _convertValue:v8 atTimestamp:v9 usingMetric:a4];
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  return v11;
}

- (id)_subsystem
{
  v2 = [(NSArray *)self->_metrics firstObject];
  v3 = [v2 subsystem];

  return v3;
}

- (id)_category
{
  v2 = [(NSArray *)self->_metrics firstObject];
  v3 = [v2 category];

  return v3;
}

- (id)_latestHistory
{
  timeline = self->_timeline;
  v3 = [(NSArray *)self->_sortedTimelineIntervals lastObject];
  v4 = [(NSMutableDictionary *)timeline objectForKeyedSubscript:v3];

  return v4;
}

- (id)_latestMetricForMetricName:(id)a3
{
  v4 = a3;
  v5 = [(PPSValueConverter *)self _latestHistory];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)_sourceMetricForMetricName:(id)a3
{
  v3 = [(NSDictionary *)self->_selectedHistory objectForKeyedSubscript:a3];

  return v3;
}

- (BOOL)_allowConversionFromMetric:(id)a3 toMetric:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 version];
  v8 = v7;
  [v6 version];
  if (v8 != v9)
  {
    v10 = [v5 unit];
    v11 = [v6 unit];
    if ([v10 isEqual:v11])
    {
    }

    else
    {
      v12 = [v5 unit];
      v13 = [v12 unit];
      v14 = [v6 unit];
      v15 = [v14 unit];
      v16 = [v13 isEqual:v15];

      if (!v16)
      {
        v17 = 1;
        goto LABEL_6;
      }
    }
  }

  v17 = 0;
LABEL_6:

  return v17;
}

- (id)_convertEvent:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 metricKeys];
  v6 = [v5 copy];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v4 metrics];
        v12 = [v11 objectForKeyedSubscript:v10];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 monotonicTimestamp];
          v13 = [(PPSValueConverter *)self _convertValue:v12 atTimestamp:v10 usingMetric:?];
          v14 = [v4 metrics];
          [v14 setObject:v13 forKeyedSubscript:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_convertValue:(id)a3 atTimestamp:(double)a4 usingMetric:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PPSValueConverter *)self _latestMetricForMetricName:v8];
  v10 = [(PPSValueConverter *)self _sourceMetricForMetricName:v8];
  if ([(PPSValueConverter *)self _allowConversionFromMetric:v10 toMetric:v9])
  {
    v11 = [v10 unit];
    v12 = [v9 unit];
    v18 = 0;
    v13 = PPSConvertValueWithPPSUnit(v7, v11, v12, &v18);
    v14 = v18;

    if (v13)
    {
      v15 = v13;
    }

    else if (v14)
    {
      v16 = PPSReaderLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PPSValueConverter _convertValue:v8 atTimestamp:v14 usingMetric:v16];
      }
    }
  }

  else
  {
    v13 = v7;
  }

  return v13;
}

- (void)_performGeneration
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, 5.778e-34);
  _os_log_debug_impl(&dword_25E225000, v6, OS_LOG_TYPE_DEBUG, "Done generating metric timeline for '%@::%@'", v5, 0x16u);
}

- (BOOL)_shouldConvertAtTimestamp:(double)a3
{
  v44 = *MEMORY[0x277D85DE8];
  if (!self->_sortedTimelineIntervals)
  {
    v5 = PPSReaderLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PPSValueConverter _shouldConvertAtTimestamp:v5];
    }

    v6 = [(NSMutableDictionary *)self->_timeline allKeys];
    v7 = [v6 sortedArrayUsingSelector:sel_compare_];
    sortedTimelineIntervals = self->_sortedTimelineIntervals;
    self->_sortedTimelineIntervals = v7;
  }

  if ([(NSMutableDictionary *)self->_timeline count]< 2)
  {
    goto LABEL_17;
  }

  v9 = [(NSArray *)self->_sortedTimelineIntervals lastObject];
  v10 = [v9 startDate];
  [v10 timeIntervalSince1970];
  v12 = v11 > a3;

  if (v12)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = self->_sortedTimelineIntervals;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v14)
    {
      v15 = *v34;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          v18 = [(PPSValueConverter *)self _latestInterval];
          v19 = v17 == v18;

          if (!v19)
          {
            v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:a3];
            v21 = [v17 containsDate:v20];

            if (v21)
            {
              v23 = PPSReaderLog();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                v28 = [v17 startDate];
                [v28 timeIntervalSince1970];
                v30 = v29;
                v31 = [v17 endDate];
                [v31 timeIntervalSince1970];
                *buf = 134218496;
                v38 = v30;
                v39 = 2048;
                v40 = v32;
                v41 = 2048;
                v42 = a3;
                _os_log_debug_impl(&dword_25E225000, v23, OS_LOG_TYPE_DEBUG, "Selecting build interval [%f, %f] for timestamp '%f' as active conversion region!", buf, 0x20u);
              }

              v24 = [(NSMutableDictionary *)self->_timeline objectForKeyedSubscript:v17];
              selectedHistory = self->_selectedHistory;
              self->_selectedHistory = v24;

              v22 = 1;
              goto LABEL_21;
            }
          }
        }

        v14 = [(NSArray *)v13 countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v22 = 0;
LABEL_21:
  }

  else
  {
LABEL_17:
    v22 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)_shouldConvertEvent:(id)a3
{
  v4 = a3;
  [v4 monotonicTimestamp];
  LOBYTE(self) = [(PPSValueConverter *)self _shouldConvertAtTimestamp:?];

  return self;
}

- (void)_convertValue:(uint64_t)a1 atTimestamp:(uint64_t)a2 usingMetric:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25E225000, log, OS_LOG_TYPE_ERROR, "Error while performing value conversion for metric name '%@' = %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end