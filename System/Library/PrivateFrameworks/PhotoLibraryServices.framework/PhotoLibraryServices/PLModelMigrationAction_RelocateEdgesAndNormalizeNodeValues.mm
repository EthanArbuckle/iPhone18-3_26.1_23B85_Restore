@interface PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues
+ (void)_encloseActor:(id)actor fromEdge:(id)edge isSource:(BOOL)source actorLabel:(id)label cache:(id)cache;
- (BOOL)_migrateEdgesToNativelyModeledObjectsWithError:(id *)error context:(id)context;
- (BOOL)_migrateGraphEdgeValuesWithError:(id *)error context:(id)context;
- (BOOL)_migrateGraphNodeValuesWithError:(id *)error context:(id)context;
- (BOOL)_migrateNodePropertiesWithError:(id *)error context:(id)context;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
- (void)setup;
@end

@implementation PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v22 = 0;
  v7 = [(PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues *)self _migrateGraphNodeValuesWithError:&v22 context:contextCopy];
  v8 = v22;
  v9 = v8;
  if (v7)
  {
    v21 = v8;
    v10 = [(PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues *)self _migrateGraphEdgeValuesWithError:&v21 context:contextCopy];
    v11 = v21;

    if (!v10)
    {
      v14 = 3;
LABEL_9:
      v9 = v11;
      goto LABEL_10;
    }

    v20 = v11;
    v12 = [(PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues *)self _migrateNodePropertiesWithError:&v20 context:contextCopy];
    v9 = v20;

    if (v12)
    {
      v19 = v9;
      v13 = [(PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues *)self _migrateEdgesToNativelyModeledObjectsWithError:&v19 context:contextCopy];
      v11 = v19;

      if (v13)
      {
        v14 = 1;
      }

      else
      {
        v14 = 3;
      }

      goto LABEL_9;
    }
  }

  v14 = 3;
LABEL_10:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v15 = v9;
  v16 = v15;
  if (v14 != 1 && error)
  {
    v17 = v15;
    *error = v16;
  }

  return v14;
}

