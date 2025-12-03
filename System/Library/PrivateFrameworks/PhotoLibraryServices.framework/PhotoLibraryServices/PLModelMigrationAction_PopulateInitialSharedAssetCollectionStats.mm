@interface PLModelMigrationAction_PopulateInitialSharedAssetCollectionStats
- (int64_t)_recalculateSharedAssetContainerValuesForEntityNamed:(id)named propertiesToFetch:(id)fetch inContext:(id)context error:(id *)error;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_PopulateInitialSharedAssetCollectionStats

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v87[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:3 pendingParentUnitCount:0];
  v7 = objc_autoreleasePoolPush();
  v8 = +[PLMoment entityName];
  v87[0] = @"sharingComposition";
  v87[1] = @"cachedCount";
  v87[2] = @"cachedCountShared";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:3];
  v50 = 0;
  v10 = [(PLModelMigrationAction_PopulateInitialSharedAssetCollectionStats *)self _recalculateSharedAssetContainerValuesForEntityNamed:v8 propertiesToFetch:v9 inContext:contextCopy error:&v50];
  v11 = v50;

  objc_autoreleasePoolPop(v7);
  [v6 setCompletedUnitCount:{objc_msgSend(v6, "completedUnitCount") + 1}];
  if (!v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = +[PLPhotosHighlight entityName];
    v86[0] = @"sharingComposition";
    v86[1] = @"assetsCount";
    v86[2] = @"assetsCountShared";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:3];
    v49 = 0;
    v10 = [(PLModelMigrationAction_PopulateInitialSharedAssetCollectionStats *)self _recalculateSharedAssetContainerValuesForEntityNamed:v13 propertiesToFetch:v14 inContext:contextCopy error:&v49];
    v11 = v49;

    objc_autoreleasePoolPop(v12);
  }

  [v6 setCompletedUnitCount:{objc_msgSend(v6, "completedUnitCount") + 1}];
  if (!v11)
  {
    v15 = objc_autoreleasePoolPush();
    v48 = 0;
    v16 = [PLBackgroundJobSharedAssetContainerUpdateWorker performWorkOnAllItemsInContext:contextCopy withError:&v48];
    v17 = v48;
    if (v16)
    {
      if ([contextCopy hasChanges])
      {
        v47 = v17;
        v18 = [contextCopy save:&v47];
        v11 = v47;

        if ((v18 & 1) == 0)
        {
          v19 = PLMigrationGetLog();
          v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

          if (v20)
          {
            logger = [(PLModelMigrationActionCore *)self logger];

            if (logger)
            {
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
              memset(buf, 0, sizeof(buf));
              v22 = PLMigrationGetLog();
              os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
              v23 = objc_opt_class();
              v24 = NSStringFromClass(v23);
              v51 = 138543618;
              v52 = v24;
              v53 = 2112;
              v54 = v11;
              LODWORD(v45) = 22;
              v25 = _os_log_send_and_compose_impl();

              v26 = [(PLModelMigrationActionCore *)self logger:&v51];
              [v26 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{227, 16}];

              if (v25 != buf)
              {
                free(v25);
              }
            }

            else
            {
              v42 = PLMigrationGetLog();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                v43 = objc_opt_class();
                v44 = NSStringFromClass(v43);
                *buf = 138543618;
                *&buf[4] = v44;
                *&buf[12] = 2112;
                *&buf[14] = v11;
                _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save shared asset container updates with error: %@", buf, 0x16u);
              }
            }
          }

          v10 = 3;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v27 = PLMigrationGetLog();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

      if (v28)
      {
        logger2 = [(PLModelMigrationActionCore *)self logger];

        if (logger2)
        {
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
          memset(buf, 0, sizeof(buf));
          v30 = PLMigrationGetLog();
          os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v51 = 138543618;
          v52 = v32;
          v53 = 2112;
          v54 = v17;
          LODWORD(v45) = 22;
          v33 = _os_log_send_and_compose_impl();

          v34 = [(PLModelMigrationActionCore *)self logger:&v51];
          [v34 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{232, 16}];

          if (v33 != buf)
          {
            free(v33);
          }
        }

        else
        {
          v35 = PLMigrationGetLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            *buf = 138543618;
            *&buf[4] = v37;
            *&buf[12] = 2112;
            *&buf[14] = v17;
            _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save shared asset container updates with error: %@", buf, 0x16u);
          }
        }
      }

      v10 = 3;
    }

    v11 = v17;
LABEL_20:
    objc_autoreleasePoolPop(v15);
  }

  [v6 setCompletedUnitCount:{objc_msgSend(v6, "completedUnitCount") + 1}];
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v38 = v11;
  v39 = v38;
  if (v10 != 1 && error)
  {
    v40 = v38;
    *error = v39;
  }

  return v10;
}

