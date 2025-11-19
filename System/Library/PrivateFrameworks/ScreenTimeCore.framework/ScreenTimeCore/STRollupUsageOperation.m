@interface STRollupUsageOperation
- (BOOL)_purgeEmptyUsageInManagedObjectContext:(id)a3 error:(id *)a4;
- (BOOL)_purgeUsageBlocksWithPredicate:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5;
- (STRollupUsageOperation)initWithPersistenceController:(id)a3 genesisDate:(id)a4 duration:(int64_t)a5 isBackgroundTask:(BOOL)a6 isRecomputingUsage:(BOOL)a7;
- (id)_lastUsageItemStartDate;
- (void)_persistUsageOperationDidFinish:(id)a3 inContext:(id)a4;
- (void)_runWithManagedObjectContext:(id)a3 purgePredicate:(id)a4;
- (void)_saveContextAndEndOperation:(id)a3;
- (void)cancel;
- (void)main;
@end

@implementation STRollupUsageOperation

- (STRollupUsageOperation)initWithPersistenceController:(id)a3 genesisDate:(id)a4 duration:(int64_t)a5 isBackgroundTask:(BOOL)a6 isRecomputingUsage:(BOOL)a7
{
  v12 = a4;
  v19.receiver = self;
  v19.super_class = STRollupUsageOperation;
  v13 = [(STPersistenceOperation *)&v19 initWithPersistenceController:a3];
  if (v13)
  {
    v14 = [v12 copy];
    genesisDate = v13->_genesisDate;
    v13->_genesisDate = v14;

    v13->_duration = a5;
    v13->_isBackgroundTask = a6;
    v13->_recomputingUsage = a7;
    v16 = objc_opt_new();
    usageOperationQueue = v13->_usageOperationQueue;
    v13->_usageOperationQueue = v16;

    [(NSOperationQueue *)v13->_usageOperationQueue setName:@"com.apple.rollup-usage-operation"];
    [(NSOperationQueue *)v13->_usageOperationQueue setMaxConcurrentOperationCount:1];
  }

  return v13;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = STRollupUsageOperation;
  [(STRollupUsageOperation *)&v4 cancel];
  v3 = [(STRollupUsageOperation *)self usageOperationQueue];
  [v3 cancelAllOperations];
}

- (void)main
{
  v3 = _os_activity_create(&_mh_execute_header, "STRollupUsageOperation start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  [(STOperation *)self setActivity:v3];

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v4 = [(STOperation *)self activity];
  os_activity_scope_enter(v4, &state);

  v5 = [(STPersistenceOperation *)self persistenceController];
  v6 = [v5 newBackgroundContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100076A30;
  v8[3] = &unk_1001A3020;
  v8[4] = self;
  v7 = v6;
  v9 = v7;
  [v7 performBlockAndWait:v8];

  os_activity_scope_leave(&state);
}

- (void)_runWithManagedObjectContext:(id)a3 purgePredicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STUserDeviceState fetchRequestMatchingLocalUserDeviceState];
  v32 = @"user";
  v9 = [NSArray arrayWithObjects:&v32 count:1];
  [v8 setRelationshipKeyPathsForPrefetching:v9];

  v30 = 0;
  v10 = [v8 execute:&v30];
  v11 = v30;
  if (v10)
  {
    if ([v10 count] >= 2)
    {
      v12 = +[STLog usage];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_10011D374(v10, v12);
      }
    }

    v13 = [v10 firstObject];
    if (v13)
    {
      v29 = v11;
      v14 = [(STRollupUsageOperation *)self _purgeUsageBlocksWithPredicate:v7 inManagedObjectContext:v6 error:&v29];
      v15 = v29;

      if ((v14 & 1) == 0)
      {
        v17 = STXPCSafeErrorFromCoreDataError();
        [(STRollupUsageOperation *)self endOperationWithError:v17];
        v11 = v15;
        goto LABEL_15;
      }

      v28 = v15;
      v16 = [(STRollupUsageOperation *)self _purgeEmptyUsageInManagedObjectContext:v6 error:&v28];
      v11 = v28;

      if (v16)
      {
        v17 = [(STRollupUsageOperation *)self _lastUsageItemStartDate];
        v27 = [(STRollupUsageOperation *)self referenceDate];
        v25 = [(STRollupUsageOperation *)self duration];
        v26 = [STFetchUsageOperation alloc];
        v18 = [(STRollupUsageOperation *)self genesisDate];
        v24 = [v13 user];
        v23 = -[STFetchUsageOperation initWithGenesisDate:lastStartDate:referenceDate:includeAggregateUsage:includeRemoteUsage:forceRemoteDeviceSync:duration:](v26, "initWithGenesisDate:lastStartDate:referenceDate:includeAggregateUsage:includeRemoteUsage:forceRemoteDeviceSync:duration:", v18, v17, v27, [v24 syncingEnabled], v25 != 1440, -[STRollupUsageOperation isBackgroundTask](self, "isBackgroundTask") ^ 1, v25);

        v19 = [[STPersistUsageOperation alloc] initWithManagedObjectContext:v6 fetchUsageOperation:v23 userDeviceState:v13 referenceDate:v27 duration:v25];
        [(STPersistUsageOperation *)v19 addDependency:v23];
        [(STPersistUsageOperation *)v19 addTarget:self selector:"_persistUsageOperationDidFinish:inContext:" forOperationEvents:6 userInfo:v6];
        v20 = [(STRollupUsageOperation *)self usageOperationQueue];
        v31[0] = v23;
        v31[1] = v19;
        v21 = [NSArray arrayWithObjects:v31 count:2];
        [v20 addOperations:v21 waitUntilFinished:0];

LABEL_15:
        goto LABEL_16;
      }

      v22 = STXPCSafeErrorFromCoreDataError();
    }

    else
    {
      v22 = [NSError errorWithDomain:STErrorDomain code:7 userInfo:0];
    }

    v17 = v22;
    [(STRollupUsageOperation *)self endOperationWithError:v22];
    goto LABEL_15;
  }

  v13 = STXPCSafeErrorFromCoreDataError();
  [(STRollupUsageOperation *)self endOperationWithError:v13];
