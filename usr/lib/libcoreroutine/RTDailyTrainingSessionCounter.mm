@interface RTDailyTrainingSessionCounter
- (BOOL)shouldSubmitMetrics;
- (RTDailyTrainingSessionCounter)initWithDefaultsManager:(id)a3;
- (id)description;
- (id)modeAndReasonFromCompoundKey:(id)a3;
- (void)createMetrics;
- (void)increaseCountForMode:(unint64_t)a3 reason:(unint64_t)a4;
- (void)reset;
- (void)submitMetrics;
@end

@implementation RTDailyTrainingSessionCounter

- (RTDailyTrainingSessionCounter)initWithDefaultsManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = RTDailyTrainingSessionCounter;
    v6 = [(RTDailyTrainingSessionCounter *)&v13 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_defaultsManager, a3);
      v8 = objc_opt_new();
      metrics = v7->_metrics;
      v7->_metrics = v8;
    }

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
  v3 = [(RTDailyTrainingSessionCounter *)self metrics];
  [v3 removeAllObjects];

  v9 = objc_opt_new();
  v4 = [(RTDailyTrainingSessionCounter *)self compoundKeyForMode:1 reason:1];
  [v9 setObject:&unk_2845A0938 forKey:v4];

  v5 = [(RTDailyTrainingSessionCounter *)self compoundKeyForMode:1 reason:2];
  [v9 setObject:&unk_2845A0938 forKey:v5];

  v6 = [(RTDailyTrainingSessionCounter *)self compoundKeyForMode:2 reason:1];
  [v9 setObject:&unk_2845A0938 forKey:v6];

  v7 = [(RTDailyTrainingSessionCounter *)self compoundKeyForMode:2 reason:2];
  [v9 setObject:&unk_2845A0938 forKey:v7];

  v8 = [(RTDailyTrainingSessionCounter *)self defaultsManager];
  [v8 setObject:v9 forKey:@"TrainDailyMetricsTrainingSessionCount"];
}

- (void)createMetrics
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(RTDailyTrainingSessionCounter *)self defaultsManager];
  v4 = [v3 objectForKey:@"TrainDailyMetricsTrainingSessionCount"];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(RTDailyTrainingSessionCounter *)self modeAndReasonFromCompoundKey:v10, v17];
        v12 = [v5 objectForKey:v10];
        v13 = objc_opt_new();
        v14 = [v11 firstObject];
        [v13 setObject:v14 forKey:@"trainingMode"];

        v15 = [v11 secondObject];
        [v13 setObject:v15 forKey:@"trainingReason"];

        [v13 setObject:v12 forKey:@"traningSessionCount"];
        v16 = [(RTDailyTrainingSessionCounter *)self metrics];
        [v16 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (BOOL)shouldSubmitMetrics
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(RTDailyTrainingSessionCounter *)self defaultsManager];
  v4 = [v3 objectForKey:@"LearnedLocationEngineTrainDailyMetricsSubmissonAttemptDate"];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-90000.0];
    v6 = [v4 isAfterDate:v5];
  }

  else
  {
    v6 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      if (v6)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v12 = objc_opt_new();
      v13 = [v12 stringFromDate];
      v14 = [v4 stringFromDate];
      v16 = 138413314;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, shouldSubmit, %@, current date, %@, last attempt date, %@", &v16, 0x34u);
    }
  }

  return v6;
}

- (void)submitMetrics
{
  v3 = self;
  v32 = *MEMORY[0x277D85DE8];
  if ([(RTDailyTrainingSessionCounter *)self shouldSubmitMetrics])
  {
    [(RTDailyTrainingSessionCounter *)v3 createMetrics];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = NSStringFromSelector(a2);
        v8 = [(RTDailyTrainingSessionCounter *)v3 metrics];
        *buf = 138412802;
        v27 = v6;
        v28 = 2112;
        v29 = v7;
        v30 = 2112;
        v31 = v8;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, submitting metrics, %@", buf, 0x20u);
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = v3;
    v9 = [(RTDailyTrainingSessionCounter *)v3 metrics];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          v15 = objc_alloc(MEMORY[0x277CCACA8]);
          v16 = [v15 initWithCString:RTAnalyticsEventVisitTrainingDaily encoding:1];
          log_analytics_submission(v16, v14);
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v16];
          AnalyticsSendEvent();

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v3 = v20;
  }

  [(RTDailyTrainingSessionCounter *)v3 reset];
  v18 = [(RTDailyTrainingSessionCounter *)v3 defaultsManager];
  v19 = [MEMORY[0x277CBEAA8] now];
  [v18 setObject:v19 forKey:@"LearnedLocationEngineTrainDailyMetricsSubmissonAttemptDate"];
}

- (void)increaseCountForMode:(unint64_t)a3 reason:(unint64_t)a4
{
  v7 = [(RTDailyTrainingSessionCounter *)self defaultsManager];
  v15 = [v7 objectForKey:@"TrainDailyMetricsTrainingSessionCount"];

  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v15];
  v9 = [(RTDailyTrainingSessionCounter *)self compoundKeyForMode:a3 reason:a4];
  v10 = [v8 objectForKey:v9];

  if (!v10)
  {
    [v8 setObject:&unk_2845A0938 forKey:v9];
  }

  v11 = [v8 objectForKey:v9];
  v12 = [v11 unsignedIntValue];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12 + 1];
  [v8 setObject:v13 forKey:v9];

  v14 = [(RTDailyTrainingSessionCounter *)self defaultsManager];
  [v14 setObject:v8 forKey:@"TrainDailyMetricsTrainingSessionCount"];
}

- (id)description
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = [(RTDailyTrainingSessionCounter *)self metrics];
  v5 = [v3 stringWithFormat:@"RTLearnedLocationEngineTrainDailyMetrics, %lu\n\n", objc_msgSend(v4, "count")];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [(RTDailyTrainingSessionCounter *)self metrics];
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) allKeys];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __44__RTDailyTrainingSessionCounter_description__block_invoke;
        v14[3] = &unk_2788C4A48;
        v14[4] = self;
        v11 = v5;
        v15 = v11;
        [v10 enumerateObjectsUsingBlock:v14];

        [v11 appendString:@"\n\n"];
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v5;
}

void __44__RTDailyTrainingSessionCounter_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 metrics];
  v8 = [v5 valueForKey:v4];

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@, ", v4, v8];

  [v6 appendString:v7];
}

- (id)modeAndReasonFromCompoundKey:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:@"-"];
  v6 = [v5 firstObject];
  v7 = [v6 intValue];

  v8 = [v5 lastObject];
  v9 = [v8 intValue];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      v17 = 138413058;
      v18 = v11;
      v19 = 2112;
      v20 = v4;
      v21 = 2048;
      v22 = v7;
      v23 = 2048;
      v24 = v9;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, compound key, %@, mode, %lu, reason, %lu", &v17, 0x2Au);
    }
  }

  v12 = objc_alloc(MEMORY[0x277D011C0]);
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  v15 = [v12 initWithFirstObject:v13 secondObject:v14];

  return v15;
}

@end