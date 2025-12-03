@interface PLModelMigrationAction_FixupTombstonedPeopleOnSharedLibraryRules
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixupTombstonedPeopleOnSharedLibraryRules

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v74 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLLibraryScope entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"autoSharePolicy", 2];
  [v9 setPredicate:v10];

  [v9 setFetchBatchSize:100];
  v37 = 0;
  v11 = [contextCopy executeFetchRequest:v9 error:&v37];
  v12 = v37;
  if (v11)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v73 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v33 + 1) + 8 * i) updatePeopleRulesForAllTombstonedPersons];
        }

        v15 = [v13 countByEnumeratingWithState:&v33 objects:v73 count:16];
      }

      while (v15);
    }

    v18 = 1;
  }

  else
  {
    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
        v71 = 0u;
        v72 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v22 = PLMigrationGetLog();
        os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v38 = 138543618;
        v39 = v24;
        v40 = 2114;
        v41 = v12;
        LODWORD(v32) = 22;
        v25 = _os_log_send_and_compose_impl();

        v26 = [(PLModelMigrationActionCore *)self logger:&v38];
        [v26 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{929, 16}];

        if (v25 != buf)
        {
          free(v25);
        }
      }

      else
      {
        v27 = PLMigrationGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          *buf = 138543618;
          *&buf[4] = v29;
          *&buf[12] = 2114;
          *&buf[14] = v12;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v18 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    v30 = v12;
    *error = v12;
  }

  return v18;
}

@end