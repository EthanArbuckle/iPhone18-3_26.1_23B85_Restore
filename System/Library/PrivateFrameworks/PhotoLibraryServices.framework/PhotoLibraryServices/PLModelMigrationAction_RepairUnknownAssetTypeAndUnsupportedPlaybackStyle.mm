@interface PLModelMigrationAction_RepairUnknownAssetTypeAndUnsupportedPlaybackStyle
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RepairUnknownAssetTypeAndUnsupportedPlaybackStyle

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v113[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 1;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__23792;
  v70 = __Block_byref_object_dispose__23793;
  v71 = 0;
  v7 = +[PLManagedAsset fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d || %K == %d", @"kind", 3, @"playbackStyle", 0];
  [v7 setPredicate:v8];

  v113[0] = @"master";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:1];
  [v7 setRelationshipKeyPathsForPrefetching:v9];

  [v7 setFetchBatchSize:100];
  v10 = v67 + 5;
  obj = v67[5];
  v11 = [contextCopy executeFetchRequest:v7 error:&obj];
  objc_storeStrong(v10, obj);
  if ([v11 count])
  {
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v12 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v11 count], 0);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __120__PLModelMigrationAction_RepairUnknownAssetTypeAndUnsupportedPlaybackStyle_performActionWithManagedObjectContext_error___block_invoke;
    v46[3] = &unk_1E7569C80;
    v49 = &v53;
    v50 = &v57;
    v48 = &v61;
    v46[4] = self;
    v51 = &v66;
    v52 = &v72;
    v13 = v12;
    v47 = v13;
    v14 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v11 withBlock:v46];
    if (v14 && !v67[5])
    {
      objc_storeStrong(v67 + 5, v14);
      v73[3] = 3;
    }

    if (v73[3] == 1)
    {
      v15 = PLMigrationGetLog();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (v16)
      {
        logger = [(PLModelMigrationActionCore *)self logger];
        v18 = logger == 0;

        if (!v18)
        {
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
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          memset(buf, 0, sizeof(buf));
          v19 = PLMigrationGetLog();
          os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          v20 = v58[3];
          v21 = v62[3];
          v22 = v54[3];
          v76 = 134218496;
          v77 = v20;
          v78 = 2048;
          v79 = v21;
          v80 = 2048;
          v81 = v22;
          LODWORD(v45) = 32;
          v23 = _os_log_send_and_compose_impl();

          v24 = [(PLModelMigrationActionCore *)self logger:&v76];
          [v24 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{664, 0}];

          goto LABEL_14;
        }

        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v58[3];
          v36 = v62[3];
          v37 = v54[3];
          *buf = 134218496;
          *&buf[4] = v35;
          *&buf[12] = 2048;
          *&buf[14] = v36;
          *&buf[22] = 2048;
          *&buf[24] = v37;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "Fixed %lu unsupported playback style, %lu unknown kind, failed to fix %lu unknown kind", buf, 0x20u);
        }

LABEL_21:
      }
    }

    else
    {
      v25 = PLMigrationGetLog();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

      if (v26)
      {
        logger2 = [(PLModelMigrationActionCore *)self logger];
        v28 = logger2 == 0;

        if (!v28)
        {
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
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          memset(buf, 0, sizeof(buf));
          v29 = PLMigrationGetLog();
          os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = v67[5];
          v76 = 138543618;
          v77 = v31;
          v78 = 2114;
          v79 = v32;
          LODWORD(v45) = 22;
          v23 = _os_log_send_and_compose_impl();

          v33 = [(PLModelMigrationActionCore *)self logger:&v76];
          [v33 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{666, 16}];

LABEL_14:
          if (v23 != buf)
          {
            free(v23);
          }

          goto LABEL_22;
        }

        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          v40 = v67[5];
          *buf = 138543618;
          *&buf[4] = v39;
          *&buf[12] = 2114;
          *&buf[14] = v40;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
        }

        goto LABEL_21;
      }
    }

LABEL_22:

    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&v61, 8);
    goto LABEL_23;
  }

  if (!v11)
  {
    v73[3] = 3;
  }

LABEL_23:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v41 = v73[3];
  v42 = v67[5];
  if (v41 != 1 && error)
  {
    v42 = v42;
    *error = v42;
  }

  v43 = v73[3];
  _Block_object_dispose(&v66, 8);

  _Block_object_dispose(&v72, 8);
  return v43;
}

@end