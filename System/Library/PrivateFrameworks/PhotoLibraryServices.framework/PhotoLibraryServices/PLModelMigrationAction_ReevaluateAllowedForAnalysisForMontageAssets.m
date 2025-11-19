@interface PLModelMigrationAction_ReevaluateAllowedForAnalysisForMontageAssets
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_ReevaluateAllowedForAnalysisForMontageAssets

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v74[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  v7 = a3;
  v8 = [v6 predicateWithFormat:@"%K != nil", @"montage"];
  v73 = @"allowedForAnalysis";
  v74[0] = MEMORY[0x1E695E110];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:&v73 count:1];
  v10 = +[PLAdditionalAssetAttributes entityName];
  v37 = 0;
  v11 = [PLModelMigrator executeBatchUpdateWithEntityName:v10 predicate:v8 propertiesToUpdate:v9 managedObjectContext:v7 error:&v37];

  v12 = v37;
  if (v11)
  {
    v13 = PLMigrationGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = [(PLModelMigrationActionCore *)self logger];

      if (v15)
      {
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v16 = PLMigrationGetLog();
        os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        LOWORD(v38) = 0;
        LODWORD(v36) = 2;
        v17 = _os_log_send_and_compose_impl();

        v18 = [(PLModelMigrationActionCore *)self logger:&v38];
        [v18 logWithMessage:v17 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{545, 0}];

        if (v17 != buf)
        {
          free(v17);
        }
      }

      else
      {
        v28 = PLMigrationGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Successfully set allowedForAnalysis to NO for montageAssets", buf, 2u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v29 = v12;
    v30 = 1;
  }

  else
  {
    if (a4)
    {
      v19 = v12;
      *a4 = v12;
    }

    v20 = PLMigrationGetLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (v21)
    {
      v22 = [(PLModelMigrationActionCore *)self logger];

      if (v22)
      {
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v23 = PLMigrationGetLog();
        os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v38 = 138543618;
        v39 = v25;
        v40 = 2114;
        v41 = v12;
        LODWORD(v36) = 22;
        v26 = _os_log_send_and_compose_impl();

        v27 = [(PLModelMigrationActionCore *)self logger:&v38];
        [v27 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{549, 16}];

        if (v26 != buf)
        {
          free(v26);
        }
      }

      else
      {
        v31 = PLMigrationGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          *buf = 138543618;
          *&buf[4] = v33;
          *&buf[12] = 2114;
          *&buf[14] = v12;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Failed to set allowedForAnalysis to NO for montageAssets %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v34 = v12;
    if (a4)
    {
      *a4 = v34;
    }

    v30 = 3;
  }

  return v30;
}

@end