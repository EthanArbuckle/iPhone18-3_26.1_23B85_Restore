@interface PLModelMigrationAction_ReevaluateAllowedForAnalysisForGPAssets
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ReevaluateAllowedForAnalysisForGPAssets

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v102[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 1;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLExtendedAttributes entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"generativeAIType", 1];
  [v9 setPredicate:v10];

  v102[0] = @"asset.additionalAttributes";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v11];

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__43771;
  v61 = __Block_byref_object_dispose__43772;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__43771;
  v55 = __Block_byref_object_dispose__43772;
  v56 = 0;
  v12 = [PLEnumerateAndSaveController alloc];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __110__PLModelMigrationAction_ReevaluateAllowedForAnalysisForGPAssets_performActionWithManagedObjectContext_error___block_invoke;
  v49[3] = &unk_1E7575B30;
  v15 = contextCopy;
  v50 = v15;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __110__PLModelMigrationAction_ReevaluateAllowedForAnalysisForGPAssets_performActionWithManagedObjectContext_error___block_invoke_2;
  v48[3] = &unk_1E7572E50;
  v48[4] = self;
  v48[5] = &v51;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __110__PLModelMigrationAction_ReevaluateAllowedForAnalysisForGPAssets_performActionWithManagedObjectContext_error___block_invoke_3;
  v47[3] = &unk_1E756C788;
  v47[4] = self;
  v47[5] = &v57;
  v47[6] = &v63;
  v47[7] = &v51;
  v16 = [(PLEnumerateAndSaveController *)v12 initWithName:v14 fetchRequest:v9 context:v15 options:4 generateContextBlock:v49 didFetchObjectIDsBlock:v48 processResultBlock:v47];

  v17 = (v58 + 5);
  obj = v58[5];
  v18 = [(PLEnumerateAndSaveController *)v16 processObjectsWithError:&obj];
  objc_storeStrong(v17, obj);
  if (v18)
  {
    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (!v20)
    {
      goto LABEL_16;
    }

    logger = [(PLModelMigrationActionCore *)self logger];
    v22 = logger == 0;

    if (!v22)
    {
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      memset(buf, 0, sizeof(buf));
      v23 = PLMigrationGetLog();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      totalUnitCount = [v52[5] totalUnitCount];
      v67 = 134217984;
      v68 = totalUnitCount;
      LODWORD(v45) = 12;
      v25 = _os_log_send_and_compose_impl();

      v26 = [(PLModelMigrationActionCore *)self logger:&v67];
      [v26 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1148, 0}];

      goto LABEL_8;
    }

    v36 = PLMigrationGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      totalUnitCount2 = [v52[5] totalUnitCount];
      *buf = 134217984;
      *&buf[4] = totalUnitCount2;
      _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "Updated allowedForAnalysis for %lld GP assets", buf, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

  v64[3] = 3;
  v27 = PLMigrationGetLog();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

  if (!v28)
  {
    goto LABEL_16;
  }

  logger2 = [(PLModelMigrationActionCore *)self logger];
  v30 = logger2 == 0;

  if (v30)
  {
    v36 = PLMigrationGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = v58[5];
      *buf = 138543618;
      *&buf[4] = v39;
      *&buf[12] = 2112;
      *&buf[14] = v40;
      _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  memset(buf, 0, sizeof(buf));
  v31 = PLMigrationGetLog();
  os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v34 = v58[5];
  v67 = 138543618;
  v68 = v33;
  v69 = 2112;
  v70 = v34;
  LODWORD(v45) = 22;
  v25 = _os_log_send_and_compose_impl();

  v35 = [(PLModelMigrationActionCore *)self logger:&v67];
  [v35 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1146, 16}];

LABEL_8:
  if (v25 != buf)
  {
    free(v25);
  }

LABEL_16:
  v41 = v64[3];
  v42 = v58[5];
  if (v41 != 1 && error)
  {
    v42 = v42;
    *error = v42;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v43 = v64[3];

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v63, 8);
  return v43;
}

@end