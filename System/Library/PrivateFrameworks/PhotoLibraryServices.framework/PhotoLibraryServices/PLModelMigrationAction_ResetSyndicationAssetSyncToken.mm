@interface PLModelMigrationAction_ResetSyndicationAssetSyncToken
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetSyndicationAssetSyncToken

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v8 = [[PLGlobalValues alloc] initWithManagedObjectContext:contextCopy];
  [(PLGlobalValues *)v8 setLastAttachmentSyndicationSyncDate:0];
  [(PLGlobalValues *)v8 setInProgressFullIndexSyndicationSyncDate:0];
  [(PLGlobalValues *)v8 setSyndicationStartDate:0];
  v33 = 0;
  v9 = [contextCopy save:&v33];

  v10 = v33;
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
        [v16 logWithMessage:v15 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{121, 0}];

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
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Cleared syndication sync tokens for asset sync, full index sync, syndication start date", buf, 2u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v26 = 1;
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
        v20 = PLMigrationGetLog();
        os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v34 = 138543618;
        v35 = v22;
        v36 = 2112;
        v37 = v10;
        LODWORD(v32) = 22;
        v23 = _os_log_send_and_compose_impl();

        v24 = [(PLModelMigrationActionCore *)self logger:&v34];
        [v24 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{118, 16}];

        if (v23 != buf)
        {
          free(v23);
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
          *&buf[14] = v10;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    if (error)
    {
      v30 = v10;
      *error = v10;
    }

    v26 = 3;
  }

  return v26;
}

@end