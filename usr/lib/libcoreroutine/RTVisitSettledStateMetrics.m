@interface RTVisitSettledStateMetrics
+ (id)binsForDuration;
+ (id)createVisitSettledStateMetricsForSettledStateTransitionStore:(id)a3 startDate:(id)a4 endDate:(id)a5 isVisit:(BOOL)a6;
+ (unint64_t)boundedIntegerMetricForCountOfSettledStateTransitions:(unint64_t)a3;
+ (unint64_t)boundedIntegerMetricForPercentageOfTimeSettled:(unint64_t)a3;
+ (unint64_t)boundedIntegerMetricPercentageOfTimeSettledForTimeSettled:(double)a3 overDuration:(double)a4;
+ (unint64_t)bucketForDuration:(double)a3;
+ (void)submitVisitSettledStateMetricsForStartDate:(id)a3 endDate:(id)a4 isVisit:(BOOL)a5 settledStateTransitionStore:(id)a6;
- (RTVisitSettledStateMetrics)initWithCountOfSettledStateTransitions:(unint64_t)a3 duration:(double)a4 isVisit:(BOOL)a5 timeSettled:(double)a6;
@end

@implementation RTVisitSettledStateMetrics

+ (id)createVisitSettledStateMetricsForSettledStateTransitionStore:(id)a3 startDate:(id)a4 endDate:(id)a5 isVisit:(BOOL)a6
{
  v6 = a6;
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "+[RTVisitSettledStateMetrics createVisitSettledStateMetricsForSettledStateTransitionStore:startDate:endDate:isVisit:]";
      *&buf[12] = 1024;
      *&buf[14] = 39;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: settledStateTransitionStore (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v11)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "+[RTVisitSettledStateMetrics createVisitSettledStateMetricsForSettledStateTransitionStore:startDate:endDate:isVisit:]";
      *&buf[12] = 1024;
      *&buf[14] = 40;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v12)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "+[RTVisitSettledStateMetrics createVisitSettledStateMetricsForSettledStateTransitionStore:startDate:endDate:isVisit:]";
      *&buf[12] = 1024;
      *&buf[14] = 41;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate (in %s:%d)", buf, 0x12u);
    }
  }

  v16 = [RTStoredSettledStateTransitionEnumerationOptions alloc];
  v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v11 endDate:v12];
  v18 = [(RTStoredSettledStateTransitionEnumerationOptions *)v16 initWithAscending:1 dateInterval:v17 limit:0 batchSize:1];

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v42 = __Block_byref_object_copy__166;
  v43 = __Block_byref_object_dispose__166;
  v19 = v11;
  v44 = v19;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__166;
  v31 = __Block_byref_object_dispose__166;
  v32 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __117__RTVisitSettledStateMetrics_createVisitSettledStateMetricsForSettledStateTransitionStore_startDate_endDate_isVisit___block_invoke;
  v26[3] = &unk_2788D1318;
  v26[4] = &v33;
  v26[5] = buf;
  v26[6] = &v37;
  v26[7] = &v27;
  v26[8] = a2;
  [v10 enumerateStoredSettledStateTransitionsWithOptions:v18 enumerationBlock:v26];
  if ([v28[5] transitionToType] == 2)
  {
    v20 = [v28[5] date];
    [v12 timeIntervalSinceDate:v20];
    v38[3] = v21 + v38[3];
  }

  v22 = [RTVisitSettledStateMetrics alloc];
  v23 = v34[3];
  [v12 timeIntervalSinceDate:v19];
  v24 = [RTVisitSettledStateMetrics initWithCountOfSettledStateTransitions:v22 duration:"initWithCountOfSettledStateTransitions:duration:isVisit:timeSettled:" isVisit:v23 timeSettled:v6];
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v37, 8);

  return v24;
}

void __117__RTVisitSettledStateMetrics_createVisitSettledStateMetricsForSettledStateTransitionStore_startDate_endDate_isVisit___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  *(*(*(a1 + 32) + 8) + 24) += [v7 count];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if ([v14 transitionToType] == 2)
        {
          v15 = [v14 date];
        }

        else
        {
          if (!*(*(*(a1 + 40) + 8) + 40))
          {
            continue;
          }

          if ([v14 transitionFromType] == 2)
          {
            v16 = [v14 date];
            [v16 timeIntervalSinceDate:*(*(*(a1 + 40) + 8) + 40)];
            *(*(*(a1 + 48) + 8) + 24) = v17 + *(*(*(a1 + 48) + 8) + 24);
          }

          v15 = 0;
        }

        v18 = *(*(a1 + 40) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v15;
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v11);
  }

  v20 = [v9 lastObject];

  if (v20)
  {
    v21 = [v9 lastObject];
    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

  if (v8)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412546;
      v31 = v25;
      v32 = 2112;
      v33 = v8;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@, RTSettledStateTransitions enumeration eror: %@", buf, 0x16u);
    }

    *a4 = 1;
  }
}

