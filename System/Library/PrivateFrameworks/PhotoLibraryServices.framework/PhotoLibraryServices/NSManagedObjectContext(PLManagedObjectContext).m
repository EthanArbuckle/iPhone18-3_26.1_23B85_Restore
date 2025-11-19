@interface NSManagedObjectContext(PLManagedObjectContext)
- (id)deleteObjectsWithIncrementalSave:()PLManagedObjectContext;
- (id)enumerateObjectsFromFetchRequest:()PLManagedObjectContext batchSize:usingBlock:;
- (id)enumerateObjectsFromFetchRequest:()PLManagedObjectContext count:batchSize:usingBlock:;
- (id)enumerateWithIncrementalSaveUsingObjects:()PLManagedObjectContext shouldRefreshAfterSave:withBlock:;
- (id)pathManager;
- (id)pl_graphCache;
- (id)pl_resultWithError:()PLManagedObjectContext block:;
- (uint64_t)pl_executeBatchUpdateRequest:()PLManagedObjectContext withBatchSize:error:;
- (void)pl_performBlockAndWait:()PLManagedObjectContext;
- (void)pl_refresh;
@end

@implementation NSManagedObjectContext(PLManagedObjectContext)

- (uint64_t)pl_executeBatchUpdateRequest:()PLManagedObjectContext withBatchSize:error:
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = MEMORY[0x1E695D5E0];
  v9 = [v7 entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = [v7 predicate];
  [v10 setPredicate:v11];

  v48 = v7;
  [v10 setIncludesSubentities:{objc_msgSend(v7, "includesSubentities")}];
  [v10 setIncludesPropertyValues:0];
  [v10 setIncludesPendingChanges:0];
  [v10 setResultType:1];
  v51 = 0;
  v46 = a1;
  v12 = [a1 executeFetchRequest:v10 error:&v51];
  v13 = v51;
  v14 = v13;
  if (v12)
  {
    v43 = a5;
    v44 = v10;
    v45 = v13;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v16 = v15;
    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v48 propertiesToUpdate];
      v19 = [v12 count];
      v20 = [v48 predicate];
      *buf = 138412802;
      v53 = v18;
      v54 = 2048;
      v55 = v19;
      v56 = 2112;
      v57 = v20;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "Performing batch update of %@ on %ld records matching %@", buf, 0x20u);
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = [v12 count];
      v25 = v23 >= v24;
      if (v23 >= v24)
      {
        v10 = v44;
        goto LABEL_17;
      }

      context = objc_autoreleasePoolPush();
      if ([v12 count] + v21 < a4)
      {
        v26 = 1;
      }

      else
      {
        v26 = a4;
      }

      v27 = [v12 subarrayWithRange:{v23, v26}];
      [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF in %@", v27];
      v29 = v28 = v12;
      v30 = [v48 copy];
      [v30 setPredicate:v29];
      [v30 setResultType:0];
      v50 = v22;
      v31 = [v46 executeRequest:v48 error:&v50];
      v32 = v50;

      v12 = v28;
      objc_autoreleasePoolPop(context);
      v23 += a4;
      v21 -= a4;
      v22 = v32;
    }

    while (v31);
    if (v43)
    {
      v10 = v44;
      v25 = v25;
      if (v32)
      {
        v33 = v32;
        *v43 = v32;
      }

      v22 = v32;
    }

    else
    {
      v22 = v32;
      v10 = v44;
      v25 = v25;
    }

LABEL_17:
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v36 = v35;
    v37 = PLBackendGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = [v48 propertiesToUpdate];
      v39 = [v12 count];
      v40 = [v48 predicate];
      v41 = [v12 count];
      *buf = 138413314;
      v53 = v38;
      v54 = 2048;
      v55 = v39;
      v56 = 2112;
      v57 = v40;
      v58 = 2048;
      v59 = v41 / a4;
      v60 = 2048;
      v61 = v36 - v16;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEBUG, "Completed batch update of %@ on %ld records matching %@ in %ld batches, %3.3f sec", buf, 0x34u);
    }

    v14 = v45;
  }

  else if (a5)
  {
    v34 = v13;
    v25 = 0;
    *a5 = v14;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)pl_resultWithError:()PLManagedObjectContext block:
{
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__17410;
  v20 = __Block_byref_object_dispose__17411;
  v21 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __75__NSManagedObjectContext_PLManagedObjectContext__pl_resultWithError_block___block_invoke;
  v13 = &unk_1E7573998;
  v15 = &v16;
  v7 = v6;
  v14 = v7;
  [a1 performBlockAndWait:&v10];
  v8 = [v17[5] resultWithError:{a3, v10, v11, v12, v13}];

  _Block_object_dispose(&v16, 8);

  return v8;
}

- (id)deleteObjectsWithIncrementalSave:()PLManagedObjectContext
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__NSManagedObjectContext_PLManagedObjectContext__deleteObjectsWithIncrementalSave___block_invoke;
  v5[3] = &unk_1E7577F08;
  v5[4] = a1;
  v3 = [a1 enumerateWithIncrementalSaveUsingObjects:a3 withBlock:v5];

  return v3;
}

