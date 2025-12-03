@interface PLModelMigrationAction_RepairSingletons
+ (BOOL)repairSingletonObjectsInDatabaseUsingContext:(id)context pathManager:(id)manager error:(id *)error;
+ (void)_repairRootFolderFixedOrderKeysInStore:(id)store context:(id)context pathManager:(id)manager;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RepairSingletons

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v8 = objc_opt_class();
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v16 = 0;
  v10 = [v8 repairSingletonObjectsInDatabaseUsingContext:contextCopy pathManager:pathManager error:&v16];
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

  [contextCopy reset];
  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    v13 = v11;
    *error = v11;
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

+ (void)_repairRootFolderFixedOrderKeysInStore:(id)store context:(id)context pathManager:(id)manager
{
  storeCopy = store;
  contextCopy = context;
  managerCopy = manager;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationActionRepairs.m" lineNumber:86 description:{@"%@ can only be called from assetsd", v19}];
  }

  v12 = [PLRelationshipOrderKeyManager alloc];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __102__PLModelMigrationAction_RepairSingletons__repairRootFolderFixedOrderKeysInStore_context_pathManager___block_invoke;
  v23[3] = &unk_1E7577E50;
  v24 = storeCopy;
  v25 = managerCopy;
  v13 = managerCopy;
  v14 = storeCopy;
  v15 = [(PLRelationshipOrderKeyManager *)v12 initWithGenerateContextBlock:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __102__PLModelMigrationAction_RepairSingletons__repairRootFolderFixedOrderKeysInStore_context_pathManager___block_invoke_2;
  v20[3] = &unk_1E7578848;
  v21 = contextCopy;
  v22 = v15;
  v16 = v15;
  v17 = contextCopy;
  [v17 performBlockAndWait:v20];
}

+ (BOOL)repairSingletonObjectsInDatabaseUsingContext:(id)context pathManager:(id)manager error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  managerCopy = manager;
  v10 = PLMigrationGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Creating PLGenericAlbum singletons", &v26, 2u);
  }

  [PLGenericAlbum addSingletonObjectsToContext:contextCopy];
  v11 = PLMigrationGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Creating PLManagedAlbumList singletons", &v26, 2u);
  }

  [PLManagedAlbumList addSingletonObjectsToContext:contextCopy];
  v12 = [contextCopy save:error];
  if (v12)
  {
    PLGenericAlbumHashOfSingletonAlbumValues(0);
    persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
    persistentStores = [persistentStoreCoordinator persistentStores];
    firstObject = [persistentStores firstObject];

    metadata = [firstObject metadata];
    v17 = metadata;
    if (metadata)
    {
      v18 = [metadata mutableCopy];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:3056];
      [v18 setObject:v19 forKeyedSubscript:@"PLAlbumSingletonHashKey"];

      [firstObject setMetadata:v18];
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

    persistentStoreCoordinator2 = [contextCopy persistentStoreCoordinator];
    persistentStores2 = [persistentStoreCoordinator2 persistentStores];
    v24 = [persistentStores2 objectAtIndexedSubscript:0];
    [self _repairRootFolderFixedOrderKeysInStore:v24 context:contextCopy pathManager:managerCopy];
  }

  return v12;
}

@end