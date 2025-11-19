@interface RTRegionToLocationOfInterestMatchingMetrics
+ (void)submitMetricsWithDistanceCalculator:(id)a3 region:(id)a4 locationOfInterest:(id)a5 matchingError:(id)a6 numberOfMatches:(unint64_t)a7;
- (RTRegionToLocationOfInterestMatchingMetrics)initWithDistanceCalculator:(id)a3 region:(id)a4 locationOfInterest:(id)a5 matchingError:(id)a6 numberOfMatches:(unint64_t)a7;
- (id)computeMetrics;
- (void)submitMetrics;
@end

@implementation RTRegionToLocationOfInterestMatchingMetrics

- (RTRegionToLocationOfInterestMatchingMetrics)initWithDistanceCalculator:(id)a3 region:(id)a4 locationOfInterest:(id)a5 matchingError:(id)a6 numberOfMatches:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (!v13)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v19 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: distanceCalculator";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_9;
  }

  if (!v14)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: region";
    goto LABEL_12;
  }

  v23.receiver = self;
  v23.super_class = RTRegionToLocationOfInterestMatchingMetrics;
  v17 = [(RTRegionToLocationOfInterestMatchingMetrics *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_distanceCalculator, a3);
    objc_storeStrong(&v18->_region, a4);
    objc_storeStrong(&v18->_locationOfInterest, a5);
    objc_storeStrong(&v18->_matchingError, a6);
    v18->_numberOfMatches = a7;
  }

  self = v18;
  v19 = self;
LABEL_10:

  return v19;
}

- (id)computeMetrics
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"matched"];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTRegionToLocationOfInterestMatchingMetrics numberOfMatches](self, "numberOfMatches")}];
  [v3 setObject:v4 forKeyedSubscript:@"numberOfMatches"];

  v5 = [(RTRegionToLocationOfInterestMatchingMetrics *)self matchingError];

  if (v5)
  {
    v6 = [(RTRegionToLocationOfInterestMatchingMetrics *)self matchingError];
    v7 = [v6 domain];
    [v3 setObject:v7 forKeyedSubscript:@"errorDomain"];

    v8 = MEMORY[0x277CCABB0];
    v9 = [(RTRegionToLocationOfInterestMatchingMetrics *)self matchingError];
    v10 = [v8 numberWithInteger:{objc_msgSend(v9, "code")}];
    [v3 setObject:v10 forKeyedSubscript:@"errorCode"];
  }

  v11 = MEMORY[0x277CCABB0];
  v12 = [(RTRegionToLocationOfInterestMatchingMetrics *)self region];
  [v12 horizontalUncertainty];
  v13 = [v11 numberWithDouble:?];
  [v3 setObject:v13 forKeyedSubscript:@"regionRadius"];

  v14 = [(RTRegionToLocationOfInterestMatchingMetrics *)self locationOfInterest];

  if (v14)
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"matched"];
    v15 = MEMORY[0x277CCABB0];
    v16 = [(RTRegionToLocationOfInterestMatchingMetrics *)self locationOfInterest];
    v17 = [v16 location];
    v18 = [v17 location];
    [v18 horizontalUncertainty];
    v19 = [v15 numberWithDouble:?];
    [v3 setObject:v19 forKeyedSubscript:@"loiRadius"];

    distanceCalculator = self->_distanceCalculator;
    v21 = [(RTRegionToLocationOfInterestMatchingMetrics *)self region];
    v22 = [(RTRegionToLocationOfInterestMatchingMetrics *)self locationOfInterest];
    v23 = [v22 location];
    v24 = [v23 location];
    v32 = 0;
    [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v21 toLocation:v24 error:&v32];
    v26 = v25;
    v27 = v32;

    if (v27)
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        region = self->_region;
        locationOfInterest = self->_locationOfInterest;
        *buf = 138740483;
        v34 = locationOfInterest;
        v35 = 2117;
        v36 = region;
        v37 = 2112;
        v38 = v27;
        _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "METRICS: Unable to compute the distance between matching candidate, %{sensitive}@, and the target region, %{sensitive}@, because of a distance computation error, %@. Not recording the distance.", buf, 0x20u);
      }
    }

    else
    {
      v28 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
      [v3 setObject:v28 forKeyedSubscript:@"distanceRegionToLoi"];
    }
  }

  return v3;
}

- (void)submitMetrics
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__RTRegionToLocationOfInterestMatchingMetrics_submitMetrics__block_invoke;
  aBlock[3] = &unk_2788C9998;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [v3 initWithCString:RTAnalyticsEventRegionToLOIMatching encoding:1];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __60__RTRegionToLocationOfInterestMatchingMetrics_submitMetrics__block_invoke_2;
  v12 = &unk_2788C8D18;
  v13 = v4;
  v14 = v2;
  v5 = v4;
  v6 = v2;
  v7 = _Block_copy(&v9);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v5, v9, v10, v11, v12];
  AnalyticsSendEventLazy();
}

id __60__RTRegionToLocationOfInterestMatchingMetrics_submitMetrics__block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  log_analytics_submission(*(a1 + 32), v2);

  return v2;
}

+ (void)submitMetricsWithDistanceCalculator:(id)a3 region:(id)a4 locationOfInterest:(id)a5 matchingError:(id)a6 numberOfMatches:(unint64_t)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[RTRegionToLocationOfInterestMatchingMetrics alloc] initWithDistanceCalculator:v14 region:v13 locationOfInterest:v12 matchingError:v11 numberOfMatches:a7];

  [(RTRegionToLocationOfInterestMatchingMetrics *)v15 submitMetrics];
}

@end