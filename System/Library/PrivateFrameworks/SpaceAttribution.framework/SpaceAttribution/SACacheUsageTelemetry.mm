@interface SACacheUsageTelemetry
+ (void)traversePath:(id)path BGTask:(id)task reply:(id)reply;
- (BOOL)buildCacheUsageTelemetry:(id)telemetry telemetryManager:(id)manager appPathList:(id)list pathList:(id)pathList BGTask:(id)task;
- (SACacheUsageTelemetry)init;
- (id)createAppCacheUsageInfoForBundleIDs:(id)ds;
- (id)getSortedBundleIDs:(id)ds by:(int64_t)by;
- (unint64_t)getValueForTelemetryEntry:(id)entry bundleIDs:(id)ds;
- (void)UpdateCacheAndTmpTelemetryEntries:(id)entries appPathList:(id)list pathList:(id)pathList BGTask:(id)task;
- (void)addValueToTelemetryEntry:(id)entry value:(unint64_t)value bundleIDs:(id)ds;
- (void)calculateMovingAverageForKey:(id)key currentValueKey:(id)valueKey numOfSamples:(unint64_t)samples windowLength:(unint64_t)length appAverageInfo:(id)info bundleIDs:(id)ds;
- (void)loadFromDisk;
- (void)removeNonExistingAppsFromDiskData;
- (void)saveToDisk;
- (void)sendCacheUsageTelemetry:(id)telemetry telemetryManager:(id)manager appPathList:(id)list pathList:(id)pathList BGTask:(id)task;
- (void)setValueToTelemetryEntry:(id)entry value:(unint64_t)value bundleIDs:(id)ds;
- (void)updateAppsSizesAndUsageTimeInTelemetry:(id)telemetry telemetryManager:(id)manager;
- (void)updateMovingAveragesInTelemetry;
- (void)updateTelemetryForBundleIDs:(id)ds folderType:(int64_t)type size:(unint64_t)size fileCount:(unint64_t)count purgeableFileCount:(unint64_t)fileCount purgeableFileSize:(unint64_t)fileSize ageWeightedSize:(unint64_t)weightedSize;
@end

@implementation SACacheUsageTelemetry

- (SACacheUsageTelemetry)init
{
  v8.receiver = self;
  v8.super_class = SACacheUsageTelemetry;
  v2 = [(SACacheUsageTelemetry *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cacheUsageTelemetry = v2->_cacheUsageTelemetry;
    v2->_cacheUsageTelemetry = v3;

    v5 = objc_opt_new();
    movingAveragesInfo = v2->_movingAveragesInfo;
    v2->_movingAveragesInfo = v5;
  }

  return v2;
}

- (unint64_t)getValueForTelemetryEntry:(id)entry bundleIDs:(id)ds
{
  entryCopy = entry;
  dsCopy = ds;
  v8 = self->_cacheUsageTelemetry;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)self->_cacheUsageTelemetry objectForKeyedSubscript:dsCopy];
  v10 = [v9 objectForKeyedSubscript:entryCopy];
  unsignedLongLongValue = [v10 unsignedLongLongValue];

  objc_sync_exit(v8);
  return unsignedLongLongValue;
}

- (id)createAppCacheUsageInfoForBundleIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[SASupport getiCloudPlanSizeGB];
  v6 = [SAQuery getLSBundleRecordForBundle:dsCopy];
  bundleVersion = [v6 bundleVersion];
  v8 = objc_opt_new();
  [v8 setObject:bundleVersion forKeyedSubscript:@"app_version"];
  [v8 setObject:dsCopy forKeyedSubscript:@"bundle_id"];
  [v8 setObject:v5 forKeyedSubscript:@"icloud_plan"];
  [(NSMutableDictionary *)self->_cacheUsageTelemetry setObject:v8 forKeyedSubscript:dsCopy];

  return v8;
}

- (void)addValueToTelemetryEntry:(id)entry value:(unint64_t)value bundleIDs:(id)ds
{
  entryCopy = entry;
  dsCopy = ds;
  v9 = self->_cacheUsageTelemetry;
  objc_sync_enter(v9);
  v10 = [(NSMutableDictionary *)self->_cacheUsageTelemetry objectForKeyedSubscript:dsCopy];
  if (v10)
  {
    v11 = [(SACacheUsageTelemetry *)self getValueForTelemetryEntry:entryCopy bundleIDs:dsCopy];
  }

  else
  {
    v10 = [(SACacheUsageTelemetry *)self createAppCacheUsageInfoForBundleIDs:dsCopy];
    v11 = 0;
  }

  value = [NSNumber numberWithUnsignedLongLong:v11 + value];
  [v10 setObject:value forKeyedSubscript:entryCopy];

  objc_sync_exit(v9);
}

