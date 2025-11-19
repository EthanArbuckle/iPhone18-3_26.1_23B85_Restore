@interface RTBlueSkyDailyMetrics
- (BOOL)shouldSubmit;
- (RTBlueSkyDailyMetrics)initWithDefaultsManager:(id)a3;
- (id)description;
- (void)create;
- (void)increaseCountForKey:(id)a3;
- (void)reset;
- (void)submit;
@end

@implementation RTBlueSkyDailyMetrics

- (RTBlueSkyDailyMetrics)initWithDefaultsManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = RTBlueSkyDailyMetrics;
    v6 = [(RTBlueSkyDailyMetrics *)&v13 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_defaultsManager, a3);
      v8 = objc_opt_new();
      metrics = v7->_metrics;
      v7->_metrics = v8;
    }

    [(RTBlueSkyDailyMetrics *)v7 reset];
    self = v7;
    v10 = self;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)reset
{
  v3 = [(RTBlueSkyDailyMetrics *)self metrics];
  [v3 removeAllObjects];

  v4 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [v4 setObject:&unk_28459F528 forKey:@"BlueSkyDailyQualifiedPlaceInferences"];

  v5 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [v5 setObject:&unk_28459F528 forKey:@"BlueSkyDailyQualifiedPlaceInferencesSent"];

  v6 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [v6 setObject:&unk_28459F528 forKey:@"BlueSkyDailyQualifiedVisits"];

  v7 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [v7 setObject:&unk_28459F528 forKey:@"BlueSkyDailyQualifiedVisitsSent"];

  v8 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [v8 setObject:&unk_28459F528 forKey:@"BlueSkyDailyQualifiedVisitsOverLimit"];

  v9 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [v9 setObject:&unk_28459F528 forKey:@"BlueSkyDailyNumSyncsRequiringNoWait"];

  v10 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [v10 setObject:&unk_28459F528 forKey:@"BlueSkyDailyNumSyncsRequiring10SecWait"];

  v11 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [v11 setObject:&unk_28459F528 forKey:@"BlueSkyDailyNumSyncsRequiring20SecWait"];

  v12 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [v12 setObject:&unk_28459F528 forKey:@"BlueSkyDailyNumSyncsRequiring30SecWait"];

  v13 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [v13 setObject:&unk_28459F528 forKey:@"BlueSkyDailyNumSyncsRequiring1MinWait"];

  v14 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [v14 setObject:&unk_28459F528 forKey:@"BlueSkyDailyNumSyncsRequiring2MinWait"];

  v15 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [v15 setObject:&unk_28459F528 forKey:@"BlueSkyDailyNumSyncsRequiring5MinWait"];

  v16 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  [v16 setObject:&unk_28459F528 forKey:@"BlueSkyDailyNumSyncsRequiring5MinPlusWait"];
}

