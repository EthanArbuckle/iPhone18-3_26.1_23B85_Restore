@interface PLModelMigrationAction_MigrateSocialGroupRebuildPersistence
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
- (int64_t)persistSocialGroupDirectoryJournalInContext:(id)a3 progress:(id)a4;
- (void)deleteGraphNodeSocialGroupDirectoryJournal;
- (void)deleteGraphNodeSocialGroupJournal;
@end

@implementation PLModelMigrationAction_MigrateSocialGroupRebuildPersistence

- (int64_t)persistSocialGroupDirectoryJournalInContext:(id)a3 progress:(id)a4
{
  v94 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(PLModelMigrationAction_MigrateSocialGroupRebuildPersistence *)self deleteGraphNodeSocialGroupDirectoryJournal];
  [v7 setCompletedUnitCount:{objc_msgSend(v7, "completedUnitCount") + 1}];
  v8 = [PLDirectoryJournal alloc];
  v9 = [(PLModelMigrationActionCore *)self pathManager];
  v49 = [(PLDirectoryJournal *)v8 initWithPathManager:v9 payloadClass:objc_opt_class()];

  v10 = MEMORY[0x1E695D5E0];
  v11 = +[PLGraphNode entityName];
  v12 = [v10 fetchRequestWithEntityName:v11];

  v13 = [PLSocialGroup predicateForAllSocialGroupsInContext:v6];
  [v12 setPredicate:v13];

  [v12 setFetchBatchSize:100];
  v57 = 0;
  v14 = [v6 executeFetchRequest:v12 error:&v57];
  v15 = v57;
  if (!v14)
  {
    v36 = PLMigrationGetLog();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

    if (v37)
    {
      v38 = [(PLModelMigrationActionCore *)self logger];

      if (v38)
      {
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v39 = PLMigrationGetLog();
        os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
        v58 = 138412290;
        v59 = v15;
        LODWORD(v44) = 12;
        v40 = _os_log_send_and_compose_impl();

        v41 = [(PLModelMigrationActionCore *)self logger:&v58];
        [v41 logWithMessage:v40 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{895, 16}];

        if (v40 != buf)
        {
          free(v40);
        }

        v17 = 1;
        goto LABEL_33;
      }

      v42 = PLMigrationGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v15;
        _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "persistSocialGroupDirectoryJournalInContext fetch request failed: %@", buf, 0xCu);
      }
    }

    v17 = 1;
    goto LABEL_33;
  }

  v16 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(v14, "count")}];
  v17 = 1;
  [v7 addChild:v16 withPendingUnitCount:1];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v14;
  v18 = [obj countByEnumeratingWithState:&v53 objects:v93 count:16];
  if (v18)
  {
    v19 = v18;
    v45 = v14;
    v46 = v12;
    v47 = v7;
    v48 = v6;
    v20 = *v54;
    v21 = v49;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v54 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v53 + 1) + 8 * i);
        v52 = v15;
        v24 = [(PLModelMigrationActionCore *)self isCancelledWithError:&v52];
        v25 = v52;

        if (v24)
        {
          v7 = v47;
          v6 = v48;
          v14 = v45;
          v12 = v46;
          v17 = 2;
          goto LABEL_28;
        }

        v51 = v25;
        v26 = [(PLDirectoryJournal *)v21 persistManagedObject:v23 error:&v51];
        v15 = v51;

        if (v26)
        {
          [v16 setCompletedUnitCount:{objc_msgSend(v16, "completedUnitCount") + 1}];
        }

        else
        {
          v27 = PLMigrationGetLog();
          v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

          if (v28)
          {
            v29 = [(PLModelMigrationActionCore *)self logger];

            if (v29)
            {
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
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
              memset(buf, 0, sizeof(buf));
              v30 = PLMigrationGetLog();
              os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
              v31 = [v23 uuid];
              v58 = 138543618;
              v59 = v31;
              v60 = 2112;
              v61 = v15;
              LODWORD(v44) = 22;
              v32 = _os_log_send_and_compose_impl();

              v33 = [(PLModelMigrationActionCore *)self logger:&v58];
              [v33 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{889, 16}];

              if (v32 != buf)
              {
                free(v32);
              }

              v21 = v49;
            }

            else
            {
              v34 = PLMigrationGetLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                v35 = [v23 uuid];
                *buf = 138543618;
                *&buf[4] = v35;
                *&buf[12] = 2112;
                *&buf[14] = v15;
                _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "PLDirectoryJournal: persistManagedObject of node %{public}@ failed: %@", buf, 0x16u);
              }
            }
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v53 objects:v93 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

    v25 = v15;
    v17 = 1;
    v7 = v47;
    v6 = v48;
    v14 = v45;
    v12 = v46;
  }

  else
  {
    v25 = v15;
  }

LABEL_28:

  v15 = v25;
LABEL_33:

  return v17;
}

