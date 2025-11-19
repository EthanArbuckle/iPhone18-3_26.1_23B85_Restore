@interface RTPredictedContextMetricsManager
+ (BOOL)isWithinMidnightBoundary:(id)a3 targetDay:(int64_t)a4 interval:(double)a5;
+ (double)getTotalInferenceLatencyForRequests:(id)a3;
+ (double)getTotalMemoryFootprintForRequests:(id)a3;
+ (float)calculatePredictability:(id)a3 priorVisits:(id)a4 timeWindowHalfWidth:(double)a5;
+ (id)getAllContextsInOneArray:(id)a3;
+ (id)getHighProbabilityPredictedContexts:(id)a3;
+ (id)getPredictedContextLocationFromDictionary:(id)a3;
+ (id)getRequestCountByInferenceTriggerReasonForRequests:(id)a3;
+ (id)isCorrectTruth:(id)a3 forPredictions:(id)a4;
+ (id)stringFromPredictedContextMetricsEvent:(unint64_t)a3;
+ (int64_t)getFrequentLoiFromCount:(int64_t)a3;
+ (int64_t)isCorrectPrediction:(id)a3 forTruthVisits:(id)a4 matchingVisit:(id *)a5;
- (BOOL)submitMetricsForEvent:(unint64_t)a3 data:(id)a4 error:(id *)a5;
- (RTPredictedContextMetricsManager)initWithManagedConfiguration:(id)a3 predictedContextStore:(id)a4 defaultsManager:(id)a5 visitConsolidator:(id)a6;
- (id)prepareDailyInferenceEventMetrics:(id)a3;
- (id)prepareInferenceEventMetric:(id)a3;
- (id)prepareInferenceLOIMismatchEventMetric:(id)a3;
- (id)preparePredictionEventMetric:(id)a3 correctPrediction:(int64_t)a4 matchingVisit:(id)a5;
- (id)prepareTrainingEventMetric:(unint64_t)a3;
- (id)prepareTruthEventMetric:(id)a3 predictability:(float)a4 truePositiveCount:(int64_t)a5 highestProbability:(float)a6 frequentLoi:(int64_t)a7 leadTime:(float)a8;
- (void)_onDailyMetricsNotification:(id)a3;
- (void)_setup;
- (void)getPredictionsForInterval:(id)a3 completion:(id)a4;
- (void)getRequestsForInterval:(id)a3 completion:(id)a4;
- (void)getVisitsForInterval:(id)a3 completion:(id)a4;
- (void)onDailyMetricsNotification:(id)a3;
- (void)prepareAndSubmitDailyInferenceEventMetrics:(id)a3;
- (void)prepareAndSubmitInferenceEventMetrics:(id)a3;
- (void)prepareAndSubmitInferenceLOIMismatchEventMetrics:(id)a3;
- (void)prepareAndSubmitPredictionEventMetrics:(id)a3 yesterdayVisits:(id)a4;
- (void)prepareAndSubmitTrainingEventMetrics:(unint64_t)a3;
- (void)prepareAndSubmitTruthEventMetrics:(id)a3 yesterdayVisits:(id)a4 yesterdayPredictions:(id)a5;
- (void)sendInferenceEventDataToPPS:(id)a3;
- (void)sendTrainingEventDataToPPS:(id)a3;
- (void)setup;
- (void)submitFeatureExtractorMetrics:(id)a3;
@end

@implementation RTPredictedContextMetricsManager

- (RTPredictedContextMetricsManager)initWithManagedConfiguration:(id)a3 predictedContextStore:(id)a4 defaultsManager:(id)a5 visitConsolidator:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (!v11)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: managedConfiguration";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_17;
  }

  if (!v12)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: predictedContextStore";
    goto LABEL_16;
  }

  if (!v13)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_16;
  }

  if (!v14)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = "Invalid parameter not satisfying: visitConsolidator";
      goto LABEL_16;
    }

LABEL_17:

    v23 = 0;
    goto LABEL_18;
  }

  v28.receiver = self;
  v28.super_class = RTPredictedContextMetricsManager;
  v16 = [(RTPredictedContextMetricsManager *)&v28 init];
  p_isa = &v16->super.isa;
  if (v16)
  {
    objc_storeStrong(&v16->_managedConfiguration, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    v18 = p_isa;
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v18 UTF8String];
    }

    else
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v18];
      v20 = [v25 UTF8String];
    }

    v26 = dispatch_queue_create(v20, v19);

    v27 = v18[5];
    v18[5] = v26;

    [v18 setup];
  }

  self = p_isa;
  v23 = self;
LABEL_18:

  return v23;
}

- (void)setup
{
  v3 = [(RTPredictedContextMetricsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__RTPredictedContextMetricsManager_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_setup
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_onDailyMetricsNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];
}

+ (id)stringFromPredictedContextMetricsEvent:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788D1240[a3 - 1];
  }
}

- (BOOL)submitMetricsForEvent:(unint64_t)a3 data:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(RTPredictedContextMetricsManager *)self managedConfiguration];
  v10 = [v9 isDiagnosticsAndUsageAllowed];

  if (v10)
  {
    if (a3 <= 3)
    {
      switch(a3)
      {
        case 1uLL:
          v18 = objc_alloc(MEMORY[0x277CCACA8]);
          v17 = 1;
          v19 = [v18 initWithCString:RTAnalyticsEventPredictedContextPredictionEvent encoding:1];
          log_analytics_submission(v19, v8);
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v19];
          AnalyticsSendEvent();

          goto LABEL_26;
        case 2uLL:
          v11 = objc_alloc(MEMORY[0x277CCACA8]);
          v12 = RTAnalyticsEventPredictedContextInferenceEvent;
          goto LABEL_25;
        case 3uLL:
          v11 = objc_alloc(MEMORY[0x277CCACA8]);
          v12 = RTAnalyticsEventPredictedContextTrainingEvent;
LABEL_25:
          v22 = [v11 initWithCString:v12 encoding:1];
          log_analytics_submission(v22, v8);
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v22];
          AnalyticsSendEvent();

          v17 = 1;
          goto LABEL_26;
      }
    }

    else
    {
      if (a3 <= 5)
      {
        v11 = objc_alloc(MEMORY[0x277CCACA8]);
        if (a3 == 4)
        {
          v12 = RTAnalyticsEventPredictedContextInferenceLOIMismatchEvent;
        }

        else
        {
          v12 = RTAnalyticsEventPredictedContextTruthEvent;
        }

        goto LABEL_25;
      }

      if (a3 == 6)
      {
        v11 = objc_alloc(MEMORY[0x277CCACA8]);
        v12 = RTAnalyticsEventPredictedContextFeatureExtractorEvent;
        goto LABEL_25;
      }

      if (a3 == 7)
      {
        v11 = objc_alloc(MEMORY[0x277CCACA8]);
        v12 = RTAnalyticsEventPredictedContextInferenceDaily;
        goto LABEL_25;
      }
    }

    v21 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      *buf = 138412802;
      v29 = v26;
      v30 = 2112;
      v31 = v27;
      v32 = 2048;
      v33 = a3;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%@, %@, Invalid metrics event type, %lu", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      *buf = 138412546;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, Diagnostic usage is not allowed on this device.", buf, 0x16u);
    }
  }

  v17 = 0;
LABEL_26:

  return v17;
}

- (id)preparePredictionEventMetric:(id)a3 correctPrediction:(int64_t)a4 matchingVisit:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v9 setObject:v10 forKeyedSubscript:@"correctPrediction"];

  [v9 setObject:&unk_28459F8E8 forKeyedSubscript:@"contextType"];
  v11 = MEMORY[0x277CCABB0];
  [v7 probability];
  v12 = [v11 numberWithDouble:?];
  [v9 setObject:v12 forKeyedSubscript:@"probability"];

  v13 = MEMORY[0x277CCABB0];
  v14 = [v7 dateInterval];
  v15 = [v14 startDate];
  [v15 confidenceInterval];
  v16 = [v13 numberWithDouble:?];
  [v9 setObject:v16 forKeyedSubscript:@"predictionStartConfidenceInterval"];

  v17 = MEMORY[0x277CCABB0];
  v18 = [v7 dateInterval];
  v19 = [v18 endDate];
  [v19 confidenceInterval];
  v20 = [v17 numberWithDouble:?];
  [v9 setObject:v20 forKeyedSubscript:@"predictionEndConfidenceInterval"];

  v21 = [v7 dateInterval];
  v22 = [v21 startDate];
  v23 = [v22 date];
  v24 = indexForBucketedHour(v23);

  v25 = [MEMORY[0x277CCABB0] numberWithInteger:v24];
  [v9 setObject:v25 forKeyedSubscript:@"hour"];

  v26 = [v7 dateInterval];
  v27 = [v26 startDate];
  v28 = [v27 date];
  v29 = indexForDayOfWeek(v28);

  v30 = [MEMORY[0x277CCABB0] numberWithInteger:v29];
  [v9 setObject:v30 forKeyedSubscript:@"dayOfWeek"];

  v31 = MEMORY[0x277CCABB0];
  v32 = MEMORY[0x277D01208];
  v33 = [v7 predictionSources];
  v34 = [v31 numberWithUnsignedInteger:{objc_msgSend(v32, "maskForSources:", v33)}];
  [v9 setObject:v34 forKeyedSubscript:@"predictionSourceMask"];

  if (v8)
  {
    v35 = MEMORY[0x277CCABB0];
    v36 = [v7 dateInterval];
    v37 = [v36 startDate];
    v38 = [v37 date];
    v39 = [v8 entry];
    [v38 timeIntervalSinceDate:v39];
    v41 = [v35 numberWithInteger:v40];
    [v9 setObject:v41 forKeyedSubscript:@"predictionStartTimeOffset"];

    v42 = MEMORY[0x277CCABB0];
    v43 = [v7 dateInterval];
    v44 = [v43 endDate];
    v45 = [v44 date];
    v46 = [v8 exit];
    [v45 timeIntervalSinceDate:v46];
    v48 = [v42 numberWithInteger:v47];
    [v9 setObject:v48 forKeyedSubscript:@"predictionEndTimeOffset"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = v7;
    [v9 setObject:&unk_28459F900 forKeyedSubscript:@"contextType"];
    v50 = [v49 locationOfInterest];

    if (v50)
    {
      [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasMapItem"];
      v51 = [v49 locationOfInterest];
      v52 = [v51 type];
    }

    else
    {
      [v9 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasMapItem"];
      v52 = -1;
    }

    v58 = [MEMORY[0x277CCABB0] numberWithInteger:v52];
    [v9 setObject:v58 forKeyedSubscript:@"locationOfInterestType"];

LABEL_15:
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 setObject:&unk_28459F918 forKeyedSubscript:@"contextType"];
    v49 = v7;
    v53 = [v49 predictedContextTransports];
    v54 = [v53 count];

    if (v54)
    {
      v61 = 0;
      v62 = &v61;
      v63 = 0x3032000000;
      v64 = __Block_byref_object_copy__164;
      v65 = __Block_byref_object_dispose__164;
      v55 = [v49 predictedContextTransports];
      v66 = [v55 firstObject];

      v56 = [v49 predictedContextTransports];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __97__RTPredictedContextMetricsManager_preparePredictionEventMetric_correctPrediction_matchingVisit___block_invoke;
      v60[3] = &unk_2788D1130;
      v60[4] = &v61;
      [v56 enumerateObjectsUsingBlock:v60];

      v57 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v62[5], "transportMode")}];
      [v9 setObject:v57 forKeyedSubscript:@"transportMode"];

      _Block_object_dispose(&v61, 8);
    }

    [v9 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasMapItem"];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 setObject:&unk_28459F930 forKeyedSubscript:@"contextType"];
  }

  [v9 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasMapItem"];
LABEL_16:

  return v9;
}

