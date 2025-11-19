@interface PLModelMigrationAction_MigrateMemoryPendingStateStoryToCreationType
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_MigrateMemoryPendingStateStoryToCreationType

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v103 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 1;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__43771;
  v62 = __Block_byref_object_dispose__43772;
  v63 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLMemory entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"pendingState", 4];
  [v9 setPredicate:v10];

  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__43771;
  v56[4] = __Block_byref_object_dispose__43772;
  v57 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v11 = [PLEnumerateAndSaveController alloc];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __115__PLModelMigrationAction_MigrateMemoryPendingStateStoryToCreationType_performActionWithManagedObjectContext_error___block_invoke;
  v50[3] = &unk_1E7575B30;
  v14 = v6;
  v51 = v14;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __115__PLModelMigrationAction_MigrateMemoryPendingStateStoryToCreationType_performActionWithManagedObjectContext_error___block_invoke_2;
  v49[3] = &unk_1E7572E50;
  v49[4] = self;
  v49[5] = v56;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __115__PLModelMigrationAction_MigrateMemoryPendingStateStoryToCreationType_performActionWithManagedObjectContext_error___block_invoke_3;
  v48[3] = &unk_1E756C5D0;
  v48[4] = self;
  v48[5] = &v58;
  v48[6] = &v64;
  v48[7] = &v52;
  v48[8] = v56;
  v15 = [(PLEnumerateAndSaveController *)v11 initWithName:v13 fetchRequest:v9 context:v14 options:4 generateContextBlock:v50 didFetchObjectIDsBlock:v49 processResultBlock:v48];

  v16 = (v59 + 5);
  obj = v59[5];
  v17 = [(PLEnumerateAndSaveController *)v15 processObjectsWithError:&obj];
  objc_storeStrong(v16, obj);
  if (v17)
  {
    v18 = PLMigrationGetLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (!v19)
    {
      goto LABEL_17;
    }

    v20 = [(PLModelMigrationActionCore *)self logger];
    v21 = v20 == 0;

    if (!v21)
    {
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
      memset(buf, 0, sizeof(buf));
      v22 = PLMigrationGetLog();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      v23 = v53[3];
      v68 = 134217984;
      v69 = v23;
      LODWORD(v46) = 12;
      v24 = _os_log_send_and_compose_impl();

      v25 = [(PLModelMigrationActionCore *)self logger:&v68];
      [v25 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{427, 0}];

      if (v24 != buf)
      {
        v26 = v24;
LABEL_10:
        free(v26);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    v37 = PLMigrationGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v53[3];
      *buf = 134217984;
      *&buf[4] = v38;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Migrated %tu generative memories from pendingStateStory to creationTypeGenerative.", buf, 0xCu);
    }

LABEL_16:

    goto LABEL_17;
  }

  v65[3] = 3;
  v27 = PLMigrationGetLog();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

  if (!v28)
  {
    goto LABEL_17;
  }

  v29 = [(PLModelMigrationActionCore *)self logger];
  v30 = v29 == 0;

  if (v30)
  {
    v37 = PLMigrationGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = v59[5];
      *buf = 138543618;
      *&buf[4] = v40;
      *&buf[12] = 2112;
      *&buf[14] = v41;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
    }

    goto LABEL_16;
  }

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
  memset(buf, 0, sizeof(buf));
  v31 = PLMigrationGetLog();
  os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v34 = v59[5];
  v68 = 138543618;
  v69 = v33;
  v70 = 2112;
  v71 = v34;
  LODWORD(v46) = 22;
  v35 = _os_log_send_and_compose_impl();

  v36 = [(PLModelMigrationActionCore *)self logger:&v68];
  [v36 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{430, 16}];

  if (v35 != buf)
  {
    v26 = v35;
    goto LABEL_10;
  }

LABEL_17:
  v42 = v65[3];
  v43 = v59[5];
  if (v42 != 1 && a4)
  {
    v43 = v43;
    *a4 = v43;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v44 = v65[3];

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(v56, 8);

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v64, 8);

  return v44;
}

@end