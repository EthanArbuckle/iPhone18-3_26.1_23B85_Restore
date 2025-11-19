@interface PLModelMigrationAction_RepairSingletons
+ (BOOL)repairSingletonObjectsInDatabaseUsingContext:(id)a3 pathManager:(id)a4 error:(id *)a5;
+ (void)_repairRootFolderFixedOrderKeysInStore:(id)a3 context:(id)a4 pathManager:(id)a5;
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_RepairSingletons

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v8 = objc_opt_class();
  v9 = [(PLModelMigrationActionCore *)self pathManager];
  v16 = 0;
  v10 = [v8 repairSingletonObjectsInDatabaseUsingContext:v6 pathManager:v9 error:&v16];
  v11 = v16;

  [v7 setCompletedUnitCount:{objc_msgSend(v7, "completedUnitCount") + 1}];
  if ((v10 & 1) == 0)
  {
    v12 = PLMigrationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to create singletons: %@", buf, 0xCu);
    }
  }

  [v6 reset];
  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (a4)
  {
    v13 = v11;
    *a4 = v11;
  }

  if (v10)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  return v14;
}

+ (void)_repairRootFolderFixedOrderKeysInStore:(id)a3 context:(id)a4 pathManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = NSStringFromSelector(a2);
    [v18 handleFailureInMethod:a2 object:a1 file:@"PLModelMigrationActionRepairs.m" lineNumber:86 description:{@"%@ can only be called from assetsd", v19}];
  }

  v12 = [PLRelationshipOrderKeyManager alloc];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __102__PLModelMigrationAction_RepairSingletons__repairRootFolderFixedOrderKeysInStore_context_pathManager___block_invoke;
  v23[3] = &unk_1E7577E50;
  v24 = v9;
  v25 = v11;
  v13 = v11;
  v14 = v9;
  v15 = [(PLRelationshipOrderKeyManager *)v12 initWithGenerateContextBlock:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __102__PLModelMigrationAction_RepairSingletons__repairRootFolderFixedOrderKeysInStore_context_pathManager___block_invoke_2;
  v20[3] = &unk_1E7578848;
  v21 = v10;
  v22 = v15;
  v16 = v15;
  v17 = v10;
  [v17 performBlockAndWait:v20];
}

+ (BOOL)repairSingletonObjectsInDatabaseUsingContext:(id)a3 pathManager:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = PLMigrationGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Creating PLGenericAlbum singletons", &v26, 2u);
  }

  [PLGenericAlbum addSingletonObjectsToContext:v8];
  v11 = PLMigrationGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Creating PLManagedAlbumList singletons", &v26, 2u);
  }

  [PLManagedAlbumList addSingletonObjectsToContext:v8];
  v12 = [v8 save:a5];
  if (v12)
  {
    PLGenericAlbumHashOfSingletonAlbumValues(0);
    v13 = [v8 persistentStoreCoordinator];
    v14 = [v13 persistentStores];
    v15 = [v14 firstObject];

    v16 = [v15 metadata];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 mutableCopy];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:3056];
      [v18 setObject:v19 forKeyedSubscript:@"PLAlbumSingletonHashKey"];

      [v15 setMetadata:v18];
      v20 = PLMigrationGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 134217984;
        v27 = 3056;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Updated persisted album singleton hash to %lu", &v26, 0xCu);
      }
    }

    else
    {
      v18 = PLMigrationGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v26 = 136446210;
        v27 = "+[PLModelMigrationAction_RepairSingletons repairSingletonObjectsInDatabaseUsingContext:pathManager:error:]";
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to get store metadata: %{public}s", &v26, 0xCu);
      }
    }

    v21 = PLMigrationGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Enforcing fixed album order", &v26, 2u);
    }

    v22 = [v8 persistentStoreCoordinator];
    v23 = [v22 persistentStores];
    v24 = [v23 objectAtIndexedSubscript:0];
    [a1 _repairRootFolderFixedOrderKeysInStore:v24 context:v8 pathManager:v9];
  }

  return v12;
}

@end