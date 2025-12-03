@interface PLModelMigrationAction_RemoveLabelsFromSyndication
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RemoveLabelsFromSyndication

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v104 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 1;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__43771;
  v63 = __Block_byref_object_dispose__43772;
  v64 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLGraphLabel entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__43771;
  v57 = __Block_byref_object_dispose__43772;
  v58 = 0;
  v10 = [PLEnumerateAndSaveController alloc];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __98__PLModelMigrationAction_RemoveLabelsFromSyndication_performActionWithManagedObjectContext_error___block_invoke;
  v51[3] = &unk_1E7575B30;
  v52 = contextCopy;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __98__PLModelMigrationAction_RemoveLabelsFromSyndication_performActionWithManagedObjectContext_error___block_invoke_2;
  v50[3] = &unk_1E7572E50;
  v50[4] = self;
  v50[5] = &v53;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __98__PLModelMigrationAction_RemoveLabelsFromSyndication_performActionWithManagedObjectContext_error___block_invoke_3;
  v45[3] = &unk_1E756C648;
  v45[4] = self;
  v47 = &v59;
  v48 = &v65;
  v13 = v52;
  v46 = v13;
  v49 = &v53;
  v14 = [(PLEnumerateAndSaveController *)v10 initWithName:v12 fetchRequest:v9 context:v13 options:4 generateContextBlock:v51 didFetchObjectIDsBlock:v50 processResultBlock:v45];

  v15 = (v60 + 5);
  obj = v60[5];
  v16 = [(PLEnumerateAndSaveController *)v14 processObjectsWithError:&obj];
  objc_storeStrong(v15, obj);
  if (v16)
  {
    v17 = PLMigrationGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (!v18)
    {
      goto LABEL_16;
    }

    logger = [(PLModelMigrationActionCore *)self logger];
    v20 = logger == 0;

    if (!v20)
    {
      v102 = 0u;
      v103 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v21 = PLMigrationGetLog();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      totalUnitCount = [v54[5] totalUnitCount];
      v69 = 134217984;
      v70 = totalUnitCount;
      LODWORD(v43) = 12;
      v23 = _os_log_send_and_compose_impl();

      v24 = [(PLModelMigrationActionCore *)self logger:&v69];
      [v24 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{605, 0}];

      goto LABEL_8;
    }

    v34 = PLMigrationGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      totalUnitCount2 = [v54[5] totalUnitCount];
      *buf = 134217984;
      *&buf[4] = totalUnitCount2;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "Removed %lld member labels from Syndication library.", buf, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

  v66[3] = 3;
  v25 = PLMigrationGetLog();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

  if (!v26)
  {
    goto LABEL_16;
  }

  logger2 = [(PLModelMigrationActionCore *)self logger];
  v28 = logger2 == 0;

  if (v28)
  {
    v34 = PLMigrationGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = v60[5];
      *buf = 138543618;
      *&buf[4] = v37;
      *&buf[12] = 2112;
      *&buf[14] = v38;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v102 = 0u;
  v103 = 0u;
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
  memset(buf, 0, sizeof(buf));
  v29 = PLMigrationGetLog();
  os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  v32 = v60[5];
  v69 = 138543618;
  v70 = v31;
  v71 = 2112;
  v72 = v32;
  LODWORD(v43) = 22;
  v23 = _os_log_send_and_compose_impl();

  v33 = [(PLModelMigrationActionCore *)self logger:&v69];
  [v33 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{608, 16}];

LABEL_8:
  if (v23 != buf)
  {
    free(v23);
  }

LABEL_16:
  v39 = v66[3];
  v40 = v60[5];
  if (v39 != 1 && error)
  {
    v40 = v40;
    *error = v40;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v41 = v66[3];

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  _Block_object_dispose(&v65, 8);
  return v41;
}

@end