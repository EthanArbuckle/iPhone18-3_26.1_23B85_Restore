@interface PLModelMigrationAction_FixResourcesIncorrectlyAssignedToSyndicationDataStore
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_FixResourcesIncorrectlyAssignedToSyndicationDataStore

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v36[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLInternalResource entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d && %K == %d", @"dataStoreClassID", 3, @"recipeID", 65741];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"asset.savedAssetType", objc_msgSend(MEMORY[0x1E69BF328], "savedAssetTypeForCloudSharedAsset")];
  v11 = MEMORY[0x1E696AB28];
  v36[0] = v9;
  v36[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v13 = [v11 andPredicateWithSubpredicates:v12];
  [v8 setPredicate:v13];

  v31 = 0;
  v14 = [v5 executeFetchRequest:v8 error:&v31];
  v15 = v31;
  v27 = self;
  v16 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v14 count], 0);
  v17 = v16;
  if (v14)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __124__PLModelMigrationAction_FixResourcesIncorrectlyAssignedToSyndicationDataStore_performActionWithManagedObjectContext_error___block_invoke;
    v29[3] = &unk_1E756DBB8;
    v18 = v16;
    v30 = v18;
    v19 = [v5 enumerateWithIncrementalSaveUsingObjects:v14 withBlock:v29];

    v20 = PLMigrationGetLog();
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v33 = "[PLModelMigrationAction_FixResourcesIncorrectlyAssignedToSyndicationDataStore performActionWithManagedObjectContext:error:]";
        v34 = 2112;
        v35 = v19;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "%{public}s: enumerate with incremental save failed: %@", buf, 0x16u);
      }

      v22 = 3;
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v18 completedUnitCount];
        *buf = 134217984;
        v33 = v24;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Fixed %lld resources", buf, 0xCu);
      }

      v22 = 1;
    }

    v23 = v30;
  }

  else
  {
    v23 = PLMigrationGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v33 = "[PLModelMigrationAction_FixResourcesIncorrectlyAssignedToSyndicationDataStore performActionWithManagedObjectContext:error:]";
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "%{public}s: resource fetch failed: %@", buf, 0x16u);
    }

    v22 = 3;
    v19 = v15;
  }

  [(PLModelMigrationActionCore *)v27 finalizeProgress];
  if (a4)
  {
    v25 = v19;
    *a4 = v19;
  }

  return v22;
}

@end