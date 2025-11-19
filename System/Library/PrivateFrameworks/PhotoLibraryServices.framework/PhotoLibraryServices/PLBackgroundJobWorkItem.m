@interface PLBackgroundJobWorkItem
+ (id)_searchIndexWorkItemManagedObjectIDsInManagedObjectContext:(id)a3 jobType:(signed __int16)a4 fetchLimit:(unint64_t)a5 additionalPredicate:(id)a6;
+ (id)_workItemsSortedByTimestampWithIdentifier:(id)a3 jobTypes:(id)a4 fetchLimit:(id)a5 resultType:(unint64_t)a6 inManagedObjectContext:(id)a7 error:(id *)a8;
+ (id)addSearchIndexWorkItemIfNeededWithIdentifier:(id)a3 flags:(int64_t)a4 inLibrary:(id)a5;
+ (id)countOfSearchIndexInsertAssetWorkItemsInManagedObjectContext:(id)a3;
+ (id)countOfSearchIndexWorkItemsInManagedObjectContext:(id)a3;
+ (id)deleteAllSearchIndexJobsInManagedObjectContext:(id)a3;
+ (id)insertBackgroundJobWorkItemWithIdentifier:(id)a3 jobType:(signed __int16)a4 jobFlags:(int64_t)a5 inManagedObjectContext:(id)a6;
+ (id)nextSearchIndexWorkItemJobFlagsInManagedObjectContext:(id)a3 jobType:(signed __int16)a4;
+ (id)searchIndexWorkItemManagedObjectIDNeedingRepairInManagedObjectContext:(id)a3;
+ (id)searchIndexWorkItemManagedObjectIDsByPriorityInManagedObjectContext:(id)a3 fetchLimit:(unint64_t)a4;
+ (id)searchIndexWorkItemManagedObjectIDsForIdentifiers:(id)a3 managedObjectContext:(id)a4;
+ (id)searchIndexWorkItemsForIncrementalUpdatesInManagedObjectContext:(id)a3 jobType:(signed __int16)a4 jobFlags:(int64_t)a5 fetchLimit:(unint64_t)a6;
+ (id)workItemsSortedByTimestampWithIdentifier:(id)a3 jobType:(signed __int16)a4 inManagedObjectContext:(id)a5 error:(id *)a6;
+ (id)workItemsSortedByTimestampWithJobType:(signed __int16)a3 fetchLimit:(id)a4 resultType:(unint64_t)a5 inManagedObjectContext:(id)a6 error:(id *)a7;
+ (signed)searchJobTypeForCurrentQOS;
- (BOOL)validateForInsert:(id *)a3;
- (double)delayInterval;
- (id)description;
- (id)descriptionForSearchIndexingWorkItem;
- (id)jobFlagsDescription;
- (id)jobIdentifier;
@end

@implementation PLBackgroundJobWorkItem

- (id)descriptionForSearchIndexingWorkItem
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PLBackgroundJobWorkItem *)self jobType];
  if (v6 > 0xA)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_1E756F240[v6];
  }

  v8 = v7;
  v9 = [(PLBackgroundJobWorkItem *)self identifier];
  v10 = [(PLBackgroundJobWorkItem *)self timestamp];
  v11 = PLBackgroundJobWorkerSearchJobFlagsDescription([(PLBackgroundJobWorkItem *)self jobFlags]);
  v12 = [(PLBackgroundJobWorkItem *)self delayUntilDate];
  v13 = [v3 stringWithFormat:@"<%@: %p> %@ identifier: %@ timestamp: %@ %@, delay until: %@", v5, self, v8, v9, v10, v11, v12];

  return v13;
}

+ (id)deleteAllSearchIndexJobsInManagedObjectContext:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695D5E0];
  v6 = [a1 entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"jobType", &unk_1F0FBFB50];
  [v7 setPredicate:v8];

  v24 = 0;
  v9 = [v4 executeFetchRequest:v7 error:&v24];
  v10 = v24;
  if (v9)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v4 deleteObject:*(*(&v20 + 1) + 8 * i)];
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v13);
    }

    v16 = MEMORY[0x1E69BF2D0];
    v17 = [MEMORY[0x1E695DFB0] null];
    v18 = [v16 successWithResult:v17];
  }

  else
  {
    v18 = [MEMORY[0x1E69BF2D0] failureWithError:v10];
  }

  return v18;
}

