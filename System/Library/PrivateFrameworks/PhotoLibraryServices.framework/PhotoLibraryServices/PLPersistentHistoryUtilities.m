@interface PLPersistentHistoryUtilities
+ (BOOL)deleteHistoryBeforeDate:(id)a3 whenHistoryPercentageOfStoreIsGreaterThan:(unint64_t)a4 withContext:(id)a5 error:(id *)a6;
+ (BOOL)deleteHistoryBeforeDate:(id)a3 withContext:(id)a4 error:(id *)a5;
+ (BOOL)deleteHistoryBeforeToken:(id)a3 withContext:(id)a4 error:(id *)a5;
+ (id)_executePersistentHistoryChangeRequest:(id)a3 withContext:(id)a4;
+ (id)_fetchSingleTransactionWithContext:(id)a3 sortAscending:(BOOL)a4;
+ (id)archivedDataWithToken:(id)a3;
+ (id)fetchTransactionCountSinceToken:(id)a3 withContext:(id)a4 error:(id *)a5;
+ (id)fetchTransactionsSinceMarker:(id)a3 withFetchRequest:(id)a4 batchSize:(unint64_t)a5 context:(id)a6 error:(id *)a7;
+ (id)newestTransactionWithContext:(id)a3;
+ (id)oldestTransactionWithContext:(id)a3;
+ (id)transactionNumberFromToken:(id)a3;
+ (id)unarchiveTokenWithData:(id)a3;
+ (int64_t)_fetchApproximateRowCountWithPathManager:(id)a3 tableName:(id)a4 error:(id *)a5;
@end

@implementation PLPersistentHistoryUtilities

+ (id)transactionNumberFromToken:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 storeTokens];
    if ([v5 count] == 1)
    {
      v6 = [v5 allValues];
      v7 = [v6 firstObject];
    }

    else
    {
      v8 = PLPersistentHistoryGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_FAULT, "unexpected number of stores in token: %@", &v10, 0xCu);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)unarchiveTokenWithData:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v7 = v3;
    v5 = pl_result_with_autoreleasepool();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __55__PLPersistentHistoryUtilities_unarchiveTokenWithData___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACD0];
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [v2 unarchivedObjectOfClass:v3 fromData:v4 error:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Unable to unarchive token data: %@", buf, 0xCu);
    }
  }

  return v5;
}

+ (id)archivedDataWithToken:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v7 = v3;
    v5 = pl_result_with_autoreleasepool();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __54__PLPersistentHistoryUtilities_archivedDataWithToken___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v6 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v1 requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (!v2)
  {
    v4 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Unable to archive token: %@", buf, 0xCu);
    }
  }

  return v2;
}

+ (int64_t)_fetchApproximateRowCountWithPathManager:(id)a3 tableName:(id)a4 error:(id *)a5
{
  v43[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"PLPersistentHistoryUtilities.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:a2 object:a1 file:@"PLPersistentHistoryUtilities.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"tableName"}];

LABEL_3:
  v12 = MEMORY[0x1E69BF2D8];
  v13 = [v9 photosDatabasePath];
  v14 = [v9 capabilities];
  v15 = [v12 openDatabaseAtPath:v13 capabilities:v14];

  if (v15)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT min(Z_PK) FROM %@", v11];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __89__PLPersistentHistoryUtilities__fetchApproximateRowCountWithPathManager_tableName_error___block_invoke;
    v31[3] = &unk_1E7572418;
    v31[4] = &v36;
    if ([v15 prepareStatement:v16 andStepThroughResultsWithBlock:v31])
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT max(Z_PK) FROM %@", v11];

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __89__PLPersistentHistoryUtilities__fetchApproximateRowCountWithPathManager_tableName_error___block_invoke_2;
      v30[3] = &unk_1E7572418;
      v30[4] = &v32;
      if ([v15 prepareStatement:v17 andStepThroughResultsWithBlock:v30])
      {
        v18 = 0;
        v19 = v33[3] - v37[3];
        goto LABEL_10;
      }
    }

    else
    {
      v17 = v16;
    }

    v24 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E696A578];
    v43[0] = @"Failed to execute statement";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v18 = [v24 errorWithDomain:*MEMORY[0x1E69BFF48] code:45001 userInfo:v25];

    v19 = -1;
