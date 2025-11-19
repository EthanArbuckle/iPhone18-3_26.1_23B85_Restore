@interface PLFileStats
+ (double)totalLogDuration;
+ (double)totalLogDurationFromTable:(id)a3 where:(id)a4;
+ (id)cpuTimeForProcess:(id)a3;
+ (id)logEndDate;
+ (id)logEndDateFromTable:(id)a3;
+ (id)logStartDate;
+ (id)logStartDateFromTable:(id)a3;
+ (id)select:(id)a3 from:(id)a4 where:(id)a5;
+ (id)statsForFile:(id)a3;
+ (id)tableCounts;
+ (int64_t)fileSizeAtPath:(id)a3;
@end

@implementation PLFileStats

+ (int64_t)fileSizeAtPath:(id)a3
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v5 attributesOfItemAtPath:v4 error:0];

  if (v6 && (v7 = *MEMORY[0x1E696A3B8], [v6 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v6 objectForKeyedSubscript:v7];
    v10 = [v9 longLongValue];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

+ (id)statsForFile:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = MEMORY[0x1E696AD98];
  v7 = [objc_opt_class() fileSizeAtPath:v4];

  v8 = [v6 numberWithLongLong:v7];
  if (v8)
  {
    [v5 setObject:v8 forKeyedSubscript:@"FileSize"];
  }

  v9 = [objc_opt_class() tableCounts];

  if (v9)
  {
    [v5 setObject:v9 forKeyedSubscript:@"TableCounts"];
  }

  v10 = [objc_opt_class() select:@"CRKey" from:@"PLConfigAgent_EventNone_Config" where:0];
  v11 = [v10 lastObject];
  v12 = [v11 objectForKeyedSubscript:@"CRKey"];

  if (v12)
  {
    [v5 setObject:v12 forKeyedSubscript:@"CRKey"];
  }

  v13 = [objc_opt_class() select:@"Build" from:@"PLConfigAgent_EventNone_Config" where:0];
  v14 = [v13 lastObject];
  v15 = [v14 objectForKeyedSubscript:@"Build"];

  if (v15)
  {
    [v5 setObject:v15 forKeyedSubscript:@"Build"];
  }

  v16 = MEMORY[0x1E696AD98];
  [objc_opt_class() totalLogDuration];
  v17 = [v16 numberWithDouble:?];

  if (v17)
  {
    [v5 setObject:v17 forKeyedSubscript:@"TotalLogDuration"];
  }

  v18 = MEMORY[0x1E696AD98];
  v19 = [objc_opt_class() logEndDate];
  [v19 timeIntervalSince1970];
  v20 = [v18 numberWithDouble:?];

  if (v20)
  {
    [v5 setObject:v20 forKeyedSubscript:@"LastBatteryTimestamp"];
  }

  v21 = [objc_opt_class() cpuTimeForProcess:@"PerfPowerServicesExtended"];

  if (v21)
  {
    [v5 setObject:v21 forKeyedSubscript:@"TotalPowerlogCPUTime"];
  }

  return v5;
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
  v2 = [objc_opt_class() logStartDate];
  v3 = [objc_opt_class() logEndDate];
  v4 = v3;
  v5 = 0.0;
  if (v2 && v3)
  {
    [v3 timeIntervalSinceDate:v2];
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

+ (id)logStartDateFromTable:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() select:@"min(timestamp)" from:v3 where:0];

  v5 = [v4 firstObject];
  v6 = [v5 objectForKeyedSubscript:@"min(timestamp)"];

  v7 = 0;
  if (objc_opt_respondsToSelector())
  {
    v8 = MEMORY[0x1E695DF00];
    [v6 doubleValue];
    v7 = [v8 dateWithTimeIntervalSince1970:?];
  }

  return v7;
}

+ (id)logEndDateFromTable:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() select:@"max(timestamp)" from:v3 where:0];

  v5 = [v4 firstObject];
  v6 = [v5 objectForKeyedSubscript:@"max(timestamp)"];

  v7 = 0;
  if (objc_opt_respondsToSelector())
  {
    v8 = MEMORY[0x1E695DF00];
    [v6 doubleValue];
    v7 = [v8 dateWithTimeIntervalSince1970:?];
  }

  return v7;
}

+ (double)totalLogDurationFromTable:(id)a3 where:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() select:@"max(timestamp)-min(timestamp)" from:v6 where:v5];

  v8 = [v7 firstObject];
  v9 = [v8 objectForKeyedSubscript:@"max(timestamp)-min(timestamp)"];

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

+ (id)cpuTimeForProcess:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT sum(cpu_seconds) FROM(SELECT case when diff_raw < -10 then value else diff_raw end as cpu_seconds FROM(SELECT *, value - prevVal as diff_raw FROM(SELECT ID, ProcessName, value, (SELECT t2.value FROM PLProcessMonitorAgent_EventBackward_ProcessMonitor_Dynamic t2 where t2.ID < t1.ID and ProcessName == %@ order by t2.ID desc limit 1) as prevVal FROM PLProcessMonitorAgent_EventBackward_ProcessMonitor_Dynamic t1 WHERE ProcessName == %@)) WHERE cpu_seconds IS NOT NULL)", a3, a3];
  v4 = +[PLSQLiteConnection sharedSQLiteConnection];
  v5 = [v4 performQuery:v3];
  v6 = [v5 firstObject];
  v7 = [v6 objectForKeyedSubscript:@"sum(cpu_seconds)"];

  return v7;
}

+ (id)tableCounts
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = [MEMORY[0x1E695DF90] dictionary];
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

        v7 = [*(*(&v14 + 1) + 8 * i) objectForKeyedSubscript:{@"name", v13}];
        if (![v7 rangeOfString:@"PL"])
        {
          v8 = [objc_opt_class() select:@"Count(*)" from:v7 where:0];
          v9 = [v8 firstObject];
          v10 = [v9 objectForKeyedSubscript:@"Count(*)"];

          if (v10)
          {
            [v13 setObject:v10 forKeyedSubscript:v7];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)select:(id)a3 from:(id)a4 where:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9 && [v9 length])
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@" WHERE %@", v10];
  }

  else
  {
    v11 = &stru_1F539D228;
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT %@ FROM '%@'%@", v7, v8, v11];;
  v13 = +[PLSQLiteConnection sharedSQLiteConnection];
  v14 = [v13 performQuery:v12];

  return v14;
}

@end