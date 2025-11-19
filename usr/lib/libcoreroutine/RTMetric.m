@interface RTMetric
+ ($E278B6834D55977C8D8083A775B4AB36)event;
+ (id)binForNumber:(id)a3 bins:(id)a4;
+ (id)binsFromStart:(id)a3 toEnd:(id)a4 gap:(id)a5;
+ (id)exponentialBinsFromStart:(double)a3 toEnd:(double)a4 binCount:(unint64_t)a5;
+ (id)metricName;
+ (id)supportedMetricKeys;
- (BOOL)setAllMetrics:(id)a3 error:(id *)a4;
- (BOOL)submitMetricsWithError:(id *)a3;
- (NSString)description;
- (RTMetric)initWithLoggingEnabled:(BOOL)a3;
@end

@implementation RTMetric

+ (id)metricName
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() event];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v3 encoding:1];
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

- (RTMetric)initWithLoggingEnabled:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = RTMetric;
  v4 = [(RTMetric *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_loggingEnabled = a3;
    v6 = [MEMORY[0x277CBEB38] dictionary];
    metrics = v5->_metrics;
    v5->_metrics = v6;

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

+ (id)binForNumber:(id)a3 bins:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
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

  if (![v6 count])
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
      [v5 doubleValue];
      v16 = v15;

      if (v14 >= v16)
      {
        v17 = [v7 objectAtIndexedSubscript:(v10 + v9) >> 1];
        [v17 doubleValue];
        v19 = v18;
        [v5 doubleValue];
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
  [v5 doubleValue];
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

+ (id)binsFromStart:(id)a3 toEnd:(id)a4 gap:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v7)
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

  if (!v8)
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

  if (!v9)
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

    v11 = 0;
    goto LABEL_15;
  }

  v11 = [MEMORY[0x277CBEB18] array];
  [v7 doubleValue];
  v13 = v12;
  [v8 doubleValue];
  if (v13 <= v14)
  {
    do
    {
      v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      [v11 addObject:v15];

      [v10 doubleValue];
      v13 = v13 + v16;
      [v8 doubleValue];
    }

    while (v13 <= v17);
  }

LABEL_15:

  return v11;
}

+ (id)exponentialBinsFromStart:(double)a3 toEnd:(double)a4 binCount:(unint64_t)a5
{
  v6 = a3;
  v7 = pow(a4 / a3, 1.0 / a5);
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:a5 + 1];
  v9 = 0;
  do
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    [v8 addObject:v10];

    v6 = v7 * v6;
    ++v9;
  }

  while (v9 <= a5);

  return v8;
}

- (BOOL)submitMetricsWithError:(id *)a3
{
  v57[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = [objc_opt_class() event];
    v7 = [objc_opt_class() metricName];
    if (v7)
    {
      if (self->_submitted)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"metric, %@, has already been submitted", v7];
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
        *a3 = v12;

        v15 = 0;
      }

      else
      {
        v21 = MEMORY[0x277CBEB98];
        v22 = [(NSMutableDictionary *)self->_metrics allKeys];
        v8 = [v21 setWithArray:v22];

        v23 = MEMORY[0x277CBEB98];
        v24 = [objc_opt_class() supportedMetricKeys];
        v25 = [v23 setWithSet:v24];

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
              v49 = v7;
              v50 = 2112;
              v51 = metrics;
              _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, submitting, %@, metrics, %@", buf, 0x20u);
            }
          }

          v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v6 encoding:1];
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
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"metric keys set does not match with keys that metric, %@, supports.  Extra keys, %@, missing keys, %@", v7, v31, v32];
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
          *a3 = v37;
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
      *a3 = v8;
    }
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)setAllMetrics:(id)a3 error:(id *)a4
{
  v43[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    if (v7)
    {
      v9 = [objc_opt_class() metricName];
      if (v9)
      {
        v10 = MEMORY[0x277CBEB98];
        v11 = [v8 allKeys];
        v12 = [v10 setWithArray:v11];

        v13 = [objc_opt_class() supportedMetricKeys];
        v14 = [v12 isSubsetOfSet:v13];
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
          [v22 minusSet:v13];
          v34 = v22;
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"metric keys contains keys that metric, %@, does not support.  Extra keys, %@", v9, v22];
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
          *a4 = v27;
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
        *a4 = v12;
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
      *a4 = v14 = 0;
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
  v4 = [objc_opt_class() metricName];
  v5 = [(RTMetric *)self metrics];
  v6 = [v3 stringWithFormat:@"name, %@, metrics, %@", v4, v5];

  return v6;
}

@end