- (BOOL)_migrateEdgesToNativelyModeledObjectsWithError:(id *)error context:(id)context
{
  v112 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v8 = contextCopy;
  if (error)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:941 description:{@"Invalid parameter not satisfying: %@", @"localError"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:942 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

LABEL_3:
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 1;
  v9 = PLMigrationGetLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    logger = [(PLModelMigrationActionCore *)self logger];
    v12 = logger == 0;

    if (v12)
    {
      v16 = PLMigrationGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "RelocateEdgesAndNormalizeNodeValues: migrating edges for modeled objects...", buf, 2u);
      }
    }

    else
    {
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v13 = PLMigrationGetLog();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      LOWORD(v78) = 0;
      LODWORD(v64) = 2;
      v14 = _os_log_send_and_compose_impl();

      v15 = [(PLModelMigrationActionCore *)self logger:&v78];
      [v15 logWithMessage:v14 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{946, 0}];

      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  v17 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(@"GraphLabel", v8, 0);
  [v17 willChangeValueForKey:@"code"];
  [v17 setPrimitiveValue:&unk_1F0FBB530 forKey:@"code"];
  [v17 didChangeValueForKey:@"code"];
  v69 = 0;
  v18 = [v8 save:&v69];
  v19 = v69;
  v20 = v19;
  if (v18)
  {

    *&v78 = 0;
    *(&v78 + 1) = &v78;
    v79 = 0x2020000000;
    v80 = 0;
    v21 = +[PLGraphEdge fetchRequest];
    v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil OR %K == nil", @"sourceNode", @"targetNode"];
    [v21 setPredicate:v22];

    v23 = [PLEnumerateAndSaveController alloc];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __117__PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues__migrateEdgesToNativelyModeledObjectsWithError_context___block_invoke;
    v67[3] = &unk_1E7575B30;
    v68 = v8;
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __117__PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues__migrateEdgesToNativelyModeledObjectsWithError_context___block_invoke_2;
    v66[3] = &unk_1E7568010;
    v66[4] = self;
    v66[5] = &v70;
    v66[6] = &v78;
    v66[7] = error;
    v26 = [(PLEnumerateAndSaveController *)v23 initWithName:v25 fetchRequest:v21 context:v68 options:4 generateContextBlock:v67 didFetchObjectIDsBlock:0 processResultsBlock:v66];

    [(PLEnumerateAndSaveController *)v26 setItemsPerBatch:4000];
    if ([(PLEnumerateAndSaveController *)v26 processObjectsWithError:error])
    {
      v27 = PLMigrationGetLog();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

      if (v28)
      {
        logger2 = [(PLModelMigrationActionCore *)self logger];
        v30 = logger2 == 0;

        if (v30)
        {
          v55 = PLMigrationGetLog();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = *(*(&v78 + 1) + 24);
            *buf = 134217984;
            *&buf[4] = v56;
            _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_DEFAULT, "RelocateEdgesAndNormalizeNodeValues: migrating edges, total items processed: %ld", buf, 0xCu);
          }
        }

        else
        {
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v31 = PLMigrationGetLog();
          os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
          v32 = *(*(&v78 + 1) + 24);
          v74 = 134217984;
          v75 = v32;
          LODWORD(v65) = 12;
          v33 = _os_log_send_and_compose_impl();

          v34 = [(PLModelMigrationActionCore *)self logger:&v74];
          [v34 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1069, 0}];

          if (v33 != buf)
          {
            free(v33);
          }
        }
      }
    }

    else
    {
      v42 = PLMigrationGetLog();
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);

      if (v43)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];
        v45 = logger3 == 0;

        if (v45)
        {
          v57 = PLMigrationGetLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v58 = objc_opt_class();
            v59 = NSStringFromClass(v58);
            v60 = *error;
            *buf = 138543618;
            *&buf[4] = v59;
            *&buf[12] = 2114;
            *&buf[14] = v60;
            _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v46 = PLMigrationGetLog();
          os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          v49 = *error;
          v74 = 138543618;
          v75 = v48;
          v76 = 2114;
          v77 = v49;
          LODWORD(v65) = 22;
          v50 = _os_log_send_and_compose_impl();

          v51 = [(PLModelMigrationActionCore *)self logger:&v74];
          [v51 logWithMessage:v50 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1071, 16}];

          if (v50 != buf)
          {
            free(v50);
          }
        }
      }

      *(v71 + 24) = 0;
    }

    v54 = *(v71 + 24);

    _Block_object_dispose(&v78, 8);
  }

  else
  {
    v35 = PLMigrationGetLog();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

    if (v36)
    {
      logger4 = [(PLModelMigrationActionCore *)self logger];
      v38 = logger4 == 0;

      if (v38)
      {
        v52 = PLMigrationGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v20;
          _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_ERROR, "Failed to insert actor label. Error: %@", buf, 0xCu);
        }
      }

      else
      {
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v39 = PLMigrationGetLog();
        os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
        LODWORD(v78) = 138412290;
        *(&v78 + 4) = v20;
        LODWORD(v64) = 12;
        v40 = _os_log_send_and_compose_impl();

        v41 = [(PLModelMigrationActionCore *)self logger:&v78];
        [v41 logWithMessage:v40 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{961, 16}];

        if (v40 != buf)
        {
          free(v40);
        }
      }
    }

    v53 = v20;
    *error = v20;

    v54 = 0;
  }

  _Block_object_dispose(&v70, 8);

  return v54 & 1;
}

