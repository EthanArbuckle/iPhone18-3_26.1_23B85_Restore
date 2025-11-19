@interface RTSettledStateMetrics
+ (id)binsForDistanceTraveled;
+ (id)binsForDuration;
+ (id)createSettledStateMetricsForNewSettledStateTransition:(id)a3 settledStateTransitionStore:(id)a4 locationStore:(id)a5;
+ (unint64_t)bucketForDistanceTraveled:(double)a3;
+ (unint64_t)bucketForDurationLength:(double)a3;
+ (void)submitSettledStateMetricsForSettledStateTransition:(id)a3 settledStateTransitionStore:(id)a4 locationStore:(id)a5;
- (RTSettledStateMetrics)initWithCurrentSettledStateTransition:(id)a3 nextSettledStateTransition:(id)a4 distanceTraveled:(unint64_t)a5;
@end

@implementation RTSettledStateMetrics

- (RTSettledStateMetrics)initWithCurrentSettledStateTransition:(id)a3 nextSettledStateTransition:(id)a4 distanceTraveled:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v22.receiver = self;
  v22.super_class = RTSettledStateMetrics;
  v10 = [(RTMetric *)&v22 init];
  if (v10)
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = objc_opt_class();
    v13 = [v9 date];
    v14 = [v8 date];
    [v13 timeIntervalSinceDate:v14];
    v15 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "bucketForDurationLength:")}];
    v16 = [(RTMetric *)v10 metrics];
    [v16 setObject:v15 forKeyedSubscript:@"DurationLength"];

    v17 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "transitionToType") == 2}];
    v18 = [(RTMetric *)v10 metrics];
    [v18 setObject:v17 forKeyedSubscript:@"IsSettledState"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "bucketForDistanceTraveled:", a5)}];
    v20 = [(RTMetric *)v10 metrics];
    [v20 setObject:v19 forKeyedSubscript:@"DistanceTraveledAfterEnteringState"];
  }

  return v10;
}

+ (id)binsForDistanceTraveled
{
  v2 = binsForDistanceTraveled_binsForDistanceTraveled;
  if (!binsForDistanceTraveled_binsForDistanceTraveled)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_2845A0A70];
    v4 = binsForDistanceTraveled_binsForDistanceTraveled;
    binsForDistanceTraveled_binsForDistanceTraveled = v3;

    v2 = binsForDistanceTraveled_binsForDistanceTraveled;
  }

  return v2;
}

+ (unint64_t)bucketForDistanceTraveled:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v5 = +[RTSettledStateMetrics binsForDistanceTraveled];
  v6 = [a1 binForNumber:v4 bins:v5];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

+ (id)binsForDuration
{
  v2 = binsForDuration_binsForDuration;
  if (!binsForDuration_binsForDuration)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_2845A0A88];
    v4 = binsForDuration_binsForDuration;
    binsForDuration_binsForDuration = v3;

    v5 = 23;
    v6 = 3600;
    do
    {
      v7 = binsForDuration_binsForDuration;
      v8 = [MEMORY[0x277CCABB0] numberWithLong:v6];
      [v7 addObject:v8];

      v6 += 3600;
      --v5;
    }

    while (v5);
    v9 = 4;
    v10 = 86400;
    do
    {
      v11 = binsForDuration_binsForDuration;
      v12 = [MEMORY[0x277CCABB0] numberWithLong:v10];
      [v11 addObject:v12];

      v10 += 86400;
      --v9;
    }

    while (v9);
    v2 = binsForDuration_binsForDuration;
  }

  return v2;
}

+ (unint64_t)bucketForDurationLength:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v5 = +[RTSettledStateMetrics binsForDuration];
  v6 = [a1 binForNumber:v4 bins:v5];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

