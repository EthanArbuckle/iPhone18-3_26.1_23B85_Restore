@interface PLModelMigrationActionStaged_MoveLibraryScopeShareState
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationActionStaged_MoveLibraryScopeShareState

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v98[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__67058;
  v61 = __Block_byref_object_dispose__67059;
  v62 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 1;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLAdditionalAssetAttributes entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"libraryScopeShareState != %d", 0];
  [v9 setPredicate:v10];

  [v9 setFetchBatchSize:100];
  v98[0] = @"asset";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v11];

  v12 = v58 + 5;
  obj = v58[5];
  v13 = [contextCopy executeFetchRequest:v9 error:&obj];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    v14 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v13 count], 0);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __103__PLModelMigrationActionStaged_MoveLibraryScopeShareState_performActionWithManagedObjectContext_error___block_invoke;
    v48[3] = &unk_1E756FFE0;
    v48[4] = self;
    v50 = &v57;
    v51 = &v53;
    v15 = v14;
    v49 = v15;
    v16 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v13 withBlock:v48];
    if (v16)
    {
      if (!v58[5])
      {
        objc_storeStrong(v58 + 5, v16);
        v54[3] = 3;
        v17 = PLMigrationGetLog();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

        if (v18)
        {
          logger = [(PLModelMigrationActionCore *)self logger];
          v20 = logger == 0;

          if (v20)
          {
            v39 = PLMigrationGetLog();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = objc_opt_class();
              v41 = NSStringFromClass(v40);
              *buf = 138543618;
              *&buf[4] = v41;
              *&buf[12] = 2114;
              *&buf[14] = v16;
              _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
            }
          }

          else
          {
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
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            memset(buf, 0, sizeof(buf));
            v47 = PLMigrationGetLog();
            os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            v63 = 138543618;
            v64 = v22;
            v65 = 2114;
            v66 = v16;
            LODWORD(v46) = 22;
            v23 = _os_log_send_and_compose_impl();

            v24 = [(PLModelMigrationActionCore *)self logger:&v63];
            [v24 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActionStaged.m" type:{179, 16}];

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
    v54[3] = 3;
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
          v38 = v58[5];
          *buf = 138543618;
          *&buf[4] = v37;
          *&buf[12] = 2114;
          *&buf[14] = v38;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
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
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        memset(buf, 0, sizeof(buf));
        v29 = PLMigrationGetLog();
        os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = v58[5];
        v63 = 138543618;
        v64 = v31;
        v65 = 2114;
        v66 = v32;
        LODWORD(v46) = 22;
        v33 = _os_log_send_and_compose_impl();

        v34 = [(PLModelMigrationActionCore *)self logger:&v63];
        [v34 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActionStaged.m" type:{183, 16}];

        if (v33 != buf)
        {
          free(v33);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v42 = v54[3];
  v43 = v58[5];
  if (v42 != 1 && error)
  {
    v43 = v43;
    *error = v43;
  }

  v44 = v54[3];
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);

  return v44;
}

@end