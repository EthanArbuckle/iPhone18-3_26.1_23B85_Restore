@interface PLModelMigrationAction_RemoveNotUploadedAlbum
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RemoveNotUploadedAlbum

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v8 = [v6 predicateWithFormat:@"%K = %@", @"kind", &unk_1F0FBC0A0];
  v9 = +[PLFetchingAlbum entityName];
  v34 = 0;
  v10 = [PLModelMigrator executeBatchDeleteWithEntityName:v9 predicate:v8 managedObjectContext:contextCopy error:&v34];

  v11 = v34;
  if (v10)
  {
    v12 = PLMigrationGetLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
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
        v15 = PLMigrationGetLog();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        LOWORD(v35) = 0;
        LODWORD(v33) = 2;
        v16 = _os_log_send_and_compose_impl();

        v17 = [(PLModelMigrationActionCore *)self logger:&v35];
        [v17 logWithMessage:v16 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1080, 0}];

        if (v16 != buf)
        {
          free(v16);
        }
      }

      else
      {
        v27 = PLMigrationGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "Deleted all albums of type NotUploadedAlbum", buf, 2u);
        }
      }
    }

    v28 = 1;
  }

  else
  {
    if (error)
    {
      v18 = v11;
      *error = v11;
    }

    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
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
        v22 = PLMigrationGetLog();
        os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v35 = 138543618;
        v36 = v24;
        v37 = 2114;
        v38 = v11;
        LODWORD(v33) = 22;
        v25 = _os_log_send_and_compose_impl();

        v26 = [(PLModelMigrationActionCore *)self logger:&v35];
        [v26 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1084, 16}];

        if (v25 != buf)
        {
          free(v25);
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
          *&buf[14] = v11;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Failed to batch delete albums of type NotUploadedAlbum for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v28 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  return v28;
}

@end