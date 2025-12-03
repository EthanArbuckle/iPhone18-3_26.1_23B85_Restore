@interface PLModelMigrationAction_UpdateDuplicateAssetVisibilityStateMostRelevant
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
- (int64_t)updateKeyAssetVisibilityStateWithManagedObjectContext:(id)context error:(id *)error;
- (int64_t)updateLegacyHiddenValueWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_UpdateDuplicateAssetVisibilityStateMostRelevant

- (int64_t)updateKeyAssetVisibilityStateWithManagedObjectContext:(id)context error:(id *)error
{
  v94[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 1;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__23792;
  v53 = __Block_byref_object_dispose__23793;
  v54 = 0;
  [contextCopy refreshAllObjects];
  v7 = +[PLDuplicateAlbum fetchRequest];
  v94[0] = @"assets";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:1];
  [v7 setRelationshipKeyPathsForPrefetching:v8];

  [v7 setIncludesPendingChanges:1];
  [v7 setFetchBatchSize:100];
  v9 = v50 + 5;
  obj = v50[5];
  v10 = [contextCopy executeFetchRequest:v7 error:&obj];
  objc_storeStrong(v9, obj);
  if ([v10 count])
  {
    v11 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v10 count], 0);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __134__PLModelMigrationAction_UpdateDuplicateAssetVisibilityStateMostRelevant_updateKeyAssetVisibilityStateWithManagedObjectContext_error___block_invoke;
    v44[3] = &unk_1E7569C58;
    v44[4] = self;
    v46 = &v49;
    v47 = &v55;
    v12 = v11;
    v45 = v12;
    v13 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v10 withBlock:v44];
    if (v13 && !v50[5])
    {
      objc_storeStrong(v50 + 5, v13);
      v56[3] = 3;
    }

    if (v56[3] == 1)
    {
      v14 = PLMigrationGetLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

      if (v15)
      {
        logger = [(PLModelMigrationActionCore *)self logger];
        v17 = logger == 0;

        if (v17)
        {
          v32 = PLMigrationGetLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [v10 count];
            *buf = 67109120;
            *&buf[4] = v33;
            _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "Updated duplicate visibility state on key asset for %d duplicate albums", buf, 8u);
          }

          goto LABEL_22;
        }

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
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        memset(buf, 0, sizeof(buf));
        v18 = PLMigrationGetLog();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        v19 = [v10 count];
        v59 = 67109120;
        LODWORD(v60) = v19;
        LODWORD(v42) = 8;
        v20 = _os_log_send_and_compose_impl();

        v21 = [(PLModelMigrationActionCore *)self logger:&v59];
        [v21 logWithMessage:v20 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{578, 0}];

        goto LABEL_14;
      }
    }

    else
    {
      v23 = PLMigrationGetLog();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

      if (v24)
      {
        logger2 = [(PLModelMigrationActionCore *)self logger];
        v26 = logger2 == 0;

        if (v26)
        {
          v34 = PLMigrationGetLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            v37 = v50[5];
            *buf = 138543618;
            *&buf[4] = v36;
            *&buf[12] = 2114;
            *&buf[14] = v37;
            _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
          }

          goto LABEL_22;
        }

        errorCopy = error;
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
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        memset(buf, 0, sizeof(buf));
        v27 = PLMigrationGetLog();
        os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = v50[5];
        v59 = 138543618;
        v60 = v29;
        v61 = 2114;
        v62 = v30;
        LODWORD(v42) = 22;
        v20 = _os_log_send_and_compose_impl();

        error = errorCopy;
        v31 = [(PLModelMigrationActionCore *)self logger:&v59];
        [v31 logWithMessage:v20 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{580, 16}];

LABEL_14:
        if (v20 != buf)
        {
          free(v20);
        }
      }
    }

LABEL_22:

    v22 = v56;
    goto LABEL_23;
  }

  v22 = v56;
  if (!v10)
  {
    v56[3] = 3;
  }

LABEL_23:
  v38 = v22[3];
  v39 = v50[5];
  if (v38 != 1 && error)
  {
    v39 = v39;
    *error = v39;
  }

  v40 = v56[3];
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(&v55, 8);
  return v40;
}

- (int64_t)updateLegacyHiddenValueWithManagedObjectContext:(id)context error:(id *)error
{
  v69[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AB28];
  v7 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v9 = [v7 predicateWithFormat:@"%K == %d", @"duplicateAssetVisibilityState", 2];
  v69[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
  v11 = [v6 andPredicateWithSubpredicates:v10];

  v67 = @"duplicateAssetVisibilityState";
  v68 = &unk_1F0FBC058;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v13 = +[PLManagedAsset entityName];
  v31 = 0;
  LOBYTE(v10) = [PLModelMigrator executeBatchUpdateWithEntityName:v13 predicate:v11 propertiesToUpdate:v12 managedObjectContext:contextCopy error:&v31];

  v14 = v31;
  if (v10)
  {
    v15 = v14;
    v16 = 1;
  }

  else
  {
    v17 = PLMigrationGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

    if (v18)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        memset(buf, 0, sizeof(buf));
        v20 = PLMigrationGetLog();
        os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v32 = 138543618;
        v33 = v22;
        v34 = 2114;
        v35 = v14;
        LODWORD(v30) = 22;
        v23 = _os_log_send_and_compose_impl();

        v24 = [(PLModelMigrationActionCore *)self logger:&v32];
        [v24 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{540, 16}];

        if (v23 != buf)
        {
          free(v23);
        }
      }

      else
      {
        v25 = PLMigrationGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          *buf = 138543618;
          *&buf[4] = v27;
          *&buf[12] = 2114;
          *&buf[14] = v14;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Failed to execute batch update request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v28 = v14;
    if (error)
    {
      *error = v28;
    }

    v16 = 3;
  }

  return v16;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = [(PLModelMigrationAction_UpdateDuplicateAssetVisibilityStateMostRelevant *)self updateLegacyHiddenValueWithManagedObjectContext:contextCopy error:error];
  if (v7 == 1)
  {
    v7 = [(PLModelMigrationAction_UpdateDuplicateAssetVisibilityStateMostRelevant *)self updateKeyAssetVisibilityStateWithManagedObjectContext:contextCopy error:error];
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  return v7;
}

@end