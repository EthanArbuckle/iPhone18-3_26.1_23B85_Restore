@interface RTLocationAwarenessMetrics
- (RTLocationAwarenessMetrics)init;
- (RTLocationAwarenessMetrics)initWithStartTimestamp:(id)a3 heartbeatStats:(id)a4 timeHistograms:(id)a5 intervalHistogram:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RTLocationAwarenessMetrics

- (RTLocationAwarenessMetrics)initWithStartTimestamp:(id)a3 heartbeatStats:(id)a4 timeHistograms:(id)a5 intervalHistogram:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[RTLocationAwarenessMetrics initWithStartTimestamp:heartbeatStats:timeHistograms:intervalHistogram:]";
      v32 = 1024;
      v33 = 329;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startTimestamp (in %s:%d)", buf, 0x12u);
    }

    if (v11)
    {
LABEL_3:
      if (v12)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v31 = "[RTLocationAwarenessMetrics initWithStartTimestamp:heartbeatStats:timeHistograms:intervalHistogram:]";
    v32 = 1024;
    v33 = 330;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: heartbeatStats (in %s:%d)", buf, 0x12u);
  }

  if (v12)
  {
LABEL_4:
    if (v13)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v31 = "[RTLocationAwarenessMetrics initWithStartTimestamp:heartbeatStats:timeHistograms:intervalHistogram:]";
    v32 = 1024;
    v33 = 331;
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: timeHistograms (in %s:%d)", buf, 0x12u);
  }

  if (!v13)
  {
LABEL_15:
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[RTLocationAwarenessMetrics initWithStartTimestamp:heartbeatStats:timeHistograms:intervalHistogram:]";
      v32 = 1024;
      v33 = 332;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: intervalHistogram (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_18:
  v29.receiver = self;
  v29.super_class = RTLocationAwarenessMetrics;
  v18 = [(RTLocationAwarenessMetrics *)&v29 init];
  v19 = v18;
  if (v13 && v12 && v11 && v10 && v18)
  {
    v20 = [v10 copy];
    startTimestamp = v19->_startTimestamp;
    v19->_startTimestamp = v20;

    v22 = [v11 copy];
    heartbeatStats = v19->_heartbeatStats;
    v19->_heartbeatStats = v22;

    v24 = [v12 copy];
    timeHistograms = v19->_timeHistograms;
    v19->_timeHistograms = v24;

    v26 = [v13 copy];
    intervalHistogram = v19->_intervalHistogram;
    v19->_intervalHistogram = v26;
  }

  return v19;
}

- (RTLocationAwarenessMetrics)init
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [RTMetricManager metricForType:16];
  v5 = [RTMetricManager metricForType:15];
  v6 = [RTMetricManager metricForType:14];
  v7 = [(RTLocationAwarenessMetrics *)self initWithStartTimestamp:v3 heartbeatStats:v4 timeHistograms:v5 intervalHistogram:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(RTLocationAwarenessMetrics *)self startTimestamp];
  v6 = [(RTLocationAwarenessMetrics *)self heartbeatStats];
  v7 = [(RTLocationAwarenessMetrics *)self timeHistograms];
  v8 = [(RTLocationAwarenessMetrics *)self intervalHistogram];
  v9 = [v4 initWithStartTimestamp:v5 heartbeatStats:v6 timeHistograms:v7 intervalHistogram:v8];

  return v9;
}

@end