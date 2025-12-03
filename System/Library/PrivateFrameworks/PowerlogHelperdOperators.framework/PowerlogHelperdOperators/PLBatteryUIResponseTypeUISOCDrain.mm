@interface PLBatteryUIResponseTypeUISOCDrain
- (id)entriesInRange:(_PLTimeIntervalRange)range fromEntries:(id)entries;
- (id)result;
- (void)configure:(id)configure;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeUISOCDrain

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
  [(PLBatteryUIResponseTypeUISOCDrain *)self setStart:v11];

  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  [(PLBatteryUIResponseTypeUISOCDrain *)self setEnd:v12];

  start = [(PLBatteryUIResponseTypeUISOCDrain *)self start];
  v14 = [(PLBatteryUIResponseTypeUISOCDrain *)self end];
  [start timeIntervalSince1970];
  v16 = v15;
  [v14 timeIntervalSince1970];
  v18 = v17 - v16;

  v19 = [configureCopy objectForKeyedSubscript:@"bucket"];

  [v19 doubleValue];
  [(PLBatteryUIResponseTypeUISOCDrain *)self setBucketSize:?];

  v23 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UILevel"];
  responderService = [(PLBatteryUIResponseTypeUISOCDrain *)self responderService];
  storage = [responderService storage];
  v22 = [storage entriesForKey:v23 inTimeRange:0 withFilters:{v16 + -1800.0, v18 + 1800.0}];
  [(PLBatteryUIResponseTypeUISOCDrain *)self setUiLevelDrainEntries:v22];
}

- (void)run
{
  v7 = [a2 count];
  *self = 134217984;
  *a3 = v7;
  _os_log_debug_impl(&dword_25EE51000, a4, OS_LOG_TYPE_DEBUG, "Entries in range UI: %lu", self, 0xCu);
}

- (id)result
{
  [(PLBatteryUIResponseTypeUISOCDrain *)self setUiLevelDrainEntries:0];

  return [(PLBatteryUIResponseTypeUISOCDrain *)self resultArray];
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