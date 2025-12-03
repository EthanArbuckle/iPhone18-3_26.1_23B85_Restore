@interface PLModelMigrationAction_MigrateLastGuestAssetSyncToken
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_MigrateLastGuestAssetSyncToken

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v75 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = 1;
  v8 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v9 = [PLGlobalKeyValue fetchGlobalKeyValueForKey:@"LastGuestAssetSyncToken" withManagedObjectContext:contextCopy createIfMissing:0];
  v10 = v9;
  if (v9)
  {
    anyGlobalValue = [v9 anyGlobalValue];
    if (!anyGlobalValue)
    {
LABEL_5:
      v7 = 1;
      goto LABEL_25;
    }

    anyGlobalValue2 = [v10 anyGlobalValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      anyGlobalValue = 0;
      goto LABEL_5;
    }

    anyGlobalValue3 = [v10 anyGlobalValue];
    v15 = [PLPersistentHistoryUtilities unarchiveTokenWithData:anyGlobalValue3];

    v38 = v15;
    [PLGlobalKeyValue setGlobalValue:v15 forKey:@"LastGuestAssetSyncToken" managedObjectContext:contextCopy];
    v39 = 0;
    v16 = [contextCopy save:&v39];
    anyGlobalValue = v39;
    if (v16)
    {
      v7 = 1;
      [v8 setCompletedUnitCount:1];
      v17 = PLMigrationGetLog();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

      if (v18)
      {
        logger = [(PLModelMigrationActionCore *)self logger];

        if (logger)
        {
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
          v45 = 0u;
          v46 = 0u;
          memset(buf, 0, sizeof(buf));
          v20 = PLMigrationGetLog();
          os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          v40 = 138543618;
          v41 = @"LastGuestAssetSyncToken";
          v42 = 2114;
          v43 = v38;
          LODWORD(v37) = 22;
          v21 = _os_log_send_and_compose_impl();

          v22 = [(PLModelMigrationActionCore *)self logger:&v40];
          [v22 logWithMessage:v21 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{364, 0}];

          if (v21 != buf)
          {
            free(v21);
          }
        }

        else
        {
          v31 = PLMigrationGetLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = @"LastGuestAssetSyncToken";
            *&buf[12] = 2114;
            *&buf[14] = v38;
            _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "Updated global value %{public}@ with token %{public}@", buf, 0x16u);
          }
        }

        v7 = 1;
      }
    }

    else
    {
      v23 = PLMigrationGetLog();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

      if (v24)
      {
        logger2 = [(PLModelMigrationActionCore *)self logger];

        if (logger2)
        {
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
          v45 = 0u;
          v46 = 0u;
          memset(buf, 0, sizeof(buf));
          v26 = PLMigrationGetLog();
          os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          v40 = 138543618;
          v41 = v28;
          v42 = 2112;
          v43 = anyGlobalValue;
          LODWORD(v37) = 22;
          v29 = _os_log_send_and_compose_impl();

          v30 = [(PLModelMigrationActionCore *)self logger:&v40];
          [v30 logWithMessage:v29 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{361, 16}];

          if (v29 != buf)
          {
            free(v29);
          }
        }

        else
        {
          v32 = PLMigrationGetLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = objc_opt_class();
            v34 = NSStringFromClass(v33);
            *buf = 138543618;
            *&buf[4] = v34;
            *&buf[12] = 2112;
            *&buf[14] = anyGlobalValue;
            _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
          }
        }
      }

      v7 = 3;
    }
  }

  else
  {
    anyGlobalValue = 0;
  }

LABEL_25:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    v35 = anyGlobalValue;
    *error = anyGlobalValue;
  }

  return v7;
}

@end