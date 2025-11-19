@interface TIFeatureUsageMetricsCache
- (TIFeatureUsageMetricsCache)initWithInputMode:(id)a3 metricDescriptorRegistry:(id)a4;
- (id)defaultMetricsFromContext:(id)a3;
- (id)featureUsageMetricFromName:(id)a3 forContext:(id)a4;
- (id)metricsFromUserModel:(id)a3 withContext:(id)a4;
- (id)startOfDay;
- (void)loadMetricsFromUserModelDataStore:(id)a3 withContext:(id)a4;
@end

@implementation TIFeatureUsageMetricsCache

- (id)startOfDay
{
  testingTimestamp = self->_testingTimestamp;
  if (testingTimestamp)
  {
    v3 = testingTimestamp;
  }

  else
  {
    v3 = [MEMORY[0x277CBEAA8] now];
  }

  v4 = v3;
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [MEMORY[0x277CBEBB0] localTimeZone];
  [v5 setTimeZone:v6];

  v7 = [v5 startOfDayForDate:v4];

  return v7;
}

- (id)defaultMetricsFromContext:(id)a3
{
  v4 = a3;
  if ([v4 userInterfaceIdiom] == 1 && objc_msgSend(v4, "keyboardType") == 3 && (-[NSDictionary objectForKey:](self->_defaultMetrics, "objectForKey:", kFeatureFloatingKeyboardUsage), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277D6FD78]), v5, v6))
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_defaultMetrics];
    [(NSDictionary *)v7 setObject:*MEMORY[0x277D6FD60] forKey:kFeatureFloatingKeyboardUsage];
  }

  else
  {
    v7 = self->_defaultMetrics;
  }

  return v7;
}

- (id)metricsFromUserModel:(id)a3 withContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v6 valueForMetricWithName:@"calcKeyboardFeatureUsage" withContext:v5];
  [v7 setValue:v8 forKey:kFeatureKeyboardUsage];

  v9 = [v6 valueForMetricWithName:@"calcContinuousPathUsage" withContext:v5];
  [v7 setValue:v9 forKey:kFeatureContinuousPathUsage];

  v10 = [v6 valueForMetricWithName:@"calcAutocorrectionUsage" withContext:v5];
  [v7 setValue:v10 forKey:kFeatureAutocorrectionUsage];

  v11 = [v6 valueForMetricWithName:@"calcCandidateBarUsage" withContext:v5];
  [v7 setValue:v11 forKey:kFeatureCandidateBarUsage];

  v12 = [v6 valueForMetricWithName:@"calcMultilingualUsage" withContext:v5];
  [v7 setValue:v12 forKey:kFeatureMultilingualUsage];

  v13 = [v6 valueForMetricWithName:kFeatureFloatingKeyboardUsage withContext:v5];
  [v7 setValue:v13 forKey:kFeatureFloatingKeyboardUsage];

  v14 = [v6 valueForMetricWithName:kFeatureStringTypingSpeed withContext:v5];

  [v7 setValue:v14 forKey:kFeatureStringTypingSpeed];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v7];

  return v15;
}

- (void)loadMetricsFromUserModelDataStore:(id)a3 withContext:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  cachedMetrics = self->_cachedMetrics;
  self->_cachedMetrics = v8;

  v10 = [TIKBUserModel userModelWithInputMode:self->_inputMode userModelDataStore:v6 metricDescriptorRegistry:self->_metricDescriptorRegistry fromDate:self->_queryEndDate];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v10 contexts];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [(TIFeatureUsageMetricsCache *)self metricsFromUserModel:v10 withContext:v16];
        [(NSMutableDictionary *)self->_cachedMetrics setObject:v17 forKey:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v18 = -[TIKBAnalyticsMetricsContext initWithInputLanguage:inputRegion:layoutName:keyboardType:userInterfaceIdiom:]([TIKBAnalyticsMetricsContext alloc], "initWithInputLanguage:inputRegion:layoutName:keyboardType:userInterfaceIdiom:", @"__fake", @"__fake", @"__fake", 0, [v7 userInterfaceIdiom]);
  v19 = [(TIFeatureUsageMetricsCache *)self metricsFromUserModel:v10 withContext:v18];
  defaultMetrics = self->_defaultMetrics;
  self->_defaultMetrics = v19;

  v21 = *MEMORY[0x277D85DE8];
}

- (id)featureUsageMetricFromName:(id)a3 forContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TIFeatureUsageMetricsCache *)self startOfDay];
  if (([v8 isEqual:self->_queryEndDate] & 1) == 0)
  {
    cachedMetrics = self->_cachedMetrics;
    self->_cachedMetrics = 0;

    defaultMetrics = self->_defaultMetrics;
    self->_defaultMetrics = 0;

    self->_sufficientData = 1;
    objc_storeStrong(&self->_queryEndDate, v8);
  }

  if (!self->_sufficientData)
  {
    goto LABEL_14;
  }

  v11 = self->_cachedMetrics;
  if (!v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.keyboard"];
    v13 = [v12 BOOLForKey:@"ignoreLastMigrationDate"];
    v14 = [MEMORY[0x277D6F548] sharedUserModelDataStore];
    v15 = [v14 transientLastMigrationDate];
    v16 = [(NSDate *)self->_queryEndDate dateByAddingTimeInterval:-(*MEMORY[0x277D6FD28] * *MEMORY[0x277D6FD98])];
    v17 = v16;
    if (v13)
    {
      self->_sufficientData = 1;
    }

    else
    {
      v18 = [v16 compare:v15];
      self->_sufficientData = v18 != -1;
      if (v18 == -1)
      {
        goto LABEL_9;
      }
    }

    [(TIFeatureUsageMetricsCache *)self loadMetricsFromUserModelDataStore:v14 withContext:v7];
LABEL_9:

    if (self->_sufficientData)
    {
      v11 = self->_cachedMetrics;
      goto LABEL_11;
    }

LABEL_14:
    if (kFeatureStringTypingSpeed == v6)
    {
      v21 = kFeatureStringTypingSpeedInsufficientData;
    }

    else
    {
      v21 = *MEMORY[0x277D6FD68];
    }

    v20 = v21;
    goto LABEL_18;
  }

LABEL_11:
  v19 = [(NSMutableDictionary *)v11 objectForKey:v7];
  if (!v19)
  {
    v19 = [(TIFeatureUsageMetricsCache *)self defaultMetricsFromContext:v7];
    [(NSMutableDictionary *)self->_cachedMetrics setObject:v19 forKey:v7];
  }

  v20 = [v19 objectForKey:v6];

LABEL_18:

  return v20;
}

- (TIFeatureUsageMetricsCache)initWithInputMode:(id)a3 metricDescriptorRegistry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = TIFeatureUsageMetricsCache;
  v9 = [(TIFeatureUsageMetricsCache *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inputMode, a3);
    objc_storeStrong(&v10->_metricDescriptorRegistry, a4);
    testingTimestamp = v10->_testingTimestamp;
    v10->_testingTimestamp = 0;

    queryEndDate = v10->_queryEndDate;
    v10->_queryEndDate = 0;

    cachedMetrics = v10->_cachedMetrics;
    v10->_cachedMetrics = 0;

    defaultMetrics = v10->_defaultMetrics;
    v10->_defaultMetrics = 0;

    v10->_sufficientData = 1;
  }

  return v10;
}

@end