@interface PLModelMigrationAction_ClearPurgeableIsCloneState
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ClearPurgeableIsCloneState

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = PLMigrationGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    logger = [(PLModelMigrationActionCore *)self logger];

    if (logger)
    {
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
      v37 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      *buf = 0u;
      v9 = PLMigrationGetLog();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      LOWORD(v28) = 0;
      LODWORD(v26) = 2;
      v10 = _os_log_send_and_compose_impl();

      v11 = [(PLModelMigrationActionCore *)self logger:&v28];
      [v11 logWithMessage:v10 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{744, 0}];

      if (v10 != buf)
      {
        free(v10);
      }
    }

    else
    {
      v12 = PLMigrationGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Setting clearPurgeableIsCloneStateOnPurgeableResourcesOnce flag to clear purgeable is-clone state once on library maintenance", buf, 2u);
      }
    }
  }

  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v27 = 0;
  v14 = [PLCacheDeleteSupport setClearPurgeableIsCloneStateOnPurgeableResourcesOnceWithPathManager:pathManager error:&v27];
  v15 = v27;

  if (v14)
  {
    v16 = 1;
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
        v37 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        *buf = 0u;
        v20 = PLMigrationGetLog();
        os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        v28 = 138412290;
        v29 = v15;
        LODWORD(v26) = 12;
        v21 = _os_log_send_and_compose_impl();

        v22 = [(PLModelMigrationActionCore *)self logger:&v28];
        [v22 logWithMessage:v21 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{747, 16}];

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
          *buf = 138412290;
          *&buf[4] = v15;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to set clearPurgeableIsCloneStateOnPurgeableResourcesOnce flag: %@", buf, 0xCu);
        }
      }
    }

    v16 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    v24 = v15;
    *error = v15;
  }

  return v16;
}

@end