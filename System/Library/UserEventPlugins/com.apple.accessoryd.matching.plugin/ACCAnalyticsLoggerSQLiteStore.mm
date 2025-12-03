@interface ACCAnalyticsLoggerSQLiteStore
+ (ACCAnalyticsLoggerSQLiteStore)storeWithPath:(id)path schema:(id)schema;
- (BOOL)tryToOpenDatabase;
- (NSArray)allEvents;
- (NSDate)uploadDate;
- (id)summaryCounts;
- (int64_t)successCount;
- (int64_t)wrapFailureCount;
- (void)addEventDict:(id)dict toTable:(id)table;
- (void)clearAllData;
- (void)dealloc;
- (void)incrementSuccessCount;
- (void)incrementWrapFailureCount;
- (void)setUploadDate:(id)date;
@end

@implementation ACCAnalyticsLoggerSQLiteStore

+ (ACCAnalyticsLoggerSQLiteStore)storeWithPath:(id)path schema:(id)schema
{
  pathCopy = path;
  schemaCopy = schema;
  v8 = objc_opt_class();
  objc_sync_enter(v8);
  if (storeWithPath_schema__onceToken != -1)
  {
    +[ACCAnalyticsLoggerSQLiteStore storeWithPath:schema:];
  }

  stringByStandardizingPath = [pathCopy stringByStandardizingPath];
  v10 = [storeWithPath_schema__loggingStores objectForKeyedSubscript:stringByStandardizingPath];
  if (!v10)
  {
    v10 = [[self alloc] initWithPath:stringByStandardizingPath schema:schemaCopy];
    [storeWithPath_schema__loggingStores setObject:v10 forKeyedSubscript:stringByStandardizingPath];
  }

  objc_sync_exit(v8);

  return v10;
}

void __54__ACCAnalyticsLoggerSQLiteStore_storeWithPath_schema___block_invoke(id a1)
{
  storeWithPath_schema__loggingStores = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

- (void)dealloc
{
  [(ACCSQLite *)self close];
  v3.receiver = self;
  v3.super_class = ACCAnalyticsLoggerSQLiteStore;
  [(ACCSQLite *)&v3 dealloc];
}

- (BOOL)tryToOpenDatabase
{
  if ([(ACCSQLite *)self isOpen])
  {
    return 1;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] ACCEventLogger: db is closed, attempting to open", buf, 2u);
  }

  v6 = 0;
  v3 = [(ACCSQLite *)self openWithError:&v6];
  v4 = v6;
  if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] ACCEventLogger: failed to open db with error %@", buf, 0xCu);
  }

  return v3;
}

