@interface PLModelMigrationAction_FixupDefaultStickerConfidenceScoreValues
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_FixupDefaultStickerConfidenceScoreValues

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[PLManagedAsset fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  v9 = +[PLVisualSearchAttributes algorithmVersionKey];
  v10 = [v8 predicateWithFormat:@"%K.%K = 0", @"mediaAnalysisAttributes.visualSearchAttributes", v9];
  [v7 setPredicate:v10];

  v11 = [PLEnumerateAndSaveController alloc];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __111__PLModelMigrationAction_FixupDefaultStickerConfidenceScoreValues_performActionWithManagedObjectContext_error___block_invoke;
  v34[3] = &unk_1E7575B30;
  v14 = v6;
  v35 = v14;
  v15 = [(PLEnumerateAndSaveController *)v11 initWithName:v13 fetchRequest:v7 context:v14 options:4 generateContextBlock:v34 didFetchObjectIDsBlock:0 processResultBlock:&__block_literal_global_53874];

  v33 = 0;
  v16 = [(PLEnumerateAndSaveController *)v15 processObjectsWithError:&v33];
  v17 = v33;
  if (!v16)
  {
    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      v21 = [(PLModelMigrationActionCore *)self logger];

      if (!v21)
      {
        v29 = PLMigrationGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          *buf = 138543618;
          *&buf[4] = v31;
          *&buf[12] = 2114;
          *&buf[14] = v17;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
        }

        if (!a4)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

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
      v41 = 0u;
      v42 = 0u;
      memset(buf, 0, sizeof(buf));
      v22 = PLMigrationGetLog();
      os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v36 = 138543618;
      v37 = v24;
      v38 = 2114;
      v39 = v17;
      LODWORD(v32) = 22;
      v25 = _os_log_send_and_compose_impl();

      v26 = [(PLModelMigrationActionCore *)self logger:&v36];
      [v26 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{100, 16}];

      if (v25 != buf)
      {
        free(v25);
      }
    }

    if (!a4)
    {
LABEL_9:
      v18 = 3;
      goto LABEL_10;
    }

LABEL_8:
    v27 = v17;
    *a4 = v17;
    goto LABEL_9;
  }

  v18 = 1;
LABEL_10:

  return v18;
}

@end