- (void)setValueToTelemetryEntry:(id)entry value:(unint64_t)value bundleIDs:(id)ds
{
  entryCopy = entry;
  dsCopy = ds;
  v9 = self->_cacheUsageTelemetry;
  objc_sync_enter(v9);
  v10 = [(NSMutableDictionary *)self->_cacheUsageTelemetry objectForKeyedSubscript:dsCopy];
  if (!v10)
  {
    v10 = [(SACacheUsageTelemetry *)self createAppCacheUsageInfoForBundleIDs:dsCopy];
  }

  v11 = [NSNumber numberWithUnsignedLongLong:value];
  [v10 setObject:v11 forKeyedSubscript:entryCopy];

  objc_sync_exit(v9);
}

- (void)updateTelemetryForBundleIDs:(id)ds folderType:(int64_t)type size:(unint64_t)size fileCount:(unint64_t)count purgeableFileCount:(unint64_t)fileCount purgeableFileSize:(unint64_t)fileSize ageWeightedSize:(unint64_t)weightedSize
{
  dsCopy = ds;
  v15 = self->_cacheUsageTelemetry;
  objc_sync_enter(v15);
  if (type)
  {
    [(SACacheUsageTelemetry *)self addValueToTelemetryEntry:@"tmp_file_size" value:size bundleIDs:dsCopy];
    [(SACacheUsageTelemetry *)self addValueToTelemetryEntry:@"tmp_file_count" value:count bundleIDs:dsCopy];
    [(SACacheUsageTelemetry *)self addValueToTelemetryEntry:@"tmp_purgeable_count" value:fileCount bundleIDs:dsCopy];
    [(SACacheUsageTelemetry *)self addValueToTelemetryEntry:@"tmp_purgeable_size" value:fileSize bundleIDs:dsCopy];
    v16 = dsCopy;
    v17 = @"tmp_age_weighted_size";
  }

  else
  {
    [(SACacheUsageTelemetry *)self addValueToTelemetryEntry:@"cache_size" value:size bundleIDs:dsCopy];
    [(SACacheUsageTelemetry *)self addValueToTelemetryEntry:@"cache_file_count" value:count bundleIDs:dsCopy];
    [(SACacheUsageTelemetry *)self addValueToTelemetryEntry:@"cache_purgeable_count" value:fileCount bundleIDs:dsCopy];
    [(SACacheUsageTelemetry *)self addValueToTelemetryEntry:@"cache_purgeable_size" value:fileSize bundleIDs:dsCopy];
    v16 = dsCopy;
    v17 = @"cache_age_weighted_size";
  }

  [(SACacheUsageTelemetry *)self addValueToTelemetryEntry:v17 value:weightedSize bundleIDs:v16];
  objc_sync_exit(v15);
}

- (void)loadFromDisk
{
  v3 = [NSString stringWithFormat:@"%@/%@", @"/var/db/spaceattribution", @"CacheUsage.db"];
  v22 = 0;
  v4 = [NSData dataWithContentsOfFile:v3 options:0 error:&v22];
  v5 = v22;
  if (v4)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
    v21 = v5;
    v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v9 fromData:v4 error:&v21];
    v11 = v21;

    if (!v10)
    {
      v12 = SALog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100041CF8();
      }
    }

    v13 = [v10 objectForKeyedSubscript:@"buildVersion"];
    buildVersion = self->_buildVersion;
    self->_buildVersion = v13;

    v15 = [v10 objectForKeyedSubscript:@"databaseVersionNumber"];
    databaseVersion = self->_databaseVersion;
    self->_databaseVersion = v15;

    if ([(NSNumber *)self->_databaseVersion isEqualToNumber:&off_100068BE0])
    {
      v17 = [v10 objectForKeyedSubscript:@"lastRunDate"];
      lastRunDate = self->_lastRunDate;
      self->_lastRunDate = v17;

      v19 = [v10 objectForKeyedSubscript:@"movingAveragesInfo"];
    }

    else
    {
      v19 = objc_opt_new();
    }

    movingAveragesInfo = self->_movingAveragesInfo;
    self->_movingAveragesInfo = v19;
  }

  else
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100041D74();
    }

    v11 = v5;
  }
}

