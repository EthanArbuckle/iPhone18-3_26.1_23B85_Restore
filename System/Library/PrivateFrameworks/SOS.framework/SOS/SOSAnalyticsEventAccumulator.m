@interface SOSAnalyticsEventAccumulator
- (SOSAnalyticsEventAccumulator)initWithName:(id)a3;
- (id)analyticsDataDictForAccumulatedKeys:(id)a3 outputKeyPrefix:(id)a4 summaryKeysDict:(id)a5;
- (unint64_t)_countForEventName:(id)a3;
- (void)_addSummaryKeys:(id)a3 toAnalyticsDict:(id)a4;
- (void)noteEvent:(id)a3;
@end

@implementation SOSAnalyticsEventAccumulator

- (SOSAnalyticsEventAccumulator)initWithName:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SOSAnalyticsEventAccumulator;
  v6 = [(SOSAnalyticsEventAccumulator *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    accumulatedEventsDict = v6->_accumulatedEventsDict;
    v6->_accumulatedEventsDict = v7;

    objc_storeStrong(&v6->_name, a3);
  }

  return v6;
}

- (unint64_t)_countForEventName:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_accumulatedEventsDict objectForKeyedSubscript:a3];
  v4 = [v3 unsignedLongValue];

  return v4;
}

- (void)noteEvent:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sos_aea_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(SOSAnalyticsEventAccumulator *)self name];
    v7 = v6;
    v8 = @"-";
    if (v6)
    {
      v8 = v6;
    }

    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_INFO, "noteEvent [%{public}@]: %{public}@", &v11, 0x16u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[SOSAnalyticsEventAccumulator _countForEventName:](self, "_countForEventName:", v4) + 1}];
  [(NSMutableDictionary *)self->_accumulatedEventsDict setObject:v9 forKeyedSubscript:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_addSummaryKeys:(id)a3 toAnalyticsDict:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_accumulatedEventsDict allValues];
  v8 = [v7 valueForKeyPath:@"@sum.unsignedIntegerValue"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v6 allValues];
  v11 = [v10 valueForKeyPath:@"@sum.unsignedIntegerValue"];
  v12 = [v11 unsignedIntegerValue];

  v13 = [v19 objectForKeyedSubscript:@"AllEventsKey"];
  if ([v13 length])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    [v6 setObject:v14 forKeyedSubscript:v13];
  }

  v15 = [v19 objectForKeyedSubscript:@"KnownEventsKey"];
  if ([v15 length])
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    [v6 setObject:v16 forKeyedSubscript:v15];
  }

  v17 = [v19 objectForKeyedSubscript:@"UnknownEventsKey"];
  if ([v17 length])
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9 - v12];
    [v6 setObject:v18 forKeyedSubscript:v17];
  }
}

- (id)analyticsDataDictForAccumulatedKeys:(id)a3 outputKeyPrefix:(id)a4 summaryKeysDict:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v21 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v21, "count") + objc_msgSend(v8, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        if ([v9 length])
        {
          v16 = [v9 stringByAppendingString:v15];
        }

        else
        {
          v16 = v15;
        }

        v17 = v16;
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[SOSAnalyticsEventAccumulator _countForEventName:](self, "_countForEventName:", v15)}];
        [v10 setObject:v18 forKeyedSubscript:v17];
      }

      v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  [(SOSAnalyticsEventAccumulator *)self _addSummaryKeys:v21 toAnalyticsDict:v10];
  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

@end