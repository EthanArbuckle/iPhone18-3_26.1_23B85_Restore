@interface PLManagedObjectPagingIterator
+ (id)_nextBatchOfResultsWithManagedObjectContext:(id)context entityName:(id)name resultType:(unint64_t)type resumeObjectID:(id)d additionalPredicate:(id)predicate batchSize:(unint64_t)size propertiesToFetch:(id)fetch relationshipKeyPathsToPrefetch:(id)self0;
- (BOOL)_lock_shouldFetchCountRemaining;
- (NSManagedObjectID)resumeObjectID;
- (PLManagedObjectPagingIterator)initWithEntityName:(id)name resultType:(unint64_t)type resumeObjectID:(id)d additionalPredicate:(id)predicate batchSize:(unint64_t)size propertiesToFetch:(id)fetch relationshipKeyPathsToPrefetch:(id)prefetch;
- (id)_neverCallWithLock_refillResultQueueWithManagedObjectContext:(id)context;
- (id)countRemainingWithManagedObjectContext:(id)context logger:(id)logger;
- (id)nextBatchWithManagedObjectContext:(id)context;
- (id)nextObjectWithManagedObjectContext:(id)context;
- (void)_updateResumeObjectIDWithObject:(id)object progressCount:(unint64_t)count;
@end

@implementation PLManagedObjectPagingIterator

uint64_t __38__PLManagedObjectPagingIterator_reset__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;

  result = [*(*(a1 + 32) + 48) removeAllObjects];
  *(*(a1 + 32) + 40) = 0;
  return result;
}

- (NSManagedObjectID)resumeObjectID
{
  v2 = PLSafeResultWithUnfairLock();

  return v2;
}

- (id)countRemainingWithManagedObjectContext:(id)context logger:(id)logger
{
  v84 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  loggerCopy = logger;
  v44 = MEMORY[0x1E69E9820];
  v45 = 3221225472;
  v46 = __79__PLManagedObjectPagingIterator_countRemainingWithManagedObjectContext_logger___block_invoke;
  v47 = &unk_1E7573368;
  selfCopy = self;
  if (PLBoolResultWithUnfairLock())
  {
    v8 = [MEMORY[0x1E69BF2D0] successWithResult:&unk_1F0FBD960];
  }

  else
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__75749;
    v38 = __Block_byref_object_dispose__75750;
    v39 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    resumeObjectID = [(PLManagedObjectPagingIterator *)self resumeObjectID];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __79__PLManagedObjectPagingIterator_countRemainingWithManagedObjectContext_logger___block_invoke_25;
    v24[3] = &unk_1E7572800;
    v27 = &v30;
    v24[4] = self;
    v10 = resumeObjectID;
    v25 = v10;
    v28 = &v40;
    v26 = contextCopy;
    v29 = &v34;
    [v26 performBlockAndWait:v24];
    if (*(v31 + 24) == 1 && v41[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = PLSearchBackendIndexingEngineGetLog();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (v12)
      {
        if (loggerCopy)
        {
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          memset(buf, 0, sizeof(buf));
          v13 = PLSearchBackendIndexingEngineGetLog();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          entityName = [(PLManagedObjectPagingIterator *)self entityName];
          v15 = v41[3];
          v49 = 138543618;
          v50 = entityName;
          v51 = 2048;
          v52 = v15;
          LODWORD(v23) = 22;
          v16 = _os_log_send_and_compose_impl();

          [loggerCopy logWithMessage:v16 fromCodeLocation:"PLManagedObjectPagingIterator.m" type:{206, 0, &v49, v23}];
          if (v16 != buf)
          {
            free(v16);
          }
        }

        else
        {
          v17 = PLSearchBackendIndexingEngineGetLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            entityName2 = [(PLManagedObjectPagingIterator *)self entityName];
            v19 = v41[3];
            *buf = 138543618;
            *&buf[4] = entityName2;
            *&buf[12] = 2048;
            *&buf[14] = v19;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Remaining count for search indexing entity %{public}@: %tu", buf, 0x16u);
          }
        }
      }
    }

    v20 = MEMORY[0x1E69BF2D0];
    if (v41[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [MEMORY[0x1E69BF2D0] failureWithError:v35[5]];
    }

    else
    {
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      v8 = [v20 successWithResult:v21];
    }

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);

    _Block_object_dispose(&v40, 8);
  }

  return v8;
}

