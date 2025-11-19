@interface PLModelMigrationAction_PopulateCloudFeedEntryIsMine
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
- (void)_migrateEntriesWithFetchRequest:(id)a3 moc:(id)a4 progress:(id)a5 result:(int64_t *)a6;
@end

@implementation PLModelMigrationAction_PopulateCloudFeedEntryIsMine

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v39 = 1;
  v7 = +[PLCloudFeedEntry fetchRequest];
  [v7 setIncludesSubentities:1];
  v38 = 0;
  v8 = [v6 countForFetchRequest:v7 error:&v38];
  v9 = v38;
  v10 = PLMigrationGetLog();
  v11 = v10;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = [(PLModelMigrationActionCore *)self logger];

      if (v13)
      {
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
        memset(buf, 0, sizeof(buf));
        v14 = PLMigrationGetLog();
        os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        v42 = 138543362;
        v43 = 0;
        LODWORD(v37) = 12;
        v15 = _os_log_send_and_compose_impl();

        v16 = [(PLModelMigrationActionCore *)self logger:&v42];
        [v16 logWithMessage:v15 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1039, 16}];

        if (v15 != buf)
        {
          free(v15);
        }
      }

      else
      {
        v24 = PLMigrationGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = 0;
          _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Failed to fetch count of CloudFeedEntry with error: %{public}@", buf, 0xCu);
        }
      }
    }

    v25 = 3;
  }

  else
  {
    v17 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = [(PLModelMigrationActionCore *)self logger];

      if (v18)
      {
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
        memset(buf, 0, sizeof(buf));
        v19 = PLMigrationGetLog();
        os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v42 = 138543618;
        v43 = v21;
        v44 = 2048;
        v45 = v8;
        LODWORD(v37) = 22;
        v22 = _os_log_send_and_compose_impl();

        v23 = [(PLModelMigrationActionCore *)self logger:&v42];
        [v23 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1043, 0}];

        if (v22 != buf)
        {
          free(v22);
        }
      }

      else
      {
        v26 = PLMigrationGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          *buf = 138543618;
          *&buf[4] = v28;
          *&buf[12] = 2048;
          *&buf[14] = v8;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ starting to migrate %lu feed entries...", buf, 0x16u);
        }
      }
    }

    v29 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:v8 pendingParentUnitCount:0];
    v30 = +[PLCloudFeedAssetsEntry fetchRequest];
    v41 = @"entryAssets";
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    [v30 setRelationshipKeyPathsForPrefetching:v31];

    [(PLModelMigrationAction_PopulateCloudFeedEntryIsMine *)self _migrateEntriesWithFetchRequest:v30 moc:v6 progress:v29 result:&v39];
    if (v39 != 1 || (+[PLCloudFeedCommentsEntry fetchRequest](PLCloudFeedCommentsEntry, "fetchRequest"), v32 = objc_claimAutoreleasedReturnValue(), v40[0] = @"entryComments", v40[1] = @"entryLikeComments", [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "setRelationshipKeyPathsForPrefetching:", v33), v33, -[PLModelMigrationAction_PopulateCloudFeedEntryIsMine _migrateEntriesWithFetchRequest:moc:progress:result:](self, "_migrateEntriesWithFetchRequest:moc:progress:result:", v32, v6, v29, &v39), v32, v39 != 1) || (+[PLCloudFeedEntry fetchRequest](PLCloudFeedEntry, "fetchRequest"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "setIncludesSubentities:", 0), objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"entryType!= %d AND entryType!= %d", 1, 2), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "setPredicate:", v35), v35, -[PLModelMigrationAction_PopulateCloudFeedEntryIsMine _migrateEntriesWithFetchRequest:moc:progress:result:](self, "_migrateEntriesWithFetchRequest:moc:progress:result:", v34, v6, v29, &v39), v34, v39 != 1))
    {
      if (a4)
      {
        *a4 = 0;
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v25 = v39;
  }

  return v25;
}

- (void)_migrateEntriesWithFetchRequest:(id)a3 moc:(id)a4 progress:(id)a5 result:(int64_t *)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [PLEnumerateAndSaveController alloc];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __107__PLModelMigrationAction_PopulateCloudFeedEntryIsMine__migrateEntriesWithFetchRequest_moc_progress_result___block_invoke;
  v35[3] = &unk_1E7575B30;
  v16 = v10;
  v36 = v16;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __107__PLModelMigrationAction_PopulateCloudFeedEntryIsMine__migrateEntriesWithFetchRequest_moc_progress_result___block_invoke_2;
  v33[3] = &unk_1E756C738;
  v17 = v11;
  v34 = v17;
  v18 = [(PLEnumerateAndSaveController *)v13 initWithName:v15 fetchRequest:v12 context:v16 options:0 generateContextBlock:v35 didFetchObjectIDsBlock:0 processResultBlock:v33];

  v32 = 0;
  LOBYTE(v15) = [(PLEnumerateAndSaveController *)v18 processObjectsWithError:&v32];
  v19 = v32;
  if ((v15 & 1) == 0)
  {
    *a6 = 3;
    v20 = PLMigrationGetLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (v21)
    {
      v22 = [(PLModelMigrationActionCore *)self logger];

      if (v22)
      {
        memset(buf, 0, sizeof(buf));
        v23 = PLMigrationGetLog();
        os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v37 = 138543618;
        v38 = v25;
        v39 = 2112;
        v40 = v19;
        LODWORD(v31) = 22;
        v26 = _os_log_send_and_compose_impl();

        v27 = [(PLModelMigrationActionCore *)self logger:&v37];
        [v27 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1022, 16}];

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
          LODWORD(buf[0]) = 138543618;
          *(buf + 4) = v30;
          WORD6(buf[0]) = 2112;
          *(buf + 14) = v19;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }
  }
}

@end