@interface PLModelMigrationAction_SetDefaultFaceAnalysisVersion
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_SetDefaultFaceAnalysisVersion

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v97 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ([(PLModelMigrationActionCore *)self startingSchemaVersion]>> 3 <= 0x752u)
  {
    v7 = 5;
  }

  else
  {
    v7 = 10;
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 1;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__53337;
  v56 = __Block_byref_object_dispose__53338;
  v57 = 0;
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLManagedAsset entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"faceAdjustmentVersion"];
  [v10 setPredicate:v11];
  v12 = v53 + 5;
  obj = v53[5];
  v13 = [contextCopy executeFetchRequest:v10 error:&obj];
  objc_storeStrong(v12, obj);
  v14 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v13 count], 0);
  v15 = v14;
  if (v13)
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __100__PLModelMigrationAction_SetDefaultFaceAnalysisVersion_performActionWithManagedObjectContext_error___block_invoke;
    v46[3] = &unk_1E756DC30;
    v46[4] = self;
    v48 = &v52;
    v49 = &v58;
    v50 = v7;
    v47 = v14;
    v16 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v13 withBlock:v46];
    if (v16)
    {
      if (!v53[5])
      {
        objc_storeStrong(v53 + 5, v16);
        v59[3] = 3;
        v17 = PLMigrationGetLog();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

        if (v18)
        {
          logger = [(PLModelMigrationActionCore *)self logger];
          v20 = logger == 0;

          if (v20)
          {
            v38 = PLMigrationGetLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = objc_opt_class();
              v40 = NSStringFromClass(v39);
              *buf = 138543618;
              *&buf[4] = v40;
              *&buf[12] = 2114;
              *&buf[14] = v16;
              _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
            }
          }

          else
          {
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
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            memset(buf, 0, sizeof(buf));
            v44 = PLMigrationGetLog();
            os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            v62 = 138543618;
            v63 = v22;
            v64 = 2114;
            v65 = v16;
            LODWORD(v43) = 22;
            v45 = _os_log_send_and_compose_impl();

            v23 = [(PLModelMigrationActionCore *)self logger:&v62];
            [v23 logWithMessage:v45 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{630, 16}];

            if (v45 != buf)
            {
              free(v45);
            }
          }
        }
      }
    }
  }

  else
  {
    v59[3] = 3;
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
          v37 = v53[5];
          *buf = 138543618;
          *&buf[4] = v36;
          *&buf[12] = 2114;
          *&buf[14] = v37;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
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
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        memset(buf, 0, sizeof(buf));
        v28 = PLMigrationGetLog();
        os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = v53[5];
        v62 = 138543618;
        v63 = v30;
        v64 = 2114;
        v65 = v31;
        LODWORD(v43) = 22;
        v32 = _os_log_send_and_compose_impl();

        v33 = [(PLModelMigrationActionCore *)self logger:&v62];
        [v33 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{634, 16}];

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
    *error = v53[5];
  }

  v41 = v59[3];

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  return v41;
}

@end