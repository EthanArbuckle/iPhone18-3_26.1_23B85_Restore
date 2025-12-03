@interface PLModelMigrationAction_FixBackgroundResourceWorkerModifyingIncorrectResources
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixBackgroundResourceWorkerModifyingIncorrectResources

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v100[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 1;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__53337;
  v59 = __Block_byref_object_dispose__53338;
  v60 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLInternalResource entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"dataStoreClassID", 0];
  v100[0] = v11;
  4294934528 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"localAvailability", 4294934528];
  v100[1] = 4294934528;
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (%K IN %@)", @"recipeID", &unk_1F0FBFCB8];
  v100[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:3];
  v15 = [v10 andPredicateWithSubpredicates:v14];
  [v9 setPredicate:v15];

  v16 = v56 + 5;
  obj = v56[5];
  v17 = [contextCopy executeFetchRequest:v9 error:&obj];
  objc_storeStrong(v16, obj);
  v18 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v17 count], 0);
  v19 = v18;
  if (v17)
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __125__PLModelMigrationAction_FixBackgroundResourceWorkerModifyingIncorrectResources_performActionWithManagedObjectContext_error___block_invoke;
    v50[3] = &unk_1E756DB90;
    v50[4] = self;
    v52 = &v55;
    v53 = &v61;
    v51 = v18;
    v20 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v17 withBlock:v50];
    if (v20)
    {
      if (!v56[5])
      {
        objc_storeStrong(v56 + 5, v20);
        v62[3] = 3;
        v21 = PLMigrationGetLog();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

        if (v22)
        {
          logger = [(PLModelMigrationActionCore *)self logger];
          v24 = logger == 0;

          if (v24)
          {
            v43 = PLMigrationGetLog();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v44 = objc_opt_class();
              v45 = NSStringFromClass(v44);
              *buf = 138543618;
              *&buf[4] = v45;
              *&buf[12] = 2114;
              *&buf[14] = v20;
              _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
            }
          }

          else
          {
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
            v70 = 0u;
            v71 = 0u;
            memset(buf, 0, sizeof(buf));
            v49 = PLMigrationGetLog();
            os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
            v25 = objc_opt_class();
            v26 = NSStringFromClass(v25);
            v65 = 138543618;
            v66 = v26;
            v67 = 2114;
            v68 = v20;
            LODWORD(v48) = 22;
            v27 = _os_log_send_and_compose_impl();

            v28 = [(PLModelMigrationActionCore *)self logger:&v65];
            [v28 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{726, 16}];

            if (v27 != buf)
            {
              free(v27);
            }
          }
        }
      }
    }
  }

  else
  {
    v62[3] = 3;
    v29 = PLMigrationGetLog();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

    if (v30)
    {
      logger2 = [(PLModelMigrationActionCore *)self logger];
      v32 = logger2 == 0;

      if (v32)
      {
        v39 = PLMigrationGetLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          v42 = v56[5];
          *buf = 138543618;
          *&buf[4] = v41;
          *&buf[12] = 2114;
          *&buf[14] = v42;
          _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
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
        v70 = 0u;
        v71 = 0u;
        memset(buf, 0, sizeof(buf));
        v33 = PLMigrationGetLog();
        os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = v56[5];
        v65 = 138543618;
        v66 = v35;
        v67 = 2114;
        v68 = v36;
        LODWORD(v48) = 22;
        v37 = _os_log_send_and_compose_impl();

        v38 = [(PLModelMigrationActionCore *)self logger:&v65];
        [v38 logWithMessage:v37 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{730, 16}];

        if (v37 != buf)
        {
          free(v37);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    *error = v56[5];
  }

  v46 = v62[3];

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);

  return v46;
}

@end