LABEL_10:
    [v15 close];

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);
    v23 = v18;
    if (v19 != -1)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v20 = MEMORY[0x1E696ABC0];
  v40 = *MEMORY[0x1E696A578];
  v41 = @"Failed to load database";
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v22 = [v20 errorWithDomain:*MEMORY[0x1E69BFF48] code:45001 userInfo:v21];

  v23 = v22;
LABEL_11:
  if (a5)
  {
    v26 = v23;
    *a5 = v23;
  }

  v19 = -1;
LABEL_14:

  return v19;
}

sqlite3_int64 __89__PLPersistentHistoryUtilities__fetchApproximateRowCountWithPathManager_tableName_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int64(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

sqlite3_int64 __89__PLPersistentHistoryUtilities__fetchApproximateRowCountWithPathManager_tableName_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int64(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)_executePersistentHistoryChangeRequest:(id)a3 withContext:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v15 = 0;
  v7 = [v6 executeRequest:v5 error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    v10 = [MEMORY[0x1E69BF2D0] successWithResult:v7];
  }

  else
  {
    if (!v8)
    {
      v11 = PLChangeHandlingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = [v6 persistentStoreCoordinator];
        *buf = 138543874;
        v17 = v6;
        v18 = 2114;
        v19 = v12;
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_FAULT, "Unexepcted nil error when feching persistent history, context: %{public}@, PSC: %{public}@, changeRequest: %{pubic}@", buf, 0x20u);
      }

      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134301 userInfo:0];
    }

    v10 = [MEMORY[0x1E69BF2D0] failureWithError:v9];
  }

  v13 = v10;

  return v13;
}

+ (BOOL)deleteHistoryBeforeDate:(id)a3 whenHistoryPercentageOfStoreIsGreaterThan:(unint64_t)a4 withContext:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a5;
  v13 = v12;
  if (!v11)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PLPersistentHistoryUtilities.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"date"}];

    if (v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PLPersistentHistoryUtilities.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    goto LABEL_3;
  }

  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __116__PLPersistentHistoryUtilities_deleteHistoryBeforeDate_whenHistoryPercentageOfStoreIsGreaterThan_withContext_error___block_invoke;
  v21[3] = &unk_1E75723F0;
  v24 = a4;
  v25 = a1;
  v22 = v11;
  v23 = v13;
  v14 = v13;
  v15 = v11;
  v16 = [v14 pl_resultWithError:a6 block:v21];
  v17 = v16 != 0;

  return v17;
}

id __116__PLPersistentHistoryUtilities_deleteHistoryBeforeDate_whenHistoryPercentageOfStoreIsGreaterThan_withContext_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695D698] deleteHistoryBeforeDate:*(a1 + 32) whenHistoryPercentageOfStoreIsGreaterThan:*(a1 + 48)];
  v3 = [*(a1 + 56) _executePersistentHistoryChangeRequest:v2 withContext:*(a1 + 40)];

  return v3;
}

+ (BOOL)deleteHistoryBeforeDate:(id)a3 withContext:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"PLPersistentHistoryUtilities.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"date"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PLPersistentHistoryUtilities.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__PLPersistentHistoryUtilities_deleteHistoryBeforeDate_withContext_error___block_invoke;
  v19[3] = &unk_1E75723A0;
  v21 = v11;
  v22 = a1;
  v20 = v9;
  v12 = v11;
  v13 = v9;
  v14 = [v12 pl_resultWithError:a5 block:v19];
  v15 = v14 != 0;

  return v15;
}

id __74__PLPersistentHistoryUtilities_deleteHistoryBeforeDate_withContext_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695D698] deleteHistoryBeforeDate:*(a1 + 32)];
  v3 = [*(a1 + 48) _executePersistentHistoryChangeRequest:v2 withContext:*(a1 + 40)];

  return v3;
}

+ (BOOL)deleteHistoryBeforeToken:(id)a3 withContext:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PLPersistentHistoryUtilities.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__PLPersistentHistoryUtilities_deleteHistoryBeforeToken_withContext_error___block_invoke;
  v17[3] = &unk_1E75723A0;
  v19 = v10;
  v20 = a1;
  v18 = v9;
  v11 = v10;
  v12 = v9;
  v13 = [v11 pl_resultWithError:a5 block:v17];
  v14 = v13 != 0;

  return v14;
}

