@interface RTBlueSkyDailyMetrics
- (BOOL)shouldSubmit;
- (RTBlueSkyDailyMetrics)initWithDefaultsManager:(id)manager;
- (id)description;
- (void)create;
- (void)increaseCountForKey:(id)key;
- (void)reset;
- (void)submit;
@end

@implementation RTBlueSkyDailyMetrics

- (RTBlueSkyDailyMetrics)initWithDefaultsManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v13.receiver = self;
    v13.super_class = RTBlueSkyDailyMetrics;
    v6 = [(RTBlueSkyDailyMetrics *)&v13 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_defaultsManager, manager);
      v8 = objc_opt_new();
      metrics = v7->_metrics;
      v7->_metrics = v8;
    }

    [(RTBlueSkyDailyMetrics *)v7 reset];
    self = v7;
    selfCopy = self;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)reset
{
  metrics = [(RTBlueSkyDailyMetrics *)self metrics];
  [metrics removeAllObjects];

  defaultsManager = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [defaultsManager setObject:&unk_28459F528 forKey:@"BlueSkyDailyQualifiedPlaceInferences"];

  defaultsManager2 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [defaultsManager2 setObject:&unk_28459F528 forKey:@"BlueSkyDailyQualifiedPlaceInferencesSent"];

  defaultsManager3 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [defaultsManager3 setObject:&unk_28459F528 forKey:@"BlueSkyDailyQualifiedVisits"];

  defaultsManager4 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [defaultsManager4 setObject:&unk_28459F528 forKey:@"BlueSkyDailyQualifiedVisitsSent"];

  defaultsManager5 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [defaultsManager5 setObject:&unk_28459F528 forKey:@"BlueSkyDailyQualifiedVisitsOverLimit"];

  defaultsManager6 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [defaultsManager6 setObject:&unk_28459F528 forKey:@"BlueSkyDailyNumSyncsRequiringNoWait"];

  defaultsManager7 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [defaultsManager7 setObject:&unk_28459F528 forKey:@"BlueSkyDailyNumSyncsRequiring10SecWait"];

  defaultsManager8 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [defaultsManager8 setObject:&unk_28459F528 forKey:@"BlueSkyDailyNumSyncsRequiring20SecWait"];

  defaultsManager9 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [defaultsManager9 setObject:&unk_28459F528 forKey:@"BlueSkyDailyNumSyncsRequiring30SecWait"];

  defaultsManager10 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [defaultsManager10 setObject:&unk_28459F528 forKey:@"BlueSkyDailyNumSyncsRequiring1MinWait"];

  defaultsManager11 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [defaultsManager11 setObject:&unk_28459F528 forKey:@"BlueSkyDailyNumSyncsRequiring2MinWait"];

  defaultsManager12 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [defaultsManager12 setObject:&unk_28459F528 forKey:@"BlueSkyDailyNumSyncsRequiring5MinWait"];

  defaultsManager13 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [defaultsManager13 setObject:&unk_28459F528 forKey:@"BlueSkyDailyNumSyncsRequiring5MinPlusWait"];
}

