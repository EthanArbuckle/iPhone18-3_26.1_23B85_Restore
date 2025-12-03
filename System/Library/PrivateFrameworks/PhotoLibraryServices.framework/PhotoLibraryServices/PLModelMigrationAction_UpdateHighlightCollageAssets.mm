@interface PLModelMigrationAction_UpdateHighlightCollageAssets
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_UpdateHighlightCollageAssets

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v94[6] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLPhotosHighlight entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 0];
  [v8 setPredicate:v9];

  v94[0] = @"collageAssetsPrivate";
  v94[1] = @"collageAssetsShared";
  v94[2] = @"collageAssetsMixed";
  v94[3] = @"extendedAssets";
  v94[4] = @"keyAssetPrivate";
  v94[5] = @"keyAssetShared";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:6];
  [v8 setRelationshipKeyPathsForPrefetching:v10];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__43771;
  v57 = __Block_byref_object_dispose__43772;
  v58 = 0;
  v13 = [PLEnumerateAndSaveController alloc];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __99__PLModelMigrationAction_UpdateHighlightCollageAssets_performActionWithManagedObjectContext_error___block_invoke;
  v51[3] = &unk_1E7575B30;
  v14 = contextCopy;
  v52 = v14;
  v49[4] = &v53;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __99__PLModelMigrationAction_UpdateHighlightCollageAssets_performActionWithManagedObjectContext_error___block_invoke_2;
  v50[3] = &unk_1E7572E50;
  v50[4] = self;
  v50[5] = &v53;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __99__PLModelMigrationAction_UpdateHighlightCollageAssets_performActionWithManagedObjectContext_error___block_invoke_3;
  v49[3] = &unk_1E756C800;
  v15 = [(PLEnumerateAndSaveController *)v13 initWithName:v12 fetchRequest:v8 context:v14 options:0 generateContextBlock:v51 didFetchObjectIDsBlock:v50 processResultBlock:v49];
  v48 = 0;
  v16 = [(PLEnumerateAndSaveController *)v15 processObjectsWithError:&v48];
  v46 = v48;
  if (v16)
  {
    v17 = PLMigrationGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

    if (v18)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v20 = logger == 0;

      if (v20)
      {
        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          completedUnitCount = [v54[5] completedUnitCount];
          *buf = 134217984;
          *&buf[4] = completedUnitCount;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_INFO, "Updated collage assets for %lu highlights", buf, 0xCu);
        }
      }

      else
      {
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
        v21 = PLMigrationGetLog();
        os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
        completedUnitCount2 = [v54[5] completedUnitCount];
        v59 = 134217984;
        v60 = completedUnitCount2;
        LODWORD(v45) = 12;
        v23 = _os_log_send_and_compose_impl();

        v24 = [(PLModelMigrationActionCore *)self logger:&v59];
        [v24 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1363, 1}];

        if (v23 != buf)
        {
          free(v23);
        }
      }
    }

    v36 = 1;
  }

  else
  {
    v25 = PLMigrationGetLog();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

    if (v26)
    {
      logger2 = [(PLModelMigrationActionCore *)self logger];
      v28 = logger2 == 0;

      if (v28)
      {
        v37 = PLMigrationGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          *buf = 138543618;
          *&buf[4] = v39;
          *&buf[12] = 2112;
          *&buf[14] = v46;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
        }
      }

      else
      {
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
        v29 = PLMigrationGetLog();
        os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v59 = 138543618;
        v60 = v31;
        v61 = 2112;
        v62 = v46;
        LODWORD(v45) = 22;
        v32 = _os_log_send_and_compose_impl();

        v33 = [(PLModelMigrationActionCore *)self logger:&v59];
        [v33 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1366, 16}];

        if (v32 != buf)
        {
          free(v32);
        }
      }
    }

    v36 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v40 = v46;
  v41 = v40;
  if (error)
  {
    v42 = v16;
  }

  else
  {
    v42 = 1;
  }

  if ((v42 & 1) == 0)
  {
    v43 = v40;
    *error = v41;
  }

  _Block_object_dispose(&v53, 8);
  return v36;
}

@end