+ (id)createSettledStateMetricsForNewSettledStateTransition:(id)a3 settledStateTransitionStore:(id)a4 locationStore:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [RTStoredSettledStateTransitionEnumerationOptions alloc];
  v11 = objc_alloc(MEMORY[0x277CCA970]);
  v12 = [MEMORY[0x277CBEAA8] distantPast];
  v13 = [MEMORY[0x277CBEAA8] distantFuture];
  v14 = [v11 initWithStartDate:v12 endDate:v13];
  v15 = [(RTStoredSettledStateTransitionEnumerationOptions *)v10 initWithAscending:0 dateInterval:v14 limit:&unk_28459C930 batchSize:1];

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__23;
  v47 = __Block_byref_object_dispose__23;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__23;
  v41 = __Block_byref_object_dispose__23;
  v42 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __121__RTSettledStateMetrics_createSettledStateMetricsForNewSettledStateTransition_settledStateTransitionStore_locationStore___block_invoke;
  v33[3] = &unk_2788C6AC0;
  v35 = &v43;
  v16 = v7;
  v34 = v16;
  v36 = &v37;
  [v8 enumerateStoredSettledStateTransitionsWithOptions:v15 enumerationBlock:v33];
  if (v44[5])
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v31 = v44[5];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v31;
    v28 = "Error fetching settledStateTransitions: %@";
    v29 = v17;
    v30 = 12;
    goto LABEL_15;
  }

  v20 = v38[5];
  if (v20)
  {
    v21 = [v20 transitionToType];
    if (v21 == [v16 transitionFromType])
    {
      v22 = [RTLocationStoreMetricOptions alloc];
      v23 = objc_alloc(MEMORY[0x277CCA970]);
      v24 = [v38[5] date];
      v25 = [v16 date];
      v26 = [v23 initWithStartDate:v24 endDate:v25];
      v17 = [(RTLocationStoreMetricOptions *)v22 initWithDateInterval:v26 uncertaintyThreshold:2500.0];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v50 = 0x2020000000;
      v51 = 0;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __121__RTSettledStateMetrics_createSettledStateMetricsForNewSettledStateTransition_settledStateTransitionStore_locationStore___block_invoke_46;
      v32[3] = &unk_2788C6AE8;
      v32[4] = &buf;
      [v9 fetchMetricsWithOptions:v17 handler:v32];
      v27 = [RTSettledStateMetrics alloc];
      v18 = [(RTSettledStateMetrics *)v27 initWithCurrentSettledStateTransition:v38[5] nextSettledStateTransition:v16 distanceTraveled:*(*(&buf + 1) + 24)];
      _Block_object_dispose(&buf, 8);
      goto LABEL_4;
    }

    v17 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_3:
      v18 = 0;
LABEL_4:

      goto LABEL_5;
    }

    LOWORD(buf) = 0;
    v28 = "latestStoredSettledStateTransition.transitionToType and newSettledStateTransition.transitionFromType are of different type, something was missed!";
    v29 = v17;
    v30 = 2;
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, v28, &buf, v30);
    goto LABEL_3;
  }

  v18 = 0;
LABEL_5:

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  return v18;
}

void __121__RTSettledStateMetrics_createSettledStateMetricsForNewSettledStateTransition_settledStateTransitionStore_locationStore___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = [v7 firstObject];
  if (v9 && (v10 = v9, [v7 firstObject], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "date"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "date"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isBeforeDate:", v13), v13, v12, v11, v10, !v14))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [*(a1 + 32) date];
      v20 = [v7 firstObject];
      v21 = [v20 date];
      v22 = 138412546;
      v23 = v19;
      v24 = 2112;
      v25 = v21;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "New settledStateTransition: %@ isOnOrBefore a stored settledStateTransition: %@", &v22, 0x16u);
    }
  }

  else
  {
    v15 = [v7 firstObject];
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  *a4 = 1;
}

uint64_t __121__RTSettledStateMetrics_createSettledStateMetricsForNewSettledStateTransition_settledStateTransitionStore_locationStore___block_invoke_46(uint64_t a1, void *a2)
{
  result = [a2 distanceTraveled];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

+ (void)submitSettledStateMetricsForSettledStateTransition:(id)a3 settledStateTransitionStore:(id)a4 locationStore:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() createSettledStateMetricsForNewSettledStateTransition:v9 settledStateTransitionStore:v8 locationStore:v7];

  if (v10)
  {
    v11 = 0;
    [v10 submitMetricsWithError:&v11];
  }
}

@end