void __97__RTPredictedContextMetricsManager_preparePredictionEventMetric_correctPrediction_matchingVisit___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 probability];
  v5 = v4;
  [*(*(*(a1 + 32) + 8) + 40) probability];
  if (v5 > v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (id)prepareInferenceEventMetric:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v4 predictedContextResult];
  v7 = [v6 nextStepPredictedContextsWithFilterMask:7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "clientCount")}];
  [v5 setObject:v8 forKeyedSubscript:@"clientCount"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "inferenceTriggerReason")}];
  [v5 setObject:v9 forKeyedSubscript:@"inferenceTriggerReason"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
  [v5 setObject:v10 forKeyedSubscript:@"predictionCount"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [v4 requestEndDate];
  v13 = [v4 requestStartDate];
  [v12 timeIntervalSinceDate:v13];
  v14 = [v11 numberWithDouble:?];
  [v5 setObject:v14 forKeyedSubscript:@"inferenceLatency"];

  v15 = MEMORY[0x277CCABB0];
  [v4 memoryFootprintEnd];
  v17 = v16;
  [v4 memoryFootprintStart];
  v19 = [v15 numberWithDouble:v17 - v18];
  [v5 setObject:v19 forKeyedSubscript:@"inferenceMemoryUsage"];

  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self isKindOfClass: %@", objc_opt_class()];
  v21 = [v7 filteredArrayUsingPredicate:v20];
  v22 = [v21 count];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  [v5 setObject:v23 forKeyedSubscript:@"locationPredictionCount"];

  v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self isKindOfClass: %@", objc_opt_class()];
  v25 = [v7 filteredArrayUsingPredicate:v24];
  v26 = [v25 count];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
  [v5 setObject:v27 forKeyedSubscript:@"transitionPredictionCount"];

  v28 = [v4 requestStartDate];
  v29 = indexForBucketedHour(v28);

  v30 = [MEMORY[0x277CCABB0] numberWithInteger:v29];
  [v5 setObject:v30 forKeyedSubscript:@"hour"];

  v31 = [v4 requestEndDate];
  v32 = indexForDayOfWeek(v31);

  v33 = [MEMORY[0x277CCABB0] numberWithInteger:v32];
  [v5 setObject:v33 forKeyedSubscript:@"dayOfWeek"];

  v34 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v35 = [v34 objectForKey:@"RTDefaultsPredictedContextManagerTrainAllContextLastCompletionDate"];

  if (v35)
  {
    v36 = MEMORY[0x277CCABB0];
    v37 = [v4 requestStartDate];
    [v37 timeIntervalSinceDate:v35];
    v38 = [v36 numberWithDouble:?];
    [v5 setObject:v38 forKeyedSubscript:@"timeSinceLastTrainingSuccess"];
  }

  v39 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v40 = [v39 objectForKey:@"RTDefaultsPredictedContextManagerTimeSinceLastInferenceRequestAttempt"];
  [v40 doubleValue];
  v42 = v41;

  if (v42 > 0.0)
  {
    v43 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
    [v5 setObject:v43 forKeyedSubscript:@"timeSinceLastInference"];
  }

  return v5;
}

- (id)prepareDailyInferenceEventMetrics:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
  [v4 setObject:v5 forKeyedSubscript:@"dailyInferenceCount"];

  v6 = MEMORY[0x277CCABB0];
  [objc_opt_class() getTotalInferenceLatencyForRequests:v3];
  v7 = [v6 numberWithDouble:?];
  [v4 setObject:v7 forKeyedSubscript:@"dailyInferenceLatency"];

  v8 = MEMORY[0x277CCABB0];
  [objc_opt_class() getTotalMemoryFootprintForRequests:v3];
  v9 = [v8 numberWithDouble:?];
  [v4 setObject:v9 forKeyedSubscript:@"dailyInferenceMemoryUsage"];

  v25 = v3;
  v10 = [objc_opt_class() getRequestCountByInferenceTriggerReasonForRequests:v3];
  [v4 setObject:&unk_28459F948 forKeyedSubscript:@"dailyInferenceTriggerReasonClientRegistration"];
  [v4 setObject:&unk_28459F948 forKeyedSubscript:@"dailyInferenceTriggerReasonDominantMotionCount"];
  [v4 setObject:&unk_28459F948 forKeyedSubscript:@"dailyInferenceTriggerReasonNavigationNotificationCount"];
  [v4 setObject:&unk_28459F948 forKeyedSubscript:@"dailyInferenceTriggerReasonPeriodicTriggerCount"];
  [v4 setObject:&unk_28459F948 forKeyedSubscript:@"dailyInferenceTriggerReasonSingleShotCount"];
  [v4 setObject:&unk_28459F948 forKeyedSubscript:@"dailyInferenceTriggerReasonVisitNotificationCount"];
  [v4 setObject:&unk_28459F948 forKeyedSubscript:@"dailyInferenceTriggerReasonUnknownCount"];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = [v11 objectForKeyedSubscript:v16];
        v18 = [v16 isEqual:&unk_28459F960];
        v19 = @"dailyInferenceTriggerReasonClientRegistration";
        if ((v18 & 1) == 0)
        {
          v20 = [v16 isEqual:{&unk_28459F978, @"dailyInferenceTriggerReasonClientRegistration"}];
          v19 = @"dailyInferenceTriggerReasonDominantMotionCount";
          if ((v20 & 1) == 0)
          {
            v21 = [v16 isEqual:{&unk_28459F990, @"dailyInferenceTriggerReasonDominantMotionCount"}];
            v19 = @"dailyInferenceTriggerReasonNavigationNotificationCount";
            if ((v21 & 1) == 0)
            {
              v22 = [v16 isEqual:{&unk_28459F9A8, @"dailyInferenceTriggerReasonNavigationNotificationCount"}];
              v19 = @"dailyInferenceTriggerReasonPeriodicTriggerCount";
              if ((v22 & 1) == 0)
              {
                v23 = [v16 isEqual:{&unk_28459F9C0, @"dailyInferenceTriggerReasonPeriodicTriggerCount"}];
                v19 = @"dailyInferenceTriggerReasonSingleShotCount";
                if ((v23 & 1) == 0)
                {
                  if ([v16 isEqual:{&unk_28459F9D8, @"dailyInferenceTriggerReasonSingleShotCount"}])
                  {
                    v19 = @"dailyInferenceTriggerReasonVisitNotificationCount";
                  }

                  else
                  {
                    v19 = @"dailyInferenceTriggerReasonUnknownCount";
                  }
                }
              }
            }
          }
        }

        [v4 setObject:v17 forKeyedSubscript:v19];
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  return v4;
}

