@interface PLModelMigrationAction_ResetAllFaceCropsToDirty
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_ResetAllFaceCropsToDirty

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v66[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D560];
  v6 = a3;
  v7 = +[PLFaceCrop entityName];
  v8 = [v5 batchUpdateRequestWithEntityName:v7];

  v65 = @"state";
  v66[0] = &unk_1F0FBB6B0;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
  [v8 setPropertiesToUpdate:v9];

  [v8 setResultType:2];
  v10 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  [v8 setPredicate:v10];

  v30 = 0;
  v11 = [v6 executeRequest:v8 error:&v30];

  v12 = v30;
  v13 = PLMigrationGetLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    if (v14)
    {
      v15 = [(PLModelMigrationActionCore *)self logger];

      if (v15)
      {
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
        v40 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        *buf = 0u;
        v16 = PLMigrationGetLog();
        os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        v17 = [v11 result];
        v31 = 138412290;
        v32 = v17;
        LODWORD(v29) = 12;
        v18 = _os_log_send_and_compose_impl();

        v19 = [(PLModelMigrationActionCore *)self logger:&v31];
        [v19 logWithMessage:v18 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1344, 0}];

        if (v18 != buf)
        {
          free(v18);
        }
      }

      else
      {
        v24 = PLMigrationGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v11 result];
          *buf = 138412290;
          *&buf[4] = v25;
          _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Updated %@ face crops", buf, 0xCu);
        }
      }
    }

    v26 = 1;
  }

  else
  {
    if (v14)
    {
      v20 = [(PLModelMigrationActionCore *)self logger];

      if (v20)
      {
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
        v40 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        *buf = 0u;
        v21 = PLMigrationGetLog();
        os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        v31 = 138412290;
        v32 = v12;
        LODWORD(v29) = 12;
        v22 = _os_log_send_and_compose_impl();

        v23 = [(PLModelMigrationActionCore *)self logger:&v31];
        [v23 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1346, 0}];

        if (v22 != buf)
        {
          free(v22);
        }
      }

      else
      {
        v27 = PLMigrationGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v12;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "Failed to batch update face crops: %@", buf, 0xCu);
        }
      }
    }

    v26 = 3;
  }

  return v26;
}

@end