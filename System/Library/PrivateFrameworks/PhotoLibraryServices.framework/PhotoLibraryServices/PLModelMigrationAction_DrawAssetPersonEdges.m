@interface PLModelMigrationAction_DrawAssetPersonEdges
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_DrawAssetPersonEdges

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v119[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 1;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__1060;
  v78 = __Block_byref_object_dispose__1061;
  v79 = 0;
  v7 = [(PLModelMigrationActionBackground *)self resumeMarker];
  v8 = v6;
  v9 = v7;
  if (v9)
  {
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v8 persistentStoreCoordinator];
  v12 = [v11 managedObjectIDForURIRepresentation:v10];

  v13 = +[PLManagedAsset fetchRequest];
  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v119[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:1];
  [v13 setSortDescriptors:v15];

  if (v12)
  {
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v12];
    [v13 setPredicate:v16];
  }

  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__1060;
  v72 = __Block_byref_object_dispose__1061;
  v73 = 0;
  v17 = [PLEnumerateAndSaveController alloc];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __91__PLModelMigrationAction_DrawAssetPersonEdges_performActionWithManagedObjectContext_error___block_invoke;
  v66[3] = &unk_1E7575B30;
  v67 = v8;
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __91__PLModelMigrationAction_DrawAssetPersonEdges_performActionWithManagedObjectContext_error___block_invoke_2;
  v65[3] = &unk_1E7572E50;
  v65[4] = self;
  v65[5] = &v68;
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __91__PLModelMigrationAction_DrawAssetPersonEdges_performActionWithManagedObjectContext_error___block_invoke_3;
  v60[3] = &unk_1E7564A98;
  v60[4] = self;
  v62 = &v74;
  v63 = &v80;
  v20 = v67;
  v61 = v20;
  v64 = &v68;
  v21 = [(PLEnumerateAndSaveController *)v17 initWithName:v19 fetchRequest:v13 context:v20 options:4 generateContextBlock:v66 didFetchObjectIDsBlock:v65 processResultsBlock:v60];

  v22 = (v75 + 5);
  obj = v75[5];
  v23 = [(PLEnumerateAndSaveController *)v21 processObjectsWithError:&obj];
  objc_storeStrong(v22, obj);
  if (v23)
  {
    v24 = PLMigrationGetLog();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v25)
    {
      v26 = [(PLModelMigrationActionBackground *)self logger];
      v27 = v26 == 0;

      if (v27)
      {
        v42 = PLMigrationGetLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [v69[5] totalUnitCount];
          *buf = 134217984;
          *&buf[4] = v43;
          _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEFAULT, "Drew asset person edges for %lld assets.", buf, 0xCu);
        }
      }

      else
      {
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        memset(buf, 0, sizeof(buf));
        v28 = PLMigrationGetLog();
        os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        v29 = [v69[5] totalUnitCount];
        v84 = 134217984;
        v85 = v29;
        LODWORD(v55) = 12;
        v30 = _os_log_send_and_compose_impl();

        v31 = [(PLModelMigrationActionBackground *)self logger:&v84];
        [v31 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1031, 0}];

        if (v30 != buf)
        {
          free(v30);
        }
      }
    }

    v44 = [(PLModelMigrationActionBackground *)self databaseContext];
    v45 = [v44 newShortLivedLibraryWithName:"-[PLModelMigrationAction_DrawAssetPersonEdges performActionWithManagedObjectContext:error:]"];

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __91__PLModelMigrationAction_DrawAssetPersonEdges_performActionWithManagedObjectContext_error___block_invoke_376;
    v56[3] = &unk_1E7578848;
    v46 = v45;
    v57 = v46;
    v58 = self;
    [v46 performTransactionAndWait:v56];
  }

  else
  {
    v81[3] = 3;
    v32 = PLMigrationGetLog();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

    if (v33)
    {
      v34 = [(PLModelMigrationActionBackground *)self logger];
      v35 = v34 == 0;

      if (v35)
      {
        v51 = PLMigrationGetLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v52 = objc_opt_class();
          v53 = NSStringFromClass(v52);
          v54 = v75[5];
          *buf = 138543618;
          *&buf[4] = v53;
          *&buf[12] = 2114;
          *&buf[14] = v54;
          _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        memset(buf, 0, sizeof(buf));
        v36 = PLMigrationGetLog();
        os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = v75[5];
        v84 = 138543618;
        v85 = v38;
        v86 = 2114;
        v87 = v39;
        LODWORD(v55) = 22;
        v40 = _os_log_send_and_compose_impl();

        v41 = [(PLModelMigrationActionBackground *)self logger:&v84];
        [v41 logWithMessage:v40 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1043, 16}];

        if (v40 != buf)
        {
          free(v40);
        }
      }
    }
  }

  if (v81[3] == 1)
  {
    [(PLModelMigrationActionBackground *)self setResumeMarkerValue:0];
  }

  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v47 = v81[3];
  v48 = v75[5];
  if (v47 != 1 && a4)
  {
    v48 = v48;
    *a4 = v48;
  }

  v49 = v81[3];
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v80, 8);

  return v49;
}

@end