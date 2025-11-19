@interface PLModelMigrationAction_ResetRecentHighlightTitleUpdateDate
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_ResetRecentHighlightTitleUpdateDate

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = [PLPhotosHighlightGenerator lastHighlightTitlesUpdateDay:a3];
  v6 = [MEMORY[0x1E695DF00] distantPast];
  [PLPhotosHighlightGenerator setLastHighlightTitlesUpdateDay:v6];
  v7 = PLMigrationGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = [(PLModelMigrationActionCore *)self logger];

    if (v9)
    {
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
      memset(buf, 0, sizeof(buf));
      v10 = PLMigrationGetLog();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      LODWORD(v15) = 22;
      v11 = _os_log_send_and_compose_impl();

      v12 = [(PLModelMigrationActionCore *)self logger:&v16];
      [v12 logWithMessage:v11 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1192, 0}];

      if (v11 != buf)
      {
        free(v11);
      }
    }

    else
    {
      v13 = PLMigrationGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v5;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Reset Recent Highlight Title Update Date from %@ to %@", buf, 0x16u);
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  return 1;
}

@end