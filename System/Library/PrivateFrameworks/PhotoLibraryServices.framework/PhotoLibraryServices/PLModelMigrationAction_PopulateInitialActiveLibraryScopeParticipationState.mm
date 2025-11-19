@interface PLModelMigrationAction_PopulateInitialActiveLibraryScopeParticipationState
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_PopulateInitialActiveLibraryScopeParticipationState

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v66[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  v7 = a3;
  v8 = [v6 predicateWithFormat:@"%K != nil", @"libraryScope"];
  v65 = @"activeLibraryScopeParticipationState";
  v66[0] = &unk_1F0FBC070;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
  v10 = +[PLManagedAsset entityName];
  v29 = 0;
  v11 = [PLModelMigrator executeBatchUpdateWithEntityName:v10 predicate:v8 propertiesToUpdate:v9 managedObjectContext:v7 error:&v29];

  v12 = v29;
  if (v11)
  {
    [(PLModelMigrationActionCore *)self finalizeProgress];
    v13 = v12;
    v14 = 1;
  }

  else
  {
    v15 = PLMigrationGetLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (v16)
    {
      v17 = [(PLModelMigrationActionCore *)self logger];

      if (v17)
      {
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        memset(buf, 0, sizeof(buf));
        v18 = PLMigrationGetLog();
        os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v30 = 138543618;
        v31 = v20;
        v32 = 2114;
        v33 = v12;
        LODWORD(v28) = 22;
        v21 = _os_log_send_and_compose_impl();

        v22 = [(PLModelMigrationActionCore *)self logger:&v30];
        [v22 logWithMessage:v21 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{816, 16}];

        if (v21 != buf)
        {
          free(v21);
        }
      }

      else
      {
        v23 = PLMigrationGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          *buf = 138543618;
          *&buf[4] = v25;
          *&buf[12] = 2114;
          *&buf[14] = v12;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to execute batch update request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v26 = v12;
    if (a4)
    {
      *a4 = v26;
    }

    v14 = 3;
  }

  return v14;
}

@end