- (BOOL)_migrateNodePropertiesWithError:(id *)error context:(id)context
{
  v95 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v8 = contextCopy;
  if (error)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:897 description:{@"Invalid parameter not satisfying: %@", @"localError"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:898 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

LABEL_3:
  pl_graphCache = [v8 pl_graphCache];
  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    logger = [(PLModelMigrationActionCore *)self logger];

    if (logger)
    {
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
      v67 = 0u;
      v68 = 0u;
      v66 = 0u;
      v65 = 0u;
      memset(buf, 0, sizeof(buf));
      v13 = PLMigrationGetLog();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      LOWORD(v60) = 0;
      LODWORD(v54) = 2;
      v14 = _os_log_send_and_compose_impl();

      v15 = [(PLModelMigrationActionCore *)self logger:&v60];
      [v15 logWithMessage:v14 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{902, 0}];

      if (v14 != buf)
      {
        free(v14);
      }
    }

    else
    {
      v16 = PLMigrationGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "RelocateEdgesAndNormalizeNodeValues: setting required node properties...", buf, 2u);
      }
    }
  }

  v17 = +[PLGraphNode fetchRequest];
  [v17 setFetchBatchSize:100];
  v59 = 0;
  v18 = [v8 executeFetchRequest:v17 error:&v59];
  v19 = v59;
  v20 = v19;
  if (v18)
  {
    selfCopy = self;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __102__PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues__migrateNodePropertiesWithError_context___block_invoke;
    v56[3] = &unk_1E7567FE8;
    v55 = pl_graphCache;
    v57 = pl_graphCache;
    v58 = v8;
    v22 = [v58 enumerateWithIncrementalSaveUsingObjects:v18 withBlock:v56];
    v23 = v22;
    v24 = v22 == 0;
    if (v22)
    {
      v25 = v22;
      *error = v23;
      v26 = PLMigrationGetLog();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

      if (v27)
      {
        logger2 = [(PLModelMigrationActionCore *)selfCopy logger];

        if (logger2)
        {
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
          v67 = 0u;
          v68 = 0u;
          v66 = 0u;
          v65 = 0u;
          memset(buf, 0, sizeof(buf));
          v29 = PLMigrationGetLog();
          v30 = selfCopy;
          os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v60 = 138543618;
          v61 = v32;
          v62 = 2114;
          v63 = v23;
          LODWORD(v54) = 22;
          v33 = _os_log_send_and_compose_impl();

          v34 = [(PLModelMigrationActionCore *)v30 logger:&v60];
          [v34 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{928, 16}];

          if (v33 != buf)
          {
            free(v33);
          }
        }

        else
        {
          v45 = PLMigrationGetLog();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = objc_opt_class();
            v47 = NSStringFromClass(v46);
            *buf = 138543618;
            *&buf[4] = v47;
            *&buf[12] = 2114;
            *&buf[14] = v23;
            _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
          }
        }
      }
    }

    pl_graphCache = v55;
  }

  else
  {
    v35 = v19;
    *error = v20;
    v36 = PLMigrationGetLog();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

    if (v37)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
      {
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
        v67 = 0u;
        v68 = 0u;
        v66 = 0u;
        v65 = 0u;
        memset(buf, 0, sizeof(buf));
        v39 = PLMigrationGetLog();
        os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v60 = 138543618;
        v61 = v41;
        v62 = 2114;
        v63 = v20;
        LODWORD(v54) = 22;
        selfCopy2 = self;
        v43 = _os_log_send_and_compose_impl();

        v44 = [(PLModelMigrationActionCore *)selfCopy2 logger:&v60];
        [v44 logWithMessage:v43 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{933, 16}];

        if (v43 != buf)
        {
          free(v43);
        }
      }

      else
      {
        v48 = PLMigrationGetLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          *buf = 138543618;
          *&buf[4] = v50;
          *&buf[12] = 2114;
          *&buf[14] = v20;
          _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "Failed to perform a fetch operation for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v24 = 0;
  }

  return v24;
}