- (id)prepareTrainingEventMetric:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v7 = [v6 objectForKey:@"RTDefaultsPredictedContextManagerTrainAttemptedDate"];

  v8 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v96 = [v8 objectForKey:@"RTDefaultsPredictedContextManagerTrainAttemptedCompletionDateKey"];

  v9 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v10 = [v9 objectForKey:@"RTDefaultsPredictedContextManagerTrainAttemptedPolicy"];
  v88 = [v10 integerValue];

  v11 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v12 = [v11 objectForKey:@"RTDefaultsPredictedContextManagerTimeSinceLastTrainingAttempt"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v16 = [v15 objectForKey:@"RTDefaultsPredictedContextManagerTimeSinceLastTrainingSuccess"];
  [v16 doubleValue];
  v18 = v17;

  v19 = indexForBucketedHour(v7);
  v83 = indexForDayOfWeek(v7);
  v20 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v21 = [v20 objectForKey:@"RTDefaultsPredictedContextManagerTrainAttemptedFeatureExtractorMemoryFootprint"];
  [v21 doubleValue];
  v23 = v22;

  v24 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v25 = [v24 objectForKey:@"RTDefaultsPredictedContextManagerTrainAttemptedComputeMemoryFootprint"];
  [v25 doubleValue];
  v27 = v26;

  v28 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v29 = [v28 objectForKey:@"RTDefaultsFeatureExtractorTrainCalendarEventCount"];
  v95 = [v29 integerValue];

  v30 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v31 = [v30 objectForKey:@"RTDefaultsFeatureExtractorTrainHomeKitHomesCount"];
  v94 = [v31 integerValue];

  v32 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v33 = [v32 objectForKey:@"RTDefaultsFeatureExtractorTrainLocationHistoryCount"];
  v93 = [v33 integerValue];

  v34 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v35 = [v34 objectForKey:@"RTDefaultsFeatureExtractorTrainLocationOfInterestCount"];
  v92 = [v35 integerValue];

  v36 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v37 = [v36 objectForKey:@"RTDefaultsFeatureExtractorTrainMapsActiveNavigation"];
  v91 = [v37 integerValue];

  v38 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v39 = [v38 objectForKey:@"RTDefaultsFeatureExtractorTrainMapsViewedPlacesCount"];
  v90 = [v39 integerValue];

  v40 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v41 = [v40 objectForKey:@"RTDefaultsFeatureExtractorTrainMotionActivityCount"];
  v89 = [v41 integerValue];

  v42 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v43 = [v42 objectForKey:@"RTDefaultsFeatureExtractorTrainParkedCar"];
  v87 = [v43 integerValue];

  v44 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v45 = [v44 objectForKey:@"RTDefaultsFeatureExtractorTrainPropagatedLocationCount"];
  v86 = [v45 integerValue];

  v46 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v47 = [v46 objectForKey:@"RTDefaultsFeatureExtractorTrainTransitionCount"];
  v85 = [v47 integerValue];

  v48 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v49 = [v48 objectForKey:@"RTDefaultsFeatureExtractorTrainVisitCount"];
  v84 = [v49 integerValue];

  v50 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v51 = [v50 objectForKey:@"RTDefaultsFeatureExtractorTrainWorkoutCount"];
  v52 = [v51 integerValue];

  v53 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v54 = [v53 objectForKey:@"RTDefaultsPredictedContextManagerLastTrainResult"];
  v55 = [v54 integerValue];

  v56 = a3;
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v57 forKeyedSubscript:@"trainingResultMask"];

  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v55];
  [v5 setObject:v58 forKeyedSubscript:@"lastTrainingResultMask"];

  v59 = [MEMORY[0x277CCABB0] numberWithInteger:v88];
  [v5 setObject:v59 forKeyedSubscript:@"trainingPolicy"];

  v60 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
  [v5 setObject:v60 forKeyedSubscript:@"hour"];

  v61 = [MEMORY[0x277CCABB0] numberWithInteger:v83];
  [v5 setObject:v61 forKeyedSubscript:@"dayOfWeek"];

  if (v14 > 0.0)
  {
    v62 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    [v5 setObject:v62 forKeyedSubscript:@"timeSinceLastTraining"];
  }

  if (v18 > 0.0)
  {
    v63 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
    [v5 setObject:v63 forKeyedSubscript:@"timeSinceLastTrainingSuccess"];
  }

  v64 = MEMORY[0x277CCABB0];
  [v96 timeIntervalSinceDate:v7];
  v65 = [v64 numberWithDouble:?];
  [v5 setObject:v65 forKeyedSubscript:@"trainingDuration"];

  v66 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
  [v5 setObject:v66 forKeyedSubscript:@"featureExtractorMemoryFootprint"];

  v67 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
  [v5 setObject:v67 forKeyedSubscript:@"computeMemoryFootprint"];

  v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v95];
  [v5 setObject:v68 forKeyedSubscript:@"calendarEventCount"];

  v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v94];
  [v5 setObject:v69 forKeyedSubscript:@"homeKitHomesCount"];

  v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v93];
  [v5 setObject:v70 forKeyedSubscript:@"locationHistoryCount"];

  v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v92];
  [v5 setObject:v71 forKeyedSubscript:@"locationOfInterestCount"];

  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v91];
  [v5 setObject:v72 forKeyedSubscript:@"hasMapsActiveNavigation"];

  v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v90];
  [v5 setObject:v73 forKeyedSubscript:@"mapsViewedPlacesCount"];

  v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v89];
  [v5 setObject:v74 forKeyedSubscript:@"motionActivityCount"];

  v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v87];
  [v5 setObject:v75 forKeyedSubscript:@"hasParkedCar"];

  v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v86];
  [v5 setObject:v76 forKeyedSubscript:@"propagatedLocationCount"];

  v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v85];
  [v5 setObject:v77 forKeyedSubscript:@"transitionCount"];

  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v84];
  [v5 setObject:v78 forKeyedSubscript:@"visitCount"];

  v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v52];
  [v5 setObject:v79 forKeyedSubscript:@"workoutCount"];

  v80 = [(RTPredictedContextMetricsManager *)self defaultsManager];
  v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56];
  [v80 setObject:v81 forKey:@"RTDefaultsPredictedContextManagerLastTrainResult"];

  return v5;
}

- (id)prepareInferenceLOIMismatchEventMetric:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 predictedContextResult];
  v6 = [v5 analytics];

  if (v6 && ([v6 rolledLOIResult], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v8 = [v6 rolledLOIResult];
    v9 = [v8 allValues];

    v10 = [v9 countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v10)
    {
      v11 = v10;
      v49 = 0;
      obj = v9;
      v43 = v6;
      v44 = v4;
      v45 = v3;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = *v52;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v52 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v51 + 1) + 8 * i);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v20 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v22 = objc_opt_class();
              v47 = NSStringFromClass(v22);
              v48 = v15;
              v23 = NSStringFromSelector(a2);
              *buf = 138412802;
              v56 = v47;
              v57 = 2112;
              v58 = v23;
              v24 = v23;
              v59 = 2112;
              v60 = v19;
              _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "%@, %@, result, %@", buf, 0x20u);

              v15 = v48;
            }
          }

          v21 = [v19 loiIsMissingFromCurrentVisitHistory];
          if ([v19 isHome])
          {
            ++v12;
            v14 += [v19 loiIsMissingFromCurrentVisitHistory];
          }

          if ([v19 isWork])
          {
            ++v13;
            v15 += [v19 loiIsMissingFromCurrentVisitHistory];
          }

          v16 += v21;
        }

        v49 += v11;
        v11 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v11);

      v25 = v49;
      if (v49)
      {
        v26 = v16 / v49;
      }

      else
      {
        v26 = -1.0;
      }

      v4 = v44;
      v3 = v45;
      v6 = v43;
    }

    else
    {

      v25 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
      v13 = 0;
      v12 = 0;
      v26 = -1.0;
    }

    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
    [v4 setObject:v29 forKeyedSubscript:@"numberOfTotalLOIs"];

    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
    [v4 setObject:v30 forKeyedSubscript:@"numberOfAffectedLOIs"];

    v31 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
    [v4 setObject:v31 forKeyedSubscript:@"affectedLOIRatioMax"];

    v32 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
    [v4 setObject:v32 forKeyedSubscript:@"affectedLOIRatioMin"];

    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
    [v4 setObject:v33 forKeyedSubscript:@"numberOfInferenceAttempts"];

    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    [v4 setObject:v34 forKeyedSubscript:@"numberOfTotalHome"];

    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
    [v4 setObject:v35 forKeyedSubscript:@"numberOfTotalWork"];

    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
    [v4 setObject:v36 forKeyedSubscript:@"numberOfAffectedHome"];

    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
    [v4 setObject:v37 forKeyedSubscript:@"numberOfAffectedWork"];

    v28 = v4;
  }

  else
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      NSStringFromSelector(a2);
      v42 = v41 = v6;
      *buf = 138412546;
      v56 = v40;
      v57 = 2112;
      v58 = v42;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, %@, no analytics to report", buf, 0x16u);

      v6 = v41;
    }

    v28 = 0;
  }

  return v28;
}

- (id)prepareTruthEventMetric:(id)a3 predictability:(float)a4 truePositiveCount:(int64_t)a5 highestProbability:(float)a6 frequentLoi:(int64_t)a7 leadTime:(float)a8
{
  v13 = a3;
  v14 = [MEMORY[0x277CBEB38] dictionary];
  *&v15 = a4;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  [v14 setObject:v16 forKeyedSubscript:@"predictability"];

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  [v14 setObject:v17 forKeyedSubscript:@"correctPredictionsCount"];

  *&v18 = a6;
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  [v14 setObject:v19 forKeyedSubscript:@"highestConfidence"];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
  [v14 setObject:v20 forKeyedSubscript:@"frequentLoi"];

  *&v21 = a8;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  [v14 setObject:v22 forKeyedSubscript:@"leadTime"];

  v23 = [v13 placeInference];

  if (v23)
  {
    v24 = [v13 placeInference];
    v23 = [v24 userType];
  }

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
  [v14 setObject:v25 forKeyedSubscript:@"placeType"];

  if (a5 >= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  v27 = [MEMORY[0x277CCABB0] numberWithInteger:v26];
  [v14 setObject:v27 forKeyedSubscript:@"correctTruth"];

  v28 = [v13 entry];
  v29 = indexForBucketedHour(v28);

  v30 = [MEMORY[0x277CCABB0] numberWithInteger:v29];
  [v14 setObject:v30 forKeyedSubscript:@"hour"];

  v31 = [v13 entry];
  v32 = indexForDayOfWeek(v31);

  v33 = [MEMORY[0x277CCABB0] numberWithInteger:v32];
  [v14 setObject:v33 forKeyedSubscript:@"dayOfWeek"];

  return v14;
}

- (void)prepareAndSubmitPredictionEventMetrics:(id)a3 yesterdayVisits:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277D36B80] sharedInstance];
  v10 = [v9 optInApple];

  v11 = [(RTPredictedContextMetricsManager *)self managedConfiguration];
  v12 = [v11 isDiagnosticsAndUsageAllowed];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromSelector(a2);
      v15 = v14;
      v16 = @"NO";
      if (v10)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      *buf = 138412802;
      v22 = v14;
      v24 = v17;
      v23 = 2112;
      if (v12)
      {
        v16 = @"YES";
      }

      v25 = 2112;
      v26 = v16;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, optInApple, %@, isDna, %@", buf, 0x20u);
    }
  }

  if ((v10 & v12) == 1)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __91__RTPredictedContextMetricsManager_prepareAndSubmitPredictionEventMetrics_yesterdayVisits___block_invoke;
    v18[3] = &unk_2788D1158;
    v18[4] = self;
    v19 = v8;
    v20 = a2;
    [v7 enumerateKeysAndObjectsUsingBlock:v18];
  }
}

void __91__RTPredictedContextMetricsManager_prepareAndSubmitPredictionEventMetrics_yesterdayVisits___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v32;
    *&v5 = 138412803;
    v24 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = objc_opt_class();
          v12 = *(a1 + 40);
          v30 = 0;
          v13 = [v11 isCorrectPrediction:v10 forTruthVisits:v12 matchingVisit:&v30];
          v14 = v30;
          v15 = [*(a1 + 32) preparePredictionEventMetric:v10 correctPrediction:v13 matchingVisit:v14];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v16 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v21 = objc_opt_class();
              v27 = NSStringFromClass(v21);
              v22 = NSStringFromSelector(*(a1 + 48));
              *buf = v24;
              v36 = v27;
              v37 = 2112;
              v38 = v22;
              v23 = v22;
              v39 = 2117;
              v40 = v15;
              _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "%@, %@, predictionEventMetrics, %{sensitive}@", buf, 0x20u);
            }
          }

          v17 = *(a1 + 32);
          v29 = 0;
          [v17 submitMetricsForEvent:1 data:v15 error:{&v29, v24}];
          v18 = v29;
          if (v18)
          {
            v19 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = objc_opt_class();
              v26 = NSStringFromClass(v20);
              v25 = NSStringFromSelector(*(a1 + 48));
              *buf = 138412802;
              v36 = v26;
              v37 = 2112;
              v38 = v25;
              v39 = 2112;
              v40 = v18;
              _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@, %@, prediction event metrics submission error, %@", buf, 0x20u);
            }
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v6);
  }
}

