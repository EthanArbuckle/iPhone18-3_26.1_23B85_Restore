@interface PLModelMigrationAction_PushAssetsWithPetSyncableFaces
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_PushAssetsWithPetSyncableFaces

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v101[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 1;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__53822;
  v59 = __Block_byref_object_dispose__53823;
  v60 = 0;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLDetectedFace entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"detectionType", &unk_1F0FBFD00];
  v10 = MEMORY[0x1E696AB28];
  v101[0] = v9;
  v11 = +[PLDetectedFace syncableFacesPredicate];
  v101[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:2];
  v13 = [v10 andPredicateWithSubpredicates:v12];
  [v8 setPredicate:v13];

  v100 = @"assetForFace";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
  [v8 setRelationshipKeyPathsForPrefetching:v14];

  v15 = v56 + 5;
  obj = v56[5];
  v16 = [v5 executeFetchRequest:v8 error:&obj];
  objc_storeStrong(v15, obj);
  v17 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v16 count], 0);
  v18 = v17;
  if (v16)
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __101__PLModelMigrationAction_PushAssetsWithPetSyncableFaces_performActionWithManagedObjectContext_error___block_invoke;
    v50[3] = &unk_1E756DCC8;
    v50[4] = self;
    v52 = &v55;
    v53 = &v61;
    v51 = v17;
    v19 = [v5 enumerateWithIncrementalSaveUsingObjects:v16 withBlock:v50];
    if (v19)
    {
      if (!v56[5])
      {
        objc_storeStrong(v56 + 5, v19);
        v62[3] = 3;
        v20 = PLMigrationGetLog();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

        if (v21)
        {
          v22 = [(PLModelMigrationActionCore *)self logger];
          v23 = v22 == 0;

          if (v23)
          {
            v42 = PLMigrationGetLog();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v43 = objc_opt_class();
              v44 = NSStringFromClass(v43);
              *buf = 138543618;
              *&buf[4] = v44;
              *&buf[12] = 2114;
              *&buf[14] = v19;
              _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "[PushAssetsWithPetSyncableFaces] Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
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
            v48 = PLMigrationGetLog();
            os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            v65 = 138543618;
            v66 = v25;
            v67 = 2114;
            v68 = v19;
            LODWORD(v47) = 22;
            v26 = _os_log_send_and_compose_impl();

            v27 = [(PLModelMigrationActionCore *)self logger:&v65];
            [v27 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{347, 16}];

            if (v26 != buf)
            {
              free(v26);
            }
          }
        }
      }
    }
  }

  else
  {
    v62[3] = 3;
    v28 = PLMigrationGetLog();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

    if (v29)
    {
      v30 = [(PLModelMigrationActionCore *)self logger];
      v31 = v30 == 0;

      if (v31)
      {
        v38 = PLMigrationGetLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          v41 = v56[5];
          *buf = 138543618;
          *&buf[4] = v40;
          *&buf[12] = 2114;
          *&buf[14] = v41;
          _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "[PushAssetsWithPetSyncableFaces] Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
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
        v32 = PLMigrationGetLog();
        os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = v56[5];
        v65 = 138543618;
        v66 = v34;
        v67 = 2114;
        v68 = v35;
        LODWORD(v47) = 22;
        v36 = _os_log_send_and_compose_impl();

        v37 = [(PLModelMigrationActionCore *)self logger:&v65];
        [v37 logWithMessage:v36 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{351, 16}];

        if (v36 != buf)
        {
          free(v36);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (a4)
  {
    *a4 = v56[5];
  }

  v45 = v62[3];

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);

  return v45;
}

@end