+ (signed)searchJobTypeForCurrentQOS
{
  v2 = qos_class_self();
  if (v2 > QOS_CLASS_USER_INTERACTIVE || ((1 << v2) & 0x220201) != 0 || ((1 << v2) & 0x202000000) == 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (id)searchIndexWorkItemManagedObjectIDNeedingRepairInManagedObjectContext:(id)a3
{
  v4 = MEMORY[0x1E696AE18];
  v5 = MEMORY[0x1E695DF00];
  v6 = a3;
  v7 = [v5 date];
  v8 = [v4 predicateWithFormat:@"%K < %@", @"delayUntilDate", v7];

  v9 = [a1 _searchIndexWorkItemManagedObjectIDsInManagedObjectContext:v6 jobType:3 fetchLimit:1 additionalPredicate:v8];

  return v9;
}

+ (id)searchIndexWorkItemManagedObjectIDsForIdentifiers:(id)a3 managedObjectContext:(id)a4
{
  v6 = MEMORY[0x1E695D5E0];
  v7 = a4;
  v8 = a3;
  v9 = [a1 entityName];
  v10 = [v6 fetchRequestWithEntityName:v9];

  [v10 setResultType:1];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K == %d OR %K == %d) AND %K in %@", @"jobType", 1, @"jobType", 2, @"identifier", v8];

  [v10 setPredicate:v11];
  v16 = 0;
  v12 = [v7 executeFetchRequest:v10 error:&v16];

  v13 = v16;
  if (v12)
  {
    [MEMORY[0x1E69BF2D0] successWithResult:v12];
  }

  else
  {
    [MEMORY[0x1E69BF2D0] failureWithError:v13];
  }
  v14 = ;

  return v14;
}

+ (id)searchIndexWorkItemManagedObjectIDsByPriorityInManagedObjectContext:(id)a3 fetchLimit:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 searchIndexWorkItemManagedObjectIDsInManagedObjectContext:v6 jobType:1 fetchLimit:a4];
  if (([v7 isFailure] & 1) != 0 || (objc_msgSend(v7, "result"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9 >= a4))
  {
    v18 = v7;
  }

  else
  {
    v10 = [v7 result];
    v11 = a4 - [v10 count];

    v12 = [a1 searchIndexWorkItemManagedObjectIDsInManagedObjectContext:v6 jobType:2 fetchLimit:v11];
    if (([v12 isFailure] & 1) != 0 || (objc_msgSend(v12, "result"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v14 >= a4))
    {
      v18 = v12;
    }

    else
    {
      v15 = [v7 result];
      v16 = [v12 result];
      v17 = [v15 arrayByAddingObjectsFromArray:v16];

      v18 = [MEMORY[0x1E69BF2D0] successWithResult:v17];
    }
  }

  return v18;
}

+ (id)_searchIndexWorkItemManagedObjectIDsInManagedObjectContext:(id)a3 jobType:(signed __int16)a4 fetchLimit:(unint64_t)a5 additionalPredicate:(id)a6
{
  v7 = a4;
  v25[1] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = MEMORY[0x1E695D5E0];
  v12 = a3;
  v13 = [a1 entityName];
  v14 = [v11 fetchRequestWithEntityName:v13];

  [v14 setResultType:1];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"jobType", v7];
  [v15 addObject:v16];
  if (v10)
  {
    [v15 addObject:v10];
  }

  v17 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v15];
  [v14 setPredicate:v17];
  if (a5)
  {
    [v14 setFetchLimit:a5];
  }

  v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"timestamp" ascending:1];
  v25[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  [v14 setSortDescriptors:v19];

  v24 = 0;
  v20 = [v12 executeFetchRequest:v14 error:&v24];

  v21 = v24;
  if (v20)
  {
    [MEMORY[0x1E69BF2D0] successWithResult:v20];
  }

  else
  {
    [MEMORY[0x1E69BF2D0] failureWithError:v21];
  }
  v22 = ;

  return v22;
}

