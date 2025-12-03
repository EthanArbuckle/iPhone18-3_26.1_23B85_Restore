@interface RTMetric
+ ($E278B6834D55977C8D8083A775B4AB36)event;
+ (id)binForNumber:(id)number bins:(id)bins;
+ (id)binsFromStart:(id)start toEnd:(id)end gap:(id)gap;
+ (id)exponentialBinsFromStart:(double)start toEnd:(double)end binCount:(unint64_t)count;
+ (id)metricName;
+ (id)supportedMetricKeys;
- (BOOL)setAllMetrics:(id)metrics error:(id *)error;
- (BOOL)submitMetricsWithError:(id *)error;
- (NSString)description;
- (RTMetric)initWithLoggingEnabled:(BOOL)enabled;
@end

@implementation RTMetric

+ (id)metricName
{
  v10 = *MEMORY[0x277D85DE8];
  event = [objc_opt_class() event];
  if (event)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:event encoding:1];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "%@, cannot get metric name for a nil eventName", &v8, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (RTMetric)initWithLoggingEnabled:(BOOL)enabled
{
  v9.receiver = self;
  v9.super_class = RTMetric;
  v4 = [(RTMetric *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_loggingEnabled = enabled;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    metrics = v5->_metrics;
    v5->_metrics = dictionary;

    v5->_submitted = 0;
  }

  return v5;
}

+ ($E278B6834D55977C8D8083A775B4AB36)event
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)supportedMetricKeys
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)binForNumber:(id)number bins:(id)bins
{
  numberCopy = number;
  binsCopy = bins;
  v7 = binsCopy;
  if (!numberCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      v25 = 0;
      goto LABEL_19;
    }

    v34 = 0;
    v23 = "Invalid parameter not satisfying: number";
    v24 = &v34;
LABEL_23:
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, v23, v24, 2u);
    goto LABEL_13;
  }

  if (![binsCopy count])
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v33 = 0;
    v23 = "Invalid parameter not satisfying: bins.count > 0";
    v24 = &v33;
    goto LABEL_23;
  }

  v8 = [v7 count];
  v9 = v8 - 1;
  if (v8 == 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = (v10 + v9) >> 1;
      v12 = [v7 objectAtIndexedSubscript:v11];
      [v12 doubleValue];
      v14 = v13;
      [numberCopy doubleValue];
      v16 = v15;

      if (v14 >= v16)
      {
        v17 = [v7 objectAtIndexedSubscript:(v10 + v9) >> 1];
        [v17 doubleValue];
        v19 = v18;
        [numberCopy doubleValue];
        v21 = v20;

        v9 = (v10 + v9) >> 1;
        if (v19 <= v21)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v11 + 1;
      }
    }

    while (v10 < v9);
    v11 = (v9 + v10) >> 1;
  }

LABEL_15:
  [numberCopy doubleValue];
  v27 = v26;
  v28 = [v7 objectAtIndexedSubscript:v11];
  [v28 doubleValue];
  v30 = v29;

  if (v27 >= v30)
  {
    v31 = v11 + 1;
  }

  else
  {
    v31 = v11;
  }

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
LABEL_19:

  return v25;
}

+ (id)binsFromStart:(id)start toEnd:(id)end gap:(id)gap
{
  startCopy = start;
  endCopy = end;
  gapCopy = gap;
  v10 = gapCopy;
  if (!startCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v24 = 0;
    v19 = "Invalid parameter not satisfying: start";
    v20 = &v24;
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
    goto LABEL_14;
  }

  if (!endCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v23 = 0;
    v19 = "Invalid parameter not satisfying: end";
    v20 = &v23;
    goto LABEL_13;
  }

  if (!gapCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = 0;
      v19 = "Invalid parameter not satisfying: gap";
      v20 = &v22;
      goto LABEL_13;
    }

LABEL_14:

    array = 0;
    goto LABEL_15;
  }

  array = [MEMORY[0x277CBEB18] array];
  [startCopy doubleValue];
  v13 = v12;
  [endCopy doubleValue];
  if (v13 <= v14)
  {
    do
    {
      v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      [array addObject:v15];

      [v10 doubleValue];
      v13 = v13 + v16;
      [endCopy doubleValue];
    }

    while (v13 <= v17);
  }

LABEL_15:

  return array;
}

+ (id)exponentialBinsFromStart:(double)start toEnd:(double)end binCount:(unint64_t)count
{
  startCopy = start;
  v7 = pow(end / start, 1.0 / count);
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:count + 1];
  v9 = 0;
  do
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:startCopy];
    [v8 addObject:v10];

    startCopy = v7 * startCopy;
    ++v9;
  }

  while (v9 <= count);

  return v8;
}

