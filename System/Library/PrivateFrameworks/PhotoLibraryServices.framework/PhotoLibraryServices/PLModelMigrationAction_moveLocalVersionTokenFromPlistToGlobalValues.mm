@interface PLModelMigrationAction_moveLocalVersionTokenFromPlistToGlobalValues
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_moveLocalVersionTokenFromPlistToGlobalValues

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v99 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  firstObject = [persistentStores firstObject];
  metadata = [firstObject metadata];
  v10 = [metadata objectForKeyedSubscript:*MEMORY[0x1E695D4B8]];

  v11 = MEMORY[0x1E69BF1C0];
  v12 = *MEMORY[0x1E69BF418];
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v14 = [v11 readCPLPlistObjectWithKey:v12 pathManager:pathManager];

  if ([v10 isEqualToString:v14])
  {
    v15 = MEMORY[0x1E69BF1C0];
    pathManager2 = [(PLModelMigrationActionCore *)self pathManager];
    v17 = [v15 readCPLPlistObjectWithKey:@"localVersionToken" pathManager:pathManager2];

    if (v17)
    {
      v62 = MEMORY[0x1E69E9820];
      v63 = v17;
      v18 = pl_result_with_autoreleasepool();
      v19 = PLMigrationGetLog();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

      if (v20)
      {
        logger = [(PLModelMigrationActionCore *)self logger];

        if (logger)
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
          v22 = PLMigrationGetLog();
          os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
          v64 = 138412290;
          v65 = v18;
          LODWORD(v61) = 12;
          v23 = _os_log_send_and_compose_impl();

          v24 = [(PLModelMigrationActionCore *)self logger:&v64];
          [v24 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{279, 0}];

          if (v23 != buf)
          {
            free(v23);
          }
        }

        else
        {
          v31 = PLMigrationGetLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v18;
            _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "Migrating plist based token: %@ to global values...", buf, 0xCu);
          }
        }
      }

      v32 = [[PLGlobalValues alloc] initWithManagedObjectContext:contextCopy];
      [(PLGlobalValues *)v32 setCloudTrackerLastKnownToken:v18];
      [(PLGlobalValues *)v32 setLibraryScopeRulesTrackerLastKnownToken:v18];
      v33 = MEMORY[0x1E69BF1C0];
      pathManager3 = [(PLModelMigrationActionCore *)self pathManager];
      v35 = [v33 readCPLPlistObjectWithKey:@"cloudVersion" pathManager:pathManager3];

      v36 = PLMigrationGetLog();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);

      if (v37)
      {
        logger2 = [(PLModelMigrationActionCore *)self logger];

        if (logger2)
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
          v39 = PLMigrationGetLog();
          os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
          v64 = 138412290;
          v65 = v35;
          LODWORD(v61) = 12;
          v40 = _os_log_send_and_compose_impl();

          v41 = [(PLModelMigrationActionCore *)self logger:&v64];
          [v41 logWithMessage:v40 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{290, 0}];

          if (v40 != buf)
          {
            free(v40);
          }
        }

        else
        {
          v42 = PLMigrationGetLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v35;
            _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEFAULT, "Migrating plist based cloud version: %@ to global values...", buf, 0xCu);
          }
        }
      }

      [(PLGlobalValues *)v32 setCloudTrackerLastKnownCloudVersion:v35];
    }

LABEL_24:

    goto LABEL_25;
  }

  v25 = PLMigrationGetLog();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

  if (!v26)
  {
    goto LABEL_25;
  }

  logger3 = [(PLModelMigrationActionCore *)self logger];

  if (!logger3)
  {
    v17 = PLMigrationGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Not migrating localVersionToken/lastCloudVersion into PLGlobalValues due to storeUUID mismatch (opened uuid: %{public}@, uuid from plist: %{public}@)", buf, 0x16u);
    }

    goto LABEL_24;
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
  v64 = 138543618;
  v65 = v10;
  v66 = 2114;
  v67 = v14;
  LODWORD(v61) = 22;
  v29 = _os_log_send_and_compose_impl();

  v30 = [(PLModelMigrationActionCore *)self logger:&v64];
  [v30 logWithMessage:v29 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{296, 16}];

  if (v29 != buf)
  {
    free(v29);
  }

LABEL_25:
  v43 = PLMigrationGetLog();
  v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);

  if (v44)
  {
    logger4 = [(PLModelMigrationActionCore *)self logger];

    if (logger4)
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
      v46 = PLMigrationGetLog();
      os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
      LOWORD(v64) = 0;
      LODWORD(v61) = 2;
      v47 = _os_log_send_and_compose_impl();

      v48 = [(PLModelMigrationActionCore *)self logger:&v64];
      [v48 logWithMessage:v47 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{300, 0}];

      if (v47 != buf)
      {
        free(v47);
      }
    }

    else
    {
      v49 = PLMigrationGetLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_DEFAULT, "Erasing existing localVersionToken from plist...", buf, 2u);
      }
    }
  }

  v50 = MEMORY[0x1E69BF1C0];
  pathManager4 = [(PLModelMigrationActionCore *)self pathManager];
  [v50 saveCPLPlistObject:0 forKey:@"localVersionToken" pathManager:pathManager4];

  v52 = PLMigrationGetLog();
  LODWORD(pathManager4) = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);

  if (pathManager4)
  {
    logger5 = [(PLModelMigrationActionCore *)self logger];

    if (logger5)
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
      v54 = PLMigrationGetLog();
      os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
      LOWORD(v64) = 0;
      LODWORD(v61) = 2;
      v55 = _os_log_send_and_compose_impl();

      v56 = [(PLModelMigrationActionCore *)self logger:&v64];
      [v56 logWithMessage:v55 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{303, 0}];

      if (v55 != buf)
      {
        free(v55);
      }
    }

    else
    {
      v57 = PLMigrationGetLog();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_DEFAULT, "Erasing existing cloudVersion from plist...", buf, 2u);
      }
    }
  }

  v58 = MEMORY[0x1E69BF1C0];
  pathManager5 = [(PLModelMigrationActionCore *)self pathManager];
  [v58 saveCPLPlistObject:0 forKey:@"cloudVersion" pathManager:pathManager5];

  return 1;
}

@end