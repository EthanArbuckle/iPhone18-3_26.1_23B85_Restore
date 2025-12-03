@interface PLModelMigrationAction_FixAssetsWithMissingSaliencyRects
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixAssetsWithMissingSaliencyRects

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v99 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 1;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == 0 && %K == 0", @"packedPreferredCropRect", @"packedAcceptableCropRect"];
  [v9 setPredicate:v10];

  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__43771;
  v58 = __Block_byref_object_dispose__43772;
  v59 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = __Block_byref_object_copy__43771;
  v52[4] = __Block_byref_object_dispose__43772;
  v53 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [PLEnumerateAndSaveController alloc];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __104__PLModelMigrationAction_FixAssetsWithMissingSaliencyRects_performActionWithManagedObjectContext_error___block_invoke;
  v46[3] = &unk_1E7575B30;
  v14 = contextCopy;
  v47 = v14;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __104__PLModelMigrationAction_FixAssetsWithMissingSaliencyRects_performActionWithManagedObjectContext_error___block_invoke_2;
  v45[3] = &unk_1E7572E50;
  v45[4] = self;
  v45[5] = v52;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __104__PLModelMigrationAction_FixAssetsWithMissingSaliencyRects_performActionWithManagedObjectContext_error___block_invoke_3;
  v44[3] = &unk_1E756DD18;
  v44[4] = self;
  v44[5] = &v54;
  v44[6] = &v60;
  v44[7] = &v48;
  v44[8] = v52;
  v15 = [(PLEnumerateAndSaveController *)v13 initWithName:v12 fetchRequest:v9 context:v14 options:4 generateContextBlock:v46 didFetchObjectIDsBlock:v45 processResultBlock:v44];
  v16 = (v55 + 5);
  obj = v55[5];
  v17 = [(PLEnumerateAndSaveController *)v15 processObjectsWithError:&obj];
  objc_storeStrong(v16, obj);
  if (v17)
  {
    v18 = PLMigrationGetLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (!v19)
    {
      goto LABEL_17;
    }

    logger = [(PLModelMigrationActionCore *)self logger];
    v21 = logger == 0;

    if (!v21)
    {
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
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      memset(buf, 0, sizeof(buf));
      v22 = PLMigrationGetLog();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      v23 = v49[3];
      v64 = 134217984;
      v65 = v23;
      LODWORD(v42) = 12;
      v24 = _os_log_send_and_compose_impl();

      v25 = [(PLModelMigrationActionCore *)self logger:&v64];
      [v25 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1773, 0}];

      if (v24 != buf)
      {
        v26 = v24;
LABEL_10:
        free(v26);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    v35 = PLMigrationGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v49[3];
      *buf = 134217984;
      *&buf[4] = v36;
      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "[CCSS] Reset sceneAnalysisVersions on %tu assets to fix missing saliency rects", buf, 0xCu);
    }

LABEL_16:

    goto LABEL_17;
  }

  v61[3] = 3;
  v27 = PLMigrationGetLog();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

  if (!v28)
  {
    goto LABEL_17;
  }

  logger2 = [(PLModelMigrationActionCore *)self logger];
  v30 = logger2 == 0;

  if (v30)
  {
    v35 = PLMigrationGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v37 = v55[5];
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v37;
      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
    }

    goto LABEL_16;
  }

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
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  memset(buf, 0, sizeof(buf));
  v31 = PLMigrationGetLog();
  os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
  v32 = v55[5];
  v64 = 138543618;
  v65 = v12;
  v66 = 2112;
  v67 = v32;
  LODWORD(v42) = 22;
  v33 = _os_log_send_and_compose_impl();

  v34 = [(PLModelMigrationActionCore *)self logger:&v64];
  [v34 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1771, 16}];

  if (v33 != buf)
  {
    v26 = v33;
    goto LABEL_10;
  }

LABEL_17:
  v38 = v61[3];
  v39 = v55[5];
  if (v38 != 1 && error)
  {
    v39 = v39;
    *error = v39;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v40 = v61[3];

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(v52, 8);

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  return v40;
}

@end