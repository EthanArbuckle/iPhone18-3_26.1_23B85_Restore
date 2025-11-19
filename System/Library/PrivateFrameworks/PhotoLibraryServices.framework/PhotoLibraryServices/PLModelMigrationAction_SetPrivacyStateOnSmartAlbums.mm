@interface PLModelMigrationAction_SetPrivacyStateOnSmartAlbums
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_SetPrivacyStateOnSmartAlbums

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__23792;
  v72 = __Block_byref_object_dispose__23793;
  v73 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 1;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLGenericAlbum entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 1507];
  [v8 setPredicate:v9];

  [v8 setFetchBatchSize:100];
  v63 = 0;
  v10 = [v5 executeFetchRequest:v8 error:&v63];
  v58 = v63;
  if (v10)
  {
    v11 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v10 count], 0);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __99__PLModelMigrationAction_SetPrivacyStateOnSmartAlbums_performActionWithManagedObjectContext_error___block_invoke;
    v59[3] = &unk_1E7569C08;
    v59[4] = self;
    v61 = &v68;
    v62 = &v64;
    v12 = v11;
    v60 = v12;
    v13 = [v5 enumerateWithIncrementalSaveUsingObjects:v10 withBlock:v59];
    if (v13)
    {
      v65[3] = 3;
      v14 = PLMigrationGetLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (v15)
      {
        v16 = [(PLModelMigrationActionCore *)self logger];
        v17 = v16 == 0;

        if (v17)
        {
          v40 = PLMigrationGetLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = objc_opt_class();
            v42 = NSStringFromClass(v41);
            *buf = 138543618;
            *&buf[4] = v42;
            *&buf[12] = 2114;
            *&buf[14] = v13;
            _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v18 = PLMigrationGetLog();
          os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v74 = 138543618;
          v75 = v20;
          v76 = 2114;
          v77 = v13;
          LODWORD(v56) = 22;
          v21 = _os_log_send_and_compose_impl();

          v22 = [(PLModelMigrationActionCore *)self logger:&v74];
          [v22 logWithMessage:v21 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{330, 16}];

          if (v21 != buf)
          {
            free(v21);
          }
        }
      }

      if (v69[5])
      {
        v43 = v69[5];
      }

      else
      {
        v43 = v13;
      }

      objc_storeStrong(v69 + 5, v43);
    }

    else
    {
      v32 = PLMigrationGetLog();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

      if (v33)
      {
        v34 = [(PLModelMigrationActionCore *)self logger];
        v35 = v34 == 0;

        if (v35)
        {
          v54 = PLMigrationGetLog();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v55 = [v10 count];
            *buf = 134217984;
            *&buf[4] = v55;
            _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_DEFAULT, "Updated privacy sensitive state for %lu smart albums", buf, 0xCu);
          }
        }

        else
        {
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v36 = PLMigrationGetLog();
          os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
          v37 = [v10 count];
          v74 = 134217984;
          v75 = v37;
          LODWORD(v56) = 12;
          v38 = _os_log_send_and_compose_impl();

          v39 = [(PLModelMigrationActionCore *)self logger:&v74];
          [v39 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{327, 0}];

          if (v38 != buf)
          {
            free(v38);
          }
        }
      }
    }
  }

  else
  {
    v65[3] = 3;
    v23 = PLMigrationGetLog();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

    if (v24)
    {
      v25 = [(PLModelMigrationActionCore *)self logger];
      v26 = v25 == 0;

      if (v26)
      {
        v44 = PLMigrationGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          *buf = 138543618;
          *&buf[4] = v46;
          *&buf[12] = 2114;
          *&buf[14] = v58;
          _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v27 = PLMigrationGetLog();
        os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v74 = 138543618;
        v75 = v29;
        v76 = 2114;
        v77 = v58;
        LODWORD(v56) = 22;
        v30 = _os_log_send_and_compose_impl();

        v31 = [(PLModelMigrationActionCore *)self logger:&v74];
        [v31 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{335, 16}];

        if (v30 != buf)
        {
          free(v30);
        }
      }
    }

    v47 = v69;
    v48 = v69[5];
    if (!v48)
    {
      v48 = v58;
    }

    v49 = v48;
    v12 = v47[5];
    v47[5] = v49;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v50 = v65[3];
  v51 = v69[5];
  if (v50 != 1 && a4)
  {
    v51 = v51;
    *a4 = v51;
  }

  v52 = v65[3];
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);

  return v52;
}

@end