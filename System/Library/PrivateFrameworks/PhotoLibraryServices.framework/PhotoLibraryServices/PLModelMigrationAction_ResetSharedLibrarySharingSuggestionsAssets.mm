@interface PLModelMigrationAction_ResetSharedLibrarySharingSuggestionsAssets
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetSharedLibrarySharingSuggestionsAssets

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v92 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 1;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__23792;
  v51 = __Block_byref_object_dispose__23793;
  v52 = 0;
  v7 = +[PLManagedAsset fetchRequest];
  v8 = +[PLManagedAsset predicateToIncludeSharedLibrarySharingSuggestionsAssets];
  [v7 setPredicate:v8];

  [v7 setFetchBatchSize:100];
  v9 = v48 + 5;
  obj = v48[5];
  v10 = [contextCopy executeFetchRequest:v7 error:&obj];
  objc_storeStrong(v9, obj);
  if ([v10 count])
  {
    v11 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v10 count], 0);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __113__PLModelMigrationAction_ResetSharedLibrarySharingSuggestionsAssets_performActionWithManagedObjectContext_error___block_invoke;
    v42[3] = &unk_1E756DBE0;
    v42[4] = self;
    v44 = &v47;
    v45 = &v53;
    v12 = v11;
    v43 = v12;
    v13 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v10 withBlock:v42];
    if (v13 && !v48[5])
    {
      objc_storeStrong(v48 + 5, v13);
      v54[3] = 3;
    }

    if (v54[3] == 1)
    {
      v14 = PLMigrationGetLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

      if (v15)
      {
        logger = [(PLModelMigrationActionCore *)self logger];
        v17 = logger == 0;

        if (!v17)
        {
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
          memset(buf, 0, sizeof(buf));
          v18 = PLMigrationGetLog();
          os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          v19 = [v10 count];
          v57 = 67109120;
          LODWORD(v58) = v19;
          LODWORD(v40) = 8;
          v20 = _os_log_send_and_compose_impl();

          v21 = [(PLModelMigrationActionCore *)self logger:&v57];
          [v21 logWithMessage:v20 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{435, 0}];

          goto LABEL_14;
        }

        v31 = PLMigrationGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v10 count];
          *buf = 67109120;
          *&buf[4] = v32;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "Removed %d asset suggestions by photos", buf, 8u);
        }

LABEL_21:
      }
    }

    else
    {
      v22 = PLMigrationGetLog();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (v23)
      {
        logger2 = [(PLModelMigrationActionCore *)self logger];
        v25 = logger2 == 0;

        if (!v25)
        {
          errorCopy = error;
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
          memset(buf, 0, sizeof(buf));
          v26 = PLMigrationGetLog();
          os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          v29 = v48[5];
          v57 = 138543618;
          v58 = v28;
          v59 = 2114;
          v60 = v29;
          LODWORD(v40) = 22;
          v20 = _os_log_send_and_compose_impl();

          error = errorCopy;
          v30 = [(PLModelMigrationActionCore *)self logger:&v57];
          [v30 logWithMessage:v20 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{437, 16}];

LABEL_14:
          if (v20 != buf)
          {
            free(v20);
          }

          goto LABEL_22;
        }

        v31 = PLMigrationGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          v35 = v48[5];
          *buf = 138543618;
          *&buf[4] = v34;
          *&buf[12] = 2114;
          *&buf[14] = v35;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
        }

        goto LABEL_21;
      }
    }

LABEL_22:

    goto LABEL_23;
  }

  if (!v10)
  {
    v54[3] = 3;
  }

LABEL_23:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v36 = v54[3];
  v37 = v48[5];
  if (v36 != 1 && error)
  {
    v37 = v37;
    *error = v37;
  }

  v38 = v54[3];
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  return v38;
}

@end