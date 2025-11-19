@interface WADeviceAnalyticsJoinRecord
+ (id)earliestJoinDate:(id)a3 moc:(id)a4;
+ (id)mostRecentJoinsWithBatchSize:(unint64_t)a3 bssid:(id)a4 ssid:(id)a5 moc:(id)a6;
+ (unint64_t)joinCount:(id)a3 bssid:(id)a4 maxAgeInDays:(unint64_t)a5 success:(BOOL)a6 moc:(id)a7;
- (id)description;
@end

@implementation WADeviceAnalyticsJoinRecord

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(WADeviceAnalyticsJoinRecord *)self success])
  {
    v4 = @"successful";
  }

  else
  {
    v4 = @"failed";
  }

  v11.receiver = self;
  v11.super_class = WADeviceAnalyticsJoinRecord;
  v5 = [(WADeviceAnalyticsDatedRecord *)&v11 description];
  v6 = [(WADeviceAnalyticsJoinRecord *)self bss];
  v7 = [(WADeviceAnalyticsJoinRecord *)self network];
  v8 = [(WADeviceAnalyticsJoinRecord *)self lan];
  v9 = [v3 stringWithFormat:@"%@ %@ on %@ %@ %@", v4, v5, v6, v7, v8];

  return v9;
}

+ (id)earliestJoinDate:(id)a3 moc:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = +[WADeviceAnalyticsJoinRecord fetchRequest];
    v9 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:1];
    v18 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    [v8 setSortDescriptors:v10];

    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", v5];
    v12 = [AnalyticsStoreProxy fetchFirst:v8 withPredicate:v11 moc:v6];

    if (v12)
    {
      v13 = [v12 date];
      v14 = [v13 copy];
    }

    else
    {
      v14 = 0;
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "+[WADeviceAnalyticsJoinRecord earliestJoinDate:moc:]";
      v21 = 1024;
      v22 = 28;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)mostRecentJoinsWithBatchSize:(unint64_t)a3 bssid:(id)a4 ssid:(id)a5 moc:(id)a6
{
  v33[3] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AEB0];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [[v9 alloc] initWithKey:@"date" ascending:0];
  v14 = MEMORY[0x1E696AB28];
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", v11];

  v33[0] = v15;
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.bssid == %@", v12];

  v33[1] = v16;
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"success == 0"];
  v33[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  v19 = [v14 andPredicateWithSubpredicates:v18];

  v20 = +[WADeviceAnalyticsJoinRecord fetchRequest];
  [v20 setFetchBatchSize:a3];
  [v20 setRelationshipKeyPathsForPrefetching:&unk_1F483E5C0];
  v32 = v13;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  [v20 setSortDescriptors:v21];

  v22 = [AnalyticsStoreProxy fetch:v20 withPredicate:v19 moc:v10];

  if (v22)
  {
    v23 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v27 = "+[WADeviceAnalyticsJoinRecord mostRecentJoinsWithBatchSize:bssid:ssid:moc:]";
      v28 = 1024;
      v29 = 68;
      v30 = 2048;
      v31 = [v22 count];
      _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_DEBUG, "%{public}s::%d:ResultCount:%lu", buf, 0x1Cu);
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (unint64_t)joinCount:(id)a3 bssid:(id)a4 maxAgeInDays:(unint64_t)a5 success:(BOOL)a6 moc:(id)a7
{
  v8 = a6;
  v35[3] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v31 = a7;
  v13 = MEMORY[0x1E696AB28];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", v11];
  v15 = v14;
  if (v12)
  {
    v35[0] = v14;
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.bssid == %@", v12];
    v35[1] = v16;
    v17 = [WAPersistentContainer predicateForRecordsNewerThan:(86400 * a5)];
    v35[2] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
    v19 = [v13 andPredicateWithSubpredicates:v18];
  }

  else
  {
    v34[0] = v14;
    v16 = [WAPersistentContainer predicateForRecordsNewerThan:(86400 * a5)];
    v34[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v19 = [v13 andPredicateWithSubpredicates:v17];
  }

  v20 = MEMORY[0x1E696AB28];
  if (v8)
  {
    v33 = v19;
    v21 = @"success == 1";
    v22 = &v33;
  }

  else
  {
    v32 = v19;
    v21 = @"success != 1";
    v22 = &v32;
  }

  v23 = [MEMORY[0x1E696AE18] predicateWithFormat:v21];
  v22[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v25 = [v20 andPredicateWithSubpredicates:v24];

  v26 = +[WADeviceAnalyticsJoinRecord entity];
  v27 = [v26 name];
  v28 = [AnalyticsStoreProxy entityCount:v27 withPredicate:v25 moc:v31];

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

@end