- (void)submitFeatureExtractorMetrics:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D36B80] sharedInstance];
  v7 = [v6 optInApple];

  v8 = [(RTPredictedContextMetricsManager *)self managedConfiguration];
  v9 = [v8 isDiagnosticsAndUsageAllowed];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      v12 = v11;
      v13 = @"NO";
      if (v7)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      *buf = 138412802;
      v22 = v11;
      v24 = v14;
      v23 = 2112;
      if (v9)
      {
        v13 = @"YES";
      }

      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, optInApple, %@, isDna, %@", buf, 0x20u);
    }
  }

  if ((v7 & v9) == 1)
  {
    v20 = 0;
    [(RTPredictedContextMetricsManager *)self submitMetricsForEvent:6 data:v5 error:&v20];
    v15 = v20;
    if (v15)
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(a2);
        *buf = 138412802;
        v22 = v18;
        v23 = 2112;
        v24 = v19;
        v25 = 2112;
        v26 = v15;
        _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%@, %@, Feture event metrics submission error, %@", buf, 0x20u);
      }
    }
  }
}

- (void)prepareAndSubmitInferenceEventMetrics:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D36B80] sharedInstance];
  v7 = [v6 optInApple];

  v8 = [(RTPredictedContextMetricsManager *)self managedConfiguration];
  v9 = [v8 isDiagnosticsAndUsageAllowed];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      v12 = v11;
      v13 = @"NO";
      if (v7)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      *buf = 138412802;
      v23 = v11;
      v25 = v14;
      v24 = 2112;
      if (v9)
      {
        v13 = @"YES";
      }

      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, optInApple, %@, isDna, %@", buf, 0x20u);
    }
  }

  if ((v7 & v9) == 1)
  {
    v15 = [(RTPredictedContextMetricsManager *)self prepareInferenceEventMetric:v5];
    v21 = 0;
    [(RTPredictedContextMetricsManager *)self submitMetricsForEvent:2 data:v15 error:&v21];
    v16 = v21;
    if (v16)
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = NSStringFromSelector(a2);
        *buf = 138412802;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        v26 = 2112;
        v27 = v16;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@, %@, inference event metrics submission error, %@", buf, 0x20u);
      }
    }

    [(RTPredictedContextMetricsManager *)self sendInferenceEventDataToPPS:v15];
  }
}

- (void)prepareAndSubmitDailyInferenceEventMetrics:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D36B80] sharedInstance];
  v7 = [v6 optInApple];

  v8 = [(RTPredictedContextMetricsManager *)self managedConfiguration];
  v9 = [v8 isDiagnosticsAndUsageAllowed];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      v12 = v11;
      v13 = @"NO";
      if (v7)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      *buf = 138412802;
      v27 = v11;
      v29 = v14;
      v28 = 2112;
      if (v9)
      {
        v13 = @"YES";
      }

      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, optInApple, %@, isDna, %@", buf, 0x20u);
    }
  }

  if ((v7 & v9) == 1)
  {
    v15 = [(RTPredictedContextMetricsManager *)self prepareDailyInferenceEventMetrics:v5];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(a2);
        *buf = 138412803;
        v27 = v18;
        v28 = 2112;
        v29 = v19;
        v30 = 2117;
        v31 = v15;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, %@, dailyInferenceEventMetrics, %{sensitive}@", buf, 0x20u);
      }
    }

    v25 = 0;
    [(RTPredictedContextMetricsManager *)self submitMetricsForEvent:7 data:v15 error:&v25];
    v20 = v25;
    if (v20)
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = NSStringFromSelector(a2);
        *buf = 138412802;
        v27 = v23;
        v28 = 2112;
        v29 = v24;
        v30 = 2112;
        v31 = v20;
        _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%@, %@, inference event metrics submission error, %@", buf, 0x20u);
      }
    }
  }
}

- (void)prepareAndSubmitTrainingEventMetrics:(unint64_t)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D36B80] sharedInstance];
  v7 = [v6 optInApple];

  v8 = [(RTPredictedContextMetricsManager *)self managedConfiguration];
  v9 = [v8 isDiagnosticsAndUsageAllowed];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      v12 = v11;
      v13 = @"NO";
      if (v7)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      *buf = 138412802;
      v23 = v11;
      v25 = v14;
      v24 = 2112;
      if (v9)
      {
        v13 = @"YES";
      }

      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, optInApple, %@, isDna, %@", buf, 0x20u);
    }
  }

  if ((v7 & v9) == 1)
  {
    v15 = [(RTPredictedContextMetricsManager *)self prepareTrainingEventMetric:a3];
    v21 = 0;
    [(RTPredictedContextMetricsManager *)self submitMetricsForEvent:3 data:v15 error:&v21];
    v16 = v21;
    if (v16)
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = NSStringFromSelector(a2);
        *buf = 138412802;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        v26 = 2112;
        v27 = v16;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@, %@, training event metrics submission error, %@", buf, 0x20u);
      }
    }

    [(RTPredictedContextMetricsManager *)self sendTrainingEventDataToPPS:v15];
  }
}

- (void)prepareAndSubmitInferenceLOIMismatchEventMetrics:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D36B80] sharedInstance];
  v7 = [v6 optInApple];

  v8 = [(RTPredictedContextMetricsManager *)self managedConfiguration];
  v9 = [v8 isDiagnosticsAndUsageAllowed];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      v12 = v11;
      v13 = @"NO";
      if (v7)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      *buf = 138412802;
      v23 = v11;
      v25 = v14;
      v24 = 2112;
      if (v9)
      {
        v13 = @"YES";
      }

      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, optInApple, %@, isDna, %@", buf, 0x20u);
    }
  }

  if ((v7 & v9) == 1)
  {
    v15 = [(RTPredictedContextMetricsManager *)self prepareInferenceLOIMismatchEventMetric:v5];
    v21 = 0;
    [(RTPredictedContextMetricsManager *)self submitMetricsForEvent:4 data:v15 error:&v21];
    v16 = v21;
    if (v16)
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = NSStringFromSelector(a2);
        *buf = 138412802;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        v26 = 2112;
        v27 = v16;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@, %@, inferenceLOIMismatch event metrics submission error, %@", buf, 0x20u);
      }
    }
  }
}

- (void)prepareAndSubmitTruthEventMetrics:(id)a3 yesterdayVisits:(id)a4 yesterdayPredictions:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277D36B80] sharedInstance];
  v13 = [v12 optInApple];

  v14 = [(RTPredictedContextMetricsManager *)self managedConfiguration];
  v15 = [v14 isDiagnosticsAndUsageAllowed];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = NSStringFromSelector(a2);
      v18 = v17;
      v19 = @"NO";
      if (v13)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      *buf = 138412802;
      v28 = v17;
      v30 = v20;
      v29 = 2112;
      if (v15)
      {
        v19 = @"YES";
      }

      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, optInApple, %@, isDna, %@", buf, 0x20u);
    }
  }

  if ((v13 & v15) == 1)
  {
    v21 = [objc_opt_class() getPredictedContextLocationFromDictionary:v11];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __107__RTPredictedContextMetricsManager_prepareAndSubmitTruthEventMetrics_yesterdayVisits_yesterdayPredictions___block_invoke;
    v23[3] = &unk_2788D1180;
    v23[4] = self;
    v26 = a2;
    v24 = v9;
    v25 = v21;
    v22 = v21;
    [v10 enumerateObjectsUsingBlock:v23];
  }
}

void __107__RTPredictedContextMetricsManager_prepareAndSubmitTruthEventMetrics_yesterdayVisits_yesterdayPredictions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 placeInference];
  if (v6 && (v7 = v6, [v5 placeInference], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "loiIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, v9))
  {
    [objc_opt_class() calculatePredictability:v5 priorVisits:*(a1 + 40) timeWindowHalfWidth:7200.0];
    v11 = v10;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(*(a1 + 56));
        v16 = [v5 placeInference];
        v17 = [v16 preferredName];
        v18 = [v5 entry];
        *buf = 138413315;
        v55 = v14;
        v56 = 2112;
        v57 = v15;
        v58 = 2117;
        v59 = v17;
        v60 = 2112;
        v61 = v18;
        v62 = 2048;
        v63 = v11;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, yesterday's visit to %{sensitive}@, entry, %@, predictability, %.2f", buf, 0x34u);
      }
    }

    v19 = [objc_opt_class() isCorrectTruth:v5 forPredictions:*(a1 + 48)];
    v20 = [v19 objectForKeyedSubscript:@"truePositiveCount"];
    v21 = [v20 integerValue];

    v22 = [v19 objectForKeyedSubscript:@"highestProbability"];
    [v22 floatValue];
    v24 = v23;

    v25 = [v19 objectForKeyedSubscript:@"leadTime"];
    [v25 floatValue];
    v27 = v26;

    v28 = MEMORY[0x277D01428];
    v29 = *(a1 + 40);
    v30 = [v5 placeInference];
    v31 = [v30 loiIdentifier];
    v32 = [v28 visits:v29 withLoiIdentifier:v31];
    v33 = [v32 count];

    v34 = [objc_opt_class() getFrequentLoiFromCount:v33];
    *&v35 = v11;
    LODWORD(v36) = v24;
    LODWORD(v37) = v27;
    v38 = [*(a1 + 32) prepareTruthEventMetric:v5 predictability:v21 truePositiveCount:v34 highestProbability:v35 frequentLoi:v36 leadTime:v37];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v39 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = NSStringFromSelector(*(a1 + 56));
        *buf = 138413059;
        v55 = v41;
        v56 = 2112;
        v57 = v42;
        v58 = 2048;
        v59 = a3;
        v60 = 2117;
        v61 = v38;
        _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "%@, %@, idx, %lu, truthEventMetrics, %{sensitive}@", buf, 0x2Au);
      }
    }

    v43 = *(a1 + 32);
    v53 = 0;
    [v43 submitMetricsForEvent:5 data:v38 error:&v53];
    v44 = v53;
    if (v44)
    {
      v45 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        v52 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412802;
        v55 = v51;
        v56 = 2112;
        v57 = v52;
        v58 = 2112;
        v59 = v44;
        _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "%@, %@, truth event metrics submission error, %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromSelector(*(a1 + 56));
      v49 = [v5 entry];
      *buf = 138412802;
      v55 = v47;
      v56 = 2112;
      v57 = v48;
      v58 = 2112;
      v59 = v49;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@, %@, error detected: truth visit from yesterday, %@, is unknown", buf, 0x20u);
    }
  }
}