- (void)removeNonExistingAppsFromDiskData
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [(NSMutableDictionary *)self->_movingAveragesInfo allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_cacheUsageTelemetry objectForKeyedSubscript:v8];

        if (!v9)
        {
          [(NSMutableDictionary *)self->_movingAveragesInfo removeObjectForKey:v8];
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)saveToDisk
{
  v3 = [NSString stringWithFormat:@"%@/%@", @"/var/db/spaceattribution", @"CacheUsage.db"];
  v4 = +[NSFileManager defaultManager];
  v14 = 0;
  v5 = [v4 createDirectoryAtPath:@"/var/db/spaceattribution" withIntermediateDirectories:1 attributes:0 error:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = objc_opt_new();
    v8 = +[NSDate date];
    [v7 setObject:v8 forKeyedSubscript:@"lastRunDate"];

    v9 = +[SASupport buildVersion];
    [v7 setObject:v9 forKeyedSubscript:@"buildVersion"];

    [v7 setObject:&off_100068BE0 forKeyedSubscript:@"databaseVersionNumber"];
    [v7 setObject:self->_movingAveragesInfo forKeyedSubscript:@"movingAveragesInfo"];
    v13 = v6;
    v10 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:0 error:&v13];
    v11 = v13;

    if (v10)
    {
      [v10 writeToFile:v3 atomically:1];
    }

    else
    {
      v12 = SALog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100041DF0();
      }
    }
  }

  else
  {
    v7 = SALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003D094();
    }

    v11 = v6;
  }
}

+ (void)traversePath:(id)path BGTask:(id)task reply:(id)reply
{
  pathCopy = path;
  taskCopy = task;
  replyCopy = reply;
  v10 = replyCopy;
  if (!pathCopy)
  {
    (*(replyCopy + 2))(replyCopy, 0, 0, 0, 0, 0);
  }

  +[NSDate date];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v11 = v16 = 0;
  v12 = taskCopy;
  traverse_directory();
  v10[2](v10, v30[3], v26[3], v22[3], v18[3], v14[3]);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
}

- (void)UpdateCacheAndTmpTelemetryEntries:(id)entries appPathList:(id)list pathList:(id)pathList BGTask:(id)task
{
  entriesCopy = entries;
  pathListCopy = pathList;
  taskCopy = task;
  appPathList = [list appPathList];
  allValues = [appPathList allValues];

  v15 = [allValues count] / 1000;
  if (v15 <= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15;
  }

  v17 = dispatch_group_create();
  v18 = dispatch_get_global_queue(2, 0);
  +[NSDate date];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100032FB4;
  v23[3] = &unk_100065B88;
  v24 = taskCopy;
  v25 = pathListCopy;
  v27 = v26 = entriesCopy;
  selfCopy = self;
  v19 = v27;
  v20 = entriesCopy;
  v21 = pathListCopy;
  v22 = taskCopy;
  [SAUtilities processArrayConcurrently:allValues number:v16 queue:v18 group:v17 block:v23];
  dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)updateAppsSizesAndUsageTimeInTelemetry:(id)telemetry telemetryManager:(id)manager
{
  telemetryCopy = telemetry;
  managerCopy = manager;
  v8 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
  v9 = [SASupport getAllAppsUsageTime:v8];

  v10 = [(NSMutableDictionary *)self->_cacheUsageTelemetry copy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100033424;
  v14[3] = &unk_100065BB0;
  v14[4] = self;
  v15 = telemetryCopy;
  v16 = managerCopy;
  v17 = v9;
  v11 = v9;
  v12 = managerCopy;
  v13 = telemetryCopy;
  [v10 enumerateKeysAndObjectsUsingBlock:v14];
}

- (void)updateMovingAveragesInTelemetry
{
  [(SACacheUsageTelemetry *)self loadFromDisk];
  [(SACacheUsageTelemetry *)self removeNonExistingAppsFromDiskData];
  v3 = +[NSDate now];
  v17 = v3;
  if (self->_lastRunDate)
  {
    [v3 timeIntervalSinceDate:?];
  }

  else
  {
    v4 = 0.0;
  }

  v5 = v4 / 86400.0;
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(NSMutableDictionary *)self->_cacheUsageTelemetry allKeys];
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v19 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [(NSMutableDictionary *)self->_movingAveragesInfo objectForKeyedSubscript:v10];
        if (!v12)
        {
          v12 = objc_opt_new();
          [(NSMutableDictionary *)self->_movingAveragesInfo setObject:v12 forKeyedSubscript:v10];
        }

        v13 = [v12 objectForKeyedSubscript:@"numOfAveragedDays"];
        unsignedLongLongValue = [v13 unsignedLongLongValue];

        if (unsignedLongLongValue + v6 >= 0x1E)
        {
          v15 = 30;
        }

        else
        {
          v15 = unsignedLongLongValue + v6;
        }

        v16 = [NSNumber numberWithUnsignedLongLong:v15];
        [v12 setObject:v16 forKeyedSubscript:@"numOfAveragedDays"];

        [(SACacheUsageTelemetry *)self calculateMovingAverageForKey:@"app_usage_30d" currentValueKey:@"app_usage" numOfSamples:v6 windowLength:v15 appAverageInfo:v12 bundleIDs:v10];
        [(SACacheUsageTelemetry *)self calculateMovingAverageForKey:@"cache_age_weighted_size_30d" currentValueKey:@"cache_age_weighted_size" numOfSamples:v6 windowLength:v15 appAverageInfo:v12 bundleIDs:v10];
        [(SACacheUsageTelemetry *)self calculateMovingAverageForKey:@"cache_file_count_30d" currentValueKey:@"cache_file_count" numOfSamples:v6 windowLength:v15 appAverageInfo:v12 bundleIDs:v10];
        [(SACacheUsageTelemetry *)self calculateMovingAverageForKey:@"cache_size_30d" currentValueKey:@"cache_size" numOfSamples:v6 windowLength:v15 appAverageInfo:v12 bundleIDs:v10];
        [(SACacheUsageTelemetry *)self calculateMovingAverageForKey:@"data_size_30d" currentValueKey:@"data_size" numOfSamples:v6 windowLength:v15 appAverageInfo:v12 bundleIDs:v10];
        [(SACacheUsageTelemetry *)self calculateMovingAverageForKey:@"data_file_count_30" currentValueKey:@"data_file_count" numOfSamples:v6 windowLength:v15 appAverageInfo:v12 bundleIDs:v10];
        [(SACacheUsageTelemetry *)self calculateMovingAverageForKey:@"tmp_age_weighted_size_30d" currentValueKey:@"tmp_age_weighted_size" numOfSamples:v6 windowLength:v15 appAverageInfo:v12 bundleIDs:v10];
        [(SACacheUsageTelemetry *)self calculateMovingAverageForKey:@"tmp_file_count_30d" currentValueKey:@"tmp_file_count" numOfSamples:v6 windowLength:v15 appAverageInfo:v12 bundleIDs:v10];
        [(SACacheUsageTelemetry *)self calculateMovingAverageForKey:@"tmp_file_size_30d" currentValueKey:@"tmp_file_size" numOfSamples:v6 windowLength:v15 appAverageInfo:v12 bundleIDs:v10];

        objc_autoreleasePoolPop(v11);
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  [(SACacheUsageTelemetry *)self saveToDisk];
}

