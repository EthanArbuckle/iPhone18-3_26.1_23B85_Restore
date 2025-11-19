@interface PLModelMigrationAction_PopulatePersonCloudDetectionType
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_PopulatePersonCloudDetectionType

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v101 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 1;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__53822;
  v60 = __Block_byref_object_dispose__53823;
  v61 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLPerson entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"cloudDetectionType", 0];
  [v9 setPredicate:v10];

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__53822;
  v54 = __Block_byref_object_dispose__53823;
  v55 = 0;
  v11 = [PLEnumerateAndSaveController alloc];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __103__PLModelMigrationAction_PopulatePersonCloudDetectionType_performActionWithManagedObjectContext_error___block_invoke;
  v48[3] = &unk_1E7575B30;
  v14 = v6;
  v49 = v14;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __103__PLModelMigrationAction_PopulatePersonCloudDetectionType_performActionWithManagedObjectContext_error___block_invoke_2;
  v47[3] = &unk_1E7572E50;
  v47[4] = self;
  v47[5] = &v50;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __103__PLModelMigrationAction_PopulatePersonCloudDetectionType_performActionWithManagedObjectContext_error___block_invoke_3;
  v46[3] = &unk_1E756DD68;
  v46[4] = self;
  v46[5] = &v56;
  v46[6] = &v62;
  v46[7] = &v50;
  v15 = [(PLEnumerateAndSaveController *)v11 initWithName:v13 fetchRequest:v9 context:v14 options:4 generateContextBlock:v48 didFetchObjectIDsBlock:v47 processResultBlock:v46];

  v16 = (v57 + 5);
  obj = v57[5];
  v17 = [(PLEnumerateAndSaveController *)v15 processObjectsWithError:&obj];
  objc_storeStrong(v16, obj);
  if (v17)
  {
    v18 = PLMigrationGetLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (!v19)
    {
      goto LABEL_16;
    }

    v20 = [(PLModelMigrationActionCore *)self logger];
    v21 = v20 == 0;

    if (!v21)
    {
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
      v71 = 0u;
      v72 = 0u;
      memset(buf, 0, sizeof(buf));
      v22 = PLMigrationGetLog();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      v23 = [v51[5] totalUnitCount];
      v66 = 134217984;
      v67 = v23;
      LODWORD(v44) = 12;
      v24 = _os_log_send_and_compose_impl();

      v25 = [(PLModelMigrationActionCore *)self logger:&v66];
      [v25 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{524, 0}];

      goto LABEL_8;
    }

    v35 = PLMigrationGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v51[5] totalUnitCount];
      *buf = 134217984;
      *&buf[4] = v36;
      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Populated cloudDetectionType for %lld persons", buf, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

  v63[3] = 3;
  v26 = PLMigrationGetLog();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

  if (!v27)
  {
    goto LABEL_16;
  }

  v28 = [(PLModelMigrationActionCore *)self logger];
  v29 = v28 == 0;

  if (v29)
  {
    v35 = PLMigrationGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = v57[5];
      *buf = 138543618;
      *&buf[4] = v38;
      *&buf[12] = 2114;
      *&buf[14] = v39;
      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
    }

    goto LABEL_15;
  }

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
  v71 = 0u;
  v72 = 0u;
  memset(buf, 0, sizeof(buf));
  v30 = PLMigrationGetLog();
  os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  v33 = v57[5];
  v66 = 138543618;
  v67 = v32;
  v68 = 2114;
  v69 = v33;
  LODWORD(v44) = 22;
  v24 = _os_log_send_and_compose_impl();

  v34 = [(PLModelMigrationActionCore *)self logger:&v66];
  [v34 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{522, 16}];

LABEL_8:
  if (v24 != buf)
  {
    free(v24);
  }

LABEL_16:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v40 = v63[3];
  v41 = v57[5];
  if (v40 != 1 && a4)
  {
    v41 = v41;
    *a4 = v41;
  }

  v42 = v63[3];
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);

  return v42;
}

@end