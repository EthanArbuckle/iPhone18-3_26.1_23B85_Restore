@interface PLModelMigrationAction_ResetRevGeoAndShiftedLocation
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_ResetRevGeoAndShiftedLocation

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v72[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  v7 = a3;
  v8 = [v6 predicateWithFormat:@"%K != nil", @"shiftedLocationData"];
  v71[0] = @"reverseLocationDataIsValid";
  v71[1] = @"shiftedLocationIsValid";
  v72[0] = MEMORY[0x1E695E110];
  v72[1] = MEMORY[0x1E695E110];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
  v10 = +[PLAdditionalAssetAttributes entityName];
  v35 = 0;
  v11 = [PLModelMigrator executeBatchUpdateWithEntityName:v10 predicate:v8 propertiesToUpdate:v9 managedObjectContext:v7 error:&v35];

  v12 = v35;
  if (v11)
  {
    v13 = PLMigrationGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = [(PLModelMigrationActionCore *)self logger];

      if (v15)
      {
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
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        memset(buf, 0, sizeof(buf));
        v16 = PLMigrationGetLog();
        os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        LOWORD(v36) = 0;
        LODWORD(v34) = 2;
        v17 = _os_log_send_and_compose_impl();

        v18 = [(PLModelMigrationActionCore *)self logger:&v36];
        [v18 logWithMessage:v17 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1105, 0}];

        if (v17 != buf)
        {
          free(v17);
        }
      }

      else
      {
        v28 = PLMigrationGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Reset rev geo and shifted location state on assets with non-nil shifted locations", buf, 2u);
        }
      }
    }

    v29 = 1;
  }

  else
  {
    if (a4)
    {
      v19 = v12;
      *a4 = v12;
    }

    v20 = PLMigrationGetLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (v21)
    {
      v22 = [(PLModelMigrationActionCore *)self logger];

      if (v22)
      {
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
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        memset(buf, 0, sizeof(buf));
        v23 = PLMigrationGetLog();
        os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v36 = 138543618;
        v37 = v25;
        v38 = 2114;
        v39 = v12;
        LODWORD(v34) = 22;
        v26 = _os_log_send_and_compose_impl();

        v27 = [(PLModelMigrationActionCore *)self logger:&v36];
        [v27 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1109, 16}];

        if (v26 != buf)
        {
          free(v26);
        }
      }

      else
      {
        v30 = PLMigrationGetLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          *buf = 138543618;
          *&buf[4] = v32;
          *&buf[12] = 2114;
          *&buf[14] = v12;
          _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Failed to reset geo and shifted location state on assets with non-nil shifted locations for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v29 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  return v29;
}

@end