- (void)calculateMovingAverageForKey:(id)key currentValueKey:(id)valueKey numOfSamples:(unint64_t)samples windowLength:(unint64_t)length appAverageInfo:(id)info bundleIDs:(id)ds
{
  dsCopy = ds;
  infoCopy = info;
  keyCopy = key;
  v17 = [(SACacheUsageTelemetry *)self getValueForTelemetryEntry:valueKey bundleIDs:dsCopy];
  v18 = [infoCopy objectForKeyedSubscript:keyCopy];
  unsignedLongLongValue = [v18 unsignedLongLongValue];

  v20 = [SASupport calculateMovingSumFor:unsignedLongLongValue with:v17 numOfSamples:samples windowLength:length];
  [(SACacheUsageTelemetry *)self setValueToTelemetryEntry:keyCopy value:v20 bundleIDs:dsCopy];

  v21 = [NSNumber numberWithUnsignedLongLong:v20];
  [infoCopy setObject:v21 forKeyedSubscript:keyCopy];
}

- (BOOL)buildCacheUsageTelemetry:(id)telemetry telemetryManager:(id)manager appPathList:(id)list pathList:(id)pathList BGTask:(id)task
{
  telemetryCopy = telemetry;
  managerCopy = manager;
  taskCopy = task;
  [(SACacheUsageTelemetry *)self UpdateCacheAndTmpTelemetryEntries:telemetryCopy appPathList:list pathList:pathList BGTask:taskCopy];
  shouldDefer = [taskCopy shouldDefer];

  if (shouldDefer)
  {
    v16 = SALog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cache usage telemetry Deferred", v18, 2u);
    }
  }

  else
  {
    [(SACacheUsageTelemetry *)self updateAppsSizesAndUsageTimeInTelemetry:telemetryCopy telemetryManager:managerCopy];
    [(SACacheUsageTelemetry *)self updateMovingAveragesInTelemetry];
  }

  return shouldDefer ^ 1;
}