- (int64_t)_recalculateSharedAssetContainerValuesForEntityNamed:(id)named propertiesToFetch:(id)fetch inContext:(id)context error:(id *)error
{
  v121 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  fetchCopy = fetch;
  contextCopy = context;
  if (error)
  {
    if (namedCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_16000.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"error"}];

    if (namedCopy)
    {
LABEL_3:
      if (fetchCopy)
      {
        goto LABEL_4;
      }

LABEL_50:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_16000.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"propertiesToFetch"}];

      if (contextCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_51;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_16000.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"entityName"}];

  if (!fetchCopy)
  {
    goto LABEL_50;
  }

LABEL_4:
  if (contextCopy)
  {
    goto LABEL_5;
  }

LABEL_51:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_16000.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_5:
  v14 = PLMigrationGetLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    logger = [(PLModelMigrationActionCore *)self logger];

    if (logger)
    {
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v17 = PLMigrationGetLog();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v82 = 138543618;
      v83 = v19;
      v84 = 2114;
      v85 = namedCopy;
      LODWORD(v80) = 22;
      v20 = _os_log_send_and_compose_impl();

      v21 = [(PLModelMigrationActionCore *)self logger:&v82];
      [v21 logWithMessage:v20 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{144, 0}];

      if (v20 != buf)
      {
        free(v20);
      }
    }

    else
    {
      v22 = PLMigrationGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138543618;
        *&buf[4] = v24;
        *&buf[12] = 2114;
        *&buf[14] = namedCopy;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Zeroing out cached counts for entity: %{public}@...", buf, 0x16u);
      }
    }
  }

  v25 = +[PLPhotosHighlight entityName];
  v88[0] = @"photoAssetsSuggestedByPhotosCount";
  v88[1] = @"videoAssetsSuggestedByPhotosCount";
  v89[0] = &unk_1F0FBC028;
  v89[1] = &unk_1F0FBC028;
  v88[2] = @"assetsCount";
  v88[3] = @"assetsCountShared";
  v89[2] = &unk_1F0FBC028;
  v89[3] = &unk_1F0FBC028;
  v88[4] = @"summaryCount";
  v88[5] = @"summaryCountShared";
  v89[4] = &unk_1F0FBC028;
  v89[5] = &unk_1F0FBC028;
  v88[6] = @"extendedCount";
  v88[7] = @"extendedCountShared";
  v89[6] = &unk_1F0FBC028;
  v89[7] = &unk_1F0FBC028;
  v88[8] = @"dayGroupAssetsCount";
  v88[9] = @"dayGroupAssetsCountShared";
  v89[8] = &unk_1F0FBC028;
  v89[9] = &unk_1F0FBC028;
  v88[10] = @"dayGroupSummaryAssetsCount";
  v88[11] = @"dayGroupSummaryAssetsCountShared";
  v89[10] = &unk_1F0FBC028;
  v89[11] = &unk_1F0FBC028;
  v88[12] = @"dayGroupExtendedAssetsCount";
  v88[13] = @"dayGroupExtendedAssetsCountShared";
  v89[12] = &unk_1F0FBC028;
  v89[13] = &unk_1F0FBC028;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:14];
  v81 = 0;
  v27 = [PLModelMigrator executeBatchUpdateWithEntityName:v25 predicate:0 propertiesToUpdate:v26 managedObjectContext:contextCopy error:&v81];
  v28 = v81;

  if (v27)
  {

    v29 = PLMigrationGetLog();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

    if (v30)
    {
      logger2 = [(PLModelMigrationActionCore *)self logger];

      if (logger2)
      {
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v32 = PLMigrationGetLog();
        os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v82 = 138543618;
        v83 = v34;
        v84 = 2114;
        v85 = namedCopy;
        LODWORD(v80) = 22;
        v35 = _os_log_send_and_compose_impl();

        v36 = [(PLModelMigrationActionCore *)self logger:&v82];
        [v36 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{173, 0}];

        if (v35 != buf)
        {
          free(v35);
        }
      }

      else
      {
        v45 = PLMigrationGetLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          *buf = 138543618;
          *&buf[4] = v47;
          *&buf[12] = 2114;
          *&buf[14] = namedCopy;
          _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@: Recalculating shared asset container values for entity: %{public}@...", buf, 0x16u);
        }
      }
    }

    v28 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:namedCopy];
    [v28 setFetchBatchSize:100];
    [v28 setPropertiesToFetch:fetchCopy];
    v48 = [contextCopy executeFetchRequest:v28 error:error];
    if (v48)
    {
      v49 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v48 withBlock:&__block_literal_global_23927];
      *error = v49;
      if (!v49)
      {
        v65 = 1;
LABEL_46:

        goto LABEL_47;
      }

      v50 = PLMigrationGetLog();
      v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);

      if (!v51)
      {
        goto LABEL_45;
      }

      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (!logger3)
      {
        v69 = PLMigrationGetLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v70 = objc_opt_class();
          v71 = NSStringFromClass(v70);
          v72 = *error;
          *buf = 138543874;
          *&buf[4] = v71;
          *&buf[12] = 2114;
          *&buf[14] = namedCopy;
          *&buf[22] = 2112;
          *&buf[24] = v72;
          _os_log_impl(&dword_19BF1F000, v69, OS_LOG_TYPE_ERROR, "%{public}@: Failed to enumerate and save shared container updates for entity: %{public}@ with error: %@", buf, 0x20u);
        }

        goto LABEL_45;
      }

      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v53 = PLMigrationGetLog();
      os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      v56 = *error;
      v82 = 138543874;
      v83 = v55;
      v84 = 2114;
      v85 = namedCopy;
      v86 = 2112;
      v87 = v56;
      LODWORD(v80) = 32;
      v57 = _os_log_send_and_compose_impl();

      v58 = [(PLModelMigrationActionCore *)self logger:&v82];
      [v58 logWithMessage:v57 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{186, 16}];

      if (v57 == buf)
      {
LABEL_45:
        v65 = 3;
        goto LABEL_46;
      }
    }

    else
    {
      v59 = PLMigrationGetLog();
      v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);

      if (!v60)
      {
        goto LABEL_45;
      }

      logger4 = [(PLModelMigrationActionCore *)self logger];

      if (!logger4)
      {
        v73 = PLMigrationGetLog();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          v74 = *error;
          *buf = 138412290;
          *&buf[4] = v74;
          _os_log_impl(&dword_19BF1F000, v73, OS_LOG_TYPE_DEFAULT, "Failed to execute fetch request with Error: %@", buf, 0xCu);
        }

        goto LABEL_45;
      }

      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v62 = PLMigrationGetLog();
      os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
      v63 = *error;
      v82 = 138412290;
      v83 = v63;
      LODWORD(v80) = 12;
      v57 = _os_log_send_and_compose_impl();

      v64 = [(PLModelMigrationActionCore *)self logger:&v82];
      [v64 logWithMessage:v57 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{190, 0}];

      if (v57 == buf)
      {
        goto LABEL_45;
      }
    }

    free(v57);
    goto LABEL_45;
  }

  v37 = PLMigrationGetLog();
  v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);

  if (v38)
  {
    logger5 = [(PLModelMigrationActionCore *)self logger];

    if (logger5)
    {
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v40 = PLMigrationGetLog();
      os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v82 = 138543618;
      v83 = v42;
      v84 = 2114;
      v85 = v28;
      LODWORD(v80) = 22;
      v43 = _os_log_send_and_compose_impl();

      v44 = [(PLModelMigrationActionCore *)self logger:&v82];
      [v44 logWithMessage:v43 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{167, 16}];

      if (v43 != buf)
      {
        free(v43);
      }
    }

    else
    {
      v66 = PLMigrationGetLog();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v67 = objc_opt_class();
        v68 = NSStringFromClass(v67);
        *buf = 138543618;
        *&buf[4] = v68;
        *&buf[12] = 2114;
        *&buf[14] = v28;
        _os_log_impl(&dword_19BF1F000, v66, OS_LOG_TYPE_ERROR, "Failed to execute batch update request for %{public}@. Error: %{public}@", buf, 0x16u);
      }
    }
  }

  v65 = 3;
LABEL_47:

  return v65;
}

@end