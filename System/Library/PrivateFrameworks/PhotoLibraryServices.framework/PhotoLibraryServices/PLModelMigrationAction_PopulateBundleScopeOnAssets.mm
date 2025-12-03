@interface PLModelMigrationAction_PopulateBundleScopeOnAssets
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_PopulateBundleScopeOnAssets

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v51[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  selfCopy = self;
  v7 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:2 pendingParentUnitCount:0];
  v8 = [PLPersistentHistoryTransactionModifiers transactionAuthorFromChangeSource:2];
  [contextCopy setTransactionAuthor:v8];

  v9 = MEMORY[0x1E695D560];
  v10 = +[PLManagedAsset entityName];
  v11 = [v9 batchUpdateRequestWithEntityName:v10];

  v12 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForCloudSharedAsset"), 1}];
  [v11 setPredicate:v12];

  v50 = @"bundleScope";
  v51[0] = &unk_1F0FBCD30;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
  [v11 setPropertiesToUpdate:v13];

  [v11 setResultType:2];
  v41 = 0;
  v14 = [contextCopy executeRequest:v11 error:&v41];
  v15 = v41;
  v39 = v7;
  if (v14)
  {
    errorCopy = error;
    [v7 setCompletedUnitCount:1];
    v16 = PLMigrationGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      result = [v14 result];
      *buf = 138412290;
      v47 = result;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Populated bundleScope for %@ CloudShared assets", buf, 0xCu);
    }

    v18 = MEMORY[0x1E695D560];
    v19 = +[PLManagedAsset entityName];
    v11 = [v18 batchUpdateRequestWithEntityName:v19];

    v20 = MEMORY[0x1E696AB28];
    v21 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForMomentSharedAsset"), 1}];
    v45[0] = v21;
    v22 = MEMORY[0x1E696AB28];
    v23 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForPlaceholderAsset"), 1}];
    v44[0] = v23;
    v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"momentShare"];
    v44[1] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    v26 = [v22 andPredicateWithSubpredicates:v25];
    v45[1] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
    v28 = [v20 orPredicateWithSubpredicates:v27];

    [v11 setPredicate:v28];
    v42 = @"bundleScope";
    v43 = &unk_1F0FBCD48;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    [v11 setPropertiesToUpdate:v29];

    [v11 setResultType:2];
    v40 = v15;
    v30 = [contextCopy executeRequest:v11 error:&v40];
    v31 = v40;

    if (v30)
    {
      [v39 setCompletedUnitCount:2];
      v32 = PLMigrationGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        result2 = [v30 result];
        *buf = 138412290;
        v47 = result2;
        _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "Populated bundleScope for %@ MomentShare assets", buf, 0xCu);
      }

      v34 = 1;
    }

    else
    {
      v32 = PLMigrationGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v47 = "[PLModelMigrationAction_PopulateBundleScopeOnAssets performActionWithManagedObjectContext:error:]";
        v48 = 2112;
        v49 = v31;
        _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "%{public}s: batch update failed: %@", buf, 0x16u);
      }

      v34 = 3;
    }

    error = errorCopy;
  }

  else
  {
    v28 = PLMigrationGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v47 = "[PLModelMigrationAction_PopulateBundleScopeOnAssets performActionWithManagedObjectContext:error:]";
      v48 = 2112;
      v49 = v15;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "%{public}s: batch update failed: %@", buf, 0x16u);
    }

    v34 = 3;
    v31 = v15;
  }

  [(PLModelMigrationActionCore *)selfCopy finalizeProgress];
  if (error)
  {
    v35 = v31;
    *error = v31;
  }

  return v34;
}

@end