@interface PLModelMigrationAction_GreenTeaSetDefaultContactsAuthorizationState
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_GreenTeaSetDefaultContactsAuthorizationState

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v72 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = 1;
  v8 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v9 = [PLGlobalKeyValue fetchGlobalKeyValueForKey:@"GreenTeaContactsAuthorization" withManagedObjectContext:contextCopy createIfMissing:0];
  v10 = 0;
  if (!v9)
  {
    [PLGlobalKeyValue setGlobalValue:&unk_1F0FBCDD8 forKey:@"GreenTeaContactsAuthorization" managedObjectContext:contextCopy];
    v36 = 0;
    v11 = [contextCopy save:&v36];
    v10 = v36;
    if (v11)
    {
      v7 = 1;
      v35 = v8;
      [v8 setCompletedUnitCount:1];
      v12 = PLMigrationGetLog();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v13)
      {
        logger = [(PLModelMigrationActionCore *)self logger];

        if (logger)
        {
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
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          memset(buf, 0, sizeof(buf));
          v15 = PLMigrationGetLog();
          os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          integerValue = [&unk_1F0FBCDD8 integerValue];
          v37 = 138543618;
          v38 = @"GreenTeaContactsAuthorization";
          v39 = 2048;
          v40 = integerValue;
          LODWORD(v34) = 22;
          v17 = _os_log_send_and_compose_impl();

          v18 = [(PLModelMigrationActionCore *)self logger:&v37];
          [v18 logWithMessage:v17 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{774, 0}];

          v8 = v35;
          if (v17 != buf)
          {
            free(v17);
          }
        }

        else
        {
          v27 = PLMigrationGetLog();
          v8 = v35;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            integerValue2 = [&unk_1F0FBCDD8 integerValue];
            *buf = 138543618;
            *&buf[4] = @"GreenTeaContactsAuthorization";
            *&buf[12] = 2048;
            *&buf[14] = integerValue2;
            _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "Updated global value %{public}@ with token %td", buf, 0x16u);
          }
        }

        v7 = 1;
      }

      else
      {
        v8 = v35;
      }
    }

    else
    {
      v19 = PLMigrationGetLog();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

      if (v20)
      {
        logger2 = [(PLModelMigrationActionCore *)self logger];

        if (logger2)
        {
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
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          memset(buf, 0, sizeof(buf));
          v22 = PLMigrationGetLog();
          os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          v37 = 138543618;
          v38 = v24;
          v39 = 2112;
          v40 = v10;
          LODWORD(v34) = 22;
          v25 = _os_log_send_and_compose_impl();

          v26 = [(PLModelMigrationActionCore *)self logger:&v37];
          [v26 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{771, 16}];

          if (v25 != buf)
          {
            free(v25);
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
            _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
          }
        }
      }

      v7 = 3;
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    v32 = v10;
    *error = v10;
  }

  return v7;
}

@end