- (id)enumerateWithIncrementalSaveUsingObjects:()PLManagedObjectContext shouldRefreshAfterSave:withBlock:
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a5;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__17410;
  v35 = __Block_byref_object_dispose__17411;
  v36 = 0;
  context = objc_autoreleasePoolPush();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __124__NSManagedObjectContext_PLManagedObjectContext__enumerateWithIncrementalSaveUsingObjects_shouldRefreshAfterSave_withBlock___block_invoke;
  aBlock[3] = &unk_1E7578910;
  aBlock[4] = a1;
  aBlock[5] = &v31;
  v23 = _Block_copy(aBlock);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v39 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v25 = 0;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v13 isDeleted])
        {
          v15 = PLBackendGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = [v13 objectID];
            buf = 138412290;
            v38 = v16;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "Skipping deleted object on incremental save: %@", &buf, 0xCu);
          }
        }

        else
        {
          v7[2](v7, v13, v9++, &v25);
          if (v25)
          {
            v17 = 0;
            goto LABEL_18;
          }
        }

        if (++v10 >= 0x65)
        {
          v23[2]();
          if (a4)
          {
            [a1 refreshAllObjects];
          }

          v10 = 0;
        }

        v17 = 1;
LABEL_18:
        objc_autoreleasePoolPop(v14);
        if (!v17)
        {
          goto LABEL_21;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v39 count:16];
    }

    while (v8);
  }

LABEL_21:

  (v23[2])(v23);
  objc_autoreleasePoolPop(context);
  v18 = v32[5];
  _Block_object_dispose(&v31, 8);

  return v18;
}

- (id)enumerateObjectsFromFetchRequest:()PLManagedObjectContext batchSize:usingBlock:
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  [v8 setFetchBatchSize:a4];
  v38 = 0;
  v11 = [a1 executeFetchRequest:v8 error:&v38];
  v12 = v38;
  v13 = [v11 count];
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = v13;
    v30 = v11;
    v31 = v10;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = v11;
    v17 = [v16 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = v15;
      v20 = 0;
      v21 = *v35;
      v32 = v8;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v34 + 1) + 8 * i);
          v24 = objc_autoreleasePoolPush();
          v33 = 0;
          if ([v8 resultType] || (objc_msgSend(v23, "isDeleted") & 1) == 0)
          {
            v9[2](v9, v23, v20, v19, &v33);
            if (v33)
            {
              objc_autoreleasePoolPop(v24);
              goto LABEL_19;
            }

            ++v20;
          }

          else
          {
            v25 = v16;
            v26 = v19;
            v27 = PLBackendGetLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v28 = [v23 objectID];
              *buf = 138412290;
              v40 = v28;
              _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEBUG, "Skipping deleted object on enum: %@", buf, 0xCu);
            }

            v19 = v26;
            v16 = v25;
            v8 = v32;
          }

          objc_autoreleasePoolPop(v24);
        }

        v18 = [v16 countByEnumeratingWithState:&v34 objects:v41 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    v14 = 0;
    v11 = v30;
    v10 = v31;
    v12 = 0;
  }

  objc_autoreleasePoolPop(v10);

  return v14;
}

- (id)enumerateObjectsFromFetchRequest:()PLManagedObjectContext count:batchSize:usingBlock:
{
  v10 = a3;
  v11 = a6;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __110__NSManagedObjectContext_PLManagedObjectContext__enumerateObjectsFromFetchRequest_count_batchSize_usingBlock___block_invoke;
  v15[3] = &unk_1E75683E0;
  v17 = &v18;
  v12 = v11;
  v16 = v12;
  v13 = [a1 enumerateObjectsFromFetchRequest:v10 batchSize:a5 usingBlock:v15];
  if (a4)
  {
    *a4 = v19[3];
  }

  _Block_object_dispose(&v18, 8);

  return v13;
}

- (id)pl_graphCache
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__17410;
  v8 = __Block_byref_object_dispose__17411;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__NSManagedObjectContext_PLManagedObjectContext__pl_graphCache__block_invoke;
  v3[3] = &unk_1E7578910;
  v3[4] = a1;
  v3[5] = &v4;
  [a1 pl_performBlockAndWait:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

- (id)pathManager
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__17410;
  v13 = __Block_byref_object_dispose__17411;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__NSManagedObjectContext_PLManagedObjectContext__pathManager__block_invoke;
  v8[3] = &unk_1E7578910;
  v8[4] = a1;
  v8[5] = &v9;
  [a1 pl_performBlockAndWait:v8];
  v4 = v10[5];
  if (!v4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"PLManagedObjectContext.m" lineNumber:1908 description:{@"Invalid parameter not satisfying: %@", @"manager"}];

    v4 = v10[5];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);

  return v5;
}

- (void)pl_performBlockAndWait:()PLManagedObjectContext
{
  v5 = a3;
  v4 = [a1 concurrencyType];
  if (!v4 || *MEMORY[0x1E695D708] == v4)
  {
    v5[2]();
  }

  else
  {
    [a1 performBlockAndWait:v5];
  }
}

- (void)pl_refresh
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [a1 registeredObjects];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (([v7 isDeleted] & 1) == 0)
        {
          [a1 refreshObject:v7 mergeChanges:{objc_msgSend(v7, "hasChanges")}];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

@end