- (void)sendInferenceEventDataToPPS:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (qword_2814A7D98 != -1)
  {
    dispatch_once(&qword_2814A7D98, &__block_literal_global_137);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [v4 objectForKeyedSubscript:@"inferenceLatency"];
  [v5 setObject:v6 forKeyedSubscript:@"inferenceLatency"];

  v7 = [v4 objectForKeyedSubscript:@"inferenceTriggerReason"];
  [v5 setObject:v7 forKeyedSubscript:@"inferenceTriggerReason"];

  v8 = [v4 objectForKeyedSubscript:@"predictionCount"];
  [v5 setObject:v8 forKeyedSubscript:@"predictionCount"];

  v9 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    v13 = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@, %@, sending to powerlog, eventDict:%@", &v13, 0x20u);
  }

  PPSSendTelemetry();
}

uint64_t __64__RTPredictedContextMetricsManager_sendInferenceEventDataToPPS___block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  _MergedGlobals_122 = result;
  return result;
}

- (void)sendTrainingEventDataToPPS:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (qword_2814A7DA8 != -1)
  {
    dispatch_once(&qword_2814A7DA8, &__block_literal_global_460);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [v4 objectForKeyedSubscript:@"trainingDuration"];
  [v5 setObject:v6 forKeyedSubscript:@"trainingDuration"];

  v7 = [v4 objectForKeyedSubscript:@"trainingPolicy"];
  [v5 setObject:v7 forKeyedSubscript:@"trainingPolicy"];

  v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    v12 = 138412802;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "%@, %@, sending to powerlog, eventDict:%@", &v12, 0x20u);
  }

  PPSSendTelemetry();
}

uint64_t __63__RTPredictedContextMetricsManager_sendTrainingEventDataToPPS___block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  qword_2814A7DA0 = result;
  return result;
}

- (void)onDailyMetricsNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTPredictedContextMetricsManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__RTPredictedContextMetricsManager_onDailyMetricsNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onDailyMetricsNotification:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, received notification, %@", buf, 0x16u);
    }
  }

  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [MEMORY[0x277CBEAA8] now];
  v21 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v9 sinceDate:-86400.0];
  v20 = [v8 startOfDayForDate:v21];
  v19 = [v8 startOfDayForDate:v9];
  v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v20 endDate:v19];
  v18 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v9 sinceDate:-4838400.0];
  v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v18 endDate:v9];
  v11 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v57 = __Block_byref_object_copy__164;
  v58 = __Block_byref_object_dispose__164;
  v59 = objc_opt_new();
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = __Block_byref_object_copy__164;
  v54[4] = __Block_byref_object_dispose__164;
  v55 = 0;
  dispatch_group_enter(v11);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __64__RTPredictedContextMetricsManager__onDailyMetricsNotification___block_invoke;
  v49[3] = &unk_2788D11A8;
  v49[4] = self;
  v51 = v54;
  v53 = a2;
  v52 = buf;
  v12 = v11;
  v50 = v12;
  [(RTPredictedContextMetricsManager *)self getPredictionsForInterval:v10 completion:v49];
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__164;
  v47[4] = __Block_byref_object_dispose__164;
  v48 = objc_opt_new();
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__164;
  v45[4] = __Block_byref_object_dispose__164;
  v46 = 0;
  dispatch_group_enter(v12);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __64__RTPredictedContextMetricsManager__onDailyMetricsNotification___block_invoke_467;
  v40[3] = &unk_2788C68F0;
  v40[4] = self;
  v42 = v45;
  v43 = v47;
  v44 = a2;
  v13 = v12;
  v41 = v13;
  [(RTPredictedContextMetricsManager *)self getVisitsForInterval:v17 completion:v40];
  v14 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v21 endDate:v9];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__164;
  v38[4] = __Block_byref_object_dispose__164;
  v39 = objc_opt_new();
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__164;
  v36[4] = __Block_byref_object_dispose__164;
  v37 = 0;
  dispatch_group_enter(v13);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __64__RTPredictedContextMetricsManager__onDailyMetricsNotification___block_invoke_469;
  v31[3] = &unk_2788C68F0;
  v31[4] = self;
  v33 = v36;
  v34 = v38;
  v35 = a2;
  v15 = v13;
  v32 = v15;
  [(RTPredictedContextMetricsManager *)self getRequestsForInterval:v14 completion:v31];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RTPredictedContextMetricsManager__onDailyMetricsNotification___block_invoke_470;
  block[3] = &unk_2788D11D0;
  v24 = v45;
  v25 = v54;
  v26 = v36;
  v27 = buf;
  v28 = v47;
  v29 = v38;
  v30 = a2;
  block[4] = self;
  v23 = v10;
  v16 = v10;
  dispatch_group_notify(v15, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v47, 8);

  _Block_object_dispose(v54, 8);
  _Block_object_dispose(buf, 8);
}

void __64__RTPredictedContextMetricsManager__onDailyMetricsNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(*(a1 + 64));
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 2112;
      v23 = v7;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@, %@, error fetching predictions, %@", &v18, 0x20u);
    }

    v9 = (*(*(a1 + 48) + 8) + 40);
    v10 = a3;
    goto LABEL_7;
  }

  if (v6)
  {
    v9 = (*(*(a1 + 56) + 8) + 40);
    v10 = a2;
LABEL_7:
    objc_storeStrong(v9, v10);
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(*(a1 + 64));
      v18 = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, no predicted contexts fetched", &v18, 0x16u);
    }
  }

LABEL_8:
  dispatch_group_leave(*(a1 + 40));
}

void __64__RTPredictedContextMetricsManager__onDailyMetricsNotification___block_invoke_467(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(*(a1 + 64));
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 2112;
      v23 = v7;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@, %@, error fetching visits, %@", &v18, 0x20u);
    }

    v9 = (*(*(a1 + 48) + 8) + 40);
    v10 = a3;
    goto LABEL_7;
  }

  if (v6)
  {
    v9 = (*(*(a1 + 56) + 8) + 40);
    v10 = a2;
LABEL_7:
    objc_storeStrong(v9, v10);
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(*(a1 + 64));
      v18 = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, no visits fetched", &v18, 0x16u);
    }
  }

LABEL_8:
  dispatch_group_leave(*(a1 + 40));
}

void __64__RTPredictedContextMetricsManager__onDailyMetricsNotification___block_invoke_469(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(*(a1 + 64));
      v23 = 138412802;
      v24 = v21;
      v25 = 2112;
      v26 = v22;
      v27 = 2112;
      v28 = v7;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@, %@, error fetching predicted context requests, %@", &v23, 0x20u);
    }

    v9 = *(*(a1 + 48) + 8);
    v10 = v7;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
    goto LABEL_5;
  }

  if (!v6)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_6;
    }

    v11 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    v19 = objc_opt_class();
    v13 = NSStringFromClass(v19);
    v14 = NSStringFromSelector(*(a1 + 64));
    v23 = 138412546;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    v16 = "%@, %@, no predicted context requests fetched";
    v17 = v11;
    v18 = 22;
    goto LABEL_14;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_6;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(*(a1 + 64));
    v15 = [*(*(*(a1 + 56) + 8) + 40) count];
    v23 = 138412802;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    v27 = 2048;
    v28 = v15;
    v16 = "%@, %@, fetched requests count, %lu";
    v17 = v11;
    v18 = 32;
LABEL_14:
    _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, v16, &v23, v18);
  }

LABEL_5:

LABEL_6:
  dispatch_group_leave(*(a1 + 40));
}

