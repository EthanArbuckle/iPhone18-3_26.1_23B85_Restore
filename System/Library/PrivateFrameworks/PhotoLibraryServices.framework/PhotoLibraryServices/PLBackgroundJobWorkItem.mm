@interface PLBackgroundJobWorkItem
+ (id)_searchIndexWorkItemManagedObjectIDsInManagedObjectContext:(id)context jobType:(signed __int16)type fetchLimit:(unint64_t)limit additionalPredicate:(id)predicate;
+ (id)_workItemsSortedByTimestampWithIdentifier:(id)identifier jobTypes:(id)types fetchLimit:(id)limit resultType:(unint64_t)type inManagedObjectContext:(id)context error:(id *)error;
+ (id)addSearchIndexWorkItemIfNeededWithIdentifier:(id)identifier flags:(int64_t)flags inLibrary:(id)library;
+ (id)countOfSearchIndexInsertAssetWorkItemsInManagedObjectContext:(id)context;
+ (id)countOfSearchIndexWorkItemsInManagedObjectContext:(id)context;
+ (id)deleteAllSearchIndexJobsInManagedObjectContext:(id)context;
+ (id)insertBackgroundJobWorkItemWithIdentifier:(id)identifier jobType:(signed __int16)type jobFlags:(int64_t)flags inManagedObjectContext:(id)context;
+ (id)nextSearchIndexWorkItemJobFlagsInManagedObjectContext:(id)context jobType:(signed __int16)type;
+ (id)searchIndexWorkItemManagedObjectIDNeedingRepairInManagedObjectContext:(id)context;
+ (id)searchIndexWorkItemManagedObjectIDsByPriorityInManagedObjectContext:(id)context fetchLimit:(unint64_t)limit;
+ (id)searchIndexWorkItemManagedObjectIDsForIdentifiers:(id)identifiers managedObjectContext:(id)context;
+ (id)searchIndexWorkItemsForIncrementalUpdatesInManagedObjectContext:(id)context jobType:(signed __int16)type jobFlags:(int64_t)flags fetchLimit:(unint64_t)limit;
+ (id)workItemsSortedByTimestampWithIdentifier:(id)identifier jobType:(signed __int16)type inManagedObjectContext:(id)context error:(id *)error;
+ (id)workItemsSortedByTimestampWithJobType:(signed __int16)type fetchLimit:(id)limit resultType:(unint64_t)resultType inManagedObjectContext:(id)context error:(id *)error;
+ (signed)searchJobTypeForCurrentQOS;
- (BOOL)validateForInsert:(id *)insert;
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
  jobType = [(PLBackgroundJobWorkItem *)self jobType];
  if (jobType > 0xA)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_1E756F240[jobType];
  }

  v8 = v7;
  identifier = [(PLBackgroundJobWorkItem *)self identifier];
  timestamp = [(PLBackgroundJobWorkItem *)self timestamp];
  v11 = PLBackgroundJobWorkerSearchJobFlagsDescription([(PLBackgroundJobWorkItem *)self jobFlags]);
  delayUntilDate = [(PLBackgroundJobWorkItem *)self delayUntilDate];
  v13 = [v3 stringWithFormat:@"<%@: %p> %@ identifier: %@ timestamp: %@ %@, delay until: %@", v5, self, v8, identifier, timestamp, v11, delayUntilDate];

  return v13;
}

+ (id)deleteAllSearchIndexJobsInManagedObjectContext:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = MEMORY[0x1E695D5E0];
  entityName = [self entityName];
  v7 = [v5 fetchRequestWithEntityName:entityName];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"jobType", &unk_1F0FBFB50];
  [v7 setPredicate:v8];

  v24 = 0;
  v9 = [contextCopy executeFetchRequest:v7 error:&v24];
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

          [contextCopy deleteObject:*(*(&v20 + 1) + 8 * i)];
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v13);
    }

    v16 = MEMORY[0x1E69BF2D0];
    null = [MEMORY[0x1E695DFB0] null];
    v18 = [v16 successWithResult:null];
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

