@interface PLModelMigrationAction_DeleteCarouselCruft
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_DeleteCarouselCruft

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v108 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v7 = [pathManager internalDirectoryWithSubType:5 additionalPathComponents:0 createIfNeeded:0 error:0];

  v64 = v7;
  selfCopy = self;
  if ([v7 length])
  {
    v62 = contextCopy;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v9 = [&unk_1F0FBFAF0 countByEnumeratingWithState:&v68 objects:v107 count:16];
    if (!v9)
    {
      goto LABEL_26;
    }

    v10 = v9;
    v11 = *v69;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v69 != v11)
        {
          objc_enumerationMutation(&unk_1F0FBFAF0);
        }

        v13 = [v7 stringByAppendingPathComponent:*(*(&v68 + 1) + 8 * i)];
        if ([defaultManager fileExistsAtPath:v13])
        {
          v67 = 0;
          v14 = [defaultManager removeItemAtPath:v13 error:&v67];
          v15 = v67;
          v16 = PLMigrationGetLog();
          v17 = v16;
          if (v14)
          {
            v18 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);

            if (!v18)
            {
              goto LABEL_23;
            }

            logger = [(PLModelMigrationActionCore *)selfCopy logger];

            if (logger)
            {
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
              v77 = 0u;
              v78 = 0u;
              memset(buf, 0, sizeof(buf));
              v20 = PLMigrationGetLog();
              os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
              lastPathComponent = [v13 lastPathComponent];
              v72 = 138543362;
              v73 = lastPathComponent;
              LODWORD(v60) = 12;
              v22 = _os_log_send_and_compose_impl();

              v23 = [(PLModelMigrationActionCore *)selfCopy logger:&v72];
              v24 = v23;
              v25 = v22;
              v26 = 1719;
              v27 = 1;
LABEL_15:
              [v23 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{v26, v27}];

              if (v22 != buf)
              {
                free(v22);
              }

LABEL_22:
              v7 = v64;
LABEL_23:

              goto LABEL_24;
            }

            v32 = PLMigrationGetLog();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              lastPathComponent2 = [v13 lastPathComponent];
              *buf = 138543362;
              *&buf[4] = lastPathComponent2;
              _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_INFO, "Successfully deleted file at %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v28 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

            if (!v28)
            {
              goto LABEL_23;
            }

            logger2 = [(PLModelMigrationActionCore *)selfCopy logger];

            if (logger2)
            {
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
              v77 = 0u;
              v78 = 0u;
              memset(buf, 0, sizeof(buf));
              v30 = PLMigrationGetLog();
              os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
              lastPathComponent3 = [v13 lastPathComponent];
              v72 = 138543618;
              v73 = lastPathComponent3;
              v74 = 2112;
              v75 = v15;
              LODWORD(v60) = 22;
              v22 = _os_log_send_and_compose_impl();

              v23 = [(PLModelMigrationActionCore *)selfCopy logger:&v72];
              v24 = v23;
              v25 = v22;
              v26 = 1721;
              v27 = 16;
              goto LABEL_15;
            }

            v32 = PLMigrationGetLog();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              lastPathComponent4 = [v13 lastPathComponent];
              *buf = 138543618;
              *&buf[4] = lastPathComponent4;
              *&buf[12] = 2112;
              *&buf[14] = v15;
              _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Failed to delete file at %{public}@. Error: %@", buf, 0x16u);
            }
          }

          goto LABEL_22;
        }

LABEL_24:
      }

      v10 = [&unk_1F0FBFAF0 countByEnumeratingWithState:&v68 objects:v107 count:16];
      if (!v10)
      {
LABEL_26:

        contextCopy = v62;
        self = selfCopy;
        break;
      }
    }
  }

  v35 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"type", 9];
  v36 = +[PLSuggestion entityName];
  v66 = 0;
  v37 = [PLModelMigrator executeBatchDeleteWithEntityName:v36 predicate:v35 managedObjectContext:contextCopy error:&v66];
  v38 = v66;

  if (!v37)
  {
    if (error)
    {
      v46 = v38;
      *error = v38;
    }

    v47 = PLMigrationGetLog();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);

    if (v48)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
      {
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
        v77 = 0u;
        v78 = 0u;
        memset(buf, 0, sizeof(buf));
        v50 = PLMigrationGetLog();
        os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        v72 = 138543618;
        v73 = v52;
        v74 = 2114;
        v75 = v38;
        LODWORD(v61) = 22;
        v53 = _os_log_send_and_compose_impl();

        v54 = [(PLModelMigrationActionCore *)self logger:&v72];
        [v54 logWithMessage:v53 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1736, 16}];

        if (v53 != buf)
        {
          free(v53);
        }

        v45 = 3;
        goto LABEL_40;
      }

      v56 = PLMigrationGetLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        *buf = 138543618;
        *&buf[4] = v58;
        *&buf[12] = 2114;
        *&buf[14] = v38;
        _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_ERROR, "Failed to batch delete managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
      }
    }

    v45 = 3;
    goto LABEL_49;
  }

  v39 = PLMigrationGetLog();
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);

  if (!v40)
  {
LABEL_44:
    v45 = 1;
    goto LABEL_49;
  }

  logger4 = [(PLModelMigrationActionCore *)self logger];

  if (!logger4)
  {
    v55 = PLMigrationGetLog();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_DEFAULT, "Deleted all carousel suggestions", buf, 2u);
    }

    goto LABEL_44;
  }

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
  v77 = 0u;
  v78 = 0u;
  memset(buf, 0, sizeof(buf));
  v42 = PLMigrationGetLog();
  os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
  LOWORD(v72) = 0;
  LODWORD(v61) = 2;
  v43 = _os_log_send_and_compose_impl();

  v44 = [(PLModelMigrationActionCore *)self logger:&v72];
  [v44 logWithMessage:v43 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1732, 0}];

  if (v43 != buf)
  {
    free(v43);
  }

  v45 = 1;
LABEL_40:
  v7 = v64;
  self = selfCopy;
LABEL_49:
  [(PLModelMigrationActionCore *)self finalizeProgress];

  return v45;
}

@end