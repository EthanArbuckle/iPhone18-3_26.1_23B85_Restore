@interface PLModelMigrationAction_FixUnpushedVideoComplementResourcesAfterFDR
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixUnpushedVideoComplementResourcesAfterFDR

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v117[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = +[PLManagedAsset fetchRequest];
  v7 = MEMORY[0x1E696AB28];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 0];
  v117[0] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kindSubtype", 2];
  v117[1] = v9;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"master"];
  v117[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:3];
  v12 = [v7 andPredicateWithSubpredicates:v11];
  [v6 setPredicate:v12];

  [v6 setFetchBatchSize:100];
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 1;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__23792;
  v76 = __Block_byref_object_dispose__23793;
  v77 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v67 = 0;
  v13 = [contextCopy executeFetchRequest:v6 error:&v67];
  v14 = v67;
  if ([v13 count])
  {
    v15 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v13 count], 0);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __114__PLModelMigrationAction_FixUnpushedVideoComplementResourcesAfterFDR_performActionWithManagedObjectContext_error___block_invoke;
    v62[3] = &unk_1E75726E8;
    v64 = &v68;
    v62[4] = self;
    v65 = &v72;
    v66 = &v78;
    v16 = v15;
    v63 = v16;
    v17 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v13 withBlock:v62];
    if (v17)
    {
      v79[3] = 3;
      v18 = PLMigrationGetLog();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

      if (v19)
      {
        logger = [(PLModelMigrationActionCore *)self logger];
        v21 = logger == 0;

        if (v21)
        {
          v44 = PLMigrationGetLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v45 = objc_opt_class();
            v46 = NSStringFromClass(v45);
            *buf = 138543618;
            *&buf[4] = v46;
            *&buf[12] = 2114;
            *&buf[14] = v17;
            _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v22 = PLMigrationGetLog();
          os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          v82 = 138543618;
          v83 = v24;
          v84 = 2114;
          v85 = v17;
          LODWORD(v60) = 22;
          v25 = _os_log_send_and_compose_impl();

          v26 = [(PLModelMigrationActionCore *)self logger:&v82];
          [v26 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{898, 16}];

          if (v25 != buf)
          {
            free(v25);
          }
        }
      }

      if (v73[5])
      {
        v47 = v73[5];
      }

      else
      {
        v47 = v17;
      }

      objc_storeStrong(v73 + 5, v47);
    }

    else
    {
      v36 = PLMigrationGetLog();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);

      if (v37)
      {
        logger2 = [(PLModelMigrationActionCore *)self logger];
        v39 = logger2 == 0;

        if (v39)
        {
          v52 = PLMigrationGetLog();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = v69[3];
            *buf = 134217984;
            *&buf[4] = v53;
            _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_DEFAULT, "Fixed unpushed video complement resources: %tu", buf, 0xCu);
          }
        }

        else
        {
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v40 = PLMigrationGetLog();
          os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
          v41 = v69[3];
          v82 = 134217984;
          v83 = v41;
          LODWORD(v60) = 12;
          v42 = _os_log_send_and_compose_impl();

          v43 = [(PLModelMigrationActionCore *)self logger:&v82];
          [v43 logWithMessage:v42 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{895, 0}];

          if (v42 != buf)
          {
            free(v42);
          }
        }
      }
    }

LABEL_24:
    goto LABEL_25;
  }

  if (!v13)
  {
    v79[3] = 3;
    v27 = PLMigrationGetLog();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

    if (v28)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v30 = logger3 == 0;

      if (v30)
      {
        v54 = PLMigrationGetLog();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v55 = objc_opt_class();
          v56 = NSStringFromClass(v55);
          *buf = 138543618;
          *&buf[4] = v56;
          *&buf[12] = 2114;
          *&buf[14] = v14;
          _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v31 = PLMigrationGetLog();
        os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v82 = 138543618;
        v83 = v33;
        v84 = 2114;
        v85 = v14;
        LODWORD(v60) = 22;
        v34 = _os_log_send_and_compose_impl();

        v35 = [(PLModelMigrationActionCore *)self logger:&v82];
        [v35 logWithMessage:v34 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{903, 16}];

        if (v34 != buf)
        {
          free(v34);
        }
      }
    }

    v57 = v73;
    v58 = v73[5];
    if (!v58)
    {
      v58 = v14;
    }

    v59 = v58;
    v16 = v57[5];
    v57[5] = v59;
    goto LABEL_24;
  }

LABEL_25:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v48 = v79[3];
  v49 = v73[5];
  if (v48 != 1 && error)
  {
    v49 = v49;
    *error = v49;
  }

  v50 = v79[3];
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);

  _Block_object_dispose(&v78, 8);
  return v50;
}

@end