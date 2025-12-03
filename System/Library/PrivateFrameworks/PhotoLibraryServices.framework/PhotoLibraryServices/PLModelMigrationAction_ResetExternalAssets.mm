@interface PLModelMigrationAction_ResetExternalAssets
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetExternalAssets

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v99 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = objc_autoreleasePoolPush();
  predicateForFetchingAssetsToReset = [objc_opt_class() predicateForFetchingAssetsToReset];
  v8 = +[PLManagedAsset fetchRequest];
  [v8 setPredicate:predicateForFetchingAssetsToReset];
  v9 = 1;
  [v8 setResultType:1];
  v61 = 0;
  v10 = [contextCopy executeFetchRequest:v8 error:&v61];
  v11 = v61;
  if (!v10)
  {
    v12 = PLMigrationGetLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
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
        v15 = PLMigrationGetLog();
        os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        v62 = 138543362;
        v63 = v11;
        LODWORD(v56) = 12;
        v16 = _os_log_send_and_compose_impl();

        v17 = [(PLModelMigrationActionCore *)self logger:&v62];
        [v17 logWithMessage:v16 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{265, 16}];

        if (v16 != buf)
        {
          free(v16);
        }
      }

      else
      {
        v18 = PLMigrationGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v11;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "[ResetExternalAssets] Failed to fetch external assets. Error: %{public}@", buf, 0xCu);
        }
      }
    }

    v9 = 3;
  }

  objc_autoreleasePoolPop(v6);
  if (![v10 count])
  {
    v32 = PLMigrationGetLog();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

    if (v33)
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
        v35 = PLMigrationGetLog();
        os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        LOWORD(v62) = 0;
        LODWORD(v56) = 2;
        v36 = _os_log_send_and_compose_impl();

        v37 = [(PLModelMigrationActionCore *)self logger:&v62];
        [v37 logWithMessage:v36 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{270, 0}];

        if (v36 != buf)
        {
          free(v36);
        }
      }

      else
      {
        v44 = PLMigrationGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_DEFAULT, "[ResetExternalAssets] No external assets available.", buf, 2u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v23 = v11;
    errorCopy2 = error;
    if (v10)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  context = objc_autoreleasePoolPush();
  v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"asset", v10];
  v66[0] = @"syndicationProcessingValue";
  v66[1] = @"syndicationProcessingVersion";
  v67[0] = &unk_1F0FBCE38;
  v67[1] = &unk_1F0FBCE50;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:2];
  v21 = +[PLMediaAnalysisAssetAttributes entityName];
  v60 = v11;
  v22 = [PLModelMigrator executeBatchUpdateWithEntityName:v21 predicate:v19 propertiesToUpdate:v20 managedObjectContext:contextCopy error:&v60];
  v23 = v60;

  v24 = PLMigrationGetLog();
  v25 = v24;
  if (v22)
  {
    v26 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v26)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
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
        v28 = PLMigrationGetLog();
        os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        v29 = [v10 count];
        v62 = 134217984;
        v63 = v29;
        LODWORD(v57) = 12;
        v30 = _os_log_send_and_compose_impl();

        v31 = [(PLModelMigrationActionCore *)self logger:&v62];
        [v31 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{287, 0}];

        if (v30 != buf)
        {
          free(v30);
        }
      }

      else
      {
        v46 = PLMigrationGetLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [v10 count];
          *buf = 134217984;
          *&buf[4] = v47;
          _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEFAULT, "[ResetExternalAssets] Successfully reset external assets processing value and version on %tu assets", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v38 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

    if (v38)
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
        v40 = PLMigrationGetLog();
        os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
        v41 = [v10 count];
        v62 = 134218242;
        v63 = v41;
        v64 = 2114;
        v65 = v23;
        LODWORD(v57) = 22;
        v42 = _os_log_send_and_compose_impl();

        v43 = [(PLModelMigrationActionCore *)self logger:&v62];
        [v43 logWithMessage:v42 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{290, 16}];

        if (v42 != buf)
        {
          free(v42);
        }
      }

      else
      {
        v48 = PLMigrationGetLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = [v10 count];
          *buf = 134218242;
          *&buf[4] = v49;
          *&buf[12] = 2114;
          *&buf[14] = v23;
          _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "[ResetExternalAssets] Failed to reset external assets processing value and version on %tu assets. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v9 = 3;
  }

  objc_autoreleasePoolPop(context);
  if (v9 != 3)
  {
    v51 = objc_autoreleasePoolPush();
    pathManager = [(PLModelMigrationActionCore *)self pathManager];
    v53 = [PLModelMigrator rebuildMomentsInContext:contextCopy pathManager:pathManager deleteExistingMoments:0 targetedAssetOIDs:v10];

    if (v53)
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }

    objc_autoreleasePoolPop(v51);
    [(PLModelMigrationActionCore *)self finalizeProgress];
    v23 = v23;
    errorCopy2 = error;
    if (v53)
    {
LABEL_46:

      goto LABEL_47;
    }

LABEL_44:
    if (errorCopy2)
    {
      v54 = v23;
      *errorCopy2 = v23;
    }

    goto LABEL_46;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    v50 = v23;
    *error = v23;
  }

  v9 = 3;
LABEL_47:

  return v9;
}

@end