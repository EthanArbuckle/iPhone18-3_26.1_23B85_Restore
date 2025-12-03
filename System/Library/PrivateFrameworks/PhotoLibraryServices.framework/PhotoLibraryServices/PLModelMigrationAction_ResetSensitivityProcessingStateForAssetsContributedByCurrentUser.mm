@interface PLModelMigrationAction_ResetSensitivityProcessingStateForAssetsContributedByCurrentUser
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetSensitivityProcessingStateForAssetsContributedByCurrentUser

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v72[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = +[PLManagedAsset fetchRequest];
  [v7 setFetchBatchSize:100];
  v72[0] = @"collectionShareAssetContributor";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
  [v7 setRelationshipKeyPathsForPrefetching:v8];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.%K != nil", @"collectionShareAssetContributor", @"participant"];
  [v7 setPredicate:v9];

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v31[4] = &v33;
  v32 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __135__PLModelMigrationAction_ResetSensitivityProcessingStateForAssetsContributedByCurrentUser_performActionWithManagedObjectContext_error___block_invoke;
  v31[3] = &unk_1E756C8F0;
  v10 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:contextCopy fetchRequest:v7 pendingParentUnitCount:0 error:&v32 processingBlock:v31];
  v11 = v32;
  v12 = PLMigrationGetLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    logger = [(PLModelMigrationActionCore *)self logger];
    v15 = logger == 0;

    if (v15)
    {
      v22 = PLMigrationGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = v34[3];
        *buf = 138543618;
        *&buf[4] = v24;
        *&buf[12] = 2048;
        *&buf[14] = v25;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: summary - countOfMigratedAssetsContributedByCurrentUser: %ld", buf, 0x16u);
      }
    }

    else
    {
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
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      memset(buf, 0, sizeof(buf));
      v16 = PLMigrationGetLog();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = v34[3];
      v37 = 138543618;
      v38 = v18;
      v39 = 2048;
      v40 = v19;
      LODWORD(v30) = 22;
      v20 = _os_log_send_and_compose_impl();

      v21 = [(PLModelMigrationActionCore *)self logger:&v37];
      [v21 logWithMessage:v20 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1624, 0}];

      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v26 = v11;
  v27 = v26;
  if (v10 != 1 && error)
  {
    v28 = v26;
    *error = v27;
  }

  _Block_object_dispose(&v33, 8);
  return v10;
}

@end