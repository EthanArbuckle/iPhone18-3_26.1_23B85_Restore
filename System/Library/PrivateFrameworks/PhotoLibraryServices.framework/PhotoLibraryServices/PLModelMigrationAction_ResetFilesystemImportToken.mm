@interface PLModelMigrationAction_ResetFilesystemImportToken
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetFilesystemImportToken

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v8 = [[PLGlobalValues alloc] initWithManagedObjectContext:contextCopy];
  [(PLGlobalValues *)v8 setImportFilesystemAssetsState:-1];
  v34 = 0;
  v9 = [contextCopy save:&v34];

  v10 = v34;
  if (v9)
  {
    [v7 setCompletedUnitCount:1];
    v11 = PLMigrationGetLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v40 = 0u;
        v41 = 0u;
        memset(buf, 0, sizeof(buf));
        v14 = PLMigrationGetLog();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        LOWORD(v35) = 0;
        LODWORD(v33) = 2;
        v15 = _os_log_send_and_compose_impl();

        v16 = [(PLModelMigrationActionCore *)self logger:&v35];
        [v16 logWithMessage:v15 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{572, 0}];

        if (v15 != buf)
        {
          free(v15);
        }
      }

      else
      {
        v25 = PLMigrationGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Reset the filesystem import token", buf, 2u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v26 = v10;
    v27 = 1;
  }

  else
  {
    v17 = PLMigrationGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

    if (v18)
    {
      logger2 = [(PLModelMigrationActionCore *)self logger];

      if (logger2)
      {
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
        v40 = 0u;
        v41 = 0u;
        memset(buf, 0, sizeof(buf));
        v20 = PLMigrationGetLog();
        os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v35 = 138543618;
        v36 = v22;
        v37 = 2112;
        v38 = v10;
        LODWORD(v33) = 22;
        v23 = _os_log_send_and_compose_impl();

        v24 = [(PLModelMigrationActionCore *)self logger:&v35];
        [v24 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{569, 16}];

        if (v23 != buf)
        {
          free(v23);
        }
      }

      else
      {
        v28 = PLMigrationGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138543618;
          *&buf[4] = v30;
          *&buf[12] = 2112;
          *&buf[14] = v10;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v31 = v10;
    if (error)
    {
      *error = v31;
    }

    v27 = 3;
  }

  return v27;
}

@end