@interface RTRegionToLocationOfInterestMatchingMetrics
+ (void)submitMetricsWithDistanceCalculator:(id)calculator region:(id)region locationOfInterest:(id)interest matchingError:(id)error numberOfMatches:(unint64_t)matches;
- (RTRegionToLocationOfInterestMatchingMetrics)initWithDistanceCalculator:(id)calculator region:(id)region locationOfInterest:(id)interest matchingError:(id)error numberOfMatches:(unint64_t)matches;
- (id)computeMetrics;
- (void)submitMetrics;
@end

@implementation RTRegionToLocationOfInterestMatchingMetrics

- (RTRegionToLocationOfInterestMatchingMetrics)initWithDistanceCalculator:(id)calculator region:(id)region locationOfInterest:(id)interest matchingError:(id)error numberOfMatches:(unint64_t)matches
{
  calculatorCopy = calculator;
  regionCopy = region;
  interestCopy = interest;
  errorCopy = error;
  if (!calculatorCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: distanceCalculator";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_9;
  }

  if (!regionCopy)
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
    objc_storeStrong(&v17->_distanceCalculator, calculator);
    objc_storeStrong(&v18->_region, region);
    objc_storeStrong(&v18->_locationOfInterest, interest);
    objc_storeStrong(&v18->_matchingError, error);
    v18->_numberOfMatches = matches;
  }

  self = v18;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (id)computeMetrics
{
  v39 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"matched"];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTRegionToLocationOfInterestMatchingMetrics numberOfMatches](self, "numberOfMatches")}];
  [dictionary setObject:v4 forKeyedSubscript:@"numberOfMatches"];

  matchingError = [(RTRegionToLocationOfInterestMatchingMetrics *)self matchingError];

  if (matchingError)
  {
    matchingError2 = [(RTRegionToLocationOfInterestMatchingMetrics *)self matchingError];
    domain = [matchingError2 domain];
    [dictionary setObject:domain forKeyedSubscript:@"errorDomain"];

    v8 = MEMORY[0x277CCABB0];
    matchingError3 = [(RTRegionToLocationOfInterestMatchingMetrics *)self matchingError];
    v10 = [v8 numberWithInteger:{objc_msgSend(matchingError3, "code")}];
    [dictionary setObject:v10 forKeyedSubscript:@"errorCode"];
  }

  v11 = MEMORY[0x277CCABB0];
  region = [(RTRegionToLocationOfInterestMatchingMetrics *)self region];
  [region horizontalUncertainty];
  v13 = [v11 numberWithDouble:?];
  [dictionary setObject:v13 forKeyedSubscript:@"regionRadius"];

  locationOfInterest = [(RTRegionToLocationOfInterestMatchingMetrics *)self locationOfInterest];

  if (locationOfInterest)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"matched"];
    v15 = MEMORY[0x277CCABB0];
    locationOfInterest2 = [(RTRegionToLocationOfInterestMatchingMetrics *)self locationOfInterest];
    location = [locationOfInterest2 location];
    v17Location = [location location];
    [v17Location horizontalUncertainty];
    v19 = [v15 numberWithDouble:?];
    [dictionary setObject:v19 forKeyedSubscript:@"loiRadius"];

    distanceCalculator = self->_distanceCalculator;
    region2 = [(RTRegionToLocationOfInterestMatchingMetrics *)self region];
    locationOfInterest3 = [(RTRegionToLocationOfInterestMatchingMetrics *)self locationOfInterest];
    location2 = [locationOfInterest3 location];
    v23Location = [location2 location];
    v32 = 0;
    [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:region2 toLocation:v23Location error:&v32];
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
      [dictionary setObject:v28 forKeyedSubscript:@"distanceRegionToLoi"];
    }
  }

  return dictionary;
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

+ (void)submitMetricsWithDistanceCalculator:(id)calculator region:(id)region locationOfInterest:(id)interest matchingError:(id)error numberOfMatches:(unint64_t)matches
{
  errorCopy = error;
  interestCopy = interest;
  regionCopy = region;
  calculatorCopy = calculator;
  v15 = [[RTRegionToLocationOfInterestMatchingMetrics alloc] initWithDistanceCalculator:calculatorCopy region:regionCopy locationOfInterest:interestCopy matchingError:errorCopy numberOfMatches:matches];

  [(RTRegionToLocationOfInterestMatchingMetrics *)v15 submitMetrics];
}

@end