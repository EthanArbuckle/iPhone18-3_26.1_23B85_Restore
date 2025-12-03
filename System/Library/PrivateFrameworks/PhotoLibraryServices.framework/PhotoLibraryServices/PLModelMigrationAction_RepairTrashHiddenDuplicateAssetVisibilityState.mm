@interface PLModelMigrationAction_RepairTrashHiddenDuplicateAssetVisibilityState
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RepairTrashHiddenDuplicateAssetVisibilityState

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v75[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AB28];
  v6 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v8 = [v6 predicateWithFormat:@"%K != %d", @"duplicateAssetVisibilityState", 0];
  v75[0] = v8;
  v9 = MEMORY[0x1E696AB28];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"trashedState", 0];
  v74[0] = v10;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = YES", @"hidden"];
  v74[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
  v13 = [v9 orPredicateWithSubpredicates:v12];
  v75[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
  v15 = [v5 andPredicateWithSubpredicates:v14];

  v72 = @"duplicateAssetVisibilityState";
  v73 = &unk_1F0FBC040;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v17 = +[PLManagedAsset entityName];
  v36 = 0;
  LOBYTE(v10) = [PLModelMigrator executeBatchUpdateWithEntityName:v17 predicate:v15 propertiesToUpdate:v16 managedObjectContext:contextCopy error:&v36];

  v18 = v36;
  if (v10)
  {
    [(PLModelMigrationActionCore *)self finalizeProgress];
    v19 = v18;
    v20 = 1;
  }

  else
  {
    v21 = PLMigrationGetLog();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        memset(buf, 0, sizeof(buf));
        v24 = PLMigrationGetLog();
        os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v37 = 138543618;
        v38 = v26;
        v39 = 2114;
        v40 = v18;
        LODWORD(v34) = 22;
        v27 = _os_log_send_and_compose_impl();

        v28 = [(PLModelMigrationActionCore *)self logger:&v37];
        [v28 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{482, 16}];

        if (v27 != buf)
        {
          free(v27);
        }
      }

      else
      {
        v29 = PLMigrationGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          *buf = 138543618;
          *&buf[4] = v31;
          *&buf[12] = 2114;
          *&buf[14] = v18;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Failed to execute batch update request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v32 = v18;
    if (error)
    {
      *error = v32;
    }

    v20 = 3;
  }

  return v20;
}

@end