@interface PLModelMigrationAction_CopyStickerConfidenceScoreToAssetTable
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_CopyStickerConfidenceScoreToAssetTable

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v107[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 1;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__53822;
  v66 = __Block_byref_object_dispose__53823;
  v67 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AE18];
  v11 = +[PLVisualSearchAttributes algorithmVersionKey];
  v12 = +[PLVisualSearchAttributes stickerConfidenceScoreKey];
  v13 = [v10 predicateWithFormat:@"(%K < 0) AND (%K.%K > 0) AND (%K.%K >= 0)", @"stickerConfidenceScore", @"mediaAnalysisAttributes.visualSearchAttributes", v11, @"mediaAnalysisAttributes.visualSearchAttributes", v12];
  [v9 setPredicate:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = +[PLVisualSearchAttributes stickerConfidenceScoreKey];
  v16 = [v14 stringWithFormat:@"%@.%@", @"mediaAnalysisAttributes.visualSearchAttributes", v15];
  v107[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v17];

  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = __Block_byref_object_copy__53822;
  v60[4] = __Block_byref_object_dispose__53823;
  v61 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v18 = [PLEnumerateAndSaveController alloc];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __109__PLModelMigrationAction_CopyStickerConfidenceScoreToAssetTable_performActionWithManagedObjectContext_error___block_invoke;
  v54[3] = &unk_1E7575B30;
  v21 = contextCopy;
  v55 = v21;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __109__PLModelMigrationAction_CopyStickerConfidenceScoreToAssetTable_performActionWithManagedObjectContext_error___block_invoke_2;
  v53[3] = &unk_1E7572E50;
  v53[4] = self;
  v53[5] = v60;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __109__PLModelMigrationAction_CopyStickerConfidenceScoreToAssetTable_performActionWithManagedObjectContext_error___block_invoke_3;
  v52[3] = &unk_1E756DD18;
  v52[4] = self;
  v52[5] = &v56;
  v52[6] = &v62;
  v52[7] = &v68;
  v52[8] = v60;
  v22 = [(PLEnumerateAndSaveController *)v18 initWithName:v20 fetchRequest:v9 context:v21 options:4 generateContextBlock:v54 didFetchObjectIDsBlock:v53 processResultBlock:v52];

  v23 = (v63 + 5);
  obj = v63[5];
  LOBYTE(v17) = [(PLEnumerateAndSaveController *)v22 processObjectsWithError:&obj];
  objc_storeStrong(v23, obj);
  if (v17)
  {
    v24 = PLMigrationGetLog();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (!v25)
    {
      goto LABEL_17;
    }

    logger = [(PLModelMigrationActionCore *)self logger];
    v27 = logger == 0;

    if (!v27)
    {
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      memset(buf, 0, sizeof(buf));
      v28 = PLMigrationGetLog();
      os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      v29 = v57[3];
      v72 = 134217984;
      v73 = v29;
      LODWORD(v50) = 12;
      v30 = _os_log_send_and_compose_impl();

      v31 = [(PLModelMigrationActionCore *)self logger:&v72];
      [v31 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{445, 0}];

      if (v30 == buf)
      {
        goto LABEL_17;
      }

      v32 = v30;
LABEL_10:
      free(v32);
      goto LABEL_17;
    }

    v43 = PLMigrationGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v57[3];
      *buf = 134217984;
      *&buf[4] = v44;
      _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "Copied %tu sticker confidence scores", buf, 0xCu);
    }
  }

  else
  {
    v69[3] = 3;
    v33 = PLMigrationGetLog();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

    if (!v34)
    {
      goto LABEL_17;
    }

    logger2 = [(PLModelMigrationActionCore *)self logger];
    v36 = logger2 == 0;

    if (!v36)
    {
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      memset(buf, 0, sizeof(buf));
      v37 = PLMigrationGetLog();
      os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = v63[5];
      v72 = 138543618;
      v73 = v39;
      v74 = 2114;
      v75 = v40;
      LODWORD(v50) = 22;
      v41 = _os_log_send_and_compose_impl();

      v42 = [(PLModelMigrationActionCore *)self logger:&v72];
      [v42 logWithMessage:v41 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{443, 16}];

      if (v41 == buf)
      {
        goto LABEL_17;
      }

      v32 = v41;
      goto LABEL_10;
    }

    v43 = PLMigrationGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = v63[5];
      *buf = 138543618;
      *&buf[4] = v46;
      *&buf[12] = 2114;
      *&buf[14] = v47;
      _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
    }
  }

LABEL_17:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    *error = v63[5];
  }

  v48 = v69[3];

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(v60, 8);

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);

  return v48;
}

@end