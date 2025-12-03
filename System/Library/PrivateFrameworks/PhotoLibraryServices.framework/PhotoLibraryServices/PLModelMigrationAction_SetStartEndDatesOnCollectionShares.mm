@interface PLModelMigrationAction_SetStartEndDatesOnCollectionShares
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_SetStartEndDatesOnCollectionShares

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v92 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 1;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLCollectionShare entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__16168;
  v51 = __Block_byref_object_dispose__16169;
  v52 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__16168;
  v45[4] = __Block_byref_object_dispose__16169;
  v46 = 0;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [PLEnumerateAndSaveController alloc];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __105__PLModelMigrationAction_SetStartEndDatesOnCollectionShares_performActionWithManagedObjectContext_error___block_invoke;
  v43[3] = &unk_1E7575B30;
  v13 = contextCopy;
  v44 = v13;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __105__PLModelMigrationAction_SetStartEndDatesOnCollectionShares_performActionWithManagedObjectContext_error___block_invoke_2;
  v42[3] = &unk_1E7572E50;
  v42[4] = self;
  v42[5] = v45;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __105__PLModelMigrationAction_SetStartEndDatesOnCollectionShares_performActionWithManagedObjectContext_error___block_invoke_3;
  v41[3] = &unk_1E7568088;
  v41[4] = self;
  v41[5] = &v47;
  v41[6] = &v53;
  v41[7] = v45;
  v14 = [(PLEnumerateAndSaveController *)v12 initWithName:v11 fetchRequest:v9 context:v13 options:4 generateContextBlock:v43 didFetchObjectIDsBlock:v42 processResultBlock:v41];
  v15 = (v48 + 5);
  obj = v48[5];
  v16 = [(PLEnumerateAndSaveController *)v14 processObjectsWithError:&obj];
  objc_storeStrong(v15, obj);
  if (v16)
  {
    v17 = PLMigrationGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (!v18)
    {
      goto LABEL_17;
    }

    logger = [(PLModelMigrationActionCore *)self logger];
    v20 = logger == 0;

    if (!v20)
    {
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
      memset(buf, 0, sizeof(buf));
      v21 = PLMigrationGetLog();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      v57 = 134217984;
      v58 = 0;
      LODWORD(v39) = 12;
      v22 = _os_log_send_and_compose_impl();

      v23 = [(PLModelMigrationActionCore *)self logger:&v57];
      [v23 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1228, 0}];

      if (v22 != buf)
      {
        v24 = v22;
LABEL_10:
        free(v24);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    v33 = PLMigrationGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = 0;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Fixed start/end dates on %tu CollectionShare", buf, 0xCu);
    }

LABEL_16:

    goto LABEL_17;
  }

  v54[3] = 3;
  v25 = PLMigrationGetLog();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

  if (!v26)
  {
    goto LABEL_17;
  }

  logger2 = [(PLModelMigrationActionCore *)self logger];
  v28 = logger2 == 0;

  if (v28)
  {
    v33 = PLMigrationGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = v48[5];
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v34;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
    }

    goto LABEL_16;
  }

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
  memset(buf, 0, sizeof(buf));
  v29 = PLMigrationGetLog();
  os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
  v30 = v48[5];
  v57 = 138543618;
  v58 = v11;
  v59 = 2112;
  v60 = v30;
  LODWORD(v39) = 22;
  v31 = _os_log_send_and_compose_impl();

  v32 = [(PLModelMigrationActionCore *)self logger:&v57];
  [v32 logWithMessage:v31 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1226, 16}];

  if (v31 != buf)
  {
    v24 = v31;
    goto LABEL_10;
  }

LABEL_17:
  v35 = v54[3];
  v36 = v48[5];
  if (v35 != 1 && error)
  {
    v36 = v36;
    *error = v36;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v37 = v54[3];

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  return v37;
}

@end