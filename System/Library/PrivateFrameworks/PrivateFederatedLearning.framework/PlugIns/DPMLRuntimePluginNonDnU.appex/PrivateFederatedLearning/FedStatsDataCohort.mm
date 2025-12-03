@interface FedStatsDataCohort
+ (BOOL)checkCohortField:(id)field forNamespaceID:(id)d;
+ (id)keysForCohorts:(id)cohorts namespaceID:(id)d parameters:(id)parameters possibleError:(id *)error;
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
  block[2] = sub_100004078;
  block[3] = &unk_1000305B8;
  block[4] = self;
  if (qword_10003D570 != -1)
  {
    dispatch_once(&qword_10003D570, block);
  }

  v2 = qword_10003D568;

  return v2;
}

+ (BOOL)checkCohortField:(id)field forNamespaceID:(id)d
{
  fieldCopy = field;
  dCopy = d;
  v7 = +[FedStatsDataCohort sharedInstance];
  namespaceMap = [v7 namespaceMap];
  v9 = [namespaceMap objectForKey:dCopy];

  if (v9)
  {
    v10 = [v9 containsObject:fieldCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)keysForCohorts:(id)cohorts namespaceID:(id)d parameters:(id)parameters possibleError:(id *)error
{
  cohortsCopy = cohorts;
  dCopy = d;
  parametersCopy = parameters;
  v11 = +[FedStatsDataCohort sharedInstance];
  namespaceMap = [v11 namespaceMap];
  v13 = [namespaceMap objectForKey:dCopy];

  if (v13)
  {
    errorCopy = error;
    v38 = dCopy;
    v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [cohortsCopy count]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = cohortsCopy;
    v15 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      v35 = v11;
      v36 = cohortsCopy;
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
          cohortsCopy = v36;
          v29 = errorCopy;
          dCopy = v38;
          if (errorCopy)
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
        v22 = [v20 cohortKeyForParameters:parametersCopy possibleError:&v41];
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
          cohortsCopy = v36;
          if (v16)
          {
            goto LABEL_4;
          }

          goto LABEL_17;
        }
      }

      cohortsCopy = v36;
      v29 = errorCopy;
      dCopy = v38;
      if (errorCopy)
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
    dCopy = v38;
LABEL_27:
  }

  else
  {
    if (error)
    {
      dCopy = [NSString stringWithFormat:@"%@ namespace is invalid.", dCopy];
      v27 = [FedStatsError errorWithCode:900 description:dCopy];
      v28 = *error;
      *error = v27;
    }

    v25 = 0;
  }

  return v25;
}

@end