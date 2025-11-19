@interface PLModelMigrationAction_UnTrashSharedDuplicates
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_UnTrashSharedDuplicates

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v132 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 1;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__23792;
  v86 = __Block_byref_object_dispose__23793;
  v87 = 0;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLLibraryScope entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = +[PLLibraryScope predicateForActiveLibraryScope];
  [v8 setPredicate:v9];

  [v8 setFetchBatchSize:1];
  v10 = v83 + 5;
  obj = v83[5];
  v74 = [v5 executeFetchRequest:v8 error:&obj];
  objc_storeStrong(v10, obj);
  if ([v74 count])
  {
    v73 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"trashedState", 0];
    v72 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"master"];
    v11 = MEMORY[0x1E695D5E0];
    v12 = +[PLManagedAsset entityName];
    v13 = [v11 fetchRequestWithEntityName:v12];

    v14 = MEMORY[0x1E696AB28];
    v100[0] = v73;
    v100[1] = v72;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:2];
    v16 = [v14 andPredicateWithSubpredicates:v15];
    [v13 setPredicate:v16];

    v99 = @"master";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
    [v13 setRelationshipKeyPathsForPrefetching:v17];

    [v13 setFetchBatchSize:100];
    v18 = v83 + 5;
    v80 = v83[5];
    v19 = [v5 executeFetchRequest:v13 error:&v80];
    objc_storeStrong(v18, v80);
    *&v96 = 0;
    *(&v96 + 1) = &v96;
    v97 = 0x2020000000;
    v98 = 0;
    if (![v19 count])
    {
      if (!v19)
      {
        v89[3] = 3;
      }

      goto LABEL_33;
    }

    v20 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v19 count], 0);
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __94__PLModelMigrationAction_UnTrashSharedDuplicates_performActionWithManagedObjectContext_error___block_invoke;
    v75[3] = &unk_1E75726E8;
    v77 = &v96;
    v75[4] = self;
    v78 = &v82;
    v79 = &v88;
    v70 = v20;
    v76 = v70;
    v21 = [v5 enumerateWithIncrementalSaveUsingObjects:v19 withBlock:v75];
    v22 = v21;
    v23 = v89[3];
    if (v23 == 2 || !v21)
    {
      if (v23 == 1)
      {
        v33 = PLMigrationGetLog();
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

        if (!v34)
        {
          goto LABEL_32;
        }

        v35 = [(PLModelMigrationActionCore *)self logger];
        v36 = v35 == 0;

        if (!v36)
        {
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v37 = PLMigrationGetLog();
          os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          v40 = *(*(&v96 + 1) + 24);
          v92 = 138543618;
          v93 = v39;
          v94 = 1026;
          LODWORD(v95) = v40;
          LODWORD(v69) = 18;
          v41 = _os_log_send_and_compose_impl();

          v42 = [(PLModelMigrationActionCore *)self logger:&v92];
          [v42 logWithMessage:v41 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1169, 0}];

          if (v41 != buf)
          {
            v43 = v41;
LABEL_21:
            free(v43);
          }

LABEL_32:

LABEL_33:
          [(PLModelMigrationActionCore *)self finalizeProgress];
          v65 = v89[3];
          v66 = v83[5];
          if (v65 != 1 && a4)
          {
            v66 = v66;
            *a4 = v66;
          }

          v57 = v89[3];
          _Block_object_dispose(&v96, 8);

          goto LABEL_37;
        }

        v58 = PLMigrationGetLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v62 = objc_opt_class();
          v63 = NSStringFromClass(v62);
          v64 = *(*(&v96 + 1) + 24);
          *buf = 138543618;
          *&buf[4] = v63;
          *&buf[12] = 1026;
          *&buf[14] = v64;
          _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@: Un-trashed %{public}d assets.", buf, 0x12u);
        }

LABEL_31:

        goto LABEL_32;
      }
    }

    else
    {
      objc_storeStrong(v83 + 5, v21);
      v89[3] = 3;
    }

    v44 = PLMigrationGetLog();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);

    if (!v45)
    {
      goto LABEL_32;
    }

    v46 = [(PLModelMigrationActionCore *)self logger];
    v47 = v46 == 0;

    if (!v47)
    {
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v48 = PLMigrationGetLog();
      os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = v83[5];
      v92 = 138543618;
      v93 = v50;
      v94 = 2114;
      v95 = v51;
      LODWORD(v69) = 22;
      v52 = _os_log_send_and_compose_impl();

      v53 = [(PLModelMigrationActionCore *)self logger:&v92];
      [v53 logWithMessage:v52 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1171, 16}];

      if (v52 != buf)
      {
        v43 = v52;
        goto LABEL_21;
      }

      goto LABEL_32;
    }

    v58 = PLMigrationGetLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      v61 = v83[5];
      *buf = 138543618;
      *&buf[4] = v60;
      *&buf[12] = 2114;
      *&buf[14] = v61;
      _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
    }

    goto LABEL_31;
  }

  v24 = PLMigrationGetLog();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

  if (v25)
  {
    v26 = [(PLModelMigrationActionCore *)self logger];
    v27 = v26 == 0;

    if (v27)
    {
      v54 = PLMigrationGetLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        *buf = 138543362;
        *&buf[4] = v56;
        _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_DEFAULT, "Skipping migration step %{public}@: No active library scope.", buf, 0xCu);
      }
    }

    else
    {
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v28 = PLMigrationGetLog();
      os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      LODWORD(v96) = 138543362;
      *(&v96 + 4) = v30;
      LODWORD(v68) = 12;
      v31 = _os_log_send_and_compose_impl();

      v32 = [(PLModelMigrationActionCore *)self logger:&v96];
      [v32 logWithMessage:v31 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1127, 0}];

      if (v31 != buf)
      {
        free(v31);
      }
    }
  }

  v57 = v89[3];
LABEL_37:

  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v88, 8);

  return v57;
}

@end