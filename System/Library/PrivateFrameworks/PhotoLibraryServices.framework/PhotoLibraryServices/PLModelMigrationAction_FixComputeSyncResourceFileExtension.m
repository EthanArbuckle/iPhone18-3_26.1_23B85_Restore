@interface PLModelMigrationAction_FixComputeSyncResourceFileExtension
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_FixComputeSyncResourceFileExtension

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v106[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 1;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLInternalResource entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"recipeID", 327689];
  v106[0] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"localAvailability", 1];
  v106[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];
  [v9 setPredicate:v14];

  v105 = @"asset";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v15];

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
  v16 = [PLEnumerateAndSaveController alloc];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __106__PLModelMigrationAction_FixComputeSyncResourceFileExtension_performActionWithManagedObjectContext_error___block_invoke;
  v52[3] = &unk_1E7575B30;
  v19 = v6;
  v53 = v19;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __106__PLModelMigrationAction_FixComputeSyncResourceFileExtension_performActionWithManagedObjectContext_error___block_invoke_2;
  v51[3] = &unk_1E7572E50;
  v51[4] = self;
  v51[5] = &v54;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __106__PLModelMigrationAction_FixComputeSyncResourceFileExtension_performActionWithManagedObjectContext_error___block_invoke_3;
  v50[3] = &unk_1E756C670;
  v50[4] = self;
  v50[5] = &v60;
  v50[6] = &v66;
  v50[7] = &v54;
  v20 = [(PLEnumerateAndSaveController *)v16 initWithName:v18 fetchRequest:v9 context:v19 options:4 generateContextBlock:v52 didFetchObjectIDsBlock:v51 processResultBlock:v50];

  v21 = (v61 + 5);
  obj = v61[5];
  LOBYTE(v12) = [(PLEnumerateAndSaveController *)v20 processObjectsWithError:&obj];
  objc_storeStrong(v21, obj);
  if (v12)
  {
    v22 = PLMigrationGetLog();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (!v23)
    {
      goto LABEL_16;
    }

    v24 = [(PLModelMigrationActionCore *)self logger];
    v25 = v24 == 0;

    if (!v25)
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
      v26 = PLMigrationGetLog();
      os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      v27 = [v55[5] totalUnitCount];
      v70 = 134217984;
      v71 = v27;
      LODWORD(v48) = 12;
      v28 = _os_log_send_and_compose_impl();

      v29 = [(PLModelMigrationActionCore *)self logger:&v70];
      [v29 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1253, 0}];

      goto LABEL_8;
    }

    v39 = PLMigrationGetLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [v55[5] totalUnitCount];
      *buf = 134217984;
      *&buf[4] = v40;
      _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "[CCSS] Fixed ComputeSync resource file extension for %lld assets", buf, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

  v67[3] = 3;
  v30 = PLMigrationGetLog();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

  if (!v31)
  {
    goto LABEL_16;
  }

  v32 = [(PLModelMigrationActionCore *)self logger];
  v33 = v32 == 0;

  if (v33)
  {
    v39 = PLMigrationGetLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = v61[5];
      *buf = 138543618;
      *&buf[4] = v42;
      *&buf[12] = 2112;
      *&buf[14] = v43;
      _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
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
  v34 = PLMigrationGetLog();
  os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  v37 = v61[5];
  v70 = 138543618;
  v71 = v36;
  v72 = 2112;
  v73 = v37;
  LODWORD(v48) = 22;
  v28 = _os_log_send_and_compose_impl();

  v38 = [(PLModelMigrationActionCore *)self logger:&v70];
  [v38 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1251, 16}];

LABEL_8:
  if (v28 != buf)
  {
    free(v28);
  }

LABEL_16:
  v44 = v67[3];
  v45 = v61[5];
  if (v44 != 1 && a4)
  {
    v45 = v45;
    *a4 = v45;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v46 = v67[3];

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
  return v46;
}

@end