@interface PLFileStats
+ (double)totalLogDuration;
+ (double)totalLogDurationFromTable:(id)table where:(id)where;
+ (id)cpuTimeForProcess:(id)process;
+ (id)logEndDate;
+ (id)logEndDateFromTable:(id)table;
+ (id)logStartDate;
+ (id)logStartDateFromTable:(id)table;
+ (id)select:(id)select from:(id)from where:(id)where;
+ (id)statsForFile:(id)file;
+ (id)tableCounts;
+ (int64_t)fileSizeAtPath:(id)path;
@end

@implementation PLFileStats

+ (int64_t)fileSizeAtPath:(id)path
{
  v3 = MEMORY[0x1E696AC08];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager attributesOfItemAtPath:pathCopy error:0];

  if (v6 && (v7 = *MEMORY[0x1E696A3B8], [v6 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v6 objectForKeyedSubscript:v7];
    longLongValue = [v9 longLongValue];
  }

  else
  {
    longLongValue = -1;
  }

  return longLongValue;
}

+ (id)statsForFile:(id)file
{
  v3 = MEMORY[0x1E695DF90];
  fileCopy = file;
  dictionary = [v3 dictionary];
  v6 = MEMORY[0x1E696AD98];
  v7 = [objc_opt_class() fileSizeAtPath:fileCopy];

  v8 = [v6 numberWithLongLong:v7];
  if (v8)
  {
    [dictionary setObject:v8 forKeyedSubscript:@"FileSize"];
  }

  tableCounts = [objc_opt_class() tableCounts];

  if (tableCounts)
  {
    [dictionary setObject:tableCounts forKeyedSubscript:@"TableCounts"];
  }

  v10 = [objc_opt_class() select:@"CRKey" from:@"PLConfigAgent_EventNone_Config" where:0];
  lastObject = [v10 lastObject];
  v12 = [lastObject objectForKeyedSubscript:@"CRKey"];

  if (v12)
  {
    [dictionary setObject:v12 forKeyedSubscript:@"CRKey"];
  }

  v13 = [objc_opt_class() select:@"Build" from:@"PLConfigAgent_EventNone_Config" where:0];
  lastObject2 = [v13 lastObject];
  v15 = [lastObject2 objectForKeyedSubscript:@"Build"];

  if (v15)
  {
    [dictionary setObject:v15 forKeyedSubscript:@"Build"];
  }

  v16 = MEMORY[0x1E696AD98];
  [objc_opt_class() totalLogDuration];
  v17 = [v16 numberWithDouble:?];

  if (v17)
  {
    [dictionary setObject:v17 forKeyedSubscript:@"TotalLogDuration"];
  }

  v18 = MEMORY[0x1E696AD98];
  logEndDate = [objc_opt_class() logEndDate];
  [logEndDate timeIntervalSince1970];
  v20 = [v18 numberWithDouble:?];

  if (v20)
  {
    [dictionary setObject:v20 forKeyedSubscript:@"LastBatteryTimestamp"];
  }

  v21 = [objc_opt_class() cpuTimeForProcess:@"PerfPowerServicesExtended"];

  if (v21)
  {
    [dictionary setObject:v21 forKeyedSubscript:@"TotalPowerlogCPUTime"];
  }

  return dictionary;
}

+ (id)logStartDate
{
  if (+[PLUtilities hasBattery])
  {
    v2 = @"PLBatteryAgent_EventBackward_Battery";
  }

  else
  {
    v2 = @"PLNetworkAgent_EventBackward_CumulativeNetworkUsage";
  }

  v3 = objc_opt_class();

  return [v3 logStartDateFromTable:v2];
}

+ (id)logEndDate
{
  if (+[PLUtilities hasBattery])
  {
    v2 = @"PLBatteryAgent_EventBackward_Battery";
  }

  else
  {
    v2 = @"PLNetworkAgent_EventBackward_CumulativeNetworkUsage";
  }

  v3 = objc_opt_class();

  return [v3 logEndDateFromTable:v2];
}

