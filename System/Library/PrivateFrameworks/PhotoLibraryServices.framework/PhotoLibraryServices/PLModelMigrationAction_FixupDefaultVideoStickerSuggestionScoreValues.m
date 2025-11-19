@interface PLModelMigrationAction_FixupDefaultVideoStickerSuggestionScoreValues
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_FixupDefaultVideoStickerSuggestionScoreValues

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v75[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  v7 = a3;
  v8 = [v6 predicateWithFormat:@"%K = 0", @"mediaAnalysisVersion"];
  v74 = @"videoStickerSuggestionScore";
  LODWORD(v9) = -1.0;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v75[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];

  v12 = +[PLMediaAnalysisAssetAttributes entityName];
  v38 = 0;
  LODWORD(v10) = [PLModelMigrator executeBatchUpdateWithEntityName:v12 predicate:v8 propertiesToUpdate:v11 managedObjectContext:v7 error:&v38];

  v13 = v38;
  if (v10)
  {
    v14 = PLMigrationGetLog();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = [(PLModelMigrationActionCore *)self logger];

      if (v16)
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v17 = PLMigrationGetLog();
        os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        LOWORD(v39) = 0;
        LODWORD(v37) = 2;
        v18 = _os_log_send_and_compose_impl();

        v19 = [(PLModelMigrationActionCore *)self logger:&v39];
        [v19 logWithMessage:v18 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{120, 0}];

        if (v18 != buf)
        {
          free(v18);
        }
      }

      else
      {
        v29 = PLMigrationGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "Reset default video sticker suggestion score on assets with mediaAnalysisAttributes.mediaAnalysisVersion = 0", buf, 2u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v30 = v13;
    v31 = 1;
  }

  else
  {
    if (a4)
    {
      v20 = v13;
      *a4 = v13;
    }

    v21 = PLMigrationGetLog();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      v23 = [(PLModelMigrationActionCore *)self logger];

      if (v23)
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v24 = PLMigrationGetLog();
        os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v39 = 138543618;
        v40 = v26;
        v41 = 2114;
        v42 = v13;
        LODWORD(v37) = 22;
        v27 = _os_log_send_and_compose_impl();

        v28 = [(PLModelMigrationActionCore *)self logger:&v39];
        [v28 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{124, 16}];

        if (v27 != buf)
        {
          free(v27);
        }
      }

      else
      {
        v32 = PLMigrationGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          *buf = 138543618;
          *&buf[4] = v34;
          *&buf[12] = 2114;
          *&buf[14] = v13;
          _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Failed to reset default video sticker suggestion score on assets with mediaAnalysisAttributes.mediaAnalysisVersion = 0 %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v35 = v13;
    if (a4)
    {
      *a4 = v35;
    }

    v31 = 3;
  }

  return v31;
}

@end