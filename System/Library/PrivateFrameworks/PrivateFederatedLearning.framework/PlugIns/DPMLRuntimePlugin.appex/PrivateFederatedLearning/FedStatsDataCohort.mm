@interface FedStatsDataCohort
+ (BOOL)checkCohortField:(id)a3 forNamespaceID:(id)a4;
+ (id)keysForCohorts:(id)a3 namespaceID:(id)a4 parameters:(id)a5 possibleError:(id *)a6;
+ (id)sharedInstance;
- (FedStatsDataCohort)init;
@end

@implementation FedStatsDataCohort

- (FedStatsDataCohort)init
{
  v8.receiver = self;
  v8.super_class = FedStatsDataCohort;
  v2 = [(FedStatsDataCohort *)&v8 init];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 pathForResource:@"FedStatsCohortAllowList" ofType:@"plist"];

    v5 = [NSDictionary dictionaryWithContentsOfFile:v4];
    namespaceMap = v2->_namespaceMap;
    v2->_namespaceMap = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017CD0;
  block[3] = &unk_10002C6E8;
  block[4] = a1;
  if (qword_1000395A8 != -1)
  {
    dispatch_once(&qword_1000395A8, block);
  }

  v2 = qword_1000395A0;

  return v2;
}

+ (BOOL)checkCohortField:(id)a3 forNamespaceID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[FedStatsDataCohort sharedInstance];
  v8 = [v7 namespaceMap];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = [v9 containsObject:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)keysForCohorts:(id)a3 namespaceID:(id)a4 parameters:(id)a5 possibleError:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v40 = a5;
  v11 = +[FedStatsDataCohort sharedInstance];
  v12 = [v11 namespaceMap];
  v13 = [v12 objectForKey:v10];

  if (v13)
  {
    v37 = a6;
    v38 = v10;
    v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v9;
    v15 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      v35 = v11;
      v36 = v9;
LABEL_4:
      v18 = 0;
      while (1)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v42 + 1) + 8 * v18);
        if (([v13 containsObject:v19] & 1) == 0)
        {
          break;
        }

        v20 = [FedStatsCohortFactory cohortQueryFieldByName:v19];
        if (!v20)
        {
          v9 = v36;
          v29 = v37;
          v10 = v38;
          if (v37)
          {
            [NSString stringWithFormat:@"%@ cohort is not implemented.", v19, v34];
            v30 = LABEL_25:;
            v31 = [FedStatsError errorWithCode:900 description:v30];
            v32 = *v29;
            *v29 = v31;
          }

          goto LABEL_26;
        }

        v21 = v20;
        v41 = 0;
        v22 = [v20 cohortKeyForParameters:v40 possibleError:&v41];
        v23 = +[_PFLLog framework];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v47 = v19;
          v48 = 2112;
          v49 = v22;
          v50 = 2112;
          v51 = v38;
          _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "cohortName:cohortKey => %@=%@ for namespace %@", buf, 0x20u);
        }

        if (v41)
        {
          v24 = +[_PFLLog framework];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v47 = v19;
            v48 = 2112;
            v49 = v41;
            _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%@ cohort error while creating the key: %@", buf, 0x16u);
          }
        }

        [v14 addObject:v22];

        if (v16 == ++v18)
        {
          v16 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
          v11 = v35;
          v9 = v36;
          if (v16)
          {
            goto LABEL_4;
          }

          goto LABEL_17;
        }
      }

      v9 = v36;
      v29 = v37;
      v10 = v38;
      if (v37)
      {
        [NSString stringWithFormat:@"%@ cohort is not approved for %@ namespace.", v19, v38];
        goto LABEL_25;
      }

LABEL_26:

      v25 = 0;
      v11 = v35;
      goto LABEL_27;
    }

LABEL_17:

    v25 = [NSArray arrayWithArray:v14];
    v10 = v38;
LABEL_27:
  }

  else
  {
    if (a6)
    {
      v26 = [NSString stringWithFormat:@"%@ namespace is invalid.", v10];
      v27 = [FedStatsError errorWithCode:900 description:v26];
      v28 = *a6;
      *a6 = v27;
    }

    v25 = 0;
  }

  return v25;
}

@end