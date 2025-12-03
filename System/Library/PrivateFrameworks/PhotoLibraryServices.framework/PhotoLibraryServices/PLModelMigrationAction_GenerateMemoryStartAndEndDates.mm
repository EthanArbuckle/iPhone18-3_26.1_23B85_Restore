@interface PLModelMigrationAction_GenerateMemoryStartAndEndDates
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_GenerateMemoryStartAndEndDates

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v101[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 1;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__43771;
  v60 = __Block_byref_object_dispose__43772;
  v61 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLMemory entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v101[0] = @"representativeAssets";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v10];

  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = __Block_byref_object_copy__43771;
  v54[4] = __Block_byref_object_dispose__43772;
  v55 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v11 = [PLEnumerateAndSaveController alloc];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __101__PLModelMigrationAction_GenerateMemoryStartAndEndDates_performActionWithManagedObjectContext_error___block_invoke;
  v48[3] = &unk_1E7575B30;
  v14 = contextCopy;
  v49 = v14;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __101__PLModelMigrationAction_GenerateMemoryStartAndEndDates_performActionWithManagedObjectContext_error___block_invoke_2;
  v47[3] = &unk_1E7572E50;
  v47[4] = self;
  v47[5] = v54;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __101__PLModelMigrationAction_GenerateMemoryStartAndEndDates_performActionWithManagedObjectContext_error___block_invoke_3;
  v46[3] = &unk_1E756C5D0;
  v46[4] = self;
  v46[5] = &v56;
  v46[6] = &v62;
  v46[7] = &v50;
  v46[8] = v54;
  v15 = [(PLEnumerateAndSaveController *)v11 initWithName:v13 fetchRequest:v9 context:v14 options:4 generateContextBlock:v48 didFetchObjectIDsBlock:v47 processResultBlock:v46];

  v16 = (v57 + 5);
  obj = v57[5];
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
      v71 = 0u;
      v72 = 0u;
      memset(buf, 0, sizeof(buf));
      v22 = PLMigrationGetLog();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      v23 = v51[3];
      v66 = 134217984;
      v67 = v23;
      LODWORD(v44) = 12;
      v24 = _os_log_send_and_compose_impl();

      v25 = [(PLModelMigrationActionCore *)self logger:&v66];
      [v25 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{207, 0}];

      if (v24 == buf)
      {
        goto LABEL_17;
      }

      v26 = v24;
LABEL_10:
      free(v26);
      goto LABEL_17;
    }

    v37 = PLMigrationGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v51[3];
      *buf = 134217984;
      *&buf[4] = v38;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Generated start/end dates for %tu memories.", buf, 0xCu);
    }
  }

  else
  {
    v63[3] = 3;
    v27 = PLMigrationGetLog();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

    if (!v28)
    {
      goto LABEL_17;
    }

    logger2 = [(PLModelMigrationActionCore *)self logger];
    v30 = logger2 == 0;

    if (!v30)
    {
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
      v71 = 0u;
      v72 = 0u;
      memset(buf, 0, sizeof(buf));
      v31 = PLMigrationGetLog();
      os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = v57[5];
      v66 = 138543618;
      v67 = v33;
      v68 = 2112;
      v69 = v34;
      LODWORD(v44) = 22;
      v35 = _os_log_send_and_compose_impl();

      v36 = [(PLModelMigrationActionCore *)self logger:&v66];
      [v36 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{210, 16}];

      if (v35 == buf)
      {
        goto LABEL_17;
      }

      v26 = v35;
      goto LABEL_10;
    }

    v37 = PLMigrationGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = v57[5];
      *buf = 138543618;
      *&buf[4] = v40;
      *&buf[12] = 2112;
      *&buf[14] = v41;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
    }
  }

LABEL_17:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    *error = v57[5];
  }

  v42 = v63[3];

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(v54, 8);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);

  return v42;
}

@end