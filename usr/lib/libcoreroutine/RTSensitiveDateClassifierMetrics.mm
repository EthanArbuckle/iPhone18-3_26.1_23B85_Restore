@interface RTSensitiveDateClassifierMetrics
- (RTSensitiveDateClassifierMetrics)init;
- (id)collectMetricsWithLookbackWindowDate:(id)date;
- (void)addCurrentLocation:(id)location fromSource:(int64_t)source;
- (void)processSignal:(int64_t)signal date:(id)date;
- (void)setup;
- (void)submitMetricsWithLookbackWindowDate:(id)date;
- (void)updateWifiAccessPointCount:(unint64_t)count;
@end

@implementation RTSensitiveDateClassifierMetrics

- (RTSensitiveDateClassifierMetrics)init
{
  v5.receiver = self;
  v5.super_class = RTSensitiveDateClassifierMetrics;
  v2 = [(RTSensitiveDateClassifierMetrics *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RTSensitiveDateClassifierMetrics *)v2 setup];
  }

  return v3;
}

- (void)setup
{
  v3 = [MEMORY[0x277CBEAA8] now];
  startDate = self->_startDate;
  self->_startDate = v3;

  self->_currentLocationSignalEnvironmentType = 0;
  self->_lookbackWindowCategory = 6;
  self->_currentLocationAvailability = 0;
  *&self->_parkedCarSignalAvailability = xmmword_230AFE2A0;
}

- (void)processSignal:(int64_t)signal date:(id)date
{
  dateCopy = date;
  if (signal == 4)
  {
    [(RTSensitiveDateClassifierMetrics *)self setParkedCarSignalAvailability:1];
  }

  gatingSignalDate = self->_gatingSignalDate;
  if (!gatingSignalDate || [(NSDate *)gatingSignalDate compare:dateCopy]== NSOrderedAscending)
  {
    objc_storeStrong(&self->_gatingSignalDate, date);
    self->_lookbackWindowCategory = signal;
  }
}

- (void)addCurrentLocation:(id)location fromSource:(int64_t)source
{
  locationCopy = location;
  if (locationCopy)
  {
    [(RTSensitiveDateClassifierMetrics *)self setCurrentLocationAvailability:source];
    -[RTSensitiveDateClassifierMetrics setCurrentLocationSignalEnvironmentType:](self, "setCurrentLocationSignalEnvironmentType:", [locationCopy signalEnvironmentType]);
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", v8, 2u);
    }
  }
}

- (void)updateWifiAccessPointCount:(unint64_t)count
{
  v4 = [(RTSensitiveDateClassifierMetrics *)self wifiAPCount]+ count;

  [(RTSensitiveDateClassifierMetrics *)self setWifiAPCount:v4];
}

- (id)collectMetricsWithLookbackWindowDate:(id)date
{
  v4 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  date = [v4 date];
  [date timeIntervalSinceDate:self->_startDate];
  v8 = v7;

  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:dateCopy];
  v11 = v10;

  v12 = objc_opt_new();
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RTSensitiveDateClassifierMetrics lookbackWindowCategory](self, "lookbackWindowCategory")}];
  [v12 setObject:v13 forKeyedSubscript:@"_category"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RTSensitiveDateClassifierMetrics currentLocationAvailability](self, "currentLocationAvailability")}];
  [v12 setObject:v14 forKeyedSubscript:@"_currentLocationAvailability"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTSensitiveDateClassifierMetrics currentLocationSignalEnvironmentType](self, "currentLocationSignalEnvironmentType")}];
  [v12 setObject:v15 forKeyedSubscript:@"_currentLocationSignalEnvironment"];

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  [v12 setObject:v16 forKeyedSubscript:@"_latency"];

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RTSensitiveDateClassifierMetrics parkedCarSignalAvailability](self, "parkedCarSignalAvailability")}];
  [v12 setObject:v17 forKeyedSubscript:@"_parkedCarAvailability"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTSensitiveDateClassifierMetrics wifiAPCount](self, "wifiAPCount")}];
  [v12 setObject:v18 forKeyedSubscript:@"_numWifiAccessPoints"];

  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  [v12 setObject:v19 forKeyedSubscript:@"_lookbackWindowDuration"];

  return v12;
}

- (void)submitMetricsWithLookbackWindowDate:(id)date
{
  v6 = [(RTSensitiveDateClassifierMetrics *)self collectMetricsWithLookbackWindowDate:date];
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [v3 initWithCString:RTAnalyticsEventSensitiveDateClassifierMetrics encoding:1];
  log_analytics_submission(v4, v6);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v4];
  AnalyticsSendEvent();
}

@end