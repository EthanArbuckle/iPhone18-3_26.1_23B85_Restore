@interface RoamMO
+ (unint64_t)dwellTimeInBand:(id)a3 bandIs24:(BOOL)a4 bssid:(id)a5 maxAgeInDays:(unint64_t)a6 moc:(id)a7;
@end

@implementation RoamMO

+ (unint64_t)dwellTimeInBand:(id)a3 bandIs24:(BOOL)a4 bssid:(id)a5 maxAgeInDays:(unint64_t)a6 moc:(id)a7
{
  v71 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v62 = a7;
  if (!v12)
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
  v60 = v13;
  v61 = v12;
  if (v13)
  {
    v14 = MEMORY[0x1E696AB28];
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source.network.ssid == %@", v12];
    v66[0] = v15;
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source.bssid == %@", v13];
    v66[1] = v16;
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"status == 0"];
    v66[2] = v7;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
    v18 = [v14 andPredicateWithSubpredicates:v17];
  }

  else
  {
    v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source.network.ssid == %@", v12];
  }

  v58 = v18;
  if (a6)
  {
    v19 = MEMORY[0x1E696AB28];
    v65[0] = v18;
    v20 = [WAPersistentContainer predicateForRecordsNewerThan:(86400 * a6)];
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
      if (a4)
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

      v7 = 0x1E830D000;
      v29 = +[RoamMO entity];
      v30 = [v29 name];
      v31 = [AnalyticsStoreProxy fetchRequestForEntity:v30];

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

      v38 = [AnalyticsStoreProxy fetch:v31 withPredicate:v28 moc:v62];
      v39 = v38;
      v40 = v38 == 0;
      if (v38)
      {
        v41 = [v38 lastObject];
        [v41 valueForKey:@"dwellTimeInBand"];
        v55 = v36;
        v42 = v39;
        v43 = v31;
        v44 = v35;
        v45 = v32;
        v46 = v40;
        v47 = v22;
        v49 = v48 = v28;
        v7 = [v49 unsignedIntegerValue];

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
        v41 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v68 = "+[RoamMO dwellTimeInBand:bandIs24:bssid:maxAgeInDays:moc:]";
          v69 = 1024;
          v70 = 105;
          _os_log_impl(&dword_1C8460000, v41, OS_LOG_TYPE_ERROR, "%{public}s::%d:resultsArray nil", buf, 0x12u);
        }
      }

      v51 = v58;
      v50 = v59;
      goto LABEL_13;
    }
  }

  else
  {
    v22 = v18;
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
  v13 = v60;
  v12 = v61;
  if (v40)
  {
LABEL_14:
    v7 = 0;
  }

  v52 = *MEMORY[0x1E69E9840];
  return v7;
}

@end