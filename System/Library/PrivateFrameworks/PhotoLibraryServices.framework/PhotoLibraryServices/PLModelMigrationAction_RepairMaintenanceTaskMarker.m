@interface PLModelMigrationAction_RepairMaintenanceTaskMarker
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_RepairMaintenanceTaskMarker

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69BF188];
  v6 = [(PLModelMigrationActionCore *)self pathManager:a3];
  v7 = [v6 libraryURL];
  v8 = [v5 appPrivateDataForLibraryURL:v7];

  v9 = [v8 valueForKey:@"PLDeferredMaintenanceTask"];
  objc_opt_class();
  LOBYTE(v7) = objc_opt_isKindOfClass();

  if ((v7 & 1) == 0)
  {
    v39 = 0;
    v10 = [v8 setValue:0 forKey:@"PLDeferredMaintenanceTask" error:&v39];
    v11 = v39;
    v12 = PLMigrationGetLog();
    v13 = v12;
    if (v10)
    {
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v14)
      {
        v15 = [(PLModelMigrationActionCore *)self logger];

        if (v15)
        {
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
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          memset(buf, 0, sizeof(buf));
          v16 = PLMigrationGetLog();
          os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v40 = 138543874;
          v41 = @"PLDeferredMaintenanceTask";
          v42 = 2114;
          v43 = v18;
          v44 = 2112;
          v45 = v11;
          LODWORD(v38) = 32;
          v19 = _os_log_send_and_compose_impl();

          v20 = [(PLModelMigrationActionCore *)self logger:&v40];
          v21 = v20;
          v22 = v19;
          v23 = 266;
          v24 = 0;
          goto LABEL_9;
        }

        v30 = PLMigrationGetLog();
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138543874;
        *&buf[4] = @"PLDeferredMaintenanceTask";
        *&buf[12] = 2114;
        *&buf[14] = v32;
        *&buf[22] = 2112;
        *&buf[24] = v11;
        v33 = "Repaired the %{public}@ marker for %{public}@. Error: %@";
        v34 = v30;
        v35 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
        _os_log_impl(&dword_19BF1F000, v34, v35, v33, buf, 0x20u);

LABEL_16:
      }
    }

    else
    {
      v25 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (v25)
      {
        v26 = [(PLModelMigrationActionCore *)self logger];

        if (v26)
        {
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
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          memset(buf, 0, sizeof(buf));
          v27 = PLMigrationGetLog();
          os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          v40 = 138543874;
          v41 = @"PLDeferredMaintenanceTask";
          v42 = 2114;
          v43 = v29;
          v44 = 2112;
          v45 = v11;
          LODWORD(v38) = 32;
          v19 = _os_log_send_and_compose_impl();

          v20 = [(PLModelMigrationActionCore *)self logger:&v40];
          v21 = v20;
          v22 = v19;
          v23 = 268;
          v24 = 16;
LABEL_9:
          [v20 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{v23, v24}];

          if (v19 != buf)
          {
            free(v19);
          }

          goto LABEL_17;
        }

        v30 = PLMigrationGetLog();
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v36 = objc_opt_class();
        v32 = NSStringFromClass(v36);
        *buf = 138543874;
        *&buf[4] = @"PLDeferredMaintenanceTask";
        *&buf[12] = 2114;
        *&buf[14] = v32;
        *&buf[22] = 2112;
        *&buf[24] = v11;
        v33 = "Failed to remove the %{public}@ marker for %{public}@. Error: %@";
        v34 = v30;
        v35 = OS_LOG_TYPE_ERROR;
        goto LABEL_15;
      }
    }

LABEL_17:
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  return 1;
}

@end