void __64__RTPredictedContextMetricsManager__onDailyMetricsNotification___block_invoke_470(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  if (!*(*(*(a1 + 48) + 8) + 40) && !*(*(*(a1 + 56) + 8) + 40) && !*(*(*(a1 + 64) + 8) + 40))
  {
    v6 = *(*(*(a1 + 72) + 8) + 40);
    if (v6)
    {
      if ([v6 count])
      {
        v7 = *(*(*(a1 + 80) + 8) + 40);
        if (v7)
        {
          if ([v7 count] && *(*(*(a1 + 88) + 8) + 40))
          {
            v2 = [MEMORY[0x277D01428] visitsWithExit:*(*(*(a1 + 80) + 8) + 40) dateInterval:*(a1 + 40)];
            if (![v2 count])
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                goto LABEL_8;
              }

              v4 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
              if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
              {
                goto LABEL_7;
              }

              v24 = objc_opt_class();
              v10 = NSStringFromClass(v24);
              v25 = NSStringFromSelector(*(a1 + 96));
              *buf = 138412546;
              v36 = v10;
              v37 = 2112;
              v38 = v25;
              _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, skipping metrics submission due to no visits ending yesterday", buf, 0x16u);

              goto LABEL_29;
            }

            v8 = [v2 objectAtIndexedSubscript:0];
            v4 = [v8 entry];

            v9 = [v2 lastObject];
            v10 = [v9 exit];

            v11 = [MEMORY[0x277D01428] visitsWithExit:*(*(*(a1 + 80) + 8) + 40) beforeDate:v4];
            if ([v11 count])
            {
              v12 = [v11 objectAtIndexedSubscript:0];
              v13 = [v12 entry];

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v14 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
                {
                  v15 = objc_opt_class();
                  v16 = NSStringFromClass(v15);
                  v31 = NSStringFromSelector(*(a1 + 96));
                  v32 = [*(*(*(a1 + 88) + 8) + 40) count];
                  v33 = [objc_opt_class() getAllContextsInOneArray:*(*(*(a1 + 72) + 8) + 40)];
                  v30 = [v33 count];
                  v29 = [*(*(*(a1 + 72) + 8) + 40) count];
                  v28 = [*(*(*(a1 + 80) + 8) + 40) count];
                  *buf = 138414850;
                  v36 = v16;
                  v37 = 2112;
                  v38 = v31;
                  v39 = 2112;
                  v40 = v13;
                  v41 = 2112;
                  v42 = v4;
                  v43 = 2112;
                  v44 = v10;
                  v45 = 2048;
                  v46 = v32;
                  v47 = 2048;
                  v48 = v30;
                  v49 = 2048;
                  v50 = v29;
                  v51 = 2048;
                  v52 = v28;
                  v53 = 2048;
                  v54 = [v2 count];
                  v55 = 2048;
                  v56 = [v11 count];
                  _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, %@, earliest start date for visits ending before yesterday, %@, earliest start date for visits ending yesterday, %@, latest end date for visits ending yesterday, %@, last 24 hour inference request count, %lu, predictions ending yesterday count, %lu, inferences with predictions ending yesterday count, %lu, total fetched visit count, %lu, visits ending yesterday count, %lu, visits before that, %lu", buf, 0x70u);
                }
              }

              [*(a1 + 32) prepareAndSubmitDailyInferenceEventMetrics:*(*(*(a1 + 88) + 8) + 40)];
              [*(a1 + 32) prepareAndSubmitPredictionEventMetrics:*(*(*(a1 + 72) + 8) + 40) yesterdayVisits:v2];
              v17 = [objc_opt_class() getHighProbabilityPredictedContexts:*(*(*(a1 + 72) + 8) + 40)];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v18 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
                {
                  v19 = objc_opt_class();
                  v20 = NSStringFromClass(v19);
                  NSStringFromSelector(*(a1 + 96));
                  v21 = v34 = v10;
                  v22 = [objc_opt_class() getAllContextsInOneArray:v17];
                  v23 = [v22 count];
                  *buf = 138412802;
                  v36 = v20;
                  v37 = 2112;
                  v38 = v21;
                  v39 = 2048;
                  v40 = v23;
                  _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, %@, high probability prediction count, %lu", buf, 0x20u);

                  v10 = v34;
                }
              }

              [*(a1 + 32) prepareAndSubmitTruthEventMetrics:v11 yesterdayVisits:v2 yesterdayPredictions:v17];
            }

            else
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                goto LABEL_28;
              }

              v13 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
              if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
LABEL_27:

LABEL_28:
LABEL_29:

                goto LABEL_7;
              }

              v26 = objc_opt_class();
              v17 = NSStringFromClass(v26);
              v27 = NSStringFromSelector(*(a1 + 96));
              *buf = 138412546;
              v36 = v17;
              v37 = 2112;
              v38 = v27;
              _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, skipping metrics submission due to no visits ending before yesterday", buf, 0x16u);
            }

            goto LABEL_27;
          }
        }
      }
    }
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    return;
  }

  v2 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = NSStringFromSelector(*(a1 + 96));
    *buf = 138412546;
    v36 = v4;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, %@, skipping metrics submission due to errors", buf, 0x16u);

LABEL_7:
  }

LABEL_8:
}

+ (float)calculatePredictability:(id)a3 priorVisits:(id)a4 timeWindowHalfWidth:(double)a5
{
  v163 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      v11 = [v7 placeInference];
      [v11 preferredName];
      v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v13 = [v7 placeInference];
      v14 = [v13 loiIdentifier];
      v15 = [v7 entry];
      *buf = 138413571;
      v152 = v10;
      v153 = 2117;
      v154 = v12;
      v155 = 2112;
      v156 = v14;
      v157 = 2112;
      v158 = v15;
      v159 = 2048;
      v160 = [v8 count];
      v161 = 2048;
      v162 = a5;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, target visit, %{sensitive}@, loiIdentifier, %@, entry, %@, prior visit count, %lu, timeWindowHalfWidthSeconds: %f", buf, 0x3Eu);
    }
  }

  if (!v7 || ([v7 entry], (v16 = objc_claimAutoreleasedReturnValue()) == 0) || (v17 = v16, objc_msgSend(v7, "placeInference"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "loiIdentifier"), v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v17, !v19))
  {
    v59 = 0.0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_123;
    }

    log = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (!os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_122;
    }

    v60 = NSStringFromSelector(a2);
    *buf = 138412290;
    v152 = v60;
    v61 = "%@, Error: Invalid targetVisit";
LABEL_52:
    _os_log_impl(&dword_2304B3000, log, OS_LOG_TYPE_INFO, v61, buf, 0xCu);

    goto LABEL_122;
  }

  if (!v8 || ![v8 count])
  {
    v59 = 0.0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_123;
    }

    log = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (!os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_122;
    }

    v60 = NSStringFromSelector(a2);
    *buf = 138412290;
    v152 = v60;
    v61 = "%@, Error: No priorVisits";
    goto LABEL_52;
  }

  v20 = [MEMORY[0x277CBEA80] currentCalendar];
  v129 = v7;
  v21 = [v7 entry];
  log = v20;
  v22 = [v20 components:512 fromDate:v21];

  v118 = v22;
  v125 = [v22 weekday];
  v123 = [MEMORY[0x277CBEB18] array];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v119 = v8;
  obj = v8;
  v23 = [obj countByEnumeratingWithState:&v143 objects:v150 count:16];
  if (!v23)
  {
    goto LABEL_29;
  }

  v24 = v23;
  v25 = *v144;
  do
  {
    v26 = 0;
    do
    {
      if (*v144 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v143 + 1) + 8 * v26);
      v28 = [v27 placeInference];
      v29 = [v28 loiIdentifier];
      v30 = [v129 placeInference];
      v31 = [v30 loiIdentifier];
      if ([v29 isEqual:v31])
      {
        v32 = [v27 entry];

        if (!v32)
        {
          goto LABEL_21;
        }

        v33 = [v27 entry];
        v28 = [log components:512 fromDate:v33];

        if ([v28 weekday] != v125)
        {
          if (![objc_opt_class() isWithinMidnightBoundary:v27 targetDay:v125 interval:a5])
          {
            goto LABEL_20;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v34 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v35 = NSStringFromSelector(a2);
              *buf = 138412290;
              v152 = v35;
              _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@, including visit within midnight boundary", buf, 0xCu);
            }
          }
        }

        [v123 addObject:v27];
      }

      else
      {
      }

LABEL_20:

LABEL_21:
      ++v26;
    }

    while (v24 != v26);
    v36 = [obj countByEnumeratingWithState:&v143 objects:v150 count:16];
    v24 = v36;
  }

  while (v36);
LABEL_29:

  v37 = v123;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = NSStringFromSelector(a2);
      v40 = COERCE_DOUBLE([v123 count]);
      *buf = 138412546;
      v152 = v39;
      v153 = 2048;
      v154 = v40;
      _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, relevantPriorVisits count: %lu", buf, 0x16u);
    }
  }

  v7 = v129;
  if ([v123 count])
  {
    v41 = [v129 entry];
    [MEMORY[0x277CBEB18] array];
    obja = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v117 = v41;
    v42 = [log components:224 fromDate:v41];
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v124 = v123;
    v43 = [v124 countByEnumeratingWithState:&v139 objects:v149 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = 0.0;
      v46 = MEMORY[0x277D86220];
      v126 = *v140;
      do
      {
        v120 = v45;
        v47 = 0;
        v121 = v44;
        do
        {
          if (*v140 != v126)
          {
            objc_enumerationMutation(v124);
          }

          v48 = [*(*(&v139 + 1) + 8 * v47) entry];
          v49 = [log components:224 fromDate:v48];

          v50 = [log dateFromComponents:v42];
          v51 = [log dateFromComponents:v49];
          [v51 timeIntervalSinceDate:v50];
          v53 = v52;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v54 = v46;
            v55 = v42;
            v56 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              v57 = NSStringFromSelector(a2);
              *buf = 138412546;
              v152 = v57;
              v153 = 2048;
              v154 = v53;
              _os_log_impl(&dword_2304B3000, v56, OS_LOG_TYPE_INFO, "%@, Time Difference: %f", buf, 0x16u);

              v44 = v121;
            }

            v42 = v55;
            v46 = v54;
          }

          if (fabs(v53) <= a5)
          {
            v58 = &unk_2845A2258;
          }

          else
          {
            v58 = &unk_2845A2268;
          }

          [*&obja addObject:v58];

          ++v47;
        }

        while (v44 != v47);
        *&v45 = v44 + *&v120;
        v44 = [v124 countByEnumeratingWithState:&v139 objects:v149 count:16];
      }

      while (v44);
    }

    else
    {
      v45 = 0.0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v66 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        v67 = NSStringFromSelector(a2);
        *buf = 138412546;
        v152 = v67;
        v153 = 2112;
        v154 = obja;
        _os_log_impl(&dword_2304B3000, v66, OS_LOG_TYPE_INFO, "%@, priorVisitOccupancies: %@", buf, 0x16u);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v68 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        v69 = NSStringFromSelector(a2);
        *buf = 138412546;
        v152 = v69;
        v153 = 2048;
        v154 = v45;
        _os_log_impl(&dword_2304B3000, v68, OS_LOG_TYPE_INFO, "%@, numberOfVisitsByDayOfWeek: %ld", buf, 0x16u);
      }
    }

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v70 = *&obja;
    v71 = [v70 countByEnumeratingWithState:&v135 objects:v148 count:16];
    v72 = 0.0;
    v73 = 0.0;
    if (v71)
    {
      v74 = v71;
      v75 = *v136;
      do
      {
        for (i = 0; i != v74; ++i)
        {
          if (*v136 != v75)
          {
            objc_enumerationMutation(v70);
          }

          [*(*(&v135 + 1) + 8 * i) floatValue];
          v73 = v73 + v77;
        }

        v74 = [v70 countByEnumeratingWithState:&v135 objects:v148 count:16];
      }

      while (v74);
    }

    if (*&v45 >= 1)
    {
      v72 = v73 / *&v45;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v78 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        v79 = NSStringFromSelector(a2);
        *buf = 138412546;
        v152 = v79;
        v153 = 2048;
        v154 = v72;
        _os_log_impl(&dword_2304B3000, v78, OS_LOG_TYPE_INFO, "%@, averageOccupancy: %f", buf, 0x16u);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v80 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        v81 = NSStringFromSelector(a2);
        *buf = 138412546;
        v152 = v81;
        v153 = 2048;
        v154 = v72;
        _os_log_impl(&dword_2304B3000, v80, OS_LOG_TYPE_INFO, "%@, correlation: %f", buf, 0x16u);
      }
    }

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v82 = v124;
    v83 = [v82 countByEnumeratingWithState:&v131 objects:v147 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v132;
      v86 = 0.0;
      v87 = 0.0;
      do
      {
        for (j = 0; j != v84; ++j)
        {
          if (*v132 != v85)
          {
            objc_enumerationMutation(v82);
          }

          v89 = [*(*(&v131 + 1) + 8 * j) entry];
          v90 = [log components:224 fromDate:v89];

          v91 = [log dateFromComponents:v42];
          v92 = [log dateFromComponents:v90];
          [v92 timeIntervalSinceDate:v91];
          v94 = fabs(v93);
          v95 = v87 + v93 * v93;
          if (v94 <= a5)
          {
            v86 = v86 + 1.0;
            v87 = v95;
          }
        }

        v84 = [v82 countByEnumeratingWithState:&v131 objects:v147 count:16];
      }

      while (v84);
    }

    else
    {
      v86 = 0.0;
      v87 = 0.0;
    }

    if (v86 <= 0.0)
    {
      v96 = v87;
    }

    else
    {
      v96 = v87 / v86;
    }

    v97 = -v96 / (a5 * a5);
    v98 = expf(v97);
    v37 = v123;
    v62 = v117;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v99 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
      {
        v100 = NSStringFromSelector(a2);
        *buf = 138412546;
        v152 = v100;
        v153 = 2048;
        v154 = v96;
        _os_log_impl(&dword_2304B3000, v99, OS_LOG_TYPE_INFO, "%@, timeVariance: %f", buf, 0x16u);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v101 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
      {
        v102 = NSStringFromSelector(a2);
        *buf = 138412546;
        v152 = v102;
        v153 = 2048;
        v154 = v98;
        _os_log_impl(&dword_2304B3000, v101, OS_LOG_TYPE_INFO, "%@, variancePenalty: %f", buf, 0x16u);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v103 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
      {
        v104 = NSStringFromSelector(a2);
        *buf = 138412546;
        v152 = v104;
        v153 = 2048;
        v154 = v98;
        _os_log_impl(&dword_2304B3000, v103, OS_LOG_TYPE_INFO, "%@, scaleFactor: %f", buf, 0x16u);
      }
    }

    v105 = v72 * v98;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v106 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
      {
        v107 = NSStringFromSelector(a2);
        *buf = 138412546;
        v152 = v107;
        v153 = 2048;
        v154 = v105;
        _os_log_impl(&dword_2304B3000, v106, OS_LOG_TYPE_INFO, "%@, predictability (before clamping): %f", buf, 0x16u);
      }
    }

    v59 = fmaxf(fminf(v105, 1.0), 0.0);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v108 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
      {
        v109 = NSStringFromSelector(a2);
        v110 = [v129 placeInference];
        v111 = [v110 preferredName];
        v112 = [v129 placeInference];
        v113 = [v112 loiIdentifier];
        [v129 entry];
        v115 = v114 = v42;
        *buf = 138413315;
        v152 = v109;
        v153 = 2048;
        v154 = v59;
        v155 = 2117;
        v156 = v111;
        v157 = 2112;
        v158 = v113;
        v159 = 2112;
        v160 = v115;
        _os_log_impl(&dword_2304B3000, v108, OS_LOG_TYPE_INFO, "%@, predictability, %f, for target visit, %{sensitive}@, loiIdentifier, %@, entry, %@", buf, 0x34u);

        v42 = v114;
        v62 = v117;

        v37 = v123;
      }
    }

    v7 = v129;
    v8 = v119;
    goto LABEL_120;
  }

  v59 = 0.0;
  v8 = v119;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v62 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v63 = NSStringFromSelector(a2);
      v64 = [v129 placeInference];
      [v64 loiIdentifier];
      v65 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412802;
      v152 = v63;
      v153 = 2112;
      v154 = v65;
      v155 = 2048;
      v156 = v125;
      _os_log_impl(&dword_2304B3000, v62, OS_LOG_TYPE_INFO, "%@, No relevant prior visits found for LOI: %@ and day of week: %ld", buf, 0x20u);
    }