+ (void)submitVisitSettledStateMetricsForStartDate:(id)a3 endDate:(id)a4 isVisit:(BOOL)a5 settledStateTransitionStore:(id)a6
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = [RTVisitSettledStateMetrics createVisitSettledStateMetricsForSettledStateTransitionStore:a6 startDate:a3 endDate:a4 isVisit:a5];
  v7 = v6;
  if (v6)
  {
    v10 = 0;
    [v6 submitMetricsWithError:&v10];
    v8 = v10;
    if (v8)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v8;
        _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Error submitting RTVisitSettledStateMetrics: %@", buf, 0xCu);
      }
    }
  }
}

+ (unint64_t)boundedIntegerMetricForCountOfSettledStateTransitions:(unint64_t)a3
{
  if (a3 >= 0x12C)
  {
    return 300;
  }

  else
  {
    return a3;
  }
}

+ (id)binsForDuration
{
  v2 = _binsForDuration;
  if (!_binsForDuration)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_2845A1658];
    v4 = _binsForDuration;
    _binsForDuration = v3;

    v5 = 23;
    v6 = 3600;
    do
    {
      v7 = _binsForDuration;
      v8 = [MEMORY[0x277CCABB0] numberWithLong:v6];
      [v7 addObject:v8];

      v6 += 3600;
      --v5;
    }

    while (v5);
    v9 = 5;
    v10 = 86400;
    do
    {
      v11 = _binsForDuration;
      v12 = [MEMORY[0x277CCABB0] numberWithLong:v10];
      [v11 addObject:v12];

      v10 += 86400;
      --v9;
    }

    while (v9);
    v2 = _binsForDuration;
  }

  return v2;
}

+ (unint64_t)bucketForDuration:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v5 = +[RTVisitSettledStateMetrics binsForDuration];
  v6 = [a1 binForNumber:v4 bins:v5];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

+ (unint64_t)boundedIntegerMetricPercentageOfTimeSettledForTimeSettled:(double)a3 overDuration:(double)a4
{
  v13 = *MEMORY[0x277D85DE8];
  if (a4 <= 0.0)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "+[RTVisitSettledStateMetrics boundedIntegerMetricPercentageOfTimeSettledForTimeSettled:overDuration:]";
      v11 = 1024;
      v12 = 138;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: duration > 0 (in %s:%d)", &v9, 0x12u);
    }
  }

  if (a3 < 0.0)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "+[RTVisitSettledStateMetrics boundedIntegerMetricPercentageOfTimeSettledForTimeSettled:overDuration:]";
      v11 = 1024;
      v12 = 139;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: timeSettled >= 0 (in %s:%d)", &v9, 0x12u);
    }
  }

  return [objc_opt_class() boundedIntegerMetricForPercentageOfTimeSettled:vcvtad_u64_f64(a3 / a4 * 100.0)];
}

+ (unint64_t)boundedIntegerMetricForPercentageOfTimeSettled:(unint64_t)a3
{
  if (a3 % 5 >= 3)
  {
    return 5 * (a3 / 5) + 5;
  }

  else
  {
    return 5 * (a3 / 5);
  }
}

- (RTVisitSettledStateMetrics)initWithCountOfSettledStateTransitions:(unint64_t)a3 duration:(double)a4 isVisit:(BOOL)a5 timeSettled:(double)a6
{
  v7 = a5;
  v20.receiver = self;
  v20.super_class = RTVisitSettledStateMetrics;
  v10 = [(RTMetric *)&v20 init];
  if (v10)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "boundedIntegerMetricForCountOfSettledStateTransitions:", a3)}];
    v12 = [(RTMetric *)v10 metrics];
    [v12 setObject:v11 forKeyedSubscript:@"CountOfSettledStateChanges"];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "bucketForDuration:", a4)}];
    v14 = [(RTMetric *)v10 metrics];
    [v14 setObject:v13 forKeyedSubscript:@"Duration"];

    v15 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v16 = [(RTMetric *)v10 metrics];
    [v16 setObject:v15 forKeyedSubscript:@"IsVisit"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "boundedIntegerMetricPercentageOfTimeSettledForTimeSettled:overDuration:", a6, a4)}];
    v18 = [(RTMetric *)v10 metrics];
    [v18 setObject:v17 forKeyedSubscript:@"PercentageOfTimeSettled"];
  }

  return v10;
}

@end