- (int64_t)successCount
{
  if (![(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    return 0;
  }

  v11 = @"success_count";
  v3 = [NSArray arrayWithObjects:&v11 count:1];
  v10 = @"accessoryDatabaseCounts";
  v4 = [NSArray arrayWithObjects:&v10 count:1];
  v5 = [(ACCSQLite *)self select:v3 from:@"success_count" where:@"event_type = ?" bindings:v4];
  firstObject = [v5 firstObject];
  v7 = [firstObject valueForKey:@"success_count"];
  integerValue = [v7 integerValue];

  return integerValue;
}

- (int64_t)wrapFailureCount
{
  if (![(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    return 0;
  }

  v11 = @"wrap_failure_count";
  v3 = [NSArray arrayWithObjects:&v11 count:1];
  v10 = @"accessoryDatabaseCounts";
  v4 = [NSArray arrayWithObjects:&v10 count:1];
  v5 = [(ACCSQLite *)self select:v3 from:@"success_count" where:@"event_type = ?" bindings:v4];
  firstObject = [v5 firstObject];
  v7 = [firstObject valueForKey:@"wrap_failure_count"];
  integerValue = [v7 integerValue];

  return integerValue;
}

- (void)incrementSuccessCount
{
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    successCount = [(ACCAnalyticsLoggerSQLiteStore *)self successCount];
    wrapFailureCount = [(ACCAnalyticsLoggerSQLiteStore *)self wrapFailureCount];
    v9[0] = @"accessoryDatabaseCounts";
    v8[0] = @"event_type";
    v8[1] = @"success_count";
    v5 = [NSNumber numberWithInteger:successCount + 1];
    v9[1] = v5;
    v8[2] = @"wrap_failure_count";
    v6 = [NSNumber numberWithInteger:wrapFailureCount];
    v9[2] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
    [(ACCSQLite *)self insertOrReplaceInto:@"success_count" values:v7];
  }
}

- (void)incrementWrapFailureCount
{
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    successCount = [(ACCAnalyticsLoggerSQLiteStore *)self successCount];
    wrapFailureCount = [(ACCAnalyticsLoggerSQLiteStore *)self wrapFailureCount];
    v9[0] = @"accessoryDatabaseCounts";
    v8[0] = @"event_type";
    v8[1] = @"success_count";
    v5 = [NSNumber numberWithInteger:successCount];
    v9[1] = v5;
    v8[2] = @"wrap_failure_count";
    v6 = [NSNumber numberWithInteger:wrapFailureCount + 1];
    v9[2] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
    [(ACCSQLite *)self insertOrReplaceInto:@"success_count" values:v7];
  }
}

- (id)summaryCounts
{
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    v14 = +[NSMutableDictionary dictionary];
    [(ACCSQLite *)self selectAllFrom:@"success_count" where:0 bindings:0];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = v18 = 0u;
    v3 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v16;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          v8 = [v7 objectForKeyedSubscript:@"event_type"];
          if (v8)
          {
            v21[0] = @"success_count";
            v9 = [v7 objectForKeyedSubscript:@"success_count"];
            v21[1] = @"wrap_failure_count";
            v22[0] = v9;
            v10 = [v7 objectForKeyedSubscript:@"wrap_failure_count"];
            v22[1] = v10;
            v11 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
            [v14 setObject:v11 forKeyedSubscript:v8];
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] ACCEventLogger: ignoring entry in success counts table without an event name", buf, 2u);
          }
        }

        v4 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v4);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v14;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] successCountsDict: %@", buf, 0xCu);
    }
  }

  else
  {
    v14 = objc_opt_new();
  }

  return v14;
}

- (NSArray)allEvents
{
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    v19 = @"data";
    v3 = [NSArray arrayWithObjects:&v19 count:1];
    v4 = [(ACCSQLite *)self select:v3 from:@"all_events"];

    v5 = objc_alloc_init(NSMutableArray);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) objectForKeyedSubscript:{@"data", v14}];
          v12 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:0];

          [v5 addObject:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = objc_opt_new();
  }

  return v5;
}

- (void)addEventDict:(id)dict toTable:(id)table
{
  dictCopy = dict;
  tableCopy = table;
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    v13 = 0;
    v8 = [NSPropertyListSerialization dataWithPropertyList:dictCopy format:200 options:0 error:&v13];
    v9 = v13;
    v10 = v9;
    if (v9 || !v8)
    {
      if (v9 && !v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Couldn't serialize failure record: %@", buf, 0xCu);
      }
    }

    else
    {
      v16[0] = @"timestamp";
      v11 = +[NSDate date];
      v16[1] = @"data";
      v17[0] = v11;
      v17[1] = v8;
      v12 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
      [(ACCSQLite *)self insertOrReplaceInto:tableCopy values:v12];
    }
  }
}

- (NSDate)uploadDate
{
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    v3 = [(ACCSQLite *)self datePropertyForKey:@"upload_date"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUploadDate:(id)date
{
  dateCopy = date;
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    [(ACCSQLite *)self setDateProperty:dateCopy forKey:@"upload_date"];
  }
}

- (void)clearAllData
{
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    [(ACCSQLite *)self deleteFrom:@"success_count" where:@"event_type like ?" bindings:&off_635E8];

    [(ACCSQLite *)self deleteFrom:@"all_events" where:@"id >= 0" bindings:0];
  }
}

@end