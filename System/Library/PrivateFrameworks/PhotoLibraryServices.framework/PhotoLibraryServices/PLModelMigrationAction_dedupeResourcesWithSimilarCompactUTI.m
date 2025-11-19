@interface PLModelMigrationAction_dedupeResourcesWithSimilarCompactUTI
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_dedupeResourcesWithSimilarCompactUTI

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v111[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 1;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__1060;
  v69 = __Block_byref_object_dispose__1061;
  v70 = 0;
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

  v13 = +[PLInternalResource fetchRequest];
  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v111[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:1];
  [v13 setSortDescriptors:v15];

  v110 = @"asset";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
  [v13 setRelationshipKeyPathsForPrefetching:v16];

  if (v12)
  {
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K BEGINSWITH %@", @"compactUTI", @"_"];
    [v13 setPredicate:v17];
  }

  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x3032000000;
  v63[3] = __Block_byref_object_copy__1060;
  v63[4] = __Block_byref_object_dispose__1061;
  v64 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v18 = [PLEnumerateAndSaveController alloc];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __107__PLModelMigrationAction_dedupeResourcesWithSimilarCompactUTI_performActionWithManagedObjectContext_error___block_invoke;
  v57[3] = &unk_1E7575B30;
  v21 = v8;
  v58 = v21;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __107__PLModelMigrationAction_dedupeResourcesWithSimilarCompactUTI_performActionWithManagedObjectContext_error___block_invoke_2;
  v56[3] = &unk_1E7572E50;
  v56[4] = self;
  v56[5] = v63;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __107__PLModelMigrationAction_dedupeResourcesWithSimilarCompactUTI_performActionWithManagedObjectContext_error___block_invoke_3;
  v55[3] = &unk_1E7564A70;
  v55[4] = self;
  v55[5] = &v65;
  v55[6] = &v71;
  v55[7] = &v59;
  v55[8] = v63;
  v22 = [(PLEnumerateAndSaveController *)v18 initWithName:v20 fetchRequest:v13 context:v21 options:4 generateContextBlock:v57 didFetchObjectIDsBlock:v56 processResultBlock:v55];

  v23 = (v66 + 5);
  obj = v66[5];
  v24 = [(PLEnumerateAndSaveController *)v22 processObjectsWithError:&obj];
  objc_storeStrong(v23, obj);
  if (v24)
  {
    v25 = PLMigrationGetLog();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (!v26)
    {
      goto LABEL_22;
    }

    v27 = [(PLModelMigrationActionBackground *)self logger];
    v28 = v27 == 0;

    if (!v28)
    {
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
      v80 = 0u;
      v81 = 0u;
      memset(buf, 0, sizeof(buf));
      v29 = PLMigrationGetLog();
      os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      v30 = v60[3];
      v75 = 134217984;
      v76 = v30;
      LODWORD(v53) = 12;
      v31 = _os_log_send_and_compose_impl();

      v32 = [(PLModelMigrationActionBackground *)self logger:&v75];
      [v32 logWithMessage:v31 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{973, 0}];

      if (v31 == buf)
      {
        goto LABEL_22;
      }

      v33 = v31;
LABEL_15:
      free(v33);
      goto LABEL_22;
    }

    v44 = PLMigrationGetLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v60[3];
      *buf = 134217984;
      *&buf[4] = v45;
      _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_DEFAULT, "Deleted %tu resources duplicated by UTI.", buf, 0xCu);
    }
  }

  else
  {
    v72[3] = 3;
    v34 = PLMigrationGetLog();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);

    if (!v35)
    {
      goto LABEL_22;
    }

    v36 = [(PLModelMigrationActionBackground *)self logger];
    v37 = v36 == 0;

    if (!v37)
    {
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
      v80 = 0u;
      v81 = 0u;
      memset(buf, 0, sizeof(buf));
      v38 = PLMigrationGetLog();
      os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = v66[5];
      v75 = 138543618;
      v76 = v40;
      v77 = 2114;
      v78 = v41;
      LODWORD(v53) = 22;
      v42 = _os_log_send_and_compose_impl();

      v43 = [(PLModelMigrationActionBackground *)self logger:&v75];
      [v43 logWithMessage:v42 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{976, 16}];

      if (v42 == buf)
      {
        goto LABEL_22;
      }

      v33 = v42;
      goto LABEL_15;
    }

    v44 = PLMigrationGetLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = v66[5];
      *buf = 138543618;
      *&buf[4] = v47;
      *&buf[12] = 2114;
      *&buf[14] = v48;
      _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
    }
  }

LABEL_22:
  if (v72[3] == 1)
  {
    [(PLModelMigrationActionBackground *)self setResumeMarkerValue:0];
  }

  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v49 = v72[3];
  v50 = v66[5];
  if (v49 != 1 && a4)
  {
    v50 = v50;
    *a4 = v50;
  }

  v51 = v72[3];
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(v63, 8);

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v71, 8);

  return v51;
}

@end