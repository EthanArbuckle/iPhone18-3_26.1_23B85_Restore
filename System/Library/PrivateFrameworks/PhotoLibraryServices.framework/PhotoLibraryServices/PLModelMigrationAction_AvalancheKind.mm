@interface PLModelMigrationAction_AvalancheKind
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_AvalancheKind

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v69[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"avalancheUUID"];
  v8 = +[PLManagedAsset entityName];
  v68 = @"avalancheKind";
  v69[0] = &unk_1F0FBC868;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
  v32 = 0;
  v10 = [PLModelMigrator executeBatchUpdateWithEntityName:v8 predicate:v7 propertiesToUpdate:v9 managedObjectContext:v6 error:&v32];
  v11 = v32;

  if (v10)
  {
    v31 = v11;
    v12 = [v6 save:&v31];
    v13 = v31;

    if (v12)
    {
      v14 = v13;
      v15 = 1;
      goto LABEL_8;
    }

    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      v21 = [(PLModelMigrationActionCore *)self logger];

      if (v21)
      {
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
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        memset(buf, 0, sizeof(buf));
        v22 = PLMigrationGetLog();
        os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v33 = 138543618;
        v34 = v24;
        v35 = 2112;
        v36 = v13;
        LODWORD(v30) = 22;
        v25 = _os_log_send_and_compose_impl();

        v26 = [(PLModelMigrationActionCore *)self logger:&v33];
        [v26 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{230, 16}];

        if (v25 != buf)
        {
          free(v25);
        }
      }

      else
      {
        v27 = PLMigrationGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          *buf = 138543618;
          *&buf[4] = v29;
          *&buf[12] = 2112;
          *&buf[14] = v13;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v13 = v11;
  }

  v16 = v13;
  v14 = v16;
  if (a4)
  {
    v17 = v16;
    *a4 = v14;
  }

  v15 = 3;
LABEL_8:

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v15;
}

@end