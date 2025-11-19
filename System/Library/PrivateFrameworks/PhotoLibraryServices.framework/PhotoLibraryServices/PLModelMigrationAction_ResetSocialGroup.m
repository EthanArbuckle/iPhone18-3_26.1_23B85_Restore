@interface PLModelMigrationAction_ResetSocialGroup
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_ResetSocialGroup

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:1];
  [v7 becomeCurrentWithPendingUnitCount:1];
  v33 = 0;
  v8 = [PLSocialGroup resetAllInContext:v6 error:&v33];

  v9 = v33;
  v10 = PLMigrationGetLog();
  v11 = v10;
  if (v8)
  {
    v12 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = [(PLModelMigrationActionCore *)self logger];

      if (v13)
      {
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
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        memset(buf, 0, sizeof(buf));
        v14 = PLMigrationGetLog();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        LOWORD(v34) = 0;
        LODWORD(v32) = 2;
        v15 = _os_log_send_and_compose_impl();

        v16 = [(PLModelMigrationActionCore *)self logger:&v34];
        [v16 logWithMessage:v15 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{376, 0}];

        if (v15 != buf)
        {
          free(v15);
        }
      }

      else
      {
        v24 = PLMigrationGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Deleted all SocialGroups", buf, 2u);
        }
      }
    }

    [v7 resignCurrent];
    v25 = v9;
    v26 = 1;
  }

  else
  {
    v17 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      v18 = [(PLModelMigrationActionCore *)self logger];

      if (v18)
      {
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
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        memset(buf, 0, sizeof(buf));
        v19 = PLMigrationGetLog();
        os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v34 = 138543618;
        v35 = v21;
        v36 = 2112;
        v37 = v9;
        LODWORD(v32) = 22;
        v22 = _os_log_send_and_compose_impl();

        v23 = [(PLModelMigrationActionCore *)self logger:&v34];
        [v23 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{379, 16}];

        if (v22 != buf)
        {
          free(v22);
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
          *&buf[14] = v9;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }

    [v7 resignCurrent];
    v30 = v9;
    if (a4)
    {
      *a4 = v30;
    }

    v26 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v26;
}

@end