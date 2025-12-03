@interface PLModelMigrationAction_RunSocialGroupAssetContainment
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RunSocialGroupAssetContainment

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v78 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:1];
  [PLGraphLabel ensureLabelsAreUpdatedInContext:contextCopy];
  [v7 becomeCurrentWithPendingUnitCount:1];
  v42 = 0;
  v8 = [PLSocialGroup runAssetContainmentOnAllSocialGroupsInContext:contextCopy error:&v42];
  v9 = v42;
  v10 = v9;
  if (!v8)
  {
    v13 = PLMigrationGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        memset(buf, 0, sizeof(buf));
        v16 = PLMigrationGetLog();
        os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v43 = 138543618;
        v44 = v18;
        v45 = 2112;
        v46 = v10;
        LODWORD(v40) = 22;
        v19 = _os_log_send_and_compose_impl();

        v20 = [(PLModelMigrationActionCore *)self logger:&v43];
        [v20 logWithMessage:v19 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{992, 16}];

        if (v19 != buf)
        {
          free(v19);
        }
      }

      else
      {
        v29 = PLMigrationGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          *buf = 138543618;
          *&buf[4] = v31;
          *&buf[12] = 2112;
          *&buf[14] = v10;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Failed to run asset containment on all social groups for %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }

    goto LABEL_15;
  }

  v41 = v9;
  v11 = [contextCopy save:&v41];
  v12 = v41;

  if (v11)
  {
    v10 = v12;
LABEL_15:
    [v7 resignCurrent];
    v32 = v10;
    v33 = 1;
    goto LABEL_22;
  }

  v21 = PLMigrationGetLog();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

  if (v22)
  {
    logger2 = [(PLModelMigrationActionCore *)self logger];

    if (logger2)
    {
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
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      memset(buf, 0, sizeof(buf));
      v24 = PLMigrationGetLog();
      os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v43 = 138543618;
      v44 = v26;
      v45 = 2112;
      v46 = v12;
      LODWORD(v40) = 22;
      v27 = _os_log_send_and_compose_impl();

      v28 = [(PLModelMigrationActionCore *)self logger:&v43];
      [v28 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{994, 16}];

      if (v27 != buf)
      {
        free(v27);
      }
    }

    else
    {
      v34 = PLMigrationGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        *buf = 138543618;
        *&buf[4] = v36;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
      }
    }
  }

  [v7 resignCurrent];
  v37 = v12;
  v32 = v37;
  if (error)
  {
    v38 = v37;
    *error = v32;
  }

  v33 = 3;
LABEL_22:

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v33;
}

@end