- (void)create
{
  v3 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v4 = [v3 objectForKey:@"BlueSkyDailyQualifiedPlaceInferences"];
  v66 = [v4 unsignedIntValue];

  v5 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v6 = [v5 objectForKey:@"BlueSkyDailyQualifiedPlaceInferencesSent"];
  v65 = [v6 unsignedIntValue];

  v7 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v8 = [v7 objectForKey:@"BlueSkyDailyQualifiedVisits"];
  v64 = [v8 unsignedIntValue];

  v9 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v10 = [v9 objectForKey:@"BlueSkyDailyQualifiedVisitsSent"];
  v11 = [v10 unsignedIntValue];

  v12 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v13 = [v12 objectForKey:@"BlueSkyDailyQualifiedVisitsOverLimit"];
  v14 = [v13 unsignedIntValue];

  v15 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v16 = [v15 objectForKey:@"BlueSkyDailyNumSyncsRequiringNoWait"];
  v17 = [v16 unsignedIntValue];

  v18 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v19 = [v18 objectForKey:@"BlueSkyDailyNumSyncsRequiring10SecWait"];
  v20 = [v19 unsignedIntValue];

  v21 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v22 = [v21 objectForKey:@"BlueSkyDailyNumSyncsRequiring20SecWait"];
  v23 = [v22 unsignedIntValue];

  v24 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v25 = [v24 objectForKey:@"BlueSkyDailyNumSyncsRequiring30SecWait"];
  v26 = [v25 unsignedIntValue];

  v27 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v28 = [v27 objectForKey:@"BlueSkyDailyNumSyncsRequiring1MinWait"];
  v63 = [v28 unsignedIntValue];

  v29 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v30 = [v29 objectForKey:@"BlueSkyDailyNumSyncsRequiring2MinWait"];
  v62 = [v30 unsignedIntValue];

  v31 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v32 = [v31 objectForKey:@"BlueSkyDailyNumSyncsRequiring5MinWait"];
  v61 = [v32 unsignedIntValue];

  v33 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v34 = [v33 objectForKey:@"BlueSkyDailyNumSyncsRequiring5MinPlusWait"];
  v60 = [v34 unsignedIntValue];

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v66];
  v36 = [(RTBlueSkyDailyMetrics *)self metrics];
  [v36 setObject:v35 forKeyedSubscript:@"numQualifiedPlaceInferences"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v65];
  v38 = [(RTBlueSkyDailyMetrics *)self metrics];
  [v38 setObject:v37 forKeyedSubscript:@"numQualifiedPlaceInferencesSent"];

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v64];
  v40 = [(RTBlueSkyDailyMetrics *)self metrics];
  [v40 setObject:v39 forKeyedSubscript:@"numQualifiedVisits"];

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v42 = [(RTBlueSkyDailyMetrics *)self metrics];
  [v42 setObject:v41 forKeyedSubscript:@"numQualifiedVisitsSent"];

  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  v44 = [(RTBlueSkyDailyMetrics *)self metrics];
  [v44 setObject:v43 forKeyedSubscript:@"numQualifiedVisitsOverLimit"];

  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
  v46 = [(RTBlueSkyDailyMetrics *)self metrics];
  [v46 setObject:v45 forKeyedSubscript:@"durationOfPendingSyncNoWait"];

  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
  v48 = [(RTBlueSkyDailyMetrics *)self metrics];
  [v48 setObject:v47 forKeyedSubscript:@"durationOfPendingSyncUnder10Sec"];

  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
  v50 = [(RTBlueSkyDailyMetrics *)self metrics];
  [v50 setObject:v49 forKeyedSubscript:@"durationOfPendingSyncUnder20Sec"];

  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
  v52 = [(RTBlueSkyDailyMetrics *)self metrics];
  [v52 setObject:v51 forKeyedSubscript:@"durationOfPendingSyncUnder30Sec"];

  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v63];
  v54 = [(RTBlueSkyDailyMetrics *)self metrics];
  [v54 setObject:v53 forKeyedSubscript:@"durationOfPendingSyncUnder1Min"];

  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v62];
  v56 = [(RTBlueSkyDailyMetrics *)self metrics];
  [v56 setObject:v55 forKeyedSubscript:@"durationOfPendingSyncUnder2Min"];

  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v61];
  v58 = [(RTBlueSkyDailyMetrics *)self metrics];
  [v58 setObject:v57 forKeyedSubscript:@"durationOfPendingSyncUnder5Min"];

  v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v60];
  v59 = [(RTBlueSkyDailyMetrics *)self metrics];
  [v59 setObject:v67 forKeyedSubscript:@"durationOfPendingSyncOver5Min"];
}

- (BOOL)shouldSubmit
{
  v2 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v3 = [v2 objectForKey:@"BlueSkyLastDailyMetricsSubmissonAttemptDate"];

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
    v5 = [(RTBlueSkyDailyMetrics *)self metrics];
    log_analytics_submission(v4, v5);

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v4];
    v7 = [(RTBlueSkyDailyMetrics *)self metrics];
    AnalyticsSendEvent();
  }

  [(RTBlueSkyDailyMetrics *)self reset];
  v9 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v8 = [MEMORY[0x277CBEAA8] now];
  [v9 setObject:v8 forKey:@"BlueSkyLastDailyMetricsSubmissonAttemptDate"];
}

- (void)increaseCountForKey:(id)a3
{
  v4 = a3;
  v5 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v6 = [v5 objectForKey:v4];
  v7 = [v6 unsignedIntValue];

  v9 = [(RTBlueSkyDailyMetrics *)self defaultsManager];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
  [v9 setObject:v8 forKey:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [(RTBlueSkyDailyMetrics *)self metrics];
  v5 = [v3 stringWithFormat:@"RTBlueSkyDailyMetrics, %lu, ", objc_msgSend(v4, "count")];

  v6 = [(RTBlueSkyDailyMetrics *)self metrics];
  v7 = [v6 allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__RTBlueSkyDailyMetrics_description__block_invoke;
  v12[3] = &unk_2788C4A48;
  v12[4] = self;
  v8 = v5;
  v13 = v8;
  [v7 enumerateObjectsUsingBlock:v12];

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