- (BOOL)submitMetricsWithError:(id *)error
{
  v57[1] = *MEMORY[0x277D85DE8];
  if (error)
  {
    event = [objc_opt_class() event];
    metricName = [objc_opt_class() metricName];
    if (metricName)
    {
      if (self->_submitted)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"metric, %@, has already been submitted", metricName];
        v9 = MEMORY[0x277CCA9B8];
        v10 = *MEMORY[0x277D01448];
        v54 = *MEMORY[0x277CCA450];
        v55 = v8;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v12 = [v9 errorWithDomain:v10 code:0 userInfo:v11];

        v13 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v42 = NSStringFromSelector(a2);
          *buf = 138412546;
          v47 = v42;
          v48 = 2112;
          v49 = v12;
          _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
        }

        v14 = v12;
        *error = v12;

        v15 = 0;
      }

      else
      {
        v21 = MEMORY[0x277CBEB98];
        allKeys = [(NSMutableDictionary *)self->_metrics allKeys];
        v8 = [v21 setWithArray:allKeys];

        v23 = MEMORY[0x277CBEB98];
        supportedMetricKeys = [objc_opt_class() supportedMetricKeys];
        v25 = [v23 setWithSet:supportedMetricKeys];

        v15 = [v8 isEqualToSet:v25];
        if (v15)
        {
          if (self->_loggingEnabled && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v26 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v27 = NSStringFromSelector(a2);
              metrics = self->_metrics;
              *buf = 138412802;
              v47 = v27;
              v48 = 2112;
              v49 = metricName;
              v50 = 2112;
              v51 = metrics;
              _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, submitting, %@, metrics, %@", buf, 0x20u);
            }
          }

          v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:event encoding:1];
          v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v29];
          AnalyticsSendEvent();

          self->_submitted = 1;
        }

        else
        {
          v31 = [MEMORY[0x277CBEB58] setWithSet:v8];
          [v31 minusSet:v25];
          v32 = [MEMORY[0x277CBEB58] setWithSet:v25];
          [v32 minusSet:v8];
          v45 = v31;
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"metric keys set does not match with keys that metric, %@, supports.  Extra keys, %@, missing keys, %@", metricName, v31, v32];
          v34 = MEMORY[0x277CCA9B8];
          v35 = *MEMORY[0x277D01448];
          v52 = *MEMORY[0x277CCA450];
          v53 = v33;
          v44 = v33;
          v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          v37 = [v34 errorWithDomain:v35 code:7 userInfo:v36];

          v38 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v43 = NSStringFromSelector(a2);
            *buf = 138412546;
            v47 = v43;
            v48 = 2112;
            v49 = v37;
            _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
          }

          v39 = v37;
          *error = v37;
        }
      }
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D01448];
      v56 = *MEMORY[0x277CCA450];
      v57[0] = @"metricName cannot be nil";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
      v8 = [v16 errorWithDomain:v17 code:7 userInfo:v18];

      v19 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v41 = NSStringFromSelector(a2);
        *buf = 138412546;
        v47 = v41;
        v48 = 2112;
        v49 = v8;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v20 = v8;
      v15 = 0;
      *error = v8;
    }
  }

  else
  {
    metricName = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(metricName, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, metricName, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)setAllMetrics:(id)metrics error:(id *)error
{
  v43[1] = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  v8 = metricsCopy;
  if (error)
  {
    if (metricsCopy)
    {
      metricName = [objc_opt_class() metricName];
      if (metricName)
      {
        v10 = MEMORY[0x277CBEB98];
        allKeys = [v8 allKeys];
        v12 = [v10 setWithArray:allKeys];

        supportedMetricKeys = [objc_opt_class() supportedMetricKeys];
        v14 = [v12 isSubsetOfSet:supportedMetricKeys];
        if (v14)
        {
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __32__RTMetric_setAllMetrics_error___block_invoke;
          v35[3] = &unk_2788C5890;
          v35[4] = self;
          [v8 enumerateKeysAndObjectsUsingBlock:v35];
        }

        else
        {
          v22 = [MEMORY[0x277CBEB58] setWithSet:v12];
          [v22 minusSet:supportedMetricKeys];
          v34 = v22;
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"metric keys contains keys that metric, %@, does not support.  Extra keys, %@", metricName, v22];
          v24 = MEMORY[0x277CCA9B8];
          v25 = *MEMORY[0x277D01448];
          v36 = *MEMORY[0x277CCA450];
          v37 = v23;
          v33 = v23;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v27 = [v24 errorWithDomain:v25 code:7 userInfo:v26];

          v28 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v32 = NSStringFromSelector(a2);
            *buf = 138412546;
            v39 = v32;
            v40 = 2112;
            v41 = v27;
            _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
          }

          v29 = v27;
          *error = v27;
        }
      }

      else
      {
        v17 = MEMORY[0x277CCA9B8];
        v18 = *MEMORY[0x277D01448];
        v42 = *MEMORY[0x277CCA450];
        v43[0] = @"cannot set all metrics when metricName is nil";
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
        v12 = [v17 errorWithDomain:v18 code:7 userInfo:v19];

        v20 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v31 = NSStringFromSelector(a2);
          *buf = 138412546;
          v39 = v31;
          v40 = 2112;
          v41 = v12;
          _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
        }

        v21 = v12;
        v14 = 0;
        *error = v12;
      }
    }

    else
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: metrics", buf, 2u);
      }

      _RTErrorInvalidParameterCreate(@"metrics");
      *error = v14 = 0;
    }
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  metricName = [objc_opt_class() metricName];
  metrics = [(RTMetric *)self metrics];
  v6 = [v3 stringWithFormat:@"name, %@, metrics, %@", metricName, metrics];

  return v6;
}

@end