- (id)getSortedBundleIDs:(id)ds by:(int64_t)by
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100033CA8;
  v6[3] = &unk_100065BD8;
  v6[4] = self;
  v6[5] = by;
  v4 = [ds sortedArrayUsingComparator:v6];

  return v4;
}

- (void)sendCacheUsageTelemetry:(id)telemetry telemetryManager:(id)manager appPathList:(id)list pathList:(id)pathList BGTask:(id)task
{
  telemetryCopy = telemetry;
  managerCopy = manager;
  listCopy = list;
  pathListCopy = pathList;
  taskCopy = task;
  if ([(SACacheUsageTelemetry *)self buildCacheUsageTelemetry:telemetryCopy telemetryManager:managerCopy appPathList:listCopy pathList:pathListCopy BGTask:?])
  {
    v12 = objc_opt_new();
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 0;
    allKeys = [(NSMutableDictionary *)self->_cacheUsageTelemetry allKeys];
    v14 = [(SACacheUsageTelemetry *)self getSortedBundleIDs:allKeys by:0];

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v67 objects:v79 count:16];
    if (v16)
    {
      v17 = *v68;
LABEL_4:
      v18 = 0;
      while (1)
      {
        if (*v68 != v17)
        {
          objc_enumerationMutation(v15);
        }

        if (v72[6] > 4)
        {
          break;
        }

        v19 = *(*(&v67 + 1) + 8 * v18);
        if (([v12 containsObject:v19] & 1) == 0)
        {
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v61 = sub_1000344D8;
          v62 = &unk_100065C00;
          v63 = v12;
          v64 = v19;
          selfCopy = self;
          v66 = &v71;
          if ((AnalyticsSendEventLazy() & 1) == 0)
          {
            v20 = SALog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v78 = v19;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "FAILED to log %@ cache usage telemetry using AnalyticsSendEventLazy\n", buf, 0xCu);
            }
          }
        }

        if (v16 == ++v18)
        {
          v16 = [v15 countByEnumeratingWithState:&v67 objects:v79 count:16];
          if (v16)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v72[6] = 0;
    allKeys2 = [(NSMutableDictionary *)self->_cacheUsageTelemetry allKeys];
    v22 = [(SACacheUsageTelemetry *)self getSortedBundleIDs:allKeys2 by:1];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v55 objects:v76 count:16];
    if (v24)
    {
      v25 = *v56;
LABEL_18:
      v26 = 0;
      while (1)
      {
        if (*v56 != v25)
        {
          objc_enumerationMutation(v23);
        }

        if (v72[6] > 4)
        {
          break;
        }

        v27 = *(*(&v55 + 1) + 8 * v26);
        if (([v12 containsObject:v27] & 1) == 0)
        {
          v47 = _NSConcreteStackBlock;
          v48 = 3221225472;
          v49 = sub_100034550;
          v50 = &unk_100065C00;
          v51 = v12;
          v52 = v27;
          selfCopy2 = self;
          v54 = &v71;
          if ((AnalyticsSendEventLazy() & 1) == 0)
          {
            v28 = SALog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v78 = v27;
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "FAILED to log %@ cache usage telemetry using AnalyticsSendEventLazy\n", buf, 0xCu);
            }
          }
        }

        if (v24 == ++v26)
        {
          v24 = [v23 countByEnumeratingWithState:&v55 objects:v76 count:16];
          if (v24)
          {
            goto LABEL_18;
          }

          break;
        }
      }
    }

    v72[6] = 0;
    allKeys3 = [(NSMutableDictionary *)self->_cacheUsageTelemetry allKeys];
    v30 = [(SACacheUsageTelemetry *)self getSortedBundleIDs:allKeys3 by:2];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v31 = v30;
    v32 = [v31 countByEnumeratingWithState:&v43 objects:v75 count:16];
    if (v32)
    {
      v33 = *v44;
LABEL_32:
      v34 = 0;
      while (1)
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(v31);
        }

        if (v72[6] > 4)
        {
          break;
        }

        v35 = *(*(&v43 + 1) + 8 * v34);
        if (([v12 containsObject:v35] & 1) == 0)
        {
          v42 = v12;
          if ((AnalyticsSendEventLazy() & 1) == 0)
          {
            v36 = SALog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v78 = v35;
              _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "FAILED to log %@ cache usage telemetry using AnalyticsSendEventLazy\n", buf, 0xCu);
            }
          }
        }

        if (v32 == ++v34)
        {
          v32 = [v31 countByEnumeratingWithState:&v43 objects:v75 count:16];
          if (v32)
          {
            goto LABEL_32;
          }

          break;
        }
      }
    }

    _Block_object_dispose(&v71, 8);
  }
}

@end