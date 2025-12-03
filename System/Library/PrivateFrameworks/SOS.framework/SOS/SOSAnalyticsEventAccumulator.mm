@interface SOSAnalyticsEventAccumulator
- (SOSAnalyticsEventAccumulator)initWithName:(id)name;
- (id)analyticsDataDictForAccumulatedKeys:(id)keys outputKeyPrefix:(id)prefix summaryKeysDict:(id)dict;
- (unint64_t)_countForEventName:(id)name;
- (void)_addSummaryKeys:(id)keys toAnalyticsDict:(id)dict;
- (void)noteEvent:(id)event;
@end

@implementation SOSAnalyticsEventAccumulator

- (SOSAnalyticsEventAccumulator)initWithName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = SOSAnalyticsEventAccumulator;
  v6 = [(SOSAnalyticsEventAccumulator *)&v10 init];
  if (v6)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    accumulatedEventsDict = v6->_accumulatedEventsDict;
    v6->_accumulatedEventsDict = dictionary;

    objc_storeStrong(&v6->_name, name);
  }

  return v6;
}

- (unint64_t)_countForEventName:(id)name
{
  v3 = [(NSMutableDictionary *)self->_accumulatedEventsDict objectForKeyedSubscript:name];
  unsignedLongValue = [v3 unsignedLongValue];

  return unsignedLongValue;
}

- (void)noteEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = sos_aea_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    name = [(SOSAnalyticsEventAccumulator *)self name];
    v7 = name;
    v8 = @"-";
    if (name)
    {
      v8 = name;
    }

    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = eventCopy;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_INFO, "noteEvent [%{public}@]: %{public}@", &v11, 0x16u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[SOSAnalyticsEventAccumulator _countForEventName:](self, "_countForEventName:", eventCopy) + 1}];
  [(NSMutableDictionary *)self->_accumulatedEventsDict setObject:v9 forKeyedSubscript:eventCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_addSummaryKeys:(id)keys toAnalyticsDict:(id)dict
{
  keysCopy = keys;
  dictCopy = dict;
  allValues = [(NSMutableDictionary *)self->_accumulatedEventsDict allValues];
  v8 = [allValues valueForKeyPath:@"@sum.unsignedIntegerValue"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  allValues2 = [dictCopy allValues];
  v11 = [allValues2 valueForKeyPath:@"@sum.unsignedIntegerValue"];
  unsignedIntegerValue2 = [v11 unsignedIntegerValue];

  v13 = [keysCopy objectForKeyedSubscript:@"AllEventsKey"];
  if ([v13 length])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    [dictCopy setObject:v14 forKeyedSubscript:v13];
  }

  v15 = [keysCopy objectForKeyedSubscript:@"KnownEventsKey"];
  if ([v15 length])
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
    [dictCopy setObject:v16 forKeyedSubscript:v15];
  }

  v17 = [keysCopy objectForKeyedSubscript:@"UnknownEventsKey"];
  if ([v17 length])
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue - unsignedIntegerValue2];
    [dictCopy setObject:v18 forKeyedSubscript:v17];
  }
}

- (id)analyticsDataDictForAccumulatedKeys:(id)keys outputKeyPrefix:(id)prefix summaryKeysDict:(id)dict
{
  v28 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  prefixCopy = prefix;
  dictCopy = dict;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(dictCopy, "count") + objc_msgSend(keysCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = keysCopy;
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
        if ([prefixCopy length])
        {
          v16 = [prefixCopy stringByAppendingString:v15];
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

  [(SOSAnalyticsEventAccumulator *)self _addSummaryKeys:dictCopy toAnalyticsDict:v10];
  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

@end