LABEL_120:
  }

LABEL_122:
LABEL_123:

  return v59;
}

- (void)getVisitsForInterval:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RTPredictedContextMetricsManager *)self visitConsolidator];
  v9 = objc_alloc(MEMORY[0x277D01340]);
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_28459F9A8, &unk_28459F9C0, 0}];
  LOWORD(v14) = 256;
  v12 = [v9 initWithAscending:1 confidence:v10 dateInterval:v7 labelVisit:1 limit:0 sources:v11 redact:v14 filterPairedVisitEntries:?];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__RTPredictedContextMetricsManager_getVisitsForInterval_completion___block_invoke;
  v15[3] = &unk_2788C6D60;
  v16 = v6;
  v13 = v6;
  [v8 fetchStoredVisitsWithOptions:v12 handler:v15];
}

void __68__RTPredictedContextMetricsManager_getVisitsForInterval_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTPredictedContextMetricsManager_getVisitsForInterval_completion___block_invoke_2;
  block[3] = &unk_2788C6210;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __68__RTPredictedContextMetricsManager_getVisitsForInterval_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)getPredictionsForInterval:(id)a3 completion:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [RTStoredPredictedContextFetchOptions alloc];
  v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"predictionStartDate" ascending:1];
  v16[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v11 = [(RTStoredPredictedContextFetchOptions *)v8 initWithDateInterval:v7 filterContextTypeMask:0 resultSortDescriptors:v10 limit:0];

  v12 = [(RTPredictedContextMetricsManager *)self predictedContextStore];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__RTPredictedContextMetricsManager_getPredictionsForInterval_completion___block_invoke;
  v14[3] = &unk_2788C5268;
  v15 = v6;
  v13 = v6;
  [v12 fetchPredictedContextAndRequestDateWithOptions:v11 handler:v14];
}

void __73__RTPredictedContextMetricsManager_getPredictionsForInterval_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__RTPredictedContextMetricsManager_getPredictionsForInterval_completion___block_invoke_2;
  block[3] = &unk_2788C6210;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __73__RTPredictedContextMetricsManager_getPredictionsForInterval_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)getRequestsForInterval:(id)a3 completion:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [RTStoredPredictedContextRequestFetchOptions alloc];
  v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"requestStartDate" ascending:1];
  v16[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v11 = [(RTStoredPredictedContextRequestFetchOptions *)v8 initWithDateInterval:v7 inferenceTriggerReason:0 resultSortDescriptors:v10 limit:0];

  v12 = [(RTPredictedContextMetricsManager *)self predictedContextStore];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__RTPredictedContextMetricsManager_getRequestsForInterval_completion___block_invoke;
  v14[3] = &unk_2788C6D60;
  v15 = v6;
  v13 = v6;
  [v12 fetchPredictedContextRequestsWithOptions:v11 handler:v14];
}

void __70__RTPredictedContextMetricsManager_getRequestsForInterval_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTPredictedContextMetricsManager_getRequestsForInterval_completion___block_invoke_2;
  block[3] = &unk_2788C6210;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __70__RTPredictedContextMetricsManager_getRequestsForInterval_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

+ (int64_t)isCorrectPrediction:(id)a3 forTruthVisits:(id)a4 matchingVisit:(id *)a5
{
  v95 = *MEMORY[0x277D85DE8];
  v69 = a3;
  v7 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  if (v69 && (v53 = a5, [v69 locationOfInterest], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v52 = v7;
    v10 = v7;
    v68 = [v10 countByEnumeratingWithState:&v70 objects:v94 count:16];
    if (v68)
    {
      v67 = *v71;
      obj = v10;
      while (2)
      {
        for (i = 0; i != v68; ++i)
        {
          if (*v71 != v67)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v70 + 1) + 8 * i);
          v13 = [v69 locationOfInterest];
          v14 = [v13 identifier];
          v15 = [v12 placeInference];
          v16 = [v15 loiIdentifier];
          v17 = [v14 isEqual:v16];

          v18 = [v69 dateInterval];
          v19 = [v18 startDate];
          v20 = [v19 date];
          v21 = [v12 exit];
          if ([v20 compare:v21] == -1)
          {
            v63 = [v69 dateInterval];
            v23 = [v63 endDate];
            v24 = [v23 date];
            [v12 entry];
            v65 = i;
            v25 = v12;
            v27 = v26 = v17;
            v22 = [v24 compare:v27] == 1;

            v17 = v26;
            v12 = v25;
            i = v65;
          }

          else
          {
            v22 = 0;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v28 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = objc_opt_class();
              v66 = NSStringFromClass(v29);
              v64 = NSStringFromSelector(a2);
              v60 = [v69 locationOfInterest];
              [v60 identifier];
              v30 = log = v28;
              v59 = [v69 dateInterval];
              v58 = [v59 startDate];
              v31 = [v58 date];
              v57 = [v69 dateInterval];
              v56 = [v57 endDate];
              v32 = [v56 date];
              v55 = [v12 placeInference];
              [v55 loiIdentifier];
              v34 = v33 = v22;
              [v12 entry];
              v36 = v35 = v17;
              v37 = [v12 exit];
              v38 = v37;
              *buf = 138414594;
              v39 = @"❌";
              if (v35)
              {
                v40 = @"✅";
              }

              else
              {
                v40 = @"❌";
              }

              v75 = v66;
              if (v33)
              {
                v39 = @"✅";
              }

              v76 = 2112;
              v77 = v64;
              v78 = 2112;
              v79 = v30;
              v80 = 2112;
              v81 = v31;
              v82 = 2112;
              v83 = v32;
              v84 = 2112;
              v85 = v34;
              v86 = 2112;
              v87 = v36;
              v88 = 2112;
              v89 = v37;
              v90 = 2112;
              v91 = v40;
              v92 = 2112;
              v93 = v39;
              _os_log_impl(&dword_2304B3000, log, OS_LOG_TYPE_INFO, "%@, %@, comparing prediction loiIdentifier, %@, dateInterval start, %@, end, %@, with visit loiIdentifier, %@, entry, %@, exit, %@, same loiIdentifier, %@, overlapping intervals, %@", buf, 0x66u);

              v17 = v35;
              v22 = v33;

              v28 = log;
            }
          }

          if ((v17 & v22) == 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v46 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
              {
                v47 = objc_opt_class();
                v48 = NSStringFromClass(v47);
                v49 = NSStringFromSelector(a2);
                *buf = 138413058;
                v75 = v48;
                v76 = 2112;
                v77 = v49;
                v78 = 2112;
                v79 = v12;
                v80 = 2112;
                v81 = v69;
                _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_INFO, "%@, %@, ✅ overlapping truth visit, %@, prediction, %@", buf, 0x2Au);
              }
            }

            if (v53)
            {
              v50 = v12;
              *v53 = v12;
            }

            v45 = 1;
            v7 = v52;
            v41 = obj;
            goto LABEL_37;
          }
        }

        v10 = obj;
        v68 = [obj countByEnumeratingWithState:&v70 objects:v94 count:16];
        if (v68)
        {
          continue;
        }

        break;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v41 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      v7 = v52;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        v44 = NSStringFromSelector(a2);
        *buf = 138412802;
        v75 = v43;
        v76 = 2112;
        v77 = v44;
        v78 = 2112;
        v79 = v69;
        _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "%@, %@, ❌ no overlapping truth visit for prediction, %@", buf, 0x20u);
      }

      v45 = 2;
