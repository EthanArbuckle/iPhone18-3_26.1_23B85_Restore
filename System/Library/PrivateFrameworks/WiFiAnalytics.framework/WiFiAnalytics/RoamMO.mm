@interface RoamMO
+ (unint64_t)dwellTimeInBand:(id)band bandIs24:(BOOL)is24 bssid:(id)bssid maxAgeInDays:(unint64_t)days moc:(id)moc;
@end

@implementation RoamMO

+ (unint64_t)dwellTimeInBand:(id)band bandIs24:(BOOL)is24 bssid:(id)bssid maxAgeInDays:(unint64_t)days moc:(id)moc
{
  v71 = *MEMORY[0x1E69E9840];
  bandCopy = band;
  bssidCopy = bssid;
  mocCopy = moc;
  if (!bandCopy)
  {
    v54 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v68 = "+[RoamMO dwellTimeInBand:bandIs24:bssid:maxAgeInDays:moc:]";
      v69 = 1024;
      v70 = 54;
      _os_log_impl(&dword_1C8460000, v54, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    goto LABEL_14;
  }

  v59 = objc_autoreleasePoolPush();
  v60 = bssidCopy;
  v61 = bandCopy;
  if (bssidCopy)
  {
    v14 = MEMORY[0x1E696AB28];
    bandCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"source.network.ssid == %@", bandCopy];
    v66[0] = bandCopy;
    bssidCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"source.bssid == %@", bssidCopy];
    v66[1] = bssidCopy;
    unsignedIntegerValue = [MEMORY[0x1E696AE18] predicateWithFormat:@"status == 0"];
    v66[2] = unsignedIntegerValue;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
    bandCopy2 = [v14 andPredicateWithSubpredicates:v17];
  }

  else
  {
    bandCopy2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source.network.ssid == %@", bandCopy];
  }

  v58 = bandCopy2;
  if (days)
  {
    v19 = MEMORY[0x1E696AB28];
    v65[0] = bandCopy2;
    v20 = [WAPersistentContainer predicateForRecordsNewerThan:(86400 * days)];
    v65[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
    v22 = [v19 andPredicateWithSubpredicates:v21];

    if (v22)
    {
LABEL_7:
      v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source.mostRecentChannel <= %d", 14];
      v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source.mostRecentChannel > %d", 14];
      v25 = MEMORY[0x1E696AB28];
      v56 = v24;
      v57 = v23;
      if (is24)
      {
        v64 = v22;
        v26 = &v64;
      }

      else
      {
        v63 = v22;
        v26 = &v63;
        v23 = v24;
      }

      v26[1] = v23;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
      v28 = [v25 andPredicateWithSubpredicates:v27];

      unsignedIntegerValue = 0x1E830D000;
      v29 = +[RoamMO entity];
      name = [v29 name];
      v31 = [AnalyticsStoreProxy fetchRequestForEntity:name];

      [v31 setResultType:2];
      [v31 setReturnsDistinctResults:1];
      v32 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"sourceTimeSpentSecs"];
      v33 = MEMORY[0x1E696ABC8];
      v34 = [MEMORY[0x1E695DEC8] arrayWithObject:v32];
      v35 = [v33 expressionForFunction:@"sum:" arguments:v34];

      v36 = objc_alloc_init(MEMORY[0x1E695D5C8]);
      [v36 setName:@"dwellTimeInBand"];
      [v36 setExpression:v35];
      [v36 setExpressionResultType:300];
      v37 = [MEMORY[0x1E695DEC8] arrayWithObject:v36];
      [v31 setPropertiesToFetch:v37];

      v38 = [AnalyticsStoreProxy fetch:v31 withPredicate:v28 moc:mocCopy];
      v39 = v38;
      v40 = v38 == 0;
      if (v38)
      {
        lastObject = [v38 lastObject];
        [lastObject valueForKey:@"dwellTimeInBand"];
        v55 = v36;
        v42 = v39;
        v43 = v31;
        v44 = v35;
        v45 = v32;
        v46 = v40;
        v47 = v22;
        v49 = v48 = v28;
        unsignedIntegerValue = [v49 unsignedIntegerValue];

        v28 = v48;
        v22 = v47;
        v40 = v46;
        v32 = v45;
        v35 = v44;
        v31 = v43;
        v39 = v42;
        v36 = v55;
      }

      else
      {
        lastObject = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v68 = "+[RoamMO dwellTimeInBand:bandIs24:bssid:maxAgeInDays:moc:]";
          v69 = 1024;
          v70 = 105;
          _os_log_impl(&dword_1C8460000, lastObject, OS_LOG_TYPE_ERROR, "%{public}s::%d:resultsArray nil", buf, 0x12u);
        }
      }

      v51 = v58;
      v50 = v59;
      goto LABEL_13;
    }
  }

  else
  {
    v22 = bandCopy2;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  v28 = WALogCategoryDeviceStoreHandle();
  v51 = v58;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v68 = "+[RoamMO dwellTimeInBand:bandIs24:bssid:maxAgeInDays:moc:]";
    v69 = 1024;
    v70 = 76;
    _os_log_impl(&dword_1C8460000, v28, OS_LOG_TYPE_ERROR, "%{public}s::%d:unable to build a base predicate", buf, 0x12u);
  }

  v40 = 1;
  v50 = v59;
LABEL_13:

  objc_autoreleasePoolPop(v50);
  bssidCopy = v60;
  bandCopy = v61;
  if (v40)
  {
LABEL_14:
    unsignedIntegerValue = 0;
  }

  v52 = *MEMORY[0x1E69E9840];
  return unsignedIntegerValue;
}

@end