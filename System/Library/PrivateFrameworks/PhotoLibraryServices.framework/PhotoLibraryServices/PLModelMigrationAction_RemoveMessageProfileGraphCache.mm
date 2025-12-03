@interface PLModelMigrationAction_RemoveMessageProfileGraphCache
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RemoveMessageProfileGraphCache

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v7 = [pathManager privateCacheDirectoryWithSubType:4];
  v8 = [v7 stringByAppendingPathComponent:@"PGMessageProfile.plist"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (![defaultManager fileExistsAtPath:v8])
  {
    v11 = 0;
LABEL_8:
    [(PLModelMigrationActionCore *)self finalizeProgress];
    v19 = v11;
    v20 = 1;
    goto LABEL_22;
  }

  v32 = 0;
  v10 = [defaultManager removeItemAtPath:v8 error:&v32];
  v11 = v32;
  v12 = PLMigrationGetLog();
  v13 = v12;
  if (v10)
  {
    v14 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

    if (v14)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
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
        v16 = PLMigrationGetLog();
        os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
        v33 = 138543362;
        v34 = v8;
        LODWORD(v31) = 12;
        v17 = _os_log_send_and_compose_impl();

        v18 = [(PLModelMigrationActionCore *)self logger:&v33];
        [v18 logWithMessage:v17 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1455, 1}];

        if (v17 != buf)
        {
          free(v17);
        }
      }

      else
      {
        v26 = PLMigrationGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          *&buf[4] = v8;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, "Successfully removed cache file %{public}@", buf, 0xCu);
        }
      }
    }

    goto LABEL_8;
  }

  v21 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

  if (v21)
  {
    logger2 = [(PLModelMigrationActionCore *)self logger];

    if (logger2)
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
      v23 = PLMigrationGetLog();
      os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      v33 = 138543618;
      v34 = v8;
      v35 = 2112;
      v36 = v11;
      LODWORD(v31) = 22;
      v24 = _os_log_send_and_compose_impl();

      v25 = [(PLModelMigrationActionCore *)self logger:&v33];
      [v25 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1458, 16}];

      if (v24 != buf)
      {
        free(v24);
      }
    }

    else
    {
      v27 = PLMigrationGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = v8;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Failed to delete cache file %{public}@. Error: %@", buf, 0x16u);
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v28 = v11;
  v19 = v28;
  if (error)
  {
    v29 = v28;
    *error = v19;
  }

  v20 = 3;
LABEL_22:

  return v20;
}

@end