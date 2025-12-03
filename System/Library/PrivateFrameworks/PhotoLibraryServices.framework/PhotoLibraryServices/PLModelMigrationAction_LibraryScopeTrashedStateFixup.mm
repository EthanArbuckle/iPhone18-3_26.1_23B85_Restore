@interface PLModelMigrationAction_LibraryScopeTrashedStateFixup
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_LibraryScopeTrashedStateFixup

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v106[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 1;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__53822;
  v65 = __Block_byref_object_dispose__53823;
  v66 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLLibraryScope entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = +[PLLibraryScope predicateForActiveLibraryScope];
  v106[0] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"trashedState", 1];
  v106[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];
  [v9 setPredicate:v14];

  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3032000000;
  v59[3] = __Block_byref_object_copy__53822;
  v59[4] = __Block_byref_object_dispose__53823;
  v60 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v15 = [PLEnumerateAndSaveController alloc];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __100__PLModelMigrationAction_LibraryScopeTrashedStateFixup_performActionWithManagedObjectContext_error___block_invoke;
  v53[3] = &unk_1E7575B30;
  v18 = contextCopy;
  v54 = v18;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __100__PLModelMigrationAction_LibraryScopeTrashedStateFixup_performActionWithManagedObjectContext_error___block_invoke_2;
  v52[3] = &unk_1E7572E50;
  v52[4] = self;
  v52[5] = v59;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __100__PLModelMigrationAction_LibraryScopeTrashedStateFixup_performActionWithManagedObjectContext_error___block_invoke_3;
  v51[3] = &unk_1E756DD40;
  v51[4] = self;
  v51[5] = &v55;
  v51[6] = &v61;
  v51[7] = &v67;
  v51[8] = v59;
  v19 = [(PLEnumerateAndSaveController *)v15 initWithName:v17 fetchRequest:v9 context:v18 options:4 generateContextBlock:v53 didFetchObjectIDsBlock:v52 processResultBlock:v51];

  v20 = (v62 + 5);
  obj = v62[5];
  LOBYTE(v14) = [(PLEnumerateAndSaveController *)v19 processObjectsWithError:&obj];
  objc_storeStrong(v20, obj);
  if (v14)
  {
    v21 = PLMigrationGetLog();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (!v22)
    {
      goto LABEL_17;
    }

    logger = [(PLModelMigrationActionCore *)self logger];
    v24 = logger == 0;

    if (!v24)
    {
      v104 = 0u;
      v105 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v25 = PLMigrationGetLog();
      os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      v26 = v56[3];
      v71 = 134217984;
      v72 = v26;
      LODWORD(v49) = 12;
      v27 = _os_log_send_and_compose_impl();

      v28 = [(PLModelMigrationActionCore *)self logger:&v71];
      [v28 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{486, 0}];

      if (v27 != buf)
      {
        v29 = v27;
LABEL_10:
        free(v29);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    v40 = PLMigrationGetLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v56[3];
      *buf = 134217984;
      *&buf[4] = v41;
      _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEFAULT, "Fixed trashedState in %tu active LibraryScopes", buf, 0xCu);
    }

LABEL_16:

    goto LABEL_17;
  }

  v68[3] = 3;
  v30 = PLMigrationGetLog();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

  if (!v31)
  {
    goto LABEL_17;
  }

  logger2 = [(PLModelMigrationActionCore *)self logger];
  v33 = logger2 == 0;

  if (v33)
  {
    v40 = PLMigrationGetLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      v44 = v62[5];
      *buf = 138543618;
      *&buf[4] = v43;
      *&buf[12] = 2114;
      *&buf[14] = v44;
      _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
    }

    goto LABEL_16;
  }

  v104 = 0u;
  v105 = 0u;
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
  memset(buf, 0, sizeof(buf));
  v34 = PLMigrationGetLog();
  os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  v37 = v62[5];
  v71 = 138543618;
  v72 = v36;
  v73 = 2114;
  v74 = v37;
  LODWORD(v49) = 22;
  v38 = _os_log_send_and_compose_impl();

  v39 = [(PLModelMigrationActionCore *)self logger:&v71];
  [v39 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{484, 16}];

  if (v38 != buf)
  {
    v29 = v38;
    goto LABEL_10;
  }

LABEL_17:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v45 = v68[3];
  v46 = v62[5];
  if (v45 != 1 && error)
  {
    v46 = v46;
    *error = v46;
  }

  v47 = v68[3];
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(v59, 8);

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);

  return v47;
}

@end