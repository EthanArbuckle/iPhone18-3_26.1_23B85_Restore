@interface PLBatteryUIResponseTypeUsageTimes
- (id)entriesInRange:(_PLTimeIntervalRange)range fromEntries:(id)entries;
- (id)result;
- (void)configure:(id)configure;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeUsageTimes

- (void)configure:(id)configure
{
  configureCopy = configure;
  v5 = [configureCopy objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [configureCopy objectForKeyedSubscript:@"end"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  [(PLBatteryUIResponseTypeUsageTimes *)self setStart:v11];

  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  [(PLBatteryUIResponseTypeUsageTimes *)self setEnd:v12];

  start = [(PLBatteryUIResponseTypeUsageTimes *)self start];
  v14 = [(PLBatteryUIResponseTypeUsageTimes *)self end];
  [start timeIntervalSince1970];
  v16 = v15;
  [v14 timeIntervalSince1970];
  v18 = v17 - v16;

  v19 = [configureCopy objectForKeyedSubscript:@"bucket"];

  [v19 doubleValue];
  [(PLBatteryUIResponseTypeUsageTimes *)self setBucketSize:?];

  v23 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"ScreenOn"];
  responderService = [(PLBatteryUIResponseTypeUsageTimes *)self responderService];
  storage = [responderService storage];
  v22 = [storage entriesForKey:v23 inTimeRange:0 withFilters:{v16 + -1800.0, v18 + 1800.0}];
  [(PLBatteryUIResponseTypeUsageTimes *)self setAggregateEntries:v22];
}

- (void)run
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_25EE51000, log, OS_LOG_TYPE_ERROR, "screenOn time is negative. Setting screenOn equal to default empty value", buf, 2u);
}

- (id)result
{
  [(PLBatteryUIResponseTypeUsageTimes *)self setAggregateEntries:0];

  return [(PLBatteryUIResponseTypeUsageTimes *)self resultDictionary];
}

- (id)entriesInRange:(_PLTimeIntervalRange)range fromEntries:(id)entries
{
  length = range.length;
  location = range.location;
  v27 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v7 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = entriesCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    v12 = location + length;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        entryDate = [v14 entryDate];
        if (entryDate)
        {
          v16 = entryDate;
          [entryDate timeIntervalSince1970];
          v18 = v17;

          if (location <= v18 && v18 < v12)
          {
            [v7 addObject:v14];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

@end