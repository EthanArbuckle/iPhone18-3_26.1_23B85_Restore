@interface PLModelMigrationAction_updateACVideos
- (id)buildFetchRequest;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_updateACVideos

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v106 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 1;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__1060;
  v65 = __Block_byref_object_dispose__1061;
  v66 = 0;
  buildFetchRequest = [(PLModelMigrationAction_updateACVideos *)self buildFetchRequest];
  v8 = (v62 + 5);
  obj = v62[5];
  v9 = [contextCopy executeFetchRequest:buildFetchRequest error:&obj];
  objc_storeStrong(v8, obj);
  if (v9)
  {
    v10 = -[PLModelMigrationActionBackground cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v9 count], 0);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __85__PLModelMigrationAction_updateACVideos_performActionWithManagedObjectContext_error___block_invoke;
    v56[3] = &unk_1E756DBE0;
    v58 = &v67;
    v56[4] = self;
    v59 = &v61;
    v11 = v10;
    v57 = v11;
    v12 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v9 withBlock:v56];
    if (v12 && (v13 = (v62 + 5), !v62[5]))
    {
      v68[3] = 3;
      objc_storeStrong(v13, v12);
      v32 = PLMigrationGetLog();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

      if (v33)
      {
        logger = [(PLModelMigrationActionBackground *)self logger];
        v35 = logger == 0;

        if (!v35)
        {
          errorCopy = error;
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
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          memset(buf, 0, sizeof(buf));
          v36 = PLMigrationGetLog();
          os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          v39 = v62[5];
          v71 = 138543618;
          v72 = v38;
          v73 = 2112;
          v74 = v39;
          LODWORD(v54) = 22;
          v20 = _os_log_send_and_compose_impl();

          error = errorCopy;
          v40 = [(PLModelMigrationActionBackground *)self logger:&v71];
          [v40 logWithMessage:v20 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{443, 16}];

LABEL_14:
          if (v20 != buf)
          {
            free(v20);
          }

          goto LABEL_25;
        }

        v41 = PLMigrationGetLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          v49 = v62[5];
          *buf = 138543618;
          *&buf[4] = v48;
          *&buf[12] = 2112;
          *&buf[14] = v49;
          _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_ERROR, "Asset could not be saved for %{public}@. Error: %@", buf, 0x16u);
        }

        goto LABEL_24;
      }
    }

    else
    {
      v14 = PLMigrationGetLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

      if (v15)
      {
        logger2 = [(PLModelMigrationActionBackground *)self logger];
        v17 = logger2 == 0;

        if (!v17)
        {
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
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          memset(buf, 0, sizeof(buf));
          v18 = PLMigrationGetLog();
          os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
          completedUnitCount = [v11 completedUnitCount];
          v71 = 134217984;
          v72 = completedUnitCount;
          LODWORD(v54) = 12;
          v20 = _os_log_send_and_compose_impl();

          v21 = [(PLModelMigrationActionBackground *)self logger:&v71];
          [v21 logWithMessage:v20 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{445, 1}];

          goto LABEL_14;
        }

        v41 = PLMigrationGetLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          completedUnitCount2 = [v11 completedUnitCount];
          *buf = 134217984;
          *&buf[4] = completedUnitCount2;
          _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_INFO, "Completed update on %lu assets", buf, 0xCu);
        }

LABEL_24:
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  v68[3] = 3;
  v22 = PLMigrationGetLog();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

  if (v23)
  {
    logger3 = [(PLModelMigrationActionBackground *)self logger];
    v25 = logger3 == 0;

    if (v25)
    {
      v43 = PLMigrationGetLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        v46 = v62[5];
        *buf = 138543618;
        *&buf[4] = v45;
        *&buf[12] = 2112;
        *&buf[14] = v46;
        _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %@", buf, 0x16u);
      }
    }

    else
    {
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
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      memset(buf, 0, sizeof(buf));
      v26 = PLMigrationGetLog();
      os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = v62[5];
      v71 = 138543618;
      v72 = v28;
      v73 = 2112;
      v74 = v29;
      LODWORD(v54) = 22;
      v30 = _os_log_send_and_compose_impl();

      v31 = [(PLModelMigrationActionBackground *)self logger:&v71];
      [v31 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{449, 16}];

      if (v30 != buf)
      {
        free(v30);
      }
    }
  }

LABEL_26:
  if (v68[3] == 1)
  {
    [(PLModelMigrationActionBackground *)self setResumeMarkerValue:0];
  }

  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v50 = v68[3];
  v51 = v62[5];
  if (v50 != 1 && error)
  {
    v51 = v51;
    *error = v51;
  }

  v52 = v68[3];
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(&v67, 8);
  return v52;
}

- (id)buildFetchRequest
{
  v23[3] = *MEMORY[0x1E69E9840];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setYear:2022];
  [v4 setMonth:8];
  [v4 setDay:1];
  v20 = currentCalendar;
  v5 = [currentCalendar dateFromComponents:v4];
  resumeMarker = [(PLModelMigrationActionBackground *)self resumeMarker];
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kind", 1];
  v23[0] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kindSubtype", 0];
  v23[1] = v12;
  if (resumeMarker)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"addedDate", resumeMarker];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"addedDate", v5];
  }
  v13 = ;
  v23[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v15 = [v10 andPredicateWithSubpredicates:v14];
  [v9 setPredicate:v15];

  v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
  v22 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  [v9 setSortDescriptors:v17];

  [v9 setFetchBatchSize:100];
  v21[0] = @"master.mediaMetadata";
  v21[1] = @"modernResources";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v9 setRelationshipKeyPathsForPrefetching:v18];

  return v9;
}

@end