LABEL_16:
}

- (void)_persistUsageOperationDidFinish:(id)a3 inContext:(id)a4
{
  v7 = a4;
  v6 = [a3 error];
  if (v6)
  {
    [(STRollupUsageOperation *)self endOperationWithError:v6];
  }

  else
  {
    [(STRollupUsageOperation *)self _saveContextAndEndOperation:v7];
  }
}

- (BOOL)_purgeUsageBlocksWithPredicate:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[STUsageBlock fetchRequest];
  [v9 setPredicate:v7];
  v10 = [v9 execute:a5];
  v11 = v10;
  if (v10)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v8 deleteObject:*(*(&v17 + 1) + 8 * v15)];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  return v11 != 0;
}

- (BOOL)_purgeEmptyUsageInManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(STRollupUsageOperation *)self isRecomputingUsage])
  {
    v7 = 1;
  }

  else
  {
    v8 = +[STUsage fetchRequest];
    v9 = [NSPredicate predicateWithFormat:@"(%K.@count == 0)", @"blocks"];
    [v8 setPredicate:v9];

    v10 = [v8 execute:a4];
    v11 = v10;
    v7 = v10 != 0;
    if (v10)
    {
      v12 = [v10 count];
      if (v12)
      {
        v13 = v12;
        v14 = +[STLog usage];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v27 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Purging %ld usages with zero blocks", buf, 0xCu);
        }

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v15 = v11;
        v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v22;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v22 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [v6 deleteObject:*(*(&v21 + 1) + 8 * i)];
            }

            v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v17);
        }
      }
    }
  }

  return v7;
}

- (void)_saveContextAndEndOperation:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000774D0;
  v4[3] = &unk_1001A3020;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  [v3 performBlockAndWait:v4];
}

- (id)_lastUsageItemStartDate
{
  v3 = +[STUsageBlock fetchRequest];
  v4 = [NSPredicate predicateWithFormat:@"(%K != NULL) AND (%K == %lld)", @"usage.user.localUserDeviceState", @"durationInMinutes", [(STRollupUsageOperation *)self duration]];
  [v3 setPredicate:v4];

  v16 = @"startDate";
  v5 = [NSArray arrayWithObjects:&v16 count:1];
  [v3 setPropertiesToFetch:v5];

  v6 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:0];
  v15 = v6;
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  [v3 setSortDescriptors:v7];

  [v3 setFetchLimit:1];
  v14 = 0;
  v8 = [v3 execute:&v14];
  v9 = v14;
  if (!v8)
  {
    v10 = +[STLog usage];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10011D3EC(v9, v10);
    }
  }

  v11 = [v8 firstObject];
  v12 = [v11 startDate];

  return v12;
}

@end