- (void)create
{
  defaultsManager = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"BlueSkyDailyQualifiedPlaceInferences"];
  unsignedIntValue = [v4 unsignedIntValue];

  defaultsManager2 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v6 = [defaultsManager2 objectForKey:@"BlueSkyDailyQualifiedPlaceInferencesSent"];
  unsignedIntValue2 = [v6 unsignedIntValue];

  defaultsManager3 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v8 = [defaultsManager3 objectForKey:@"BlueSkyDailyQualifiedVisits"];
  unsignedIntValue3 = [v8 unsignedIntValue];

  defaultsManager4 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v10 = [defaultsManager4 objectForKey:@"BlueSkyDailyQualifiedVisitsSent"];
  unsignedIntValue4 = [v10 unsignedIntValue];

  defaultsManager5 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v13 = [defaultsManager5 objectForKey:@"BlueSkyDailyQualifiedVisitsOverLimit"];
  unsignedIntValue5 = [v13 unsignedIntValue];

  defaultsManager6 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v16 = [defaultsManager6 objectForKey:@"BlueSkyDailyNumSyncsRequiringNoWait"];
  unsignedIntValue6 = [v16 unsignedIntValue];

  defaultsManager7 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v19 = [defaultsManager7 objectForKey:@"BlueSkyDailyNumSyncsRequiring10SecWait"];
  unsignedIntValue7 = [v19 unsignedIntValue];

  defaultsManager8 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v22 = [defaultsManager8 objectForKey:@"BlueSkyDailyNumSyncsRequiring20SecWait"];
  unsignedIntValue8 = [v22 unsignedIntValue];

  defaultsManager9 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v25 = [defaultsManager9 objectForKey:@"BlueSkyDailyNumSyncsRequiring30SecWait"];
  unsignedIntValue9 = [v25 unsignedIntValue];

  defaultsManager10 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v28 = [defaultsManager10 objectForKey:@"BlueSkyDailyNumSyncsRequiring1MinWait"];
  unsignedIntValue10 = [v28 unsignedIntValue];

  defaultsManager11 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v30 = [defaultsManager11 objectForKey:@"BlueSkyDailyNumSyncsRequiring2MinWait"];
  unsignedIntValue11 = [v30 unsignedIntValue];

  defaultsManager12 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v32 = [defaultsManager12 objectForKey:@"BlueSkyDailyNumSyncsRequiring5MinWait"];
  unsignedIntValue12 = [v32 unsignedIntValue];

  defaultsManager13 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v34 = [defaultsManager13 objectForKey:@"BlueSkyDailyNumSyncsRequiring5MinPlusWait"];
  unsignedIntValue13 = [v34 unsignedIntValue];

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue];
  metrics = [(RTBlueSkyDailyMetrics *)self metrics];
  [metrics setObject:v35 forKeyedSubscript:@"numQualifiedPlaceInferences"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue2];
  metrics2 = [(RTBlueSkyDailyMetrics *)self metrics];
  [metrics2 setObject:v37 forKeyedSubscript:@"numQualifiedPlaceInferencesSent"];

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue3];
  metrics3 = [(RTBlueSkyDailyMetrics *)self metrics];
  [metrics3 setObject:v39 forKeyedSubscript:@"numQualifiedVisits"];

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue4];
  metrics4 = [(RTBlueSkyDailyMetrics *)self metrics];
  [metrics4 setObject:v41 forKeyedSubscript:@"numQualifiedVisitsSent"];

  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue5];
  metrics5 = [(RTBlueSkyDailyMetrics *)self metrics];
  [metrics5 setObject:v43 forKeyedSubscript:@"numQualifiedVisitsOverLimit"];

  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue6];
  metrics6 = [(RTBlueSkyDailyMetrics *)self metrics];
  [metrics6 setObject:v45 forKeyedSubscript:@"durationOfPendingSyncNoWait"];

  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue7];
  metrics7 = [(RTBlueSkyDailyMetrics *)self metrics];
  [metrics7 setObject:v47 forKeyedSubscript:@"durationOfPendingSyncUnder10Sec"];

  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue8];
  metrics8 = [(RTBlueSkyDailyMetrics *)self metrics];
  [metrics8 setObject:v49 forKeyedSubscript:@"durationOfPendingSyncUnder20Sec"];

  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue9];
  metrics9 = [(RTBlueSkyDailyMetrics *)self metrics];
  [metrics9 setObject:v51 forKeyedSubscript:@"durationOfPendingSyncUnder30Sec"];

  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue10];
  metrics10 = [(RTBlueSkyDailyMetrics *)self metrics];
  [metrics10 setObject:v53 forKeyedSubscript:@"durationOfPendingSyncUnder1Min"];

  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue11];
  metrics11 = [(RTBlueSkyDailyMetrics *)self metrics];
  [metrics11 setObject:v55 forKeyedSubscript:@"durationOfPendingSyncUnder2Min"];

  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue12];
  metrics12 = [(RTBlueSkyDailyMetrics *)self metrics];
  [metrics12 setObject:v57 forKeyedSubscript:@"durationOfPendingSyncUnder5Min"];

  v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue13];
  metrics13 = [(RTBlueSkyDailyMetrics *)self metrics];
  [metrics13 setObject:v67 forKeyedSubscript:@"durationOfPendingSyncOver5Min"];
}

- (BOOL)shouldSubmit
{
  defaultsManager = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"BlueSkyLastDailyMetricsSubmissonAttemptDate"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-90000.0];
    v5 = [v3 isAfterDate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)submit
{
  if ([(RTBlueSkyDailyMetrics *)self shouldSubmit])
  {
    [(RTBlueSkyDailyMetrics *)self create];
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = [v3 initWithCString:RTAnalyticsEventBlueSkySendDaily encoding:1];
    metrics = [(RTBlueSkyDailyMetrics *)self metrics];
    log_analytics_submission(v4, metrics);

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v4];
    metrics2 = [(RTBlueSkyDailyMetrics *)self metrics];
    AnalyticsSendEvent();
  }

  [(RTBlueSkyDailyMetrics *)self reset];
  defaultsManager = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v8 = [MEMORY[0x277CBEAA8] now];
  [defaultsManager setObject:v8 forKey:@"BlueSkyLastDailyMetricsSubmissonAttemptDate"];
}

- (void)increaseCountForKey:(id)key
{
  keyCopy = key;
  defaultsManager = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v6 = [defaultsManager objectForKey:keyCopy];
  unsignedIntValue = [v6 unsignedIntValue];

  defaultsManager2 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue + 1];
  [defaultsManager2 setObject:v8 forKey:keyCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  metrics = [(RTBlueSkyDailyMetrics *)self metrics];
  v5 = [v3 stringWithFormat:@"RTBlueSkyDailyMetrics, %lu, ", objc_msgSend(metrics, "count")];

  metrics2 = [(RTBlueSkyDailyMetrics *)self metrics];
  allKeys = [metrics2 allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__RTBlueSkyDailyMetrics_description__block_invoke;
  v12[3] = &unk_2788C4A48;
  v12[4] = self;
  v8 = v5;
  v13 = v8;
  [allKeys enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __36__RTBlueSkyDailyMetrics_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 metrics];
  v8 = [v5 valueForKey:v4];

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@, ", v4, v8];

  [v6 appendString:v7];
}

@end