@interface PLModelMigrationAction_UpdateTripHighlightDateTitles
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_UpdateTripHighlightDateTitles

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v98[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLPhotosHighlight entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = +[PLPhotosHighlight predicateForAllTripHighlights];
  [v8 setPredicate:v9];

  v98[0] = @"dayGroupAssets";
  v98[1] = @"dayGroupExtendedAssets";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
  [v8 setRelationshipKeyPathsForPrefetching:v10];

  v11 = objc_alloc_init(PLDateRangeTitleGenerator);
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__43771;
  v61 = __Block_byref_object_dispose__43772;
  v62 = 0;
  v12 = [PLEnumerateAndSaveController alloc];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __100__PLModelMigrationAction_UpdateTripHighlightDateTitles_performActionWithManagedObjectContext_error___block_invoke;
  v55[3] = &unk_1E7575B30;
  v15 = contextCopy;
  v56 = v15;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __100__PLModelMigrationAction_UpdateTripHighlightDateTitles_performActionWithManagedObjectContext_error___block_invoke_2;
  v54[3] = &unk_1E7572E50;
  v54[4] = self;
  v54[5] = &v57;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __100__PLModelMigrationAction_UpdateTripHighlightDateTitles_performActionWithManagedObjectContext_error___block_invoke_3;
  v51[3] = &unk_1E756C7B0;
  v16 = v11;
  v52 = v16;
  v53 = &v57;
  v17 = [(PLEnumerateAndSaveController *)v12 initWithName:v14 fetchRequest:v8 context:v15 options:0 generateContextBlock:v55 didFetchObjectIDsBlock:v54 processResultBlock:v51];

  v50 = 0;
  v18 = [(PLEnumerateAndSaveController *)v17 processObjectsWithError:&v50];
  v19 = v50;
  if (v18)
  {
    v20 = PLMigrationGetLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);

    if (v21)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v23 = logger == 0;

      if (v23)
      {
        v37 = PLMigrationGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          completedUnitCount = [v58[5] completedUnitCount];
          *buf = 134217984;
          *&buf[4] = completedUnitCount;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_INFO, "Updated titles for %lu highlights", buf, 0xCu);
        }
      }

      else
      {
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
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        memset(buf, 0, sizeof(buf));
        v24 = PLMigrationGetLog();
        os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
        completedUnitCount2 = [v58[5] completedUnitCount];
        v63 = 134217984;
        v64 = completedUnitCount2;
        LODWORD(v48) = 12;
        v26 = _os_log_send_and_compose_impl();

        v27 = [(PLModelMigrationActionCore *)self logger:&v63];
        [v27 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1285, 1}];

        if (v26 != buf)
        {
          free(v26);
        }
      }
    }

    v39 = 1;
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
        v40 = PLMigrationGetLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          *buf = 138543618;
          *&buf[4] = v42;
          *&buf[12] = 2112;
          *&buf[14] = v19;
          _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
        }
      }

      else
      {
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
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        memset(buf, 0, sizeof(buf));
        v32 = PLMigrationGetLog();
        os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v63 = 138543618;
        v64 = v34;
        v65 = 2112;
        v66 = v19;
        LODWORD(v48) = 22;
        v35 = _os_log_send_and_compose_impl();

        v36 = [(PLModelMigrationActionCore *)self logger:&v63];
        [v36 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1288, 16}];

        if (v35 != buf)
        {
          free(v35);
        }
      }
    }

    v39 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v43 = v19;
  v44 = v43;
  if (error)
  {
    v45 = v18;
  }

  else
  {
    v45 = 1;
  }

  if ((v45 & 1) == 0)
  {
    v46 = v43;
    *error = v44;
  }

  _Block_object_dispose(&v57, 8);
  return v39;
}

@end