@interface PLModelMigrationAction_ReKeyResourcesIncorrectlyStoredAsM4A
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_ReKeyResourcesIncorrectlyStoredAsM4A

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v99 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 1;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__43771;
  v58 = __Block_byref_object_dispose__43772;
  v59 = 0;
  v7 = +[PLInternalResource fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d AND %K = %d AND %K = %d AND %K != nil", @"resourceType", 1, @"compactUTI", 24, @"dataStoreClassID", 0, @"dataStoreKeyData"];
  [v7 setPredicate:v8];

  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__43771;
  v52 = __Block_byref_object_dispose__43772;
  v53 = 0;
  v9 = [PLEnumerateAndSaveController alloc];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __107__PLModelMigrationAction_ReKeyResourcesIncorrectlyStoredAsM4A_performActionWithManagedObjectContext_error___block_invoke;
  v46[3] = &unk_1E7575B30;
  v12 = v6;
  v47 = v12;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __107__PLModelMigrationAction_ReKeyResourcesIncorrectlyStoredAsM4A_performActionWithManagedObjectContext_error___block_invoke_2;
  v45[3] = &unk_1E7572E50;
  v45[4] = self;
  v45[5] = &v48;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __107__PLModelMigrationAction_ReKeyResourcesIncorrectlyStoredAsM4A_performActionWithManagedObjectContext_error___block_invoke_3;
  v44[3] = &unk_1E756C670;
  v44[4] = self;
  v44[5] = &v54;
  v44[6] = &v60;
  v44[7] = &v48;
  v13 = [(PLEnumerateAndSaveController *)v9 initWithName:v11 fetchRequest:v7 context:v12 options:4 generateContextBlock:v46 didFetchObjectIDsBlock:v45 processResultBlock:v44];

  v14 = (v55 + 5);
  obj = v55[5];
  v15 = [(PLEnumerateAndSaveController *)v13 processObjectsWithError:&obj];
  objc_storeStrong(v14, obj);
  if (v15)
  {
    v16 = PLMigrationGetLog();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (!v17)
    {
      goto LABEL_16;
    }

    v18 = [(PLModelMigrationActionCore *)self logger];
    v19 = v18 == 0;

    if (!v19)
    {
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
      memset(buf, 0, sizeof(buf));
      v20 = PLMigrationGetLog();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      v21 = [v49[5] totalUnitCount];
      v64 = 134217984;
      v65 = v21;
      LODWORD(v42) = 12;
      v22 = _os_log_send_and_compose_impl();

      v23 = [(PLModelMigrationActionCore *)self logger:&v64];
      [v23 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{669, 0}];

      goto LABEL_8;
    }

    v33 = PLMigrationGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v49[5] totalUnitCount];
      *buf = 134217984;
      *&buf[4] = v34;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Patched %lld resources with incorrect encoding of video file path in library.", buf, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

  v61[3] = 3;
  v24 = PLMigrationGetLog();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

  if (!v25)
  {
    goto LABEL_16;
  }

  v26 = [(PLModelMigrationActionCore *)self logger];
  v27 = v26 == 0;

  if (v27)
  {
    v33 = PLMigrationGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = v55[5];
      *buf = 138543618;
      *&buf[4] = v36;
      *&buf[12] = 2112;
      *&buf[14] = v37;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

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
  memset(buf, 0, sizeof(buf));
  v28 = PLMigrationGetLog();
  os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v31 = v55[5];
  v64 = 138543618;
  v65 = v30;
  v66 = 2112;
  v67 = v31;
  LODWORD(v42) = 22;
  v22 = _os_log_send_and_compose_impl();

  v32 = [(PLModelMigrationActionCore *)self logger:&v64];
  [v32 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{672, 16}];

LABEL_8:
  if (v22 != buf)
  {
    free(v22);
  }

LABEL_16:
  v38 = v61[3];
  v39 = v55[5];
  if (v38 != 1 && a4)
  {
    v39 = v39;
    *a4 = v39;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v40 = v61[3];

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);

  _Block_object_dispose(&v60, 8);
  return v40;
}

@end