+ (double)totalLogDuration
{
  logStartDate = [objc_opt_class() logStartDate];
  logEndDate = [objc_opt_class() logEndDate];
  v4 = logEndDate;
  v5 = 0.0;
  if (logStartDate && logEndDate)
  {
    [logEndDate timeIntervalSinceDate:logStartDate];
    if (v6 >= 0.0)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0.0;
    }
  }

  return v5;
}

+ (id)logStartDateFromTable:(id)table
{
  tableCopy = table;
  v4 = [objc_opt_class() select:@"min(timestamp)" from:tableCopy where:0];

  firstObject = [v4 firstObject];
  v6 = [firstObject objectForKeyedSubscript:@"min(timestamp)"];

  v7 = 0;
  if (objc_opt_respondsToSelector())
  {
    v8 = MEMORY[0x1E695DF00];
    [v6 doubleValue];
    v7 = [v8 dateWithTimeIntervalSince1970:?];
  }

  return v7;
}

+ (id)logEndDateFromTable:(id)table
{
  tableCopy = table;
  v4 = [objc_opt_class() select:@"max(timestamp)" from:tableCopy where:0];

  firstObject = [v4 firstObject];
  v6 = [firstObject objectForKeyedSubscript:@"max(timestamp)"];

  v7 = 0;
  if (objc_opt_respondsToSelector())
  {
    v8 = MEMORY[0x1E695DF00];
    [v6 doubleValue];
    v7 = [v8 dateWithTimeIntervalSince1970:?];
  }

  return v7;
}

+ (double)totalLogDurationFromTable:(id)table where:(id)where
{
  whereCopy = where;
  tableCopy = table;
  v7 = [objc_opt_class() select:@"max(timestamp)-min(timestamp)" from:tableCopy where:whereCopy];

  firstObject = [v7 firstObject];
  v9 = [firstObject objectForKeyedSubscript:@"max(timestamp)-min(timestamp)"];

  v10 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v9 doubleValue];
    if (v11 >= 0.0)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0.0;
    }
  }

  return v10;
}

+ (id)cpuTimeForProcess:(id)process
{
  process = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT sum(cpu_seconds) FROM(SELECT case when diff_raw < -10 then value else diff_raw end as cpu_seconds FROM(SELECT *, value - prevVal as diff_raw FROM(SELECT ID, ProcessName, value, (SELECT t2.value FROM PLProcessMonitorAgent_EventBackward_ProcessMonitor_Dynamic t2 where t2.ID < t1.ID and ProcessName == %@ order by t2.ID desc limit 1) as prevVal FROM PLProcessMonitorAgent_EventBackward_ProcessMonitor_Dynamic t1 WHERE ProcessName == %@)) WHERE cpu_seconds IS NOT NULL)", process, process];
  v4 = +[PLSQLiteConnection sharedSQLiteConnection];
  v5 = [v4 performQuery:process];
  firstObject = [v5 firstObject];
  v7 = [firstObject objectForKeyedSubscript:@"sum(cpu_seconds)"];

  return v7;
}

+ (id)tableCounts
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v2 = [objc_opt_class() select:@"name" from:@"sqlite_master" where:@"type='table'"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v14 + 1) + 8 * i) objectForKeyedSubscript:{@"name", dictionary}];
        if (![v7 rangeOfString:@"PL"])
        {
          v8 = [objc_opt_class() select:@"Count(*)" from:v7 where:0];
          firstObject = [v8 firstObject];
          v10 = [firstObject objectForKeyedSubscript:@"Count(*)"];

          if (v10)
          {
            [dictionary setObject:v10 forKeyedSubscript:v7];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

+ (id)select:(id)select from:(id)from where:(id)where
{
  selectCopy = select;
  fromCopy = from;
  whereCopy = where;
  v10 = whereCopy;
  if (whereCopy && [whereCopy length])
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@" WHERE %@", v10];
  }

  else
  {
    v11 = &stru_1F539D228;
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT %@ FROM '%@'%@", selectCopy, fromCopy, v11];;
  v13 = +[PLSQLiteConnection sharedSQLiteConnection];
  v14 = [v13 performQuery:v12];

  return v14;
}

@end