LABEL_37:
    }

    else
    {
      v45 = 2;
      v7 = v52;
    }
  }

  else
  {
    v45 = 0;
  }

  return v45;
}

+ (id)isCorrectTruth:(id)a3 forPredictions:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7 && ([v7 placeInference], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "loiIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__164;
    v44 = __Block_byref_object_dispose__164;
    v45 = objc_opt_new();
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __66__RTPredictedContextMetricsManager_isCorrectTruth_forPredictions___block_invoke;
    v33 = &unk_2788D11F8;
    v11 = v7;
    v38 = a1;
    v39 = a2;
    v34 = v11;
    v35 = &v46;
    v36 = &v50;
    v37 = &v40;
    [v8 enumerateKeysAndObjectsUsingBlock:&v30];
    if (v47[3] < 1)
    {
      v15 = 0.0;
    }

    else
    {
      v12 = [MEMORY[0x277CBEAA8] getEarliestDate:{v41[5], v30, v31, v32, v33}];
      v13 = [v11 entry];
      [v13 timeIntervalSinceDate:v12];
      v15 = v14;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = NSStringFromSelector(a2);
        v21 = [objc_opt_class() getAllContextsInOneArray:v8];
        v22 = [v21 count];
        v23 = v47[3];
        v24 = v51[6];
        *buf = 138413570;
        v57 = v19;
        v58 = 2112;
        v59 = v20;
        v60 = 2048;
        v61 = v22;
        v62 = 2048;
        v63 = v23;
        v64 = 2048;
        v65 = v24;
        v66 = 2048;
        v67 = v15;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, %@, prediction count, %lu, truePositive count, %lu, highestProbability, %.2f, leadTime, %.2f", buf, 0x3Eu);
      }
    }

    v54[0] = @"truePositiveCount";
    v25 = [MEMORY[0x277CCABB0] numberWithInteger:{v47[3], v30, v31, v32, v33}];
    v55[0] = v25;
    v54[1] = @"highestProbability";
    *&v26 = v51[6];
    v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
    v55[1] = v27;
    v54[2] = @"leadTime";
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    v55[2] = v28;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:3];

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(&v50, 8);
  }

  else
  {
    v16 = &unk_2845A2450;
  }

  return v16;
}

void __66__RTPredictedContextMetricsManager_isCorrectTruth_forPredictions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v83 = *MEMORY[0x277D85DE8];
  v49 = a2;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = a3;
  v56 = [obj countByEnumeratingWithState:&v58 objects:v82 count:16];
  if (v56)
  {
    v55 = *v59;
    v6 = MEMORY[0x277D86220];
    *&v5 = 138413059;
    v42 = v5;
    v51 = a1;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v59 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v58 + 1) + 8 * i);
        v9 = [v8 locationOfInterest];
        v10 = [v9 identifier];
        v11 = [*(a1 + 32) placeInference];
        v12 = [v11 loiIdentifier];
        v13 = [v10 isEqual:v12];

        v14 = [v8 dateInterval];
        v15 = [v14 startDate];
        v16 = [v15 date];
        v17 = [*(a1 + 32) exit];
        if ([v16 compare:v17] == -1)
        {
          v18 = [v8 dateInterval];
          [v18 endDate];
          v53 = v8;
          v20 = v19 = v13;
          v21 = [v20 date];
          v22 = [*(a1 + 32) entry];
          v57 = [v21 compare:v22] == 1;

          a1 = v51;
          v13 = v19;
          v8 = v53;

          v6 = MEMORY[0x277D86220];
        }

        else
        {
          v57 = 0;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v23 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = objc_opt_class();
            v54 = NSStringFromClass(v24);
            v52 = NSStringFromSelector(*(a1 + 72));
            v48 = [v8 locationOfInterest];
            v25 = [v48 identifier];
            v47 = [v8 dateInterval];
            v46 = [v47 startDate];
            v26 = [v46 date];
            v45 = [v8 dateInterval];
            v44 = [v45 endDate];
            v27 = [v44 date];
            v43 = [*(a1 + 32) placeInference];
            v28 = [v43 loiIdentifier];
            [*(a1 + 32) entry];
            v30 = v29 = v13;
            v31 = [*(a1 + 32) exit];
            v32 = v31;
            *buf = 138414594;
            v33 = @"❌";
            if (v29)
            {
              v34 = @"✅";
            }

            else
            {
              v34 = @"❌";
            }

            v63 = v54;
            if (v57)
            {
              v33 = @"✅";
            }

            v64 = 2112;
            v65 = v52;
            v66 = 2112;
            v67 = v25;
            v68 = 2112;
            v69 = v26;
            v70 = 2112;
            v71 = v27;
            v72 = 2112;
            v73 = v28;
            v74 = 2112;
            v75 = v30;
            v76 = 2112;
            v77 = v31;
            v78 = 2112;
            v79 = v34;
            v80 = 2112;
            v81 = v33;
            _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@, %@, comparing visit loiIdentifier, %@, entry, %@, exit, %@, with prediction loiIdentifier, %@, dateInterval start, %@, end, %@, same loiIdentifier, %@, overlapping intervals, %@", buf, 0x66u);

            a1 = v51;
            v13 = v29;

            v6 = MEMORY[0x277D86220];
          }
        }

        if ((v13 & v57) == 1)
        {
          ++*(*(*(a1 + 40) + 8) + 24);
          [v8 probability];
          if (v35 > *(*(*(a1 + 48) + 8) + 24))
          {
            [v8 probability];
            *&v36 = v36;
            *(*(*(a1 + 48) + 8) + 24) = LODWORD(v36);
          }

          [*(*(*(a1 + 56) + 8) + 40) addObject:v49];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            v37 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = objc_opt_class();
              v39 = NSStringFromClass(v38);
              v40 = NSStringFromSelector(*(a1 + 72));
              v41 = *(a1 + 32);
              *buf = v42;
              v63 = v39;
              v64 = 2112;
              v65 = v40;
              v66 = 2117;
              v67 = v8;
              v68 = 2117;
              v69 = v41;
              _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "%@, %@, ✅ true positive prediction, %{sensitive}@, visit, %{sensitive}@", buf, 0x2Au);
            }
          }
        }
      }

      v56 = [obj countByEnumeratingWithState:&v58 objects:v82 count:16];
    }

    while (v56);
  }
}

+ (id)getPredictedContextLocationFromDictionary:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v17 = [MEMORY[0x277CBEB38] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = v3;
  v19 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v18 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v4);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v7 = [v4 objectForKeyedSubscript:v6];
        v8 = [MEMORY[0x277CBEB18] array];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v20 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v8 addObject:v14];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }

        if ([v8 count])
        {
          [v17 setObject:v8 forKeyedSubscript:v6];
        }
      }

      v19 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v19);
  }

  v15 = [v17 copy];

  return v15;
}

+ (id)getAllContextsInOneArray:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 allValues];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addObjectsFromArray:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [v4 copy];

  return v10;
}

+ (int64_t)getFrequentLoiFromCount:(int64_t)a3
{
  v3 = 3;
  if (a3 <= 40)
  {
    v3 = 0;
  }

  if ((a3 - 17) >= 0x18)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if ((a3 - 1) >= 0x10)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

+ (id)getHighProbabilityPredictedContexts:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__RTPredictedContextMetricsManager_getHighProbabilityPredictedContexts___block_invoke;
  v9[3] = &unk_2788D1220;
  v10 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __72__RTPredictedContextMetricsManager_getHighProbabilityPredictedContexts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [v13 probability];
        if (v14 >= 0.8)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v15 = [v7 copy];
    [*(a1 + 32) setObject:v15 forKeyedSubscript:v5];
  }
}

+ (BOOL)isWithinMidnightBoundary:(id)a3 targetDay:(int64_t)a4 interval:(double)a5
{
  v7 = a3;
  v8 = [v7 entry];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [v7 entry];
    v11 = [v9 components:736 fromDate:v10];

    v12 = [v11 weekday];
    v13 = 3600 * [v11 hour];
    v14 = v13 + 60 * [v11 minute];
    v15 = v14 + [v11 second];
    if (v12 == a4 && (v15 <= a5 || (86400 - v15) <= a5))
    {
      goto LABEL_18;
    }

    v16 = 7;
    if (a4 != 1)
    {
      v16 = a4 - 1;
    }

    v17 = 1;
    if (a4 != 7)
    {
      v17 = a4 + 1;
    }

    if (v12 == v16 && (86400 - v15) <= a5)
    {
LABEL_18:
      v19 = 1;
    }

    else
    {
      v19 = v15 <= a5 && v12 == v17;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (double)getTotalInferenceLatencyForRequests:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 requestStartDate];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 requestEndDate];

          if (v12)
          {
            v13 = [v9 requestEndDate];
            v14 = [v9 requestStartDate];
            [v13 timeIntervalSinceDate:v14];
            v16 = v15;

            v7 = v7 + v16;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

+ (double)getTotalMemoryFootprintForRequests:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 memoryFootprintEnd];
        v11 = v10;
        [v9 memoryFootprintStart];
        v7 = v7 + v11 - v12;
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

+ (id)getRequestCountByInferenceTriggerReasonForRequests:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v16 + 1) + 8 * i), "inferenceTriggerReason", v16)}];
        v11 = [v4 objectForKeyedSubscript:v10];
        v12 = v11;
        if (v11)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "integerValue") + 1}];
          [v4 setObject:v13 forKeyedSubscript:v10];
        }

        else
        {
          [v4 setObject:&unk_28459F9F0 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];

  return v14;
}

@end