void __79__PLManagedObjectPagingIterator_countRemainingWithManagedObjectContext_logger___block_invoke_25(void *a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  obj[1] = MEMORY[0x1E69E9820];
  obj[2] = 3221225472;
  obj[3] = __79__PLManagedObjectPagingIterator_countRemainingWithManagedObjectContext_logger___block_invoke_2;
  obj[4] = &unk_1E7573368;
  obj[5] = v2;
  *(*(a1[7] + 8) + 24) = PLBoolResultWithUnfairLock();
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    v3 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:*(a1[4] + 56)];
    v4 = MEMORY[0x1E696AB28];
    v5 = *(a1[4] + 72);
    v6 = v5;
    if (!v5)
    {
      v6 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    }

    v14[0] = v6;
    if (a1[5])
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"self < %@", a1[5]];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithValue:1];
    }
    v7 = ;
    v14[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v9 = [v4 andPredicateWithSubpredicates:v8];
    [v3 setPredicate:v9];

    if (!v5)
    {
    }

    v10 = a1[6];
    v11 = *(a1[9] + 8);
    obj[0] = *(v11 + 40);
    v12 = [v10 countForFetchRequest:v3 error:obj];
    objc_storeStrong((v11 + 40), obj[0]);
    *(*(a1[8] + 8) + 24) = v12;
    PLSafeRunWithUnfairLock();
  }

  else
  {
    PLSafeRunWithUnfairLock();
  }
}

void __79__PLManagedObjectPagingIterator_countRemainingWithManagedObjectContext_logger___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  *(*(a1 + 32) + 24) = *(*(*(a1 + 40) + 8) + 24);
}

- (id)nextBatchWithManagedObjectContext:(id)context
{
  contextCopy = context;
  if (PLBoolResultWithUnfairLock())
  {
    v5 = 0;
    goto LABEL_12;
  }

  if (!PLBoolResultWithUnfairLock())
  {
LABEL_8:
    v9 = PLSafeResultWithUnfairLock();
    if ([v9 count])
    {
      v5 = [MEMORY[0x1E69BF2D0] successWithResult:v9];
      lastObject = [v9 lastObject];
      -[PLManagedObjectPagingIterator _updateResumeObjectIDWithObject:progressCount:](self, "_updateResumeObjectIDWithObject:progressCount:", lastObject, [v9 count]);
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_12;
  }

  v6 = [(PLManagedObjectPagingIterator *)self _neverCallWithLock_refillResultQueueWithManagedObjectContext:contextCopy];
  if (([v6 isFailure] & 1) == 0)
  {

    goto LABEL_8;
  }

  v7 = MEMORY[0x1E69BF2D0];
  error = [v6 error];
  v5 = [v7 failureWithError:error];

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_12:

  return v5;
}

id __67__PLManagedObjectPagingIterator_nextBatchWithManagedObjectContext___block_invoke_3(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:*(*(a1 + 32) + 48)];
  [*(*(a1 + 32) + 48) removeAllObjects];

  return v2;
}

- (id)nextObjectWithManagedObjectContext:(id)context
{
  contextCopy = context;
  if (PLBoolResultWithUnfairLock())
  {
    v5 = 0;
    goto LABEL_12;
  }

  if (!PLBoolResultWithUnfairLock())
  {
LABEL_8:
    v9 = PLResultWithUnfairLock();
    if (v9)
    {
      v5 = [MEMORY[0x1E69BF2D0] successWithResult:v9];
      [(PLManagedObjectPagingIterator *)self _updateResumeObjectIDWithObject:v9 progressCount:1];
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_12;
  }

  v6 = [(PLManagedObjectPagingIterator *)self _neverCallWithLock_refillResultQueueWithManagedObjectContext:contextCopy];
  if (([v6 isFailure] & 1) == 0)
  {

    goto LABEL_8;
  }

  v7 = MEMORY[0x1E69BF2D0];
  error = [v6 error];
  v5 = [v7 failureWithError:error];

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_12:

  return v5;
}

id __68__PLManagedObjectPagingIterator_nextObjectWithManagedObjectContext___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) firstObject];
  if (v2)
  {
    [*(*(a1 + 32) + 48) removeObjectAtIndex:0];
  }

  return v2;
}

- (void)_updateResumeObjectIDWithObject:(id)object progressCount:(unint64_t)count
{
  objectCopy = object;
  v4 = objectCopy;
  PLSafeRunWithUnfairLock();
}

void __79__PLManagedObjectPagingIterator__updateResumeObjectIDWithObject_progressCount___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[8];
  if (v3 == 1)
  {
    v7 = *(a1 + 40);
    v6 = v2[2];
    v2[2] = v7;
  }

  else
  {
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = [*(a1 + 40) objectID];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;
  }

  v2 = *(a1 + 32);
LABEL_6:
  v8 = *(a1 + 48);
  v9 = v2[3];
  v10 = v9 >= v8;
  v11 = v9 - v8;
  if (v10)
  {
    v2[3] = v11;
  }

  else
  {
    v12 = v2[4];
    v2[4] = 0;

    *(*(a1 + 32) + 24) = 0;
  }
}