- (BOOL)_migrateGraphEdgeValuesWithError:(id *)error context:(id)context
{
  v87 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v8 = contextCopy;
  if (error)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:855 description:{@"Invalid parameter not satisfying: %@", @"localError"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:856 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

LABEL_3:
  v9 = PLMigrationGetLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    logger = [(PLModelMigrationActionCore *)self logger];

    if (logger)
    {
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
      memset(buf, 0, sizeof(buf));
      v12 = PLMigrationGetLog();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      LOWORD(v52) = 0;
      LODWORD(v49) = 2;
      v13 = _os_log_send_and_compose_impl();

      v14 = [(PLModelMigrationActionCore *)self logger:&v52];
      [v14 logWithMessage:v13 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{859, 0}];

      if (v13 != buf)
      {
        free(v13);
      }
    }

    else
    {
      v15 = PLMigrationGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "RelocateEdgesAndNormalizeNodeValues: migrating GraphEdgeValues...", buf, 2u);
      }
    }
  }

  v16 = +[PLGraphEdgeValue fetchRequest];
  [v16 setFetchBatchSize:100];
  v51 = 0;
  v17 = [v8 executeFetchRequest:v16 error:&v51];
  v18 = v51;
  v19 = v18;
  if (v17)
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __103__PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues__migrateGraphEdgeValuesWithError_context___block_invoke;
    v50[3] = &unk_1E7567FC0;
    v50[4] = self;
    v20 = [v8 enumerateWithIncrementalSaveUsingObjects:v17 withBlock:v50];
    v21 = v20;
    LOBYTE(v22) = v20 == 0;
    if (v20)
    {
      v23 = v20;
      *error = v21;
      v24 = PLMigrationGetLog();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (v25)
      {
        logger2 = [(PLModelMigrationActionCore *)self logger];

        if (logger2)
        {
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
          memset(buf, 0, sizeof(buf));
          v27 = PLMigrationGetLog();
          os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          v52 = 138543618;
          v53 = v29;
          v54 = 2114;
          v55 = v21;
          LODWORD(v49) = 22;
          v30 = _os_log_send_and_compose_impl();

          v31 = [(PLModelMigrationActionCore *)self logger:&v52];
          [v31 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{884, 16}];

          if (v30 != buf)
          {
            free(v30);
          }
        }

        else
        {
          v40 = PLMigrationGetLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = objc_opt_class();
            v42 = NSStringFromClass(v41);
            *buf = 138543618;
            *&buf[4] = v42;
            *&buf[12] = 2114;
            *&buf[14] = v21;
            _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
          }
        }
      }
    }
  }

  else
  {
    v32 = v18;
    *error = v19;
    v33 = PLMigrationGetLog();
    v22 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
      {
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
        memset(buf, 0, sizeof(buf));
        v35 = PLMigrationGetLog();
        os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v52 = 138543618;
        v53 = v37;
        v54 = 2114;
        v55 = v19;
        LODWORD(v49) = 22;
        v38 = _os_log_send_and_compose_impl();

        v39 = [(PLModelMigrationActionCore *)self logger:&v52];
        [v39 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{889, 16}];

        if (v38 != buf)
        {
          free(v38);
        }
      }

      else
      {
        v43 = PLMigrationGetLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          *buf = 138543618;
          *&buf[4] = v45;
          *&buf[12] = 2114;
          *&buf[14] = v19;
          _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "Failed to perform a fetch operation for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      LOBYTE(v22) = 0;
    }
  }

  return v22;
}

- (BOOL)_migrateGraphNodeValuesWithError:(id *)error context:(id)context
{
  v87 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v8 = contextCopy;
  if (error)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:813 description:{@"Invalid parameter not satisfying: %@", @"localError"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:814 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

LABEL_3:
  v9 = PLMigrationGetLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    logger = [(PLModelMigrationActionCore *)self logger];

    if (logger)
    {
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
      memset(buf, 0, sizeof(buf));
      v12 = PLMigrationGetLog();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      LOWORD(v52) = 0;
      LODWORD(v49) = 2;
      v13 = _os_log_send_and_compose_impl();

      v14 = [(PLModelMigrationActionCore *)self logger:&v52];
      [v14 logWithMessage:v13 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{816, 0}];

      if (v13 != buf)
      {
        free(v13);
      }
    }

    else
    {
      v15 = PLMigrationGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "RelocateEdgesAndNormalizeNodeValues: migrating GraphNodeValues...", buf, 2u);
      }
    }
  }

  v16 = +[PLGraphNodeValue fetchRequest];
  [v16 setFetchBatchSize:100];
  v51 = 0;
  v17 = [v8 executeFetchRequest:v16 error:&v51];
  v18 = v51;
  v19 = v18;
  if (v17)
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __103__PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues__migrateGraphNodeValuesWithError_context___block_invoke;
    v50[3] = &unk_1E7567F98;
    v50[4] = self;
    v20 = [v8 enumerateWithIncrementalSaveUsingObjects:v17 withBlock:v50];
    v21 = v20;
    LOBYTE(v22) = v20 == 0;
    if (v20)
    {
      v23 = v20;
      *error = v21;
      v24 = PLMigrationGetLog();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (v25)
      {
        logger2 = [(PLModelMigrationActionCore *)self logger];

        if (logger2)
        {
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
          memset(buf, 0, sizeof(buf));
          v27 = PLMigrationGetLog();
          os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          v52 = 138543618;
          v53 = v29;
          v54 = 2112;
          v55 = v21;
          LODWORD(v49) = 22;
          v30 = _os_log_send_and_compose_impl();

          v31 = [(PLModelMigrationActionCore *)self logger:&v52];
          [v31 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{842, 16}];

          if (v30 != buf)
          {
            free(v30);
          }
        }

        else
        {
          v40 = PLMigrationGetLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = objc_opt_class();
            v42 = NSStringFromClass(v41);
            *buf = 138543618;
            *&buf[4] = v42;
            *&buf[12] = 2112;
            *&buf[14] = v21;
            _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
          }
        }
      }
    }
  }

  else
  {
    v32 = v18;
    *error = v19;
    v33 = PLMigrationGetLog();
    v22 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
      {
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
        memset(buf, 0, sizeof(buf));
        v35 = PLMigrationGetLog();
        os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v52 = 138543618;
        v53 = v37;
        v54 = 2112;
        v55 = v19;
        LODWORD(v49) = 22;
        v38 = _os_log_send_and_compose_impl();

        v39 = [(PLModelMigrationActionCore *)self logger:&v52];
        [v39 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{847, 16}];

        if (v38 != buf)
        {
          free(v38);
        }
      }

      else
      {
        v43 = PLMigrationGetLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          *buf = 138543618;
          *&buf[4] = v45;
          *&buf[12] = 2112;
          *&buf[14] = v19;
          _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "Failed to perform a fetch operation for %{public}@. Error: %@", buf, 0x16u);
        }
      }

      LOBYTE(v22) = 0;
    }
  }

  return v22;
}