+ (id)searchIndexWorkItemManagedObjectIDNeedingRepairInManagedObjectContext:(id)context
{
  v4 = MEMORY[0x1E696AE18];
  v5 = MEMORY[0x1E695DF00];
  contextCopy = context;
  date = [v5 date];
  v8 = [v4 predicateWithFormat:@"%K < %@", @"delayUntilDate", date];

  v9 = [self _searchIndexWorkItemManagedObjectIDsInManagedObjectContext:contextCopy jobType:3 fetchLimit:1 additionalPredicate:v8];

  return v9;
}

+ (id)searchIndexWorkItemManagedObjectIDsForIdentifiers:(id)identifiers managedObjectContext:(id)context
{
  v6 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  identifiersCopy = identifiers;
  entityName = [self entityName];
  v10 = [v6 fetchRequestWithEntityName:entityName];

  [v10 setResultType:1];
  identifiersCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K == %d OR %K == %d) AND %K in %@", @"jobType", 1, @"jobType", 2, @"identifier", identifiersCopy];

  [v10 setPredicate:identifiersCopy];
  v16 = 0;
  v12 = [contextCopy executeFetchRequest:v10 error:&v16];

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

+ (id)searchIndexWorkItemManagedObjectIDsByPriorityInManagedObjectContext:(id)context fetchLimit:(unint64_t)limit
{
  contextCopy = context;
  v7 = [self searchIndexWorkItemManagedObjectIDsInManagedObjectContext:contextCopy jobType:1 fetchLimit:limit];
  if (([v7 isFailure] & 1) != 0 || (objc_msgSend(v7, "result"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9 >= limit))
  {
    v18 = v7;
  }

  else
  {
    result = [v7 result];
    v11 = limit - [result count];

    v12 = [self searchIndexWorkItemManagedObjectIDsInManagedObjectContext:contextCopy jobType:2 fetchLimit:v11];
    if (([v12 isFailure] & 1) != 0 || (objc_msgSend(v12, "result"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v14 >= limit))
    {
      v18 = v12;
    }

    else
    {
      result2 = [v7 result];
      result3 = [v12 result];
      v17 = [result2 arrayByAddingObjectsFromArray:result3];

      v18 = [MEMORY[0x1E69BF2D0] successWithResult:v17];
    }
  }

  return v18;
}

+ (id)_searchIndexWorkItemManagedObjectIDsInManagedObjectContext:(id)context jobType:(signed __int16)type fetchLimit:(unint64_t)limit additionalPredicate:(id)predicate
{
  typeCopy = type;
  v25[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v11 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  entityName = [self entityName];
  v14 = [v11 fetchRequestWithEntityName:entityName];

  [v14 setResultType:1];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  typeCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"jobType", typeCopy];
  [v15 addObject:typeCopy];
  if (predicateCopy)
  {
    [v15 addObject:predicateCopy];
  }

  v17 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v15];
  [v14 setPredicate:v17];
  if (limit)
  {
    [v14 setFetchLimit:limit];
  }

  v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"timestamp" ascending:1];
  v25[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  [v14 setSortDescriptors:v19];

  v24 = 0;
  v20 = [contextCopy executeFetchRequest:v14 error:&v24];

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

+ (id)searchIndexWorkItemsForIncrementalUpdatesInManagedObjectContext:(id)context jobType:(signed __int16)type jobFlags:(int64_t)flags fetchLimit:(unint64_t)limit
{
  typeCopy = type;
  v24[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v11 = MEMORY[0x1E695D5E0];
  entityName = [self entityName];
  v13 = [v11 fetchRequestWithEntityName:entityName];

  v14 = MEMORY[0x1E696AB28];
  v15 = [self _predicateForJobType:typeCopy];
  v24[0] = v15;
  v16 = [self _predicateForJobFlags:flags];
  v24[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v18 = [v14 andPredicateWithSubpredicates:v17];
  [v13 setPredicate:v18];

  if (limit)
  {
    [v13 setFetchLimit:limit];
  }

  v23 = 0;
  v19 = [contextCopy executeFetchRequest:v13 error:&v23];
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

+ (id)nextSearchIndexWorkItemJobFlagsInManagedObjectContext:(id)context jobType:(signed __int16)type
{
  typeCopy = type;
  v27[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  entityName = [self entityName];
  v9 = [v6 fetchRequestWithEntityName:entityName];

  [v9 setResultType:2];
  if (typeCopy == 3)
  {
    v10 = MEMORY[0x1E696AB28];
    v11 = [self _predicateForJobType:3];
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
    v11 = [self _predicateForJobType:typeCopy];
    [v9 setPredicate:v11];
  }

  [v9 setFetchLimit:1];
  v26 = @"jobFlags";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  [v9 setPropertiesToFetch:v17];

  v25 = 0;
  v18 = [contextCopy executeFetchRequest:v9 error:&v25];

  v19 = v25;
  if (v18)
  {
    if ([v18 count])
    {
      firstObject = [v18 firstObject];
      v21 = [firstObject objectForKey:@"jobFlags"];

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

+ (id)countOfSearchIndexInsertAssetWorkItemsInManagedObjectContext:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = MEMORY[0x1E695D5E0];
  entityName = [self entityName];
  v7 = [v5 fetchRequestWithEntityName:entityName];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"jobType", &unk_1F0FBFB38];
  [v7 setPredicate:v8];

  [v7 setFetchBatchSize:100];
  v25 = 0;
  v9 = [contextCopy executeFetchRequest:v7 error:&v25];
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

+ (id)countOfSearchIndexWorkItemsInManagedObjectContext:(id)context
{
  v4 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  entityName = [self entityName];
  v7 = [v4 fetchRequestWithEntityName:entityName];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"jobType", &unk_1F0FBFB20];
  [v7 setPredicate:v8];

  [v7 setResultType:4];
  v15 = 0;
  v9 = [contextCopy countForFetchRequest:v7 error:&v15];

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

+ (id)addSearchIndexWorkItemIfNeededWithIdentifier:(id)identifier flags:(int64_t)flags inLibrary:(id)library
{
  identifierCopy = identifier;
  libraryCopy = library;
  if (flags)
  {
    if (flags)
    {
      v9 = 1;
    }

    else
    {
      v9 = +[PLBackgroundJobWorkItem searchJobTypeForCurrentQOS];
    }

    flags = [libraryCopy addBackgroundJobWorkItemIfNeededWithIdentifier:identifierCopy jobType:v9 jobFlags:flags];
  }

  return flags;
}

- (double)delayInterval
{
  delayUntilDate = [(PLBackgroundJobWorkItem *)self delayUntilDate];

  if (!delayUntilDate)
  {
    return 0.0;
  }

  delayUntilDate2 = [(PLBackgroundJobWorkItem *)self delayUntilDate];
  timestamp = [(PLBackgroundJobWorkItem *)self timestamp];
  [delayUntilDate2 timeIntervalSinceDate:timestamp];
  v7 = v6;

  return v7;
}

- (id)jobIdentifier
{
  v3 = objc_opt_class();
  identifier = [(PLBackgroundJobWorkItem *)self identifier];
  v5 = [v3 jobIdentifierWithIdentifier:identifier jobType:-[PLBackgroundJobWorkItem jobType](self jobFlags:{"jobType"), -[PLBackgroundJobWorkItem jobFlags](self, "jobFlags")}];

  return v5;
}

- (BOOL)validateForInsert:(id *)insert
{
  v6.receiver = self;
  v6.super_class = PLBackgroundJobWorkItem;
  v4 = [(PLBackgroundJobWorkItem *)&v6 validateForInsert:insert];
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
  jobType = [(PLBackgroundJobWorkItem *)self jobType];
  if (jobType > 0xA)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_1E756F240[jobType];
  }

  v8 = v7;
  identifier = [(PLBackgroundJobWorkItem *)self identifier];
  jobFlagsDescription = [(PLBackgroundJobWorkItem *)self jobFlagsDescription];
  timestamp = [(PLBackgroundJobWorkItem *)self timestamp];
  delayUntilDate = [(PLBackgroundJobWorkItem *)self delayUntilDate];
  v13 = [v3 stringWithFormat:@"<%@ %p> %@ %@ flags: %@ timestamp: %@, delay until: %@", v5, self, v8, identifier, jobFlagsDescription, timestamp, delayUntilDate];

  return v13;
}

+ (id)_workItemsSortedByTimestampWithIdentifier:(id)identifier jobTypes:(id)types fetchLimit:(id)limit resultType:(unint64_t)type inManagedObjectContext:(id)context error:(id *)error
{
  v34[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  typesCopy = types;
  limitCopy = limit;
  contextCopy = context;
  if (!typesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobWorkItem.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"jobTypes"}];
  }

  if (type >= 2)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobWorkItem.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"resultType == NSManagedObjectResultType || resultType == NSManagedObjectIDResultType"}];
  }

  v17 = MEMORY[0x1E695D5E0];
  entityName = [self entityName];
  v19 = [v17 fetchRequestWithEntityName:entityName];

  v20 = MEMORY[0x1E696AB28];
  if (identifierCopy)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"identifier", identifierCopy];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v21 = ;
  v34[0] = v21;
  typesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"jobType", typesCopy];
  v34[1] = typesCopy;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v24 = [v20 andPredicateWithSubpredicates:v23];
  [v19 setPredicate:v24];

  v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"timestamp" ascending:1];
  v33 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  [v19 setSortDescriptors:v26];

  [v19 setResultType:type];
  if (limitCopy)
  {
    [v19 setFetchLimit:{objc_msgSend(limitCopy, "integerValue")}];
  }

  v27 = [contextCopy executeFetchRequest:v19 error:error];

  return v27;
}

