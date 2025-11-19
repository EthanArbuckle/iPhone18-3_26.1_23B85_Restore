@interface PLModelMigrationAction_RemoveOrphanGeneratedAssetDescriptionNodes
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_RemoveOrphanGeneratedAssetDescriptionNodes

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v112 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v6 = objc_opt_class();
  v64 = NSStringFromClass(v6);
  v7 = [v5 pl_graphCache];
  v65 = [v7 objectIDForLabelWithCode:1300 inContext:v5];

  if (v65)
  {
    v8 = [(PLModelMigrationActionBackground *)self resumeMarker];
    v9 = v5;
    v10 = v8;
    if (v10)
    {
      v11 = [MEMORY[0x1E695DFF8] URLWithString:v10];
    }

    else
    {
      v11 = 0;
    }

    v19 = [v9 persistentStoreCoordinator];
    v20 = [v19 managedObjectIDForURIRepresentation:v11];

    v21 = MEMORY[0x1E695D5E0];
    v22 = +[PLGraphNode entityName];
    v63 = [v21 fetchRequestWithEntityName:v22];

    v23 = MEMORY[0x1E696AB28];
    if (v20)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v20];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithValue:1];
    }
    v24 = ;
    v80[0] = v24;
    v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"primaryLabel", v65];
    v80[1] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:2];
    v27 = [v23 andPredicateWithSubpredicates:v26];
    [v63 setPredicate:v27];

    v71 = 0;
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __113__PLModelMigrationAction_RemoveOrphanGeneratedAssetDescriptionNodes_performActionWithManagedObjectContext_error___block_invoke;
    v66[3] = &unk_1E7564B38;
    v67 = v9;
    v68 = self;
    v28 = v64;
    v69 = v28;
    v70 = &v72;
    v29 = [PLModelMigrationActionUtility processManagedObjectBatchesWithAction:self managedObjectContext:v67 fetchRequest:v63 pendingParentUnitCount:0 useObjectIDResumeMarker:1 error:&v71 processingBlock:v66];
    v30 = v71;
    if (v29 == 2)
    {
      v39 = PLMigrationGetLog();
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);

      if (!v40)
      {
        goto LABEL_38;
      }

      v41 = [(PLModelMigrationActionBackground *)self logger];
      v42 = v41 == 0;

      if (!v42)
      {
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v43 = PLMigrationGetLog();
        os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
        v44 = v73[3];
        v76 = 134218242;
        v77 = v44;
        v78 = 2114;
        v79 = v28;
        LODWORD(v61) = 22;
        v37 = _os_log_send_and_compose_impl();

        v45 = [(PLModelMigrationActionBackground *)self logger:&v76];
        [v45 logWithMessage:v37 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1458, 0}];

        goto LABEL_23;
      }

      v54 = PLMigrationGetLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v56 = v73[3];
        *buf = 134218242;
        *&buf[4] = v56;
        *&buf[12] = 2114;
        *&buf[14] = v28;
        _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_DEFAULT, "Cancelled background migration action after removing %tu orphaned GeneratedAssetDescription nodes for %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (v29 == 1)
      {
        v31 = PLMigrationGetLog();
        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

        if (!v32)
        {
          goto LABEL_38;
        }

        v33 = [(PLModelMigrationActionBackground *)self logger];
        v34 = v33 == 0;

        if (!v34)
        {
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v35 = PLMigrationGetLog();
          os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
          v36 = v73[3];
          v76 = 134218242;
          v77 = v36;
          v78 = 2114;
          v79 = v28;
          LODWORD(v61) = 22;
          v37 = _os_log_send_and_compose_impl();

          v38 = [(PLModelMigrationActionBackground *)self logger:&v76];
          [v38 logWithMessage:v37 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1456, 0}];

          goto LABEL_23;
        }

        v54 = PLMigrationGetLog();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = v73[3];
          *buf = 134218242;
          *&buf[4] = v55;
          *&buf[12] = 2114;
          *&buf[14] = v28;
          _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_DEFAULT, "Removed %tu orphaned GeneratedAssetDescription nodes for %{public}@", buf, 0x16u);
        }

        goto LABEL_37;
      }

      v46 = PLMigrationGetLog();
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);

      if (!v47)
      {
        goto LABEL_38;
      }

      v48 = [(PLModelMigrationActionBackground *)self logger];
      v49 = v48 == 0;

      if (!v49)
      {
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v50 = PLMigrationGetLog();
        os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
        v76 = 138543618;
        v77 = v28;
        v78 = 2112;
        v79 = v30;
        LODWORD(v61) = 22;
        v37 = _os_log_send_and_compose_impl();

        v51 = [(PLModelMigrationActionBackground *)self logger:&v76];
        [v51 logWithMessage:v37 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1460, 16}];

LABEL_23:
        if (v37 != buf)
        {
          free(v37);
        }

        goto LABEL_38;
      }

      v54 = PLMigrationGetLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = v28;
        *&buf[12] = 2112;
        *&buf[14] = v30;
        _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_ERROR, "Failed to process background migration action %{public}@. Error: %@", buf, 0x16u);
      }
    }

LABEL_37:

LABEL_38:
    [(PLModelMigrationActionBackground *)self finalizeProgress];
    v57 = v30;
    v53 = v57;
    if (v29 != 1 && a4)
    {
      v58 = v57;
      *a4 = v53;
    }

    goto LABEL_42;
  }

  v12 = PLMigrationGetLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = [(PLModelMigrationActionBackground *)self logger];
    v15 = v14 == 0;

    if (v15)
    {
      v52 = PLMigrationGetLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v64;
        _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_DEFAULT, "No generated asset description label found for %{public}@. No need to remove orphan nodes because there aren't any to remove", buf, 0xCu);
      }
    }

    else
    {
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v16 = PLMigrationGetLog();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      v76 = 138543362;
      v77 = v64;
      LODWORD(v60) = 12;
      v17 = _os_log_send_and_compose_impl();

      v18 = [(PLModelMigrationActionBackground *)self logger:&v76];
      [v18 logWithMessage:v17 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1418, 0}];

      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  [(PLModelMigrationActionBackground *)self setResumeMarkerValue:0];
  v53 = 0;
  v29 = 1;
LABEL_42:

  _Block_object_dispose(&v72, 8);
  return v29;
}

@end