- (void)setup
{
  nameCodesByStringName = self->_nameCodesByStringName;
  self->_nameCodesByStringName = &unk_1F0FC05F0;
}

+ (void)_encloseActor:(id)actor fromEdge:(id)edge isSource:(BOOL)source actorLabel:(id)label cache:(id)cache
{
  sourceCopy = source;
  actorCopy = actor;
  edgeCopy = edge;
  labelCopy = label;
  cacheCopy = cache;
  if (!labelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:774 description:{@"Invalid parameter not satisfying: %@", @"actorLabel"}];
  }

  v16 = actorCopy;
  if (edgeCopy)
  {
    if (cacheCopy)
    {
      goto LABEL_5;
    }

LABEL_23:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:776 description:{@"Invalid parameter not satisfying: %@", @"actorNodesByActingObjectID"}];

    v16 = actorCopy;
    if (!actorCopy)
    {
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:775 description:{@"Invalid parameter not satisfying: %@", @"edge"}];

  v16 = actorCopy;
  if (!cacheCopy)
  {
    goto LABEL_23;
  }

LABEL_5:
  if (!v16)
  {
    goto LABEL_19;
  }

LABEL_6:
  objectID = [v16 objectID];
  v18 = [cacheCopy objectForKeyedSubscript:objectID];

  if (!v18)
  {
    managedObjectContext = [actorCopy managedObjectContext];
    v18 = [PLGraphNode insertGraphNodeInContext:managedObjectContext withPrimaryLabel:labelCopy];

    entity = [actorCopy entity];
    name = [entity name];
    v22 = +[PLManagedAsset entityName];
    v23 = [name isEqualToString:v22];

    if (v23)
    {
      v24 = @"actingAsset";
    }

    else
    {
      entity2 = [actorCopy entity];
      name2 = [entity2 name];
      v27 = +[PLMoment entityName];
      v28 = [name2 isEqualToString:v27];

      if (v28)
      {
        v24 = @"actingMoment";
      }

      else
      {
        entity3 = [actorCopy entity];
        name3 = [entity3 name];
        v31 = +[PLPerson entityName];
        v32 = [name3 isEqualToString:v31];

        if (v32)
        {
          v24 = @"actingPerson";
        }

        else
        {
          v24 = 0;
        }
      }
    }

    [v18 pl_setValue:actorCopy forKey:v24 valueDidChangeHandler:0];
    objectID2 = [actorCopy objectID];
    [cacheCopy setObject:v18 forKeyedSubscript:objectID2];
  }

  if (sourceCopy)
  {
    [edgeCopy setSourceNode:v18];
  }

  else
  {
    [edgeCopy setTargetNode:v18];
  }

LABEL_19:
}

@end