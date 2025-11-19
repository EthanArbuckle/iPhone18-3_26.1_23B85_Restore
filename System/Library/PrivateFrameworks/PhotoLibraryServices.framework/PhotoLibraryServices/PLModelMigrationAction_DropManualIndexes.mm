@interface PLModelMigrationAction_DropManualIndexes
- (BOOL)_dropManualIndexes;
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_DropManualIndexes

- (BOOL)_dropManualIndexes
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = [(PLModelMigrationActionCore *)self pathManager];
  v4 = [v3 photosDatabasePath];
  v5 = PLOpenSQLTransactionWithDBPath([v4 fileSystemRepresentation]);

  if (v5)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __62__PLModelMigrationAction_DropManualIndexes__dropManualIndexes__block_invoke;
    v25[3] = &unk_1E7567ED0;
    v25[4] = self;
    v25[5] = &v26;
    v25[6] = v5;
    [&unk_1F0FBF580 enumerateObjectsUsingBlock:v25];
    if (*(v27 + 6))
    {
      PLRollbackSQLTransactionAndCloseDB(v5);
    }

    else
    {
      if (PLCommitSQLTransactionAndCloseDB(v5))
      {
        v6 = 1;
        goto LABEL_5;
      }

      v13 = PLMigrationGetLog();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

      if (v14)
      {
        v15 = [(PLModelMigrationActionCore *)self logger];
        v16 = v15 == 0;

        if (v16)
        {
          v22 = PLMigrationGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Unable to commit transaction involving creation of manual indexes.", buf, 2u);
          }
        }

        else
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
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          *buf = 0u;
          v31 = 0u;
          v17 = PLMigrationGetLog();
          os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
          v24 = 0;
          LODWORD(v23) = 2;
          v18 = _os_log_send_and_compose_impl();

          v19 = [(PLModelMigrationActionCore *)self logger:&v24];
          [v19 logWithMessage:v18 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{534, 16}];

          if (v18 != buf)
          {
            free(v18);
          }
        }
      }
    }

    v6 = 0;
LABEL_5:
    _Block_object_dispose(&v26, 8);
    return v6;
  }

  v7 = PLMigrationGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    v9 = [(PLModelMigrationActionCore *)self logger];

    if (v9)
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
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      *buf = 0u;
      v31 = 0u;
      v10 = PLMigrationGetLog();
      os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      LOWORD(v26) = 0;
      LODWORD(v23) = 2;
      v11 = _os_log_send_and_compose_impl();

      v12 = [(PLModelMigrationActionCore *)self logger:&v26];
      [v12 logWithMessage:v11 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{543, 16}];

      if (v11 != buf)
      {
        free(v11);
      }
    }

    else
    {
      v20 = PLMigrationGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Unable to open db in order to drop manual indexes.", buf, 2u);
      }
    }
  }

  return 0;
}

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  if (![(PLModelMigrationAction_DropManualIndexes *)self _dropManualIndexes:a3])
  {
    v5 = PLMigrationGetLog();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = [(PLModelMigrationActionCore *)self logger];

      if (v7)
      {
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
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        *buf = 0u;
        v16 = 0u;
        v8 = PLMigrationGetLog();
        os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        v14[0] = 0;
        LODWORD(v13) = 2;
        v9 = _os_log_send_and_compose_impl();

        v10 = [(PLModelMigrationActionCore *)self logger:v14];
        [v10 logWithMessage:v9 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{508, 16}];

        if (v9 != buf)
        {
          free(v9);
        }
      }

      else
      {
        v11 = PLMigrationGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to drop manual indexes.", buf, 2u);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return 1;
}

@end