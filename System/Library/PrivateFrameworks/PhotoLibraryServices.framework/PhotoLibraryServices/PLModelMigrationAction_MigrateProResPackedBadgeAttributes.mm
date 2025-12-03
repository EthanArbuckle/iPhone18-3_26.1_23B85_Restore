@interface PLModelMigrationAction_MigrateProResPackedBadgeAttributes
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_MigrateProResPackedBadgeAttributes

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v95 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 1;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__53337;
  v54 = __Block_byref_object_dispose__53338;
  v55 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = +[PLManagedAsset predicateForProResAssets];
  [v9 setPredicate:v10];

  v11 = v51 + 5;
  obj = v51[5];
  v12 = [contextCopy executeFetchRequest:v9 error:&obj];
  objc_storeStrong(v11, obj);
  v13 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v12 count], 0);
  v14 = v13;
  if (v12)
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __105__PLModelMigrationAction_MigrateProResPackedBadgeAttributes_performActionWithManagedObjectContext_error___block_invoke;
    v45[3] = &unk_1E756DBE0;
    v45[4] = self;
    v47 = &v50;
    v48 = &v56;
    v46 = v13;
    v15 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v12 withBlock:v45];
    if (v15)
    {
      if (!v51[5])
      {
        objc_storeStrong(v51 + 5, v15);
        v57[3] = 3;
        v16 = PLMigrationGetLog();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

        if (v17)
        {
          logger = [(PLModelMigrationActionCore *)self logger];
          v19 = logger == 0;

          if (v19)
          {
            v38 = PLMigrationGetLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = objc_opt_class();
              v40 = NSStringFromClass(v39);
              *buf = 138543618;
              *&buf[4] = v40;
              *&buf[12] = 2114;
              *&buf[14] = v15;
              _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
            }
          }

          else
          {
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
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            memset(buf, 0, sizeof(buf));
            v44 = PLMigrationGetLog();
            os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            v60 = 138543618;
            v61 = v21;
            v62 = 2114;
            v63 = v15;
            LODWORD(v43) = 22;
            v22 = _os_log_send_and_compose_impl();

            v23 = [(PLModelMigrationActionCore *)self logger:&v60];
            [v23 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{422, 16}];

            if (v22 != buf)
            {
              free(v22);
            }
          }
        }
      }
    }
  }

  else
  {
    v57[3] = 3;
    v24 = PLMigrationGetLog();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

    if (v25)
    {
      logger2 = [(PLModelMigrationActionCore *)self logger];
      v27 = logger2 == 0;

      if (v27)
      {
        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          v37 = v51[5];
          *buf = 138543618;
          *&buf[4] = v36;
          *&buf[12] = 2114;
          *&buf[14] = v37;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
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
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        memset(buf, 0, sizeof(buf));
        v28 = PLMigrationGetLog();
        os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = v51[5];
        v60 = 138543618;
        v61 = v30;
        v62 = 2114;
        v63 = v31;
        LODWORD(v43) = 22;
        v32 = _os_log_send_and_compose_impl();

        v33 = [(PLModelMigrationActionCore *)self logger:&v60];
        [v33 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{426, 16}];

        if (v32 != buf)
        {
          free(v32);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    *error = v51[5];
  }

  v41 = v57[3];

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  return v41;
}

@end