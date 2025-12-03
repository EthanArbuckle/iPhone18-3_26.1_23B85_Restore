@interface WADeviceAnalyticsJoinRecord
+ (id)earliestJoinDate:(id)date moc:(id)moc;
+ (id)mostRecentJoinsWithBatchSize:(unint64_t)size bssid:(id)bssid ssid:(id)ssid moc:(id)moc;
+ (unint64_t)joinCount:(id)count bssid:(id)bssid maxAgeInDays:(unint64_t)days success:(BOOL)success moc:(id)moc;
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
  network = [(WADeviceAnalyticsJoinRecord *)self network];
  v8 = [(WADeviceAnalyticsJoinRecord *)self lan];
  v9 = [v3 stringWithFormat:@"%@ %@ on %@ %@ %@", v4, v5, v6, network, v8];

  return v9;
}

+ (id)earliestJoinDate:(id)date moc:(id)moc
{
  v23 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  mocCopy = moc;
  if (dateCopy)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = +[WADeviceAnalyticsJoinRecord fetchRequest];
    v9 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:1];
    v18 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    [v8 setSortDescriptors:v10];

    dateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", dateCopy];
    v12 = [AnalyticsStoreProxy fetchFirst:v8 withPredicate:dateCopy moc:mocCopy];

    if (v12)
    {
      date = [v12 date];
      v14 = [date copy];
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

+ (id)mostRecentJoinsWithBatchSize:(unint64_t)size bssid:(id)bssid ssid:(id)ssid moc:(id)moc
{
  v33[3] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AEB0];
  mocCopy = moc;
  ssidCopy = ssid;
  bssidCopy = bssid;
  v13 = [[v9 alloc] initWithKey:@"date" ascending:0];
  v14 = MEMORY[0x1E696AB28];
  ssidCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", ssidCopy];

  v33[0] = ssidCopy;
  bssidCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.bssid == %@", bssidCopy];

  v33[1] = bssidCopy;
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"success == 0"];
  v33[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  v19 = [v14 andPredicateWithSubpredicates:v18];

  v20 = +[WADeviceAnalyticsJoinRecord fetchRequest];
  [v20 setFetchBatchSize:size];
  [v20 setRelationshipKeyPathsForPrefetching:&unk_1F483E5C0];
  v32 = v13;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  [v20 setSortDescriptors:v21];

  v22 = [AnalyticsStoreProxy fetch:v20 withPredicate:v19 moc:mocCopy];

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

+ (unint64_t)joinCount:(id)count bssid:(id)bssid maxAgeInDays:(unint64_t)days success:(BOOL)success moc:(id)moc
{
  successCopy = success;
  v35[3] = *MEMORY[0x1E69E9840];
  countCopy = count;
  bssidCopy = bssid;
  mocCopy = moc;
  v13 = MEMORY[0x1E696AB28];
  countCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", countCopy];
  v15 = countCopy;
  if (bssidCopy)
  {
    v35[0] = countCopy;
    bssidCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.bssid == %@", bssidCopy];
    v35[1] = bssidCopy;
    v17 = [WAPersistentContainer predicateForRecordsNewerThan:(86400 * days)];
    v35[2] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
    v19 = [v13 andPredicateWithSubpredicates:v18];
  }

  else
  {
    v34[0] = countCopy;
    bssidCopy = [WAPersistentContainer predicateForRecordsNewerThan:(86400 * days)];
    v34[1] = bssidCopy;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v19 = [v13 andPredicateWithSubpredicates:v17];
  }

  v20 = MEMORY[0x1E696AB28];
  if (successCopy)
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
  name = [v26 name];
  v28 = [AnalyticsStoreProxy entityCount:name withPredicate:v25 moc:mocCopy];

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

@end