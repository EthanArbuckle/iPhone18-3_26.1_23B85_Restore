@interface RTLocationAwarenessMetrics
- (RTLocationAwarenessMetrics)init;
- (RTLocationAwarenessMetrics)initWithStartTimestamp:(id)timestamp heartbeatStats:(id)stats timeHistograms:(id)histograms intervalHistogram:(id)histogram;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RTLocationAwarenessMetrics

- (RTLocationAwarenessMetrics)initWithStartTimestamp:(id)timestamp heartbeatStats:(id)stats timeHistograms:(id)histograms intervalHistogram:(id)histogram
{
  v34 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  statsCopy = stats;
  histogramsCopy = histograms;
  histogramCopy = histogram;
  if (timestampCopy)
  {
    if (statsCopy)
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

    if (statsCopy)
    {
LABEL_3:
      if (histogramsCopy)
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

  if (histogramsCopy)
  {
LABEL_4:
    if (histogramCopy)
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

  if (!histogramCopy)
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
  if (histogramCopy && histogramsCopy && statsCopy && timestampCopy && v18)
  {
    v20 = [timestampCopy copy];
    startTimestamp = v19->_startTimestamp;
    v19->_startTimestamp = v20;

    v22 = [statsCopy copy];
    heartbeatStats = v19->_heartbeatStats;
    v19->_heartbeatStats = v22;

    v24 = [histogramsCopy copy];
    timeHistograms = v19->_timeHistograms;
    v19->_timeHistograms = v24;

    v26 = [histogramCopy copy];
    intervalHistogram = v19->_intervalHistogram;
    v19->_intervalHistogram = v26;
  }

  return v19;
}

- (RTLocationAwarenessMetrics)init
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [RTMetricManager metricForType:16];
  v5 = [RTMetricManager metricForType:15];
  v6 = [RTMetricManager metricForType:14];
  v7 = [(RTLocationAwarenessMetrics *)self initWithStartTimestamp:date heartbeatStats:v4 timeHistograms:v5 intervalHistogram:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  startTimestamp = [(RTLocationAwarenessMetrics *)self startTimestamp];
  heartbeatStats = [(RTLocationAwarenessMetrics *)self heartbeatStats];
  timeHistograms = [(RTLocationAwarenessMetrics *)self timeHistograms];
  intervalHistogram = [(RTLocationAwarenessMetrics *)self intervalHistogram];
  v9 = [v4 initWithStartTimestamp:startTimestamp heartbeatStats:heartbeatStats timeHistograms:timeHistograms intervalHistogram:intervalHistogram];

  return v9;
}

@end