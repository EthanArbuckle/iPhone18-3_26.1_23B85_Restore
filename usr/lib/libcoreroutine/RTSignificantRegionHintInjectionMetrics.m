@interface RTSignificantRegionHintInjectionMetrics
+ (void)submitMetricsWithHintSource:(int64_t)a3 region:(id)a4 locationOfInterest:(id)a5 hintSubmitted:(BOOL)a6 matchingError:(id)a7;
- (RTSignificantRegionHintInjectionMetrics)initWithHintSource:(int64_t)a3 region:(id)a4 locationOfInterest:(id)a5 hintSubmitted:(BOOL)a6 matchingError:(id)a7;
- (id)computeMetrics;
- (void)submitMetrics;
@end

@implementation RTSignificantRegionHintInjectionMetrics

- (RTSignificantRegionHintInjectionMetrics)initWithHintSource:(int64_t)a3 region:(id)a4 locationOfInterest:(id)a5 hintSubmitted:(BOOL)a6 matchingError:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = RTSignificantRegionHintInjectionMetrics;
  v16 = [(RTSignificantRegionHintInjectionMetrics *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_region, a4);
    objc_storeStrong(&v17->_locationOfInterest, a5);
    v17->_hintSource = a3;
    v17->_hintSubmitted = a6;
    objc_storeStrong(&v17->_matchingError, a7);
  }

  return v17;
}

- (id)computeMetrics
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[RTSignificantRegionHintInjectionMetrics hintSource](self, "hintSource")}];
  [v3 setObject:v4 forKeyedSubscript:@"hintSource"];

  v5 = MEMORY[0x277CCABB0];
  v6 = [(RTSignificantRegionHintInjectionMetrics *)self region];
  [v6 horizontalUncertainty];
  v7 = [v5 numberWithDouble:?];
  [v3 setObject:v7 forKeyedSubscript:@"regionRadius"];

  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"matched"];
  v8 = [(RTSignificantRegionHintInjectionMetrics *)self locationOfInterest];

  if (v8)
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"matched"];
    v9 = MEMORY[0x277CCABB0];
    v10 = [(RTSignificantRegionHintInjectionMetrics *)self locationOfInterest];
    v11 = [v10 location];
    v12 = [v11 location];
    [v12 horizontalUncertainty];
    v13 = [v9 numberWithDouble:?];
    [v3 setObject:v13 forKeyedSubscript:@"loiRadius"];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTSignificantRegionHintInjectionMetrics hintSubmitted](self, "hintSubmitted")}];
  [v3 setObject:v14 forKeyedSubscript:@"hintSubmitted"];

  v15 = [(RTSignificantRegionHintInjectionMetrics *)self matchingError];

  if (v15)
  {
    v16 = [(RTSignificantRegionHintInjectionMetrics *)self matchingError];
    v17 = [v16 domain];
    [v3 setObject:v17 forKeyedSubscript:@"errorDomain"];

    v18 = MEMORY[0x277CCABB0];
    v19 = [(RTSignificantRegionHintInjectionMetrics *)self matchingError];
    v20 = [v18 numberWithInteger:{objc_msgSend(v19, "code")}];
    [v3 setObject:v20 forKeyedSubscript:@"errorCode"];
  }

  return v3;
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

+ (void)submitMetricsWithHintSource:(int64_t)a3 region:(id)a4 locationOfInterest:(id)a5 hintSubmitted:(BOOL)a6 matchingError:(id)a7
{
  v7 = a6;
  v11 = a7;
  v12 = a5;
  v13 = a4;
  v14 = [[RTSignificantRegionHintInjectionMetrics alloc] initWithHintSource:a3 region:v13 locationOfInterest:v12 hintSubmitted:v7 matchingError:v11];

  [(RTSignificantRegionHintInjectionMetrics *)v14 submitMetrics];
}

@end