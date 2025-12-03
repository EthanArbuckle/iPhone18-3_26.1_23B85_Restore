@interface PLModelMigrationAction_ResetGraphPersons
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetGraphPersons

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v82 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLPerson entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  [v9 setFetchBatchSize:100];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"verifiedType", 2];
  [v9 setPredicate:v10];

  v47 = 0;
  v11 = [contextCopy executeFetchRequest:v9 error:&v47];
  v12 = v47;
  if (v11)
  {
    v13 = [v11 count];
    v14 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:v13 pendingParentUnitCount:0];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __88__PLModelMigrationAction_ResetGraphPersons_performActionWithManagedObjectContext_error___block_invoke;
    v45[3] = &unk_1E756DC58;
    v45[4] = self;
    v15 = v14;
    v46 = v15;
    v16 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v11 withBlock:v45];

    v17 = PLMigrationGetLog();
    v18 = v17;
    if (v16)
    {
      v19 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

      if (v19)
      {
        logger = [(PLModelMigrationActionCore *)self logger];

        if (logger)
        {
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
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          *buf = 0u;
          v51 = 0u;
          v21 = PLMigrationGetLog();
          os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
          v48 = 138412290;
          v49 = v16;
          LODWORD(v43) = 12;
          v22 = _os_log_send_and_compose_impl();

          v23 = [(PLModelMigrationActionCore *)self logger:&v48];
          [v23 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{853, 16}];

          if (v22 != buf)
          {
            free(v22);
          }
        }

        else
        {
          v36 = PLMigrationGetLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v16;
            _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Failed to reset graph-verified persons with error: %@", buf, 0xCu);
          }
        }
      }

      v35 = 3;
    }

    else
    {
      errorCopy = error;
      v30 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

      if (v30)
      {
        logger2 = [(PLModelMigrationActionCore *)self logger];

        if (!logger2)
        {
          v42 = PLMigrationGetLog();
          error = errorCopy;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v13;
            _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEFAULT, "Deleted %lu graph-verified persons", buf, 0xCu);
          }

          v35 = 1;
          goto LABEL_20;
        }

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
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        *buf = 0u;
        v51 = 0u;
        v32 = PLMigrationGetLog();
        os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        v48 = 134217984;
        v49 = v13;
        LODWORD(v43) = 12;
        v33 = _os_log_send_and_compose_impl();

        v34 = [(PLModelMigrationActionCore *)self logger:&v48];
        [v34 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{856, 0}];

        if (v33 != buf)
        {
          free(v33);
        }
      }

      v35 = 1;
      error = errorCopy;
    }

LABEL_20:

    goto LABEL_25;
  }

  v24 = PLMigrationGetLog();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

  if (v25)
  {
    logger3 = [(PLModelMigrationActionCore *)self logger];

    if (logger3)
    {
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
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      *buf = 0u;
      v51 = 0u;
      v27 = PLMigrationGetLog();
      os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      v48 = 138412290;
      v49 = v12;
      LODWORD(v43) = 12;
      v28 = _os_log_send_and_compose_impl();

      v29 = [(PLModelMigrationActionCore *)self logger:&v48];
      [v29 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{859, 16}];

      if (v28 != buf)
      {
        free(v28);
      }
    }

    else
    {
      v37 = PLMigrationGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Failed to fetch graph-verified persons with error: %@", buf, 0xCu);
      }
    }
  }

  v35 = 3;
  v16 = v12;
LABEL_25:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v38 = v16;
  v39 = v38;
  if (v35 != 1 && error)
  {
    v40 = v38;
    *error = v39;
  }

  return v35;
}

@end