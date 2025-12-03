@interface PLModelMigrationAction_DeleteFullSizeRenderVideosForLegacyAdjustedSlomos
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_DeleteFullSizeRenderVideosForLegacyAdjustedSlomos

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v86[4] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLInternalResource entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  0xFFFFFFFFLL = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"localAvailability", 0xFFFFFFFFLL];
  v86[0] = 0xFFFFFFFFLL;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"localAvailabilityTarget", 0];
  v86[1] = v12;
  0x20000 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"recipeID", 0x20000];
  v86[2] = 0x20000;
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == %d", @"cloudLocalState", 0];
  v86[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:4];
  v16 = [v10 andPredicateWithSubpredicates:v15];
  [v9 setPredicate:v16];

  [v9 setFetchBatchSize:100];
  v51 = 0;
  v17 = [contextCopy executeFetchRequest:v9 error:&v51];
  v18 = v51;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  if (v17)
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __120__PLModelMigrationAction_DeleteFullSizeRenderVideosForLegacyAdjustedSlomos_performActionWithManagedObjectContext_error___block_invoke;
    v44[3] = &unk_1E7569708;
    v45 = contextCopy;
    v46 = &v47;
    v19 = [v45 enumerateWithIncrementalSaveUsingObjects:v17 withBlock:v44];
    v20 = PLMigrationGetLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v23 = logger == 0;

      if (v23)
      {
        v35 = PLMigrationGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = v48[3];
          *buf = 134217984;
          *&buf[4] = v36;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Deleted %lu full size render video resources attached to legacy slomo assets", buf, 0xCu);
        }
      }

      else
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
        *buf = 0u;
        v55 = 0u;
        v24 = PLMigrationGetLog();
        os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        v25 = v48[3];
        v52 = 134217984;
        v53 = v25;
        LODWORD(v43) = 12;
        v26 = _os_log_send_and_compose_impl();

        v27 = [(PLModelMigrationActionCore *)self logger:&v52];
        [v27 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1747, 0}];

        if (v26 != buf)
        {
          free(v26);
        }
      }
    }
  }

  else
  {
    v28 = PLMigrationGetLog();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

    if (v29)
    {
      logger2 = [(PLModelMigrationActionCore *)self logger];
      v31 = logger2 == 0;

      if (v31)
      {
        v42 = PLMigrationGetLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v18;
          _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "Fetch request for non-local full size render video resources failed, error: %@", buf, 0xCu);
        }
      }

      else
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
        *buf = 0u;
        v55 = 0u;
        v32 = PLMigrationGetLog();
        os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
        v52 = 138412290;
        v53 = v18;
        LODWORD(v43) = 12;
        v33 = _os_log_send_and_compose_impl();

        v34 = [(PLModelMigrationActionCore *)self logger:&v52];
        [v34 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1749, 16}];

        if (v33 != buf)
        {
          free(v33);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v37 = v18;
  v38 = v37;
  if (v17)
  {
    v39 = 1;
  }

  else
  {
    if (error)
    {
      v40 = v37;
      *error = v38;
    }

    v39 = 3;
  }

  _Block_object_dispose(&v47, 8);
  return v39;
}

@end