+ (id)searchIndexWorkItemsForIncrementalUpdatesInManagedObjectContext:(id)a3 jobType:(signed __int16)a4 jobFlags:(int64_t)a5 fetchLimit:(unint64_t)a6
{
  v8 = a4;
  v24[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = MEMORY[0x1E695D5E0];
  v12 = [a1 entityName];
  v13 = [v11 fetchRequestWithEntityName:v12];

  v14 = MEMORY[0x1E696AB28];
  v15 = [a1 _predicateForJobType:v8];
  v24[0] = v15;
  v16 = [a1 _predicateForJobFlags:a5];
  v24[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v18 = [v14 andPredicateWithSubpredicates:v17];
  [v13 setPredicate:v18];

  if (a6)
  {
    [v13 setFetchLimit:a6];
  }

  v23 = 0;
  v19 = [v10 executeFetchRequest:v13 error:&v23];
  v20 = v23;
  if (v19)
  {
    [MEMORY[0x1E69BF2D0] successWithResult:v19];
  }

  else
  {
    [MEMORY[0x1E69BF2D0] failureWithError:v20];
  }
  v21 = ;

  return v21;
}

+ (id)nextSearchIndexWorkItemJobFlagsInManagedObjectContext:(id)a3 jobType:(signed __int16)a4
{
  v4 = a4;
  v27[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695D5E0];
  v7 = a3;
  v8 = [a1 entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  [v9 setResultType:2];
  if (v4 == 3)
  {
    v10 = MEMORY[0x1E696AB28];
    v11 = [a1 _predicateForJobType:3];
    v27[0] = v11;
    v12 = MEMORY[0x1E696AE18];
    v13 = [MEMORY[0x1E695DF00] now];
    v14 = [v12 predicateWithFormat:@"%K < %@", @"delayUntilDate", v13];
    v27[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v16 = [v10 andPredicateWithSubpredicates:v15];
    [v9 setPredicate:v16];
  }

  else
  {
    v11 = [a1 _predicateForJobType:v4];
    [v9 setPredicate:v11];
  }

  [v9 setFetchLimit:1];
  v26 = @"jobFlags";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  [v9 setPropertiesToFetch:v17];

  v25 = 0;
  v18 = [v7 executeFetchRequest:v9 error:&v25];

  v19 = v25;
  if (v18)
  {
    if ([v18 count])
    {
      v20 = [v18 firstObject];
      v21 = [v20 objectForKey:@"jobFlags"];

      v22 = [MEMORY[0x1E69BF2D0] successWithResult:v21];

      goto LABEL_10;
    }

    v23 = [MEMORY[0x1E69BF2D0] successWithResult:&unk_1F0FBCA60];
  }

  else
  {
    v23 = [MEMORY[0x1E69BF2D0] failureWithError:v19];
  }

  v22 = v23;
LABEL_10:

  return v22;
}

+ (id)countOfSearchIndexInsertAssetWorkItemsInManagedObjectContext:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695D5E0];
  v6 = [a1 entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"jobType", &unk_1F0FBFB38];
  [v7 setPredicate:v8];

  [v7 setFetchBatchSize:100];
  v25 = 0;
  v9 = [v4 executeFetchRequest:v7 error:&v25];
  v10 = v25;
  if (v9)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v11);
          }

          if ([*(*(&v21 + 1) + 8 * i) jobFlags] == 14)
          {
            ++v14;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    v18 = MEMORY[0x1E69BF2D0];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
    v17 = [v18 successWithResult:v19];
  }

  else
  {
    v17 = [MEMORY[0x1E69BF2D0] failureWithError:v10];
  }

  return v17;
}

+ (id)countOfSearchIndexWorkItemsInManagedObjectContext:(id)a3
{
  v4 = MEMORY[0x1E695D5E0];
  v5 = a3;
  v6 = [a1 entityName];
  v7 = [v4 fetchRequestWithEntityName:v6];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"jobType", &unk_1F0FBFB20];
  [v7 setPredicate:v8];

  [v7 setResultType:4];
  v15 = 0;
  v9 = [v5 countForFetchRequest:v7 error:&v15];

  v10 = v15;
  v11 = MEMORY[0x1E69BF2D0];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [MEMORY[0x1E69BF2D0] failureWithError:v10];
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
    v12 = [v11 successWithResult:v13];
  }

  return v12;
}

+ (id)addSearchIndexWorkItemIfNeededWithIdentifier:(id)a3 flags:(int64_t)a4 inLibrary:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (a4)
  {
    if (a4)
    {
      v9 = 1;
    }

    else
    {
      v9 = +[PLBackgroundJobWorkItem searchJobTypeForCurrentQOS];
    }

    a4 = [v8 addBackgroundJobWorkItemIfNeededWithIdentifier:v7 jobType:v9 jobFlags:a4];
  }

  return a4;
}

- (double)delayInterval
{
  v3 = [(PLBackgroundJobWorkItem *)self delayUntilDate];

  if (!v3)
  {
    return 0.0;
  }

  v4 = [(PLBackgroundJobWorkItem *)self delayUntilDate];
  v5 = [(PLBackgroundJobWorkItem *)self timestamp];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  return v7;
}

- (id)jobIdentifier
{
  v3 = objc_opt_class();
  v4 = [(PLBackgroundJobWorkItem *)self identifier];
  v5 = [v3 jobIdentifierWithIdentifier:v4 jobType:-[PLBackgroundJobWorkItem jobType](self jobFlags:{"jobType"), -[PLBackgroundJobWorkItem jobFlags](self, "jobFlags")}];

  return v5;
}

