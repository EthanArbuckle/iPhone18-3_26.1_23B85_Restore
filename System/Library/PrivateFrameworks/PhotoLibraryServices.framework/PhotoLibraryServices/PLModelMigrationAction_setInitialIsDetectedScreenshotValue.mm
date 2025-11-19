@interface PLModelMigrationAction_setInitialIsDetectedScreenshotValue
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_setInitialIsDetectedScreenshotValue

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v109[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 1;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__1060;
  v68 = __Block_byref_object_dispose__1061;
  v69 = 0;
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
  v109[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:1];
  [v13 setSortDescriptors:v15];

  if (v12)
  {
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v12];
    [v13 setPredicate:v16];
  }

  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__1060;
  v62[4] = __Block_byref_object_dispose__1061;
  v63 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v17 = [PLEnumerateAndSaveController alloc];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __106__PLModelMigrationAction_setInitialIsDetectedScreenshotValue_performActionWithManagedObjectContext_error___block_invoke;
  v56[3] = &unk_1E7575B30;
  v20 = v8;
  v57 = v20;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __106__PLModelMigrationAction_setInitialIsDetectedScreenshotValue_performActionWithManagedObjectContext_error___block_invoke_2;
  v55[3] = &unk_1E7572E50;
  v55[4] = self;
  v55[5] = v62;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __106__PLModelMigrationAction_setInitialIsDetectedScreenshotValue_performActionWithManagedObjectContext_error___block_invoke_3;
  v54[3] = &unk_1E756DD18;
  v54[4] = self;
  v54[5] = &v64;
  v54[6] = &v70;
  v54[7] = &v58;
  v54[8] = v62;
  v21 = [(PLEnumerateAndSaveController *)v17 initWithName:v19 fetchRequest:v13 context:v20 options:4 generateContextBlock:v56 didFetchObjectIDsBlock:v55 processResultBlock:v54];

  v22 = (v65 + 5);
  obj = v65[5];
  v23 = [(PLEnumerateAndSaveController *)v21 processObjectsWithError:&obj];
  objc_storeStrong(v22, obj);
  if (v23)
  {
    v24 = PLMigrationGetLog();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (!v25)
    {
      goto LABEL_22;
    }

    v26 = [(PLModelMigrationActionBackground *)self logger];
    v27 = v26 == 0;

    if (!v27)
    {
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
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      memset(buf, 0, sizeof(buf));
      v28 = PLMigrationGetLog();
      os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      v29 = v59[3];
      v74 = 134217984;
      v75 = v29;
      LODWORD(v52) = 12;
      v30 = _os_log_send_and_compose_impl();

      v31 = [(PLModelMigrationActionBackground *)self logger:&v74];
      [v31 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{880, 0}];

      if (v30 == buf)
      {
        goto LABEL_22;
      }

      v32 = v30;
LABEL_15:
      free(v32);
      goto LABEL_22;
    }

    v43 = PLMigrationGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v59[3];
      *buf = 134217984;
      *&buf[4] = v44;
      _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "Set initial isDetectedScreenshot for %tu assets.", buf, 0xCu);
    }
  }

  else
  {
    v71[3] = 3;
    v33 = PLMigrationGetLog();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

    if (!v34)
    {
      goto LABEL_22;
    }

    v35 = [(PLModelMigrationActionBackground *)self logger];
    v36 = v35 == 0;

    if (!v36)
    {
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
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      memset(buf, 0, sizeof(buf));
      v37 = PLMigrationGetLog();
      os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = v65[5];
      v74 = 138543618;
      v75 = v39;
      v76 = 2114;
      v77 = v40;
      LODWORD(v52) = 22;
      v41 = _os_log_send_and_compose_impl();

      v42 = [(PLModelMigrationActionBackground *)self logger:&v74];
      [v42 logWithMessage:v41 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{883, 16}];

      if (v41 == buf)
      {
        goto LABEL_22;
      }

      v32 = v41;
      goto LABEL_15;
    }

    v43 = PLMigrationGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = v65[5];
      *buf = 138543618;
      *&buf[4] = v46;
      *&buf[12] = 2114;
      *&buf[14] = v47;
      _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
    }
  }

LABEL_22:
  if (v71[3] == 1)
  {
    [(PLModelMigrationActionBackground *)self setResumeMarkerValue:0];
  }

  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v48 = v71[3];
  v49 = v65[5];
  if (v48 != 1 && a4)
  {
    v49 = v49;
    *a4 = v49;
  }

  v50 = v71[3];
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(v62, 8);

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v70, 8);

  return v50;
}

@end