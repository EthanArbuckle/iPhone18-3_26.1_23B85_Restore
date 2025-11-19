@interface PLModelMigrationAction_UpdatePlaybackControlBadgeAttribute
- (id)buildFetchRequest;
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_UpdatePlaybackControlBadgeAttribute

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v91 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLModelMigrationAction_UpdatePlaybackControlBadgeAttribute *)self buildFetchRequest];
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__43771;
  v54 = __Block_byref_object_dispose__43772;
  v55 = 0;
  v8 = [PLEnumerateAndSaveController alloc];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __106__PLModelMigrationAction_UpdatePlaybackControlBadgeAttribute_performActionWithManagedObjectContext_error___block_invoke;
  v48[3] = &unk_1E7575B30;
  v11 = v6;
  v49 = v11;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __106__PLModelMigrationAction_UpdatePlaybackControlBadgeAttribute_performActionWithManagedObjectContext_error___block_invoke_2;
  v47[3] = &unk_1E7572E50;
  v47[4] = self;
  v47[5] = &v50;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __106__PLModelMigrationAction_UpdatePlaybackControlBadgeAttribute_performActionWithManagedObjectContext_error___block_invoke_3;
  v46[3] = &unk_1E756C620;
  v46[4] = &v50;
  v12 = [(PLEnumerateAndSaveController *)v8 initWithName:v10 fetchRequest:v7 context:v11 options:4 generateContextBlock:v48 didFetchObjectIDsBlock:v47 processResultBlock:v46];

  v45 = 0;
  v13 = [(PLEnumerateAndSaveController *)v12 processObjectsWithError:&v45];
  v14 = v45;
  if (v13)
  {
    v15 = PLMigrationGetLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

    if (v16)
    {
      v17 = [(PLModelMigrationActionCore *)self logger];
      v18 = v17 == 0;

      if (v18)
      {
        v32 = PLMigrationGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [v51[5] completedUnitCount];
          *buf = 134217984;
          *&buf[4] = v33;
          _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_INFO, "Completed playback bit update on %lu assets", buf, 0xCu);
        }
      }

      else
      {
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
        v61 = 0u;
        v62 = 0u;
        memset(buf, 0, sizeof(buf));
        v19 = PLMigrationGetLog();
        os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
        v20 = [v51[5] completedUnitCount];
        v56 = 134217984;
        v57 = v20;
        LODWORD(v43) = 12;
        v21 = _os_log_send_and_compose_impl();

        v22 = [(PLModelMigrationActionCore *)self logger:&v56];
        [v22 logWithMessage:v21 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{560, 1}];

        if (v21 != buf)
        {
          free(v21);
        }
      }
    }

    v34 = 1;
  }

  else
  {
    v23 = PLMigrationGetLog();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

    if (v24)
    {
      v25 = [(PLModelMigrationActionCore *)self logger];
      v26 = v25 == 0;

      if (v26)
      {
        v35 = PLMigrationGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          *buf = 138543618;
          *&buf[4] = v37;
          *&buf[12] = 2112;
          *&buf[14] = v14;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
        }
      }

      else
      {
        v44 = a4;
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
        v61 = 0u;
        v62 = 0u;
        memset(buf, 0, sizeof(buf));
        v27 = PLMigrationGetLog();
        os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v56 = 138543618;
        v57 = v29;
        v58 = 2112;
        v59 = v14;
        LODWORD(v43) = 22;
        v30 = _os_log_send_and_compose_impl();

        a4 = v44;
        v31 = [(PLModelMigrationActionCore *)self logger:&v56];
        [v31 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{563, 16}];

        if (v30 != buf)
        {
          free(v30);
        }
      }
    }

    v34 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v38 = v14;
  v39 = v38;
  if (a4)
  {
    v40 = v13;
  }

  else
  {
    v40 = 1;
  }

  if ((v40 & 1) == 0)
  {
    v41 = v38;
    *a4 = v39;
  }

  _Block_object_dispose(&v50, 8);
  return v34;
}

- (id)buildFetchRequest
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = MEMORY[0x1E696AB28];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kind", 1];
  v11[0] = v6;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %d", @"extendedAttributes.fps", 45];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [v5 andPredicateWithSubpredicates:v8];
  [v4 setPredicate:v9];

  [v4 setFetchBatchSize:100];

  return v4;
}

@end