id __75__PLPersistentHistoryUtilities_deleteHistoryBeforeToken_withContext_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695D698] deleteHistoryBeforeToken:*(a1 + 32)];
  v3 = [*(a1 + 48) _executePersistentHistoryChangeRequest:v2 withContext:*(a1 + 40)];

  return v3;
}

+ (id)_fetchSingleTransactionWithContext:(id)a3 sortAscending:(BOOL)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v22 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __81__PLPersistentHistoryUtilities__fetchSingleTransactionWithContext_sortAscending___block_invoke;
  v18 = &unk_1E75723C8;
  v21 = a4;
  v20 = a1;
  v7 = v6;
  v19 = v7;
  v8 = [v7 pl_resultWithError:&v22 block:&v15];
  v9 = v22;
  if (v8)
  {
    v10 = [v8 result];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 firstObject];
      goto LABEL_10;
    }

    v13 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Fetching single persistent history result is empty", buf, 2u);
    }

    v11 = 0;
  }

  else
  {
    v11 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v9;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Unable to fetch single persistent history transaction: %@", buf, 0xCu);
    }
  }

  v12 = 0;
LABEL_10:

  return v12;
}

id __81__PLPersistentHistoryUtilities__fetchSingleTransactionWithContext_sortAscending___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D6B0] fetchRequest];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:*(a1 + 48)];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v2 setSortDescriptors:v4];

  v5 = [MEMORY[0x1E695D698] fetchHistoryWithFetchRequest:v2];
  [v5 setResultType:3];
  [v5 setFetchLimit:1];
  v6 = [*(a1 + 40) _executePersistentHistoryChangeRequest:v5 withContext:*(a1 + 32)];

  return v6;
}

+ (id)newestTransactionWithContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PLPersistentHistoryUtilities.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v6 = [a1 _fetchSingleTransactionWithContext:v5 sortAscending:0];

  return v6;
}

+ (id)oldestTransactionWithContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PLPersistentHistoryUtilities.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v6 = [a1 _fetchSingleTransactionWithContext:v5 sortAscending:1];

  return v6;
}

+ (id)fetchTransactionCountSinceToken:(id)a3 withContext:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PLPersistentHistoryUtilities.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82__PLPersistentHistoryUtilities_fetchTransactionCountSinceToken_withContext_error___block_invoke;
  v17[3] = &unk_1E75723A0;
  v19 = v10;
  v20 = a1;
  v18 = v9;
  v11 = v10;
  v12 = v9;
  v13 = [v11 pl_resultWithError:a5 block:v17];
  v14 = [v13 result];

  return v14;
}

id __82__PLPersistentHistoryUtilities_fetchTransactionCountSinceToken_withContext_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695D698] fetchHistoryAfterToken:*(a1 + 32)];
  [v2 setResultType:2];
  v3 = [*(a1 + 48) _executePersistentHistoryChangeRequest:v2 withContext:*(a1 + 40)];

  return v3;
}

+ (id)fetchTransactionsSinceMarker:(id)a3 withFetchRequest:(id)a4 batchSize:(unint64_t)a5 context:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = v15;
  if (v13)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PLPersistentHistoryUtilities.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"marker"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:a1 file:@"PLPersistentHistoryUtilities.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_3:
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __102__PLPersistentHistoryUtilities_fetchTransactionsSinceMarker_withFetchRequest_batchSize_context_error___block_invoke;
  v25[3] = &unk_1E7572378;
  v26 = v13;
  v27 = v14;
  v29 = a5;
  v30 = a1;
  v28 = v16;
  v17 = v16;
  v18 = v14;
  v19 = v13;
  v20 = [v17 pl_resultWithError:a7 block:v25];
  v21 = [v20 result];

  return v21;
}

id __102__PLPersistentHistoryUtilities_fetchTransactionsSinceMarker_withFetchRequest_batchSize_context_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) changeRequestForFetching];
  [v2 setResultType:5];
  if (*(a1 + 40))
  {
    [v2 setFetchRequest:?];
  }

  else
  {
    [v2 setFetchBatchSize:*(a1 + 56)];
  }

  v3 = [*(a1 + 64) _executePersistentHistoryChangeRequest:v2 withContext:*(a1 + 48)];

  return v3;
}

@end