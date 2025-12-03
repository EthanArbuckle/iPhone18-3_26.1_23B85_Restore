@interface RTSignificantRegionHintInjectionMetrics
+ (void)submitMetricsWithHintSource:(int64_t)source region:(id)region locationOfInterest:(id)interest hintSubmitted:(BOOL)submitted matchingError:(id)error;
- (RTSignificantRegionHintInjectionMetrics)initWithHintSource:(int64_t)source region:(id)region locationOfInterest:(id)interest hintSubmitted:(BOOL)submitted matchingError:(id)error;
- (id)computeMetrics;
- (void)submitMetrics;
@end

@implementation RTSignificantRegionHintInjectionMetrics

- (RTSignificantRegionHintInjectionMetrics)initWithHintSource:(int64_t)source region:(id)region locationOfInterest:(id)interest hintSubmitted:(BOOL)submitted matchingError:(id)error
{
  regionCopy = region;
  interestCopy = interest;
  errorCopy = error;
  v19.receiver = self;
  v19.super_class = RTSignificantRegionHintInjectionMetrics;
  v16 = [(RTSignificantRegionHintInjectionMetrics *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_region, region);
    objc_storeStrong(&v17->_locationOfInterest, interest);
    v17->_hintSource = source;
    v17->_hintSubmitted = submitted;
    objc_storeStrong(&v17->_matchingError, error);
  }

  return v17;
}

- (id)computeMetrics
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[RTSignificantRegionHintInjectionMetrics hintSource](self, "hintSource")}];
  [dictionary setObject:v4 forKeyedSubscript:@"hintSource"];

  v5 = MEMORY[0x277CCABB0];
  region = [(RTSignificantRegionHintInjectionMetrics *)self region];
  [region horizontalUncertainty];
  v7 = [v5 numberWithDouble:?];
  [dictionary setObject:v7 forKeyedSubscript:@"regionRadius"];

  [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"matched"];
  locationOfInterest = [(RTSignificantRegionHintInjectionMetrics *)self locationOfInterest];

  if (locationOfInterest)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"matched"];
    v9 = MEMORY[0x277CCABB0];
    locationOfInterest2 = [(RTSignificantRegionHintInjectionMetrics *)self locationOfInterest];
    location = [locationOfInterest2 location];
    v11Location = [location location];
    [v11Location horizontalUncertainty];
    v13 = [v9 numberWithDouble:?];
    [dictionary setObject:v13 forKeyedSubscript:@"loiRadius"];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTSignificantRegionHintInjectionMetrics hintSubmitted](self, "hintSubmitted")}];
  [dictionary setObject:v14 forKeyedSubscript:@"hintSubmitted"];

  matchingError = [(RTSignificantRegionHintInjectionMetrics *)self matchingError];

  if (matchingError)
  {
    matchingError2 = [(RTSignificantRegionHintInjectionMetrics *)self matchingError];
    domain = [matchingError2 domain];
    [dictionary setObject:domain forKeyedSubscript:@"errorDomain"];

    v18 = MEMORY[0x277CCABB0];
    matchingError3 = [(RTSignificantRegionHintInjectionMetrics *)self matchingError];
    v20 = [v18 numberWithInteger:{objc_msgSend(matchingError3, "code")}];
    [dictionary setObject:v20 forKeyedSubscript:@"errorCode"];
  }

  return dictionary;
}

- (void)submitMetrics
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__RTSignificantRegionHintInjectionMetrics_submitMetrics__block_invoke;
  aBlock[3] = &unk_2788C9998;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [v3 initWithCString:RTAnalyticsEventSignificanRegionHintInjection encoding:1];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __56__RTSignificantRegionHintInjectionMetrics_submitMetrics__block_invoke_2;
  v12 = &unk_2788C8D18;
  v13 = v4;
  v14 = v2;
  v5 = v4;
  v6 = v2;
  v7 = _Block_copy(&v9);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v5, v9, v10, v11, v12];
  AnalyticsSendEventLazy();
}

id __56__RTSignificantRegionHintInjectionMetrics_submitMetrics__block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  log_analytics_submission(*(a1 + 32), v2);

  return v2;
}

+ (void)submitMetricsWithHintSource:(int64_t)source region:(id)region locationOfInterest:(id)interest hintSubmitted:(BOOL)submitted matchingError:(id)error
{
  submittedCopy = submitted;
  errorCopy = error;
  interestCopy = interest;
  regionCopy = region;
  v14 = [[RTSignificantRegionHintInjectionMetrics alloc] initWithHintSource:source region:regionCopy locationOfInterest:interestCopy hintSubmitted:submittedCopy matchingError:errorCopy];

  [(RTSignificantRegionHintInjectionMetrics *)v14 submitMetrics];
}

@end