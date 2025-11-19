@interface PLModelMigrationAction_fixLivePhotoSubtypePlaybackStyleMismatch
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_fixLivePhotoSubtypePlaybackStyleMismatch

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v72[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AB28];
  v7 = MEMORY[0x1E696AE18];
  v8 = a3;
  v9 = [v7 predicateWithFormat:@"%K = %d", @"kind", 0];
  v72[0] = v9;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kindSubtype", 0];
  v72[1] = v10;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"playbackStyle", 3];
  v72[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:3];
  v13 = [v6 andPredicateWithSubpredicates:v12];

  v70 = @"playbackStyle";
  v14 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v71 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];

  v16 = +[PLManagedAsset entityName];
  v34 = 0;
  LOBYTE(v14) = [PLModelMigrator executeBatchUpdateWithEntityName:v16 predicate:v13 propertiesToUpdate:v15 managedObjectContext:v8 error:&v34];

  v17 = v34;
  if (v14)
  {
    [(PLModelMigrationActionCore *)self finalizeProgress];
    v18 = v17;
    if (a4)
    {
      *a4 = v18;
    }

    v19 = 1;
  }

  else
  {
    v20 = PLMigrationGetLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (v21)
    {
      v22 = [(PLModelMigrationActionCore *)self logger];

      if (v22)
      {
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
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        memset(buf, 0, sizeof(buf));
        v23 = PLMigrationGetLog();
        os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v35 = 138543618;
        v36 = v25;
        v37 = 2114;
        v38 = v17;
        LODWORD(v33) = 22;
        v26 = _os_log_send_and_compose_impl();

        v27 = [(PLModelMigrationActionCore *)self logger:&v35];
        [v27 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1400, 16}];

        if (v26 != buf)
        {
          free(v26);
        }
      }

      else
      {
        v28 = PLMigrationGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138543618;
          *&buf[4] = v30;
          *&buf[12] = 2114;
          *&buf[14] = v17;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Failed to execute batch update request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v31 = v17;
    v19 = 3;
  }

  return v19;
}

@end