- (BOOL)validateForInsert:(id *)a3
{
  v6.receiver = self;
  v6.super_class = PLBackgroundJobWorkItem;
  v4 = [(PLBackgroundJobWorkItem *)&v6 validateForInsert:a3];
  if (v4)
  {
    LOBYTE(v4) = [(PLBackgroundJobWorkItem *)self jobType]- 1 > 2 || [(PLBackgroundJobWorkItem *)self jobFlags]!= 0;
  }

  return v4;
}

- (id)jobFlagsDescription
{
  if ([(PLBackgroundJobWorkItem *)self jobType]- 1 > 2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", -[PLBackgroundJobWorkItem jobFlags](self, "jobFlags")];
  }

  else
  {
    PLBackgroundJobWorkerSearchJobFlagsDescription([(PLBackgroundJobWorkItem *)self jobFlags]);
  }
  v3 = ;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PLBackgroundJobWorkItem *)self jobType];
  if (v6 > 0xA)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_1E756F240[v6];
  }

  v8 = v7;
  v9 = [(PLBackgroundJobWorkItem *)self identifier];
  v10 = [(PLBackgroundJobWorkItem *)self jobFlagsDescription];
  v11 = [(PLBackgroundJobWorkItem *)self timestamp];
  v12 = [(PLBackgroundJobWorkItem *)self delayUntilDate];
  v13 = [v3 stringWithFormat:@"<%@ %p> %@ %@ flags: %@ timestamp: %@, delay until: %@", v5, self, v8, v9, v10, v11, v12];

  return v13;
}

+ (id)_workItemsSortedByTimestampWithIdentifier:(id)a3 jobTypes:(id)a4 fetchLimit:(id)a5 resultType:(unint64_t)a6 inManagedObjectContext:(id)a7 error:(id *)a8
{
  v34[2] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v31 = a7;
  if (!v15)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"PLBackgroundJobWorkItem.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"jobTypes"}];
  }

  if (a6 >= 2)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:a1 file:@"PLBackgroundJobWorkItem.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"resultType == NSManagedObjectResultType || resultType == NSManagedObjectIDResultType"}];
  }

  v17 = MEMORY[0x1E695D5E0];
  v18 = [a1 entityName];
  v19 = [v17 fetchRequestWithEntityName:v18];

  v20 = MEMORY[0x1E696AB28];
  if (v14)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"identifier", v14];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v21 = ;
  v34[0] = v21;
  v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"jobType", v15];
  v34[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v24 = [v20 andPredicateWithSubpredicates:v23];
  [v19 setPredicate:v24];

  v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"timestamp" ascending:1];
  v33 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  [v19 setSortDescriptors:v26];

  [v19 setResultType:a6];
  if (v16)
  {
    [v19 setFetchLimit:{objc_msgSend(v16, "integerValue")}];
  }

  v27 = [v31 executeFetchRequest:v19 error:a8];

  return v27;
}

+ (id)workItemsSortedByTimestampWithIdentifier:(id)a3 jobType:(signed __int16)a4 inManagedObjectContext:(id)a5 error:(id *)a6
{
  v7 = a4;
  v17[1] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E696AD98];
  v11 = a5;
  v12 = a3;
  v13 = [v10 numberWithShort:v7];
  v17[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15 = [a1 workItemsSortedByTimestampWithIdentifier:v12 jobTypes:v14 inManagedObjectContext:v11 error:a6];

  return v15;
}

+ (id)workItemsSortedByTimestampWithJobType:(signed __int16)a3 fetchLimit:(id)a4 resultType:(unint64_t)a5 inManagedObjectContext:(id)a6 error:(id *)a7
{
  v10 = a3;
  v19[1] = *MEMORY[0x1E69E9840];
  v12 = MEMORY[0x1E696AD98];
  v13 = a6;
  v14 = a4;
  v15 = [v12 numberWithShort:v10];
  v19[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v17 = [a1 _workItemsSortedByTimestampWithIdentifier:0 jobTypes:v16 fetchLimit:v14 resultType:a5 inManagedObjectContext:v13 error:a7];

  return v17;
}

+ (id)insertBackgroundJobWorkItemWithIdentifier:(id)a3 jobType:(signed __int16)a4 jobFlags:(int64_t)a5 inManagedObjectContext:(id)a6
{
  v8 = a4;
  v11 = a3;
  v12 = a6;
  if (!v11)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PLBackgroundJobWorkItem.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v13 = [a1 insertInManagedObjectContext:v12];
  [v13 setIdentifier:v11];
  [v13 setJobType:v8];
  [v13 setJobFlags:a5];
  v14 = [MEMORY[0x1E695DF00] now];
  [v13 setTimestamp:v14];

  return v13;
}

@end