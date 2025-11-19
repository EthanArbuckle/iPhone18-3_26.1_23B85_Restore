@interface PLModelMigrationAction_UpdateAssetAdjustmentsState
+ (BOOL)isResetAfterRebuildRequiredWithLibrary:(id)a3;
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_UpdateAssetAdjustmentsState

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v101[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 1;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__1060;
  v60 = __Block_byref_object_dispose__1061;
  v61 = 0;
  v7 = +[PLManagedAsset fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"adjustmentsState", 1];
  [v7 setPredicate:v8];

  v101[0] = @"additionalAttributes.unmanagedAdjustment";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:1];
  [v7 setRelationshipKeyPathsForPrefetching:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setChangeSource:1];
  }

  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = __Block_byref_object_copy__1060;
  v54[4] = __Block_byref_object_dispose__1061;
  v55 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v10 = [PLEnumerateAndSaveController alloc];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __98__PLModelMigrationAction_UpdateAssetAdjustmentsState_performActionWithManagedObjectContext_error___block_invoke;
  v48[3] = &unk_1E7575B30;
  v13 = v6;
  v49 = v13;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __98__PLModelMigrationAction_UpdateAssetAdjustmentsState_performActionWithManagedObjectContext_error___block_invoke_2;
  v47[3] = &unk_1E7572E50;
  v47[4] = self;
  v47[5] = v54;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __98__PLModelMigrationAction_UpdateAssetAdjustmentsState_performActionWithManagedObjectContext_error___block_invoke_3;
  v46[3] = &unk_1E756DD18;
  v46[4] = self;
  v46[5] = &v56;
  v46[6] = &v62;
  v46[7] = &v50;
  v46[8] = v54;
  v14 = [(PLEnumerateAndSaveController *)v10 initWithName:v12 fetchRequest:v7 context:v13 options:0 generateContextBlock:v48 didFetchObjectIDsBlock:v47 processResultBlock:v46];

  v15 = (v57 + 5);
  obj = v57[5];
  v16 = [(PLEnumerateAndSaveController *)v14 processObjectsWithError:&obj];
  objc_storeStrong(v15, obj);
  if (v16)
  {
    v17 = PLMigrationGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (!v18)
    {
      goto LABEL_19;
    }

    v19 = [(PLModelMigrationActionBackground *)self logger];
    v20 = v19 == 0;

    if (!v20)
    {
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
      memset(buf, 0, sizeof(buf));
      v21 = PLMigrationGetLog();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      v22 = v51[3];
      v66 = 134217984;
      v67 = v22;
      LODWORD(v44) = 12;
      v23 = _os_log_send_and_compose_impl();

      v24 = [(PLModelMigrationActionBackground *)self logger:&v66];
      [v24 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1093, 0}];

      if (v23 != buf)
      {
        v25 = v23;
LABEL_12:
        free(v25);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    v36 = PLMigrationGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v51[3];
      *buf = 134217984;
      *&buf[4] = v37;
      _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "Updated adjustmentsState for %tu assets.", buf, 0xCu);
    }

LABEL_18:

    goto LABEL_19;
  }

  v63[3] = 3;
  v26 = PLMigrationGetLog();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

  if (!v27)
  {
    goto LABEL_19;
  }

  v28 = [(PLModelMigrationActionBackground *)self logger];
  v29 = v28 == 0;

  if (v29)
  {
    v36 = PLMigrationGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = v57[5];
      *buf = 138543618;
      *&buf[4] = v39;
      *&buf[12] = 2114;
      *&buf[14] = v40;
      _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
    }

    goto LABEL_18;
  }

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
  memset(buf, 0, sizeof(buf));
  v30 = PLMigrationGetLog();
  os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  v33 = v57[5];
  v66 = 138543618;
  v67 = v32;
  v68 = 2114;
  v69 = v33;
  LODWORD(v44) = 22;
  v34 = _os_log_send_and_compose_impl();

  v35 = [(PLModelMigrationActionBackground *)self logger:&v66];
  [v35 logWithMessage:v34 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1096, 16}];

  if (v34 != buf)
  {
    v25 = v34;
    goto LABEL_12;
  }

LABEL_19:
  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v41 = v63[3];
  v42 = v57[5];
  if (v41 != 1 && a4)
  {
    v42 = v42;
    *a4 = v42;
  }

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(v54, 8);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);

  return 1;
}

+ (BOOL)isResetAfterRebuildRequiredWithLibrary:(id)a3
{
  v3 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__1060;
  v14[4] = __Block_byref_object_dispose__1061;
  v15 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__PLModelMigrationAction_UpdateAssetAdjustmentsState_isResetAfterRebuildRequiredWithLibrary___block_invoke;
  v10[3] = &unk_1E7578870;
  v12 = &v16;
  v4 = v3;
  v11 = v4;
  v13 = v14;
  [v4 performBlockAndWait:v10];
  v5 = 0;
  v6 = v17[3];
  if (v6 && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Requesting background migration after rebuild", v9, 2u);
    }

    v5 = 1;
  }

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v16, 8);

  return v5;
}

@end