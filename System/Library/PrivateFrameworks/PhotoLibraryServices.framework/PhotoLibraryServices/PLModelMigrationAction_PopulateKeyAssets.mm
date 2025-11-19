@interface PLModelMigrationAction_PopulateKeyAssets
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_PopulateKeyAssets

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v105 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 1;
  v7 = +[PLGenericAlbum predicateForAlbumsSupportingCachedKeyAssets];
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLGenericAlbum entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  [v10 setPredicate:v7];
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__43771;
  v64 = __Block_byref_object_dispose__43772;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__43771;
  v58 = __Block_byref_object_dispose__43772;
  v59 = 0;
  v11 = [PLEnumerateAndSaveController alloc];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __88__PLModelMigrationAction_PopulateKeyAssets_performActionWithManagedObjectContext_error___block_invoke;
  v52[3] = &unk_1E7575B30;
  v53 = v6;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __88__PLModelMigrationAction_PopulateKeyAssets_performActionWithManagedObjectContext_error___block_invoke_2;
  v51[3] = &unk_1E7572E50;
  v51[4] = self;
  v51[5] = &v54;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __88__PLModelMigrationAction_PopulateKeyAssets_performActionWithManagedObjectContext_error___block_invoke_3;
  v46[3] = &unk_1E756C760;
  v46[4] = self;
  v48 = &v60;
  v49 = &v66;
  v14 = v53;
  v47 = v14;
  v50 = &v54;
  v15 = [(PLEnumerateAndSaveController *)v11 initWithName:v13 fetchRequest:v10 context:v14 options:4 generateContextBlock:v52 didFetchObjectIDsBlock:v51 processResultBlock:v46];

  v16 = (v61 + 5);
  obj = v61[5];
  v17 = [(PLEnumerateAndSaveController *)v15 processObjectsWithError:&obj];
  objc_storeStrong(v16, obj);
  if (v17)
  {
    v18 = PLMigrationGetLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (!v19)
    {
      goto LABEL_16;
    }

    v20 = [(PLModelMigrationActionCore *)self logger];
    v21 = v20 == 0;

    if (!v21)
    {
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
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      memset(buf, 0, sizeof(buf));
      v22 = PLMigrationGetLog();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      v23 = [v55[5] totalUnitCount];
      v70 = 134217984;
      v71 = v23;
      LODWORD(v44) = 12;
      v24 = _os_log_send_and_compose_impl();

      v25 = [(PLModelMigrationActionCore *)self logger:&v70];
      [v25 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1111, 0}];

      goto LABEL_8;
    }

    v35 = PLMigrationGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v55[5] totalUnitCount];
      *buf = 134217984;
      *&buf[4] = v36;
      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Populated keyAssets for %lld albums", buf, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

  v67[3] = 3;
  v26 = PLMigrationGetLog();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

  if (!v27)
  {
    goto LABEL_16;
  }

  v28 = [(PLModelMigrationActionCore *)self logger];
  v29 = v28 == 0;

  if (v29)
  {
    v35 = PLMigrationGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = v61[5];
      *buf = 138543618;
      *&buf[4] = v38;
      *&buf[12] = 2112;
      *&buf[14] = v39;
      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

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
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  memset(buf, 0, sizeof(buf));
  v30 = PLMigrationGetLog();
  os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  v33 = v61[5];
  v70 = 138543618;
  v71 = v32;
  v72 = 2112;
  v73 = v33;
  LODWORD(v44) = 22;
  v24 = _os_log_send_and_compose_impl();

  v34 = [(PLModelMigrationActionCore *)self logger:&v70];
  [v34 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1109, 16}];

LABEL_8:
  if (v24 != buf)
  {
    free(v24);
  }

LABEL_16:
  v40 = v67[3];
  v41 = v61[5];
  if (v40 != 1 && a4)
  {
    v41 = v41;
    *a4 = v41;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v42 = v67[3];

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
  return v42;
}

@end