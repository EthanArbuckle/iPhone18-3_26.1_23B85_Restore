@interface PLModelMigrationAction_FixSignExtended32bSceneIdentifiers
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_FixSignExtended32bSceneIdentifiers

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v93 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLSceneClassification entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__43771;
  v56 = __Block_byref_object_dispose__43772;
  v57 = 0;
  v10 = [PLEnumerateAndSaveController alloc];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __105__PLModelMigrationAction_FixSignExtended32bSceneIdentifiers_performActionWithManagedObjectContext_error___block_invoke;
  v50[3] = &unk_1E7575B30;
  v13 = v6;
  v51 = v13;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __105__PLModelMigrationAction_FixSignExtended32bSceneIdentifiers_performActionWithManagedObjectContext_error___block_invoke_2;
  v49[3] = &unk_1E7572E50;
  v49[4] = self;
  v49[5] = &v52;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __105__PLModelMigrationAction_FixSignExtended32bSceneIdentifiers_performActionWithManagedObjectContext_error___block_invoke_3;
  v48[3] = &unk_1E756C6C0;
  v48[4] = &v52;
  v14 = [(PLEnumerateAndSaveController *)v10 initWithName:v12 fetchRequest:v9 context:v13 options:0 generateContextBlock:v50 didFetchObjectIDsBlock:v49 processResultBlock:v48];

  v47 = 0;
  v15 = [(PLEnumerateAndSaveController *)v14 processObjectsWithError:&v47];
  v16 = v47;
  if (v15)
  {
    v17 = PLMigrationGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

    if (v18)
    {
      v19 = [(PLModelMigrationActionCore *)self logger];
      v20 = v19 == 0;

      if (v20)
      {
        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = [v53[5] completedUnitCount];
          *buf = 134217984;
          *&buf[4] = v35;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_INFO, "Corrected sign extension on %lu scene classifications", buf, 0xCu);
        }
      }

      else
      {
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
        v63 = 0u;
        v64 = 0u;
        memset(buf, 0, sizeof(buf));
        v21 = PLMigrationGetLog();
        os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
        v22 = [v53[5] completedUnitCount];
        v58 = 134217984;
        v59 = v22;
        LODWORD(v45) = 12;
        v23 = _os_log_send_and_compose_impl();

        v24 = [(PLModelMigrationActionCore *)self logger:&v58];
        [v24 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{764, 1}];

        if (v23 != buf)
        {
          free(v23);
        }
      }
    }

    v36 = 1;
  }

  else
  {
    v25 = PLMigrationGetLog();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

    if (v26)
    {
      v27 = [(PLModelMigrationActionCore *)self logger];
      v28 = v27 == 0;

      if (v28)
      {
        v37 = PLMigrationGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          *buf = 138543618;
          *&buf[4] = v39;
          *&buf[12] = 2112;
          *&buf[14] = v16;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
        }
      }

      else
      {
        v46 = a4;
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
        v63 = 0u;
        v64 = 0u;
        memset(buf, 0, sizeof(buf));
        v29 = PLMigrationGetLog();
        os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v58 = 138543618;
        v59 = v31;
        v60 = 2112;
        v61 = v16;
        LODWORD(v45) = 22;
        v32 = _os_log_send_and_compose_impl();

        a4 = v46;
        v33 = [(PLModelMigrationActionCore *)self logger:&v58];
        [v33 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{767, 16}];

        if (v32 != buf)
        {
          free(v32);
        }
      }
    }

    v36 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v40 = v16;
  v41 = v40;
  if (a4)
  {
    v42 = v15;
  }

  else
  {
    v42 = 1;
  }

  if ((v42 & 1) == 0)
  {
    v43 = v40;
    *a4 = v41;
  }

  _Block_object_dispose(&v52, 8);
  return v36;
}

@end