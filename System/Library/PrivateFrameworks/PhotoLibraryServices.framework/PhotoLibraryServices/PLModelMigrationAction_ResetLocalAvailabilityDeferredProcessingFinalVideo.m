@interface PLModelMigrationAction_ResetLocalAvailabilityDeferredProcessingFinalVideo
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_ResetLocalAvailabilityDeferredProcessingFinalVideo

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v76[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695D560];
  v7 = a3;
  v8 = +[PLInternalResource entityName];
  v9 = [v6 batchUpdateRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"recipeID", 131280];
  v76[0] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"localAvailability", 4294934528];
  v76[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];
  [v9 setPredicate:v14];

  v74 = @"localAvailability";
  v75 = &unk_1F0FBB6C8;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
  [v9 setPropertiesToUpdate:v15];

  [v9 setResultType:2];
  v39 = 0;
  v16 = [v7 executeRequest:v9 error:&v39];

  v17 = v39;
  v18 = PLMigrationGetLog();
  v19 = v18;
  if (v16)
  {
    v20 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = [(PLModelMigrationActionCore *)self logger];

      if (v21)
      {
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
        v50 = 0u;
        v51 = 0u;
        v49 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        *buf = 0u;
        v22 = PLMigrationGetLog();
        os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        v23 = [v16 result];
        v40 = 138412290;
        v41 = v23;
        LODWORD(v38) = 12;
        v24 = _os_log_send_and_compose_impl();

        v25 = [(PLModelMigrationActionCore *)self logger:&v40];
        [v25 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1651, 0}];

        if (v24 != buf)
        {
          free(v24);
        }
      }

      else
      {
        v31 = PLMigrationGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v16 result];
          *buf = 138412290;
          *&buf[4] = v32;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "Batch update to reset deferred processing video complement resources localAvailability from not possible -> none request successful with result %@", buf, 0xCu);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v33 = v17;
    v34 = 1;
  }

  else
  {
    v26 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (v26)
    {
      v27 = [(PLModelMigrationActionCore *)self logger];

      if (v27)
      {
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
        v50 = 0u;
        v51 = 0u;
        v49 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        *buf = 0u;
        v28 = PLMigrationGetLog();
        os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        v40 = 138412290;
        v41 = v17;
        LODWORD(v38) = 12;
        v29 = _os_log_send_and_compose_impl();

        v30 = [(PLModelMigrationActionCore *)self logger:&v40];
        [v30 logWithMessage:v29 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1649, 16}];

        if (v29 != buf)
        {
          free(v29);
        }
      }

      else
      {
        v35 = PLMigrationGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v17;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Batch update to reset deferred processing video complement resources localAvailability from not possible -> none request failed, error: %@", buf, 0xCu);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v36 = v17;
    if (a4)
    {
      *a4 = v36;
    }

    v34 = 3;
  }

  return v34;
}

@end