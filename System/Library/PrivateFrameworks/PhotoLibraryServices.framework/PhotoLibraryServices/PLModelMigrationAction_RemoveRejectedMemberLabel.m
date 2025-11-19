@interface PLModelMigrationAction_RemoveRejectedMemberLabel
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_RemoveRejectedMemberLabel

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v102 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:1];
  [v7 becomeCurrentWithPendingUnitCount:1];
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLGraphLabel entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"code", 1002];
  [v10 setPredicate:v11];

  v66 = 0;
  v12 = [v6 executeFetchRequest:v10 error:&v66];
  v13 = v66;
  v14 = [v12 firstObject];

  if (v13)
  {
    v15 = PLMigrationGetLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (!v16)
    {
LABEL_18:
      v23 = 0;
      v24 = 3;
      goto LABEL_19;
    }

    v17 = [(PLModelMigrationActionCore *)self logger];

    if (v17)
    {
      v100 = 0u;
      v101 = 0u;
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
      v75 = 0u;
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
      memset(buf, 0, sizeof(buf));
      v18 = PLMigrationGetLog();
      os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v67 = 138543618;
      v68 = v20;
      v69 = 2112;
      v70 = v13;
      LODWORD(v63) = 22;
      v21 = _os_log_send_and_compose_impl();

      v22 = [(PLModelMigrationActionCore *)self logger:&v67];
      [v22 logWithMessage:v21 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{505, 16}];

      if (v21 != buf)
      {
        free(v21);
      }

      v23 = 0;
      v24 = 3;
      goto LABEL_19;
    }

    v34 = PLMigrationGetLog();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      goto LABEL_18;
    }

    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    *buf = 138543618;
    *&buf[4] = v36;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    v37 = "Failed to process %{public}@. Failed to fetch label with error: %@";
LABEL_16:
    _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, v37, buf, 0x16u);

    goto LABEL_17;
  }

  if (!v14)
  {
    v13 = 0;
    v23 = 1;
    v24 = 1;
    goto LABEL_19;
  }

  v65 = 0;
  v25 = [v14 removeFromAdditionalLabelsOnAllEdgesWithError:&v65];
  v26 = v65;
  v27 = PLMigrationGetLog();
  v28 = v27;
  if (v25)
  {
    v29 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

    if (v29)
    {
      v30 = [(PLModelMigrationActionCore *)self logger];

      if (v30)
      {
        v100 = 0u;
        v101 = 0u;
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
        v75 = 0u;
        v73 = 0u;
        v74 = 0u;
        v72 = 0u;
        memset(buf, 0, sizeof(buf));
        v31 = PLMigrationGetLog();
        os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        LOWORD(v67) = 0;
        LODWORD(v63) = 2;
        v32 = _os_log_send_and_compose_impl();

        v33 = [(PLModelMigrationActionCore *)self logger:&v67];
        [v33 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{489, 0}];

        if (v32 != buf)
        {
          free(v32);
        }
      }

      else
      {
        v49 = PLMigrationGetLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_DEFAULT, "Removed rejected member label from any edges.", buf, 2u);
        }
      }
    }

    [v6 deleteObject:v14];
    v64 = v26;
    v50 = [v6 save:&v64];
    v13 = v64;

    if (v50)
    {
      v24 = 1;
      v23 = 1;
      goto LABEL_19;
    }

    v51 = PLMigrationGetLog();
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

    if (!v52)
    {
      goto LABEL_18;
    }

    v53 = [(PLModelMigrationActionCore *)self logger];

    if (v53)
    {
      v100 = 0u;
      v101 = 0u;
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
      v75 = 0u;
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
      memset(buf, 0, sizeof(buf));
      v54 = PLMigrationGetLog();
      os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v67 = 138543618;
      v68 = v56;
      v69 = 2112;
      v70 = v13;
      LODWORD(v63) = 22;
      v57 = _os_log_send_and_compose_impl();

      v58 = [(PLModelMigrationActionCore *)self logger:&v67];
      [v58 logWithMessage:v57 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{494, 16}];

      if (v57 != buf)
      {
        free(v57);
      }

      goto LABEL_18;
    }

    v34 = PLMigrationGetLog();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v62 = objc_opt_class();
    v36 = NSStringFromClass(v62);
    *buf = 138543618;
    *&buf[4] = v36;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    v37 = "Failed to process %{public}@. Failed to save label delete with error: %@";
    goto LABEL_16;
  }

  v42 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

  if (v42)
  {
    v43 = [(PLModelMigrationActionCore *)self logger];

    if (v43)
    {
      v100 = 0u;
      v101 = 0u;
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
      v75 = 0u;
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
      memset(buf, 0, sizeof(buf));
      v44 = PLMigrationGetLog();
      os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v67 = 138543618;
      v68 = v46;
      v69 = 2112;
      v70 = v26;
      LODWORD(v63) = 22;
      v47 = _os_log_send_and_compose_impl();

      v48 = [(PLModelMigrationActionCore *)self logger:&v67];
      [v48 logWithMessage:v47 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{499, 16}];

      if (v47 != buf)
      {
        free(v47);
      }
    }

    else
    {
      v59 = PLMigrationGetLog();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v60 = objc_opt_class();
        v61 = NSStringFromClass(v60);
        *buf = 138543618;
        *&buf[4] = v61;
        *&buf[12] = 2112;
        *&buf[14] = v26;
        _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Failed to remove label assignments with error: %@", buf, 0x16u);
      }
    }
  }

  v23 = 0;
  v24 = 3;
  v13 = v26;
LABEL_19:
  [v7 setCompletedUnitCount:{objc_msgSend(v7, "completedUnitCount") + 1}];
  v38 = v13;
  v39 = v38;
  if ((v23 & 1) == 0 && a4)
  {
    v40 = v38;
    *a4 = v39;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v24;
}

@end