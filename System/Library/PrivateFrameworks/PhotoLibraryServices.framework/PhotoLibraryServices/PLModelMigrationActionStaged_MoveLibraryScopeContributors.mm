@interface PLModelMigrationActionStaged_MoveLibraryScopeContributors
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationActionStaged_MoveLibraryScopeContributors

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v102 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__67058;
  v65 = __Block_byref_object_dispose__67059;
  v66 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 1;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"libraryScopeOriginators.@count != 0"];
  [v9 setPredicate:v10];

  [v9 setFetchBatchSize:100];
  v11 = v62 + 5;
  obj = v62[5];
  v12 = [contextCopy executeFetchRequest:v9 error:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v12 count], 0);
    v47 = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = __105__PLModelMigrationActionStaged_MoveLibraryScopeContributors_performActionWithManagedObjectContext_error___block_invoke;
    v50 = &unk_1E7570008;
    v51 = contextCopy;
    selfCopy = self;
    v54 = &v61;
    v55 = &v57;
    v14 = v13;
    v53 = v14;
    v15 = [v51 enumerateWithIncrementalSaveUsingObjects:v12 withBlock:&v47];
    if (v15)
    {
      if (!v62[5])
      {
        objc_storeStrong(v62 + 5, v15);
        v58[3] = 3;
        v16 = PLMigrationGetLog();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

        if (v17)
        {
          logger = [(PLModelMigrationActionCore *)self logger];
          v19 = logger == 0;

          if (v19)
          {
            v39 = PLMigrationGetLog();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = objc_opt_class();
              v41 = NSStringFromClass(v40);
              *buf = 138543618;
              *&buf[4] = v41;
              *&buf[12] = 2114;
              *&buf[14] = v15;
              _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
            }
          }

          else
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
            v20 = PLMigrationGetLog();
            os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            v67 = 138543618;
            v68 = v22;
            v69 = 2114;
            v70 = v15;
            LODWORD(v46) = 22;
            v23 = _os_log_send_and_compose_impl();

            v24 = [(PLModelMigrationActionCore *)self logger:&v67];
            [v24 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActionStaged.m" type:{230, 16}];

            if (v23 != buf)
            {
              free(v23);
            }
          }
        }
      }
    }
  }

  else
  {
    v58[3] = 3;
    v25 = PLMigrationGetLog();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

    if (v26)
    {
      logger2 = [(PLModelMigrationActionCore *)self logger];
      v28 = logger2 == 0;

      if (v28)
      {
        v35 = PLMigrationGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          v38 = v62[5];
          *buf = 138543618;
          *&buf[4] = v37;
          *&buf[12] = 2114;
          *&buf[14] = v38;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
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
        v29 = PLMigrationGetLog();
        os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = v62[5];
        v67 = 138543618;
        v68 = v31;
        v69 = 2114;
        v70 = v32;
        LODWORD(v46) = 22;
        v33 = _os_log_send_and_compose_impl();

        v34 = [(PLModelMigrationActionCore *)self logger:&v67];
        [v34 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActionStaged.m" type:{234, 16}];

        if (v33 != buf)
        {
          free(v33);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v42 = v58[3];
  v43 = v62[5];
  if (v42 != 1 && error)
  {
    v43 = v43;
    *error = v43;
  }

  v44 = v58[3];
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);

  return v44;
}

@end