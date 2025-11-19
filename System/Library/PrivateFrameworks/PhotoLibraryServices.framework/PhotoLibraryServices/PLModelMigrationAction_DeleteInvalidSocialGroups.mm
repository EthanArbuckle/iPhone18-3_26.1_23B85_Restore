@interface PLModelMigrationAction_DeleteInvalidSocialGroups
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_DeleteInvalidSocialGroups

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v90 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [PLGraphLabel ensureLabelsAreUpdatedInContext:v6];
  v7 = +[PLGraphNode fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"primaryLabelCode", 1000];
  [v7 setPredicate:v8];

  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__43771;
  v49[4] = __Block_byref_object_dispose__43772;
  v50 = 0;
  v9 = [PLEnumerateAndSaveController alloc];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __96__PLModelMigrationAction_DeleteInvalidSocialGroups_performActionWithManagedObjectContext_error___block_invoke;
  v47[3] = &unk_1E7575B30;
  v48 = v6;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __96__PLModelMigrationAction_DeleteInvalidSocialGroups_performActionWithManagedObjectContext_error___block_invoke_2;
  v46[3] = &unk_1E7572E50;
  v46[4] = self;
  v46[5] = v49;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __96__PLModelMigrationAction_DeleteInvalidSocialGroups_performActionWithManagedObjectContext_error___block_invoke_3;
  v42[3] = &unk_1E756C7D8;
  v12 = v48;
  v43 = v12;
  v44 = &v51;
  v45 = v49;
  v13 = [(PLEnumerateAndSaveController *)v9 initWithName:v11 fetchRequest:v7 context:v12 options:0 generateContextBlock:v47 didFetchObjectIDsBlock:v46 processResultBlock:v42];

  v41 = 0;
  LOBYTE(v11) = [(PLEnumerateAndSaveController *)v13 processObjectsWithError:&v41];
  v14 = v41;
  if (v11)
  {
    v15 = PLMigrationGetLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v17 = [(PLModelMigrationActionCore *)self logger];
      v18 = v17 == 0;

      if (v18)
      {
        v32 = PLMigrationGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v52[3];
          *buf = 134217984;
          *&buf[4] = v33;
          _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "Deleted %ld social groups with fewer than two members", buf, 0xCu);
        }
      }

      else
      {
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
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        memset(buf, 0, sizeof(buf));
        v19 = PLMigrationGetLog();
        os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        v20 = v52[3];
        v55 = 134217984;
        v56 = v20;
        LODWORD(v40) = 12;
        v21 = _os_log_send_and_compose_impl();

        v22 = [(PLModelMigrationActionCore *)self logger:&v55];
        [v22 logWithMessage:v21 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1327, 0}];

        if (v21 != buf)
        {
          free(v21);
        }
      }
    }

    v34 = 1;
  }

  else
  {
    v23 = PLMigrationGetLog();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

    if (v24)
    {
      v25 = [(PLModelMigrationActionCore *)self logger];
      v26 = v25 == 0;

      if (v26)
      {
        v35 = PLMigrationGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          *buf = 138543618;
          *&buf[4] = v37;
          *&buf[12] = 2114;
          *&buf[14] = v14;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
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
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        memset(buf, 0, sizeof(buf));
        v27 = PLMigrationGetLog();
        os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v55 = 138543618;
        v56 = v29;
        v57 = 2114;
        v58 = v14;
        LODWORD(v40) = 22;
        v30 = _os_log_send_and_compose_impl();

        v31 = [(PLModelMigrationActionCore *)self logger:&v55];
        [v31 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1325, 16}];

        if (v30 != buf)
        {
          free(v30);
        }
      }
    }

    if (a4)
    {
      v38 = v14;
      *a4 = v14;
    }

    v34 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  _Block_object_dispose(v49, 8);
  _Block_object_dispose(&v51, 8);

  return v34;
}

@end