- (void)deleteGraphNodeSocialGroupDirectoryJournal
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = PLMigrationGetLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = [(PLModelMigrationActionCore *)self logger];

    if (v6)
    {
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
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      *buf = 0u;
      v7 = PLMigrationGetLog();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      v8 = NSStringFromClass(v3);
      v26 = 138543362;
      v27 = v8;
      LODWORD(v24) = 12;
      v9 = _os_log_send_and_compose_impl();

      v10 = [(PLModelMigrationActionCore *)self logger:&v26];
      [v10 logWithMessage:v9 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{860, 0}];

      if (v9 != buf)
      {
        free(v9);
      }
    }

    else
    {
      v11 = PLMigrationGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = NSStringFromClass(v3);
        *buf = 138543362;
        *&buf[4] = v12;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Deleting existing directory journal payloads for payload class %{public}@", buf, 0xCu);
      }
    }
  }

  v13 = [PLDirectoryJournal alloc];
  v14 = [(PLModelMigrationActionCore *)self pathManager];
  v15 = [(PLDirectoryJournal *)v13 initWithPathManager:v14 payloadClass:v3];

  v25 = 0;
  LOBYTE(v14) = [(PLDirectoryJournal *)v15 removeAllPersistenceFilesWithError:&v25];
  v16 = v25;
  if ((v14 & 1) == 0)
  {
    v17 = PLMigrationGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

    if (v18)
    {
      v19 = [(PLModelMigrationActionCore *)self logger];

      if (v19)
      {
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
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        *buf = 0u;
        v20 = PLMigrationGetLog();
        os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        v26 = 138412290;
        v27 = v16;
        LODWORD(v24) = 12;
        v21 = _os_log_send_and_compose_impl();

        v22 = [(PLModelMigrationActionCore *)self logger:&v26];
        [v22 logWithMessage:v21 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{864, 16}];

        if (v21 != buf)
        {
          free(v21);
        }
      }

      else
      {
        v23 = PLMigrationGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v16;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "PLDirectoryJournal: removeAllPersistenceFilesWithError failed: %@", buf, 0xCu);
        }
      }
    }
  }
}

- (void)deleteGraphNodeSocialGroupJournal
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = [(PLModelMigrationActionCore *)self pathManager];
  v5 = [PLRebuildJournalManager baseURLFromPathManager:v4];

  v6 = PLMigrationGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = [(PLModelMigrationActionCore *)self logger];

    if (v8)
    {
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
      v36 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      *buf = 0u;
      v9 = PLMigrationGetLog();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      v10 = NSStringFromClass(v3);
      v27 = 138543362;
      v28 = v10;
      LODWORD(v25) = 12;
      v11 = _os_log_send_and_compose_impl();

      v12 = [(PLModelMigrationActionCore *)self logger:&v27];
      [v12 logWithMessage:v11 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{848, 0}];

      if (v11 != buf)
      {
        free(v11);
      }
    }

    else
    {
      v13 = PLMigrationGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = NSStringFromClass(v3);
        *buf = 138543362;
        *&buf[4] = v14;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Deleting existing journals for payload class %{public}@", buf, 0xCu);
      }
    }
  }

  v15 = [[PLJournal alloc] initWithBaseURL:v5 payloadClass:v3];
  [(PLJournal *)v15 removeMetadata];
  v26 = 0;
  v16 = [(PLJournal *)v15 removeJournalFilesWithError:&v26];
  v17 = v26;
  if (!v16)
  {
    v18 = PLMigrationGetLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (v19)
    {
      v20 = [(PLModelMigrationActionCore *)self logger];

      if (v20)
      {
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
        v36 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        *buf = 0u;
        v21 = PLMigrationGetLog();
        os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
        v27 = 138412290;
        v28 = v17;
        LODWORD(v25) = 12;
        v22 = _os_log_send_and_compose_impl();

        v23 = [(PLModelMigrationActionCore *)self logger:&v27];
        [v23 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{853, 16}];

        if (v22 != buf)
        {
          free(v22);
        }
      }

      else
      {
        v24 = PLMigrationGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v17;
          _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "PLJournal: removeJournalFilesWithError failed: %@", buf, 0xCu);
        }
      }
    }
  }
}

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(PLModelMigrationActionCore *)self pathManager];
  if ([v6 isUBF])
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:v7 pendingParentUnitCount:0];
  v9 = [(PLModelMigrationActionCore *)self pathManager];
  v10 = [v9 isUBF];

  if (v10)
  {
    [(PLModelMigrationAction_MigrateSocialGroupRebuildPersistence *)self deleteGraphNodeSocialGroupJournal];
    if (!MEMORY[0x19EAEE520]([v8 setCompletedUnitCount:{objc_msgSend(v8, "completedUnitCount") + 1}]))
    {
      v11 = 1;
      goto LABEL_9;
    }

    [v8 setTotalUnitCount:{objc_msgSend(v8, "totalUnitCount") + 2}];
  }

  v11 = [(PLModelMigrationAction_MigrateSocialGroupRebuildPersistence *)self persistSocialGroupDirectoryJournalInContext:v5 progress:v8];
LABEL_9:
  [(PLModelMigrationActionCore *)self finalizeProgress];

  return v11;
}

@end