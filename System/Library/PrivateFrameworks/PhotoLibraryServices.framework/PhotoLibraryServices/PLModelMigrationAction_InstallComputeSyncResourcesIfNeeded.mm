@interface PLModelMigrationAction_InstallComputeSyncResourcesIfNeeded
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_InstallComputeSyncResourcesIfNeeded

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v104[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 1;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLComputeSyncAttributes entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"cloudComputeStateVersion", @"1.950"];
  v104[0] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != 950", @"localAnalysisStage"];
  v104[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];
  [v9 setPredicate:v14];

  v103 = @"asset";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v15];

  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__43771;
  v62 = __Block_byref_object_dispose__43772;
  v63 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__43771;
  v56[4] = __Block_byref_object_dispose__43772;
  v57 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [PLEnumerateAndSaveController alloc];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __106__PLModelMigrationAction_InstallComputeSyncResourcesIfNeeded_performActionWithManagedObjectContext_error___block_invoke;
  v50[3] = &unk_1E7575B30;
  v19 = contextCopy;
  v51 = v19;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __106__PLModelMigrationAction_InstallComputeSyncResourcesIfNeeded_performActionWithManagedObjectContext_error___block_invoke_2;
  v49[3] = &unk_1E7572E50;
  v49[4] = self;
  v49[5] = v56;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __106__PLModelMigrationAction_InstallComputeSyncResourcesIfNeeded_performActionWithManagedObjectContext_error___block_invoke_3;
  v48[3] = &unk_1E756C828;
  v48[4] = self;
  v48[5] = &v58;
  v48[6] = &v64;
  v48[7] = &v52;
  v48[8] = v56;
  v20 = [(PLEnumerateAndSaveController *)v18 initWithName:v17 fetchRequest:v9 context:v19 options:4 generateContextBlock:v50 didFetchObjectIDsBlock:v49 processResultBlock:v48];
  v21 = (v59 + 5);
  obj = v59[5];
  LOBYTE(v13) = [(PLEnumerateAndSaveController *)v20 processObjectsWithError:&obj];
  objc_storeStrong(v21, obj);
  if (v13)
  {
    v22 = PLMigrationGetLog();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (!v23)
    {
      goto LABEL_17;
    }

    logger = [(PLModelMigrationActionCore *)self logger];
    v25 = logger == 0;

    if (!v25)
    {
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
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      memset(buf, 0, sizeof(buf));
      v26 = PLMigrationGetLog();
      os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      v27 = v53[3];
      v68 = 134217984;
      v69 = v27;
      LODWORD(v46) = 12;
      v28 = _os_log_send_and_compose_impl();

      v29 = [(PLModelMigrationActionCore *)self logger:&v68];
      [v29 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1504, 0}];

      if (v28 != buf)
      {
        v30 = v28;
LABEL_10:
        free(v30);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    v39 = PLMigrationGetLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v53[3];
      *buf = 134217984;
      *&buf[4] = v40;
      _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "[CCSS] Installed %tu ComputeSync resources after migration from DawnburstG to CrystalGlow", buf, 0xCu);
    }

LABEL_16:

    goto LABEL_17;
  }

  v65[3] = 3;
  v31 = PLMigrationGetLog();
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

  if (!v32)
  {
    goto LABEL_17;
  }

  logger2 = [(PLModelMigrationActionCore *)self logger];
  v34 = logger2 == 0;

  if (v34)
  {
    v39 = PLMigrationGetLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v41 = v59[5];
      *buf = 138543618;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v41;
      _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
    }

    goto LABEL_16;
  }

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
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  memset(buf, 0, sizeof(buf));
  v35 = PLMigrationGetLog();
  os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
  v36 = v59[5];
  v68 = 138543618;
  v69 = v17;
  v70 = 2112;
  v71 = v36;
  LODWORD(v46) = 22;
  v37 = _os_log_send_and_compose_impl();

  v38 = [(PLModelMigrationActionCore *)self logger:&v68];
  [v38 logWithMessage:v37 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1502, 16}];

  if (v37 != buf)
  {
    v30 = v37;
    goto LABEL_10;
  }

LABEL_17:
  v42 = v65[3];
  v43 = v59[5];
  if (v42 != 1 && error)
  {
    v43 = v43;
    *error = v43;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v44 = v65[3];

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(v56, 8);

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v64, 8);

  return v44;
}

@end