- (id)_neverCallWithLock_refillResultQueueWithManagedObjectContext:(id)context
{
  contextCopy = context;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__75749;
  v15 = __Block_byref_object_dispose__75750;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__PLManagedObjectPagingIterator__neverCallWithLock_refillResultQueueWithManagedObjectContext___block_invoke;
  v8[3] = &unk_1E7578820;
  v8[4] = self;
  v5 = contextCopy;
  v9 = v5;
  v10 = &v11;
  [v5 performBlockAndWait:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __94__PLManagedObjectPagingIterator__neverCallWithLock_refillResultQueueWithManagedObjectContext___block_invoke(void *a1)
{
  v2 = objc_opt_class();
  v3 = a1[4];
  v4 = a1[5];
  v5 = v3[7];
  v6 = v3[8];
  v7 = [v3 resumeObjectID];
  v8 = [v2 _nextBatchOfResultsWithManagedObjectContext:v4 entityName:v5 resultType:v6 resumeObjectID:v7 additionalPredicate:*(a1[4] + 72) batchSize:*(a1[4] + 80) propertiesToFetch:*(a1[4] + 88) relationshipKeyPathsToPrefetch:*(a1[4] + 96)];

  if ([v8 isFailure])
  {
    v9 = MEMORY[0x1E69BF2D0];
    v10 = [v8 error];
    v11 = [v9 failureWithError:v10];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v14 = [v8 result];
    v15 = [v14 count];

    if (v15)
    {
      v21 = v8;
      PLSafeRunWithUnfairLock();
    }

    else
    {
      PLSafeRunWithUnfairLock();
    }

    v16 = MEMORY[0x1E69BF2D0];
    v17 = [MEMORY[0x1E695DFB0] null];
    v18 = [v16 successWithResult:v17];

    v19 = *(a1[6] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }
}

void __94__PLManagedObjectPagingIterator__neverCallWithLock_refillResultQueueWithManagedObjectContext___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2 = [*(a1 + 40) result];
  [v1 addObjectsFromArray:v2];
}

- (BOOL)_lock_shouldFetchCountRemaining
{
  if (!self->_lock_lastFetchCountTime)
  {
    return 1;
  }

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:self->_lock_lastFetchCountTime];
  v5 = v4;

  return v5 > 300.0 || self->_lock_countRemaining == 0x7FFFFFFFFFFFFFFFLL;
}

- (PLManagedObjectPagingIterator)initWithEntityName:(id)name resultType:(unint64_t)type resumeObjectID:(id)d additionalPredicate:(id)predicate batchSize:(unint64_t)size propertiesToFetch:(id)fetch relationshipKeyPathsToPrefetch:(id)prefetch
{
  nameCopy = name;
  dCopy = d;
  predicateCopy = predicate;
  fetchCopy = fetch;
  prefetchCopy = prefetch;
  if (type >= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedObjectPagingIterator.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"resultType == NSManagedObjectResultType || resultType == NSManagedObjectIDResultType"}];
  }

  v28.receiver = self;
  v28.super_class = PLManagedObjectPagingIterator;
  v18 = [(PLManagedObjectPagingIterator *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_entityName, name);
    v19->_resultType = type;
    objc_storeStrong(&v19->_lock_resumeObjectID, d);
    objc_storeStrong(&v19->_additionalPredicate, predicate);
    v19->_batchSize = size;
    objc_storeStrong(&v19->_propertiesToFetch, fetch);
    objc_storeStrong(&v19->_relationshipKeyPathsToPrefetch, prefetch);
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lock_resultQueue = v19->_lock_resultQueue;
    v19->_lock_resultQueue = v20;

    v19->_lock._os_unfair_lock_opaque = 0;
  }

  return v19;
}

+ (id)_nextBatchOfResultsWithManagedObjectContext:(id)context entityName:(id)name resultType:(unint64_t)type resumeObjectID:(id)d additionalPredicate:(id)predicate batchSize:(unint64_t)size propertiesToFetch:(id)fetch relationshipKeyPathsToPrefetch:(id)self0
{
  v36[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  predicateCopy = predicate;
  v15 = MEMORY[0x1E695D5E0];
  prefetchCopy = prefetch;
  fetchCopy = fetch;
  contextCopy = context;
  v19 = [v15 fetchRequestWithEntityName:name];
  v20 = MEMORY[0x1E696AB28];
  v21 = predicateCopy;
  if (!predicateCopy)
  {
    v21 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  v36[0] = v21;
  v33 = dCopy;
  if (dCopy)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"self < %@", dCopy];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v22 = ;
  v36[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v24 = [v20 andPredicateWithSubpredicates:v23];
  [v19 setPredicate:v24];

  if (!predicateCopy)
  {
  }

  v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:0];
  v35 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  [v19 setSortDescriptors:v26];

  [v19 setFetchLimit:size];
  [v19 setResultType:type];
  [v19 setIncludesPendingChanges:0];
  [v19 setPropertiesToFetch:fetchCopy];

  [v19 setRelationshipKeyPathsForPrefetching:prefetchCopy];
  v34 = 0;
  v27 = [contextCopy executeFetchRequest:v19 error:&v34];

  v28 = v34;
  if (v27)
  {
    [MEMORY[0x1E69BF2D0] successWithResult:v27];
  }

  else
  {
    [MEMORY[0x1E69BF2D0] failureWithError:v28];
  }
  v29 = ;

  return v29;
}

@end