+ (id)workItemsSortedByTimestampWithIdentifier:(id)identifier jobType:(signed __int16)type inManagedObjectContext:(id)context error:(id *)error
{
  typeCopy = type;
  v17[1] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E696AD98];
  contextCopy = context;
  identifierCopy = identifier;
  v13 = [v10 numberWithShort:typeCopy];
  v17[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15 = [self workItemsSortedByTimestampWithIdentifier:identifierCopy jobTypes:v14 inManagedObjectContext:contextCopy error:error];

  return v15;
}

+ (id)workItemsSortedByTimestampWithJobType:(signed __int16)type fetchLimit:(id)limit resultType:(unint64_t)resultType inManagedObjectContext:(id)context error:(id *)error
{
  typeCopy = type;
  v19[1] = *MEMORY[0x1E69E9840];
  v12 = MEMORY[0x1E696AD98];
  contextCopy = context;
  limitCopy = limit;
  v15 = [v12 numberWithShort:typeCopy];
  v19[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v17 = [self _workItemsSortedByTimestampWithIdentifier:0 jobTypes:v16 fetchLimit:limitCopy resultType:resultType inManagedObjectContext:contextCopy error:error];

  return v17;
}

+ (id)insertBackgroundJobWorkItemWithIdentifier:(id)identifier jobType:(signed __int16)type jobFlags:(int64_t)flags inManagedObjectContext:(id)context
{
  typeCopy = type;
  identifierCopy = identifier;
  contextCopy = context;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobWorkItem.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v13 = [self insertInManagedObjectContext:contextCopy];
  [v13 setIdentifier:identifierCopy];
  [v13 setJobType:typeCopy];
  [v13 setJobFlags:flags];
  v14 = [MEMORY[0x1E695DF00] now];
  [v13 setTimestamp:v14];

  return v13;
}

@end