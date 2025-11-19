@interface PLModelMigrationAction_MigrateSuggestedByClientTypeCameraSmartSharing
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4 shouldForce:(BOOL)a5;
@end

@implementation PLModelMigrationAction_MigrateSuggestedByClientTypeCameraSmartSharing

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4 shouldForce:(BOOL)a5
{
  v140 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 1;
  if (a5 || !MEMORY[0x19EAEE230]())
  {
    *&v104 = 0;
    *(&v104 + 1) = &v104;
    v105 = 0x3032000000;
    v106 = __Block_byref_object_copy__23792;
    v107 = __Block_byref_object_dispose__23793;
    v108 = 0;
    v17 = MEMORY[0x1E695D5E0];
    v18 = +[PLLibraryScope entityName];
    v19 = [v17 fetchRequestWithEntityName:v18];

    v20 = +[PLLibraryScope predicateForActiveLibraryScope];
    [v19 setPredicate:v20];

    [v19 setFetchBatchSize:1];
    v21 = (*(&v104 + 1) + 40);
    obj = *(*(&v104 + 1) + 40);
    v22 = [v7 executeFetchRequest:v19 error:&obj];
    objc_storeStrong(v21, obj);
    if (![v22 count])
    {
      v44 = PLMigrationGetLog();
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);

      if (v45)
      {
        v46 = [(PLModelMigrationActionCore *)self logger];
        v47 = v46 == 0;

        if (v47)
        {
          v54 = PLMigrationGetLog();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v55 = objc_opt_class();
            v56 = NSStringFromClass(v55);
            *buf = 138543362;
            *&buf[4] = v56;
            _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_DEFAULT, "Skipping migration %{public}@: No active library scope.", buf, 0xCu);
          }
        }

        else
        {
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v48 = PLMigrationGetLog();
          os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          LODWORD(v101) = 138543362;
          *(&v101 + 4) = v50;
          LODWORD(v81) = 12;
          v51 = _os_log_send_and_compose_impl();

          v52 = [(PLModelMigrationActionCore *)self logger:&v101];
          [v52 logWithMessage:v51 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{962, 0}];

          if (v51 != buf)
          {
            free(v51);
          }
        }
      }

      v57 = v94[3];
      goto LABEL_38;
    }

    v83 = [v22 firstObject];
    v23 = +[PLManagedAsset fetchRequest];
    v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != 0", @"libraryScopeShareState"];
    [v23 setPredicate:v24];

    [v23 setFetchBatchSize:100];
    v25 = (*(&v104 + 1) + 40);
    v91 = *(*(&v104 + 1) + 40);
    v26 = [v7 executeFetchRequest:v23 error:&v91];
    objc_storeStrong(v25, v91);
    if (![v26 count])
    {
      if (!v26)
      {
        v94[3] = 3;
      }

      goto LABEL_34;
    }

    v27 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v26 count], 0);
    *&v101 = 0;
    *(&v101 + 1) = &v101;
    v102 = 0x2020000000;
    v103 = 0;
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __129__PLModelMigrationAction_MigrateSuggestedByClientTypeCameraSmartSharing_performActionWithManagedObjectContext_error_shouldForce___block_invoke;
    v86[3] = &unk_1E75726E8;
    v88 = &v101;
    v86[4] = self;
    v89 = &v104;
    v90 = &v93;
    v82 = v27;
    v87 = v82;
    v28 = [v7 enumerateWithIncrementalSaveUsingObjects:v26 withBlock:v86];
    v29 = v28;
    v30 = v94[3];
    if (v30 == 2)
    {
      goto LABEL_12;
    }

    if (v28)
    {
      goto LABEL_11;
    }

    if (*(*(&v101 + 1) + 24) < 1)
    {
      v29 = 0;
    }

    else
    {
      [v83 setCountOfAssetsAddedByCameraSmartSharing:?];
      v85 = 0;
      v53 = [v7 save:&v85];
      v29 = v85;
      if (!v53)
      {
LABEL_11:
        v31 = *(&v104 + 1);
        v29 = v29;
        v32 = *(v31 + 40);
        *(v31 + 40) = v29;

        v94[3] = 3;
        goto LABEL_12;
      }

      v30 = v94[3];
    }

    if (v30 == 1)
    {
      v68 = PLMigrationGetLog();
      v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);

      if (!v69)
      {
        goto LABEL_33;
      }

      v70 = [(PLModelMigrationActionCore *)self logger];
      v71 = v70 == 0;

      if (!v71)
      {
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v72 = PLMigrationGetLog();
        os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT);
        v73 = objc_opt_class();
        v74 = NSStringFromClass(v73);
        v75 = *(*(&v101 + 1) + 24);
        v97 = 138543618;
        v98 = v74;
        v99 = 1026;
        LODWORD(v100) = v75;
        LODWORD(v81) = 18;
        v76 = _os_log_send_and_compose_impl();

        v77 = [(PLModelMigrationActionCore *)self logger:&v97];
        [v77 logWithMessage:v76 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1006, 0}];

        if (v76 == buf)
        {
          goto LABEL_33;
        }

        v43 = v76;
        goto LABEL_16;
      }

      v58 = PLMigrationGetLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v78 = objc_opt_class();
        v79 = NSStringFromClass(v78);
        v80 = *(*(&v101 + 1) + 24);
        *buf = 138543618;
        *&buf[4] = v79;
        *&buf[12] = 1026;
        *&buf[14] = v80;
        _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@: Migrated %{public}d assets.", buf, 0x12u);
      }

      goto LABEL_32;
    }

LABEL_12:
    v33 = PLMigrationGetLog();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

    if (!v34)
    {
      goto LABEL_33;
    }

    v35 = [(PLModelMigrationActionCore *)self logger];
    v36 = v35 == 0;

    if (!v36)
    {
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v37 = PLMigrationGetLog();
      os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = *(*(&v104 + 1) + 40);
      v97 = 138543618;
      v98 = v39;
      v99 = 2114;
      v100 = v40;
      LODWORD(v81) = 22;
      v41 = _os_log_send_and_compose_impl();

      v42 = [(PLModelMigrationActionCore *)self logger:&v97];
      [v42 logWithMessage:v41 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1008, 16}];

      if (v41 != buf)
      {
        v43 = v41;
LABEL_16:
        free(v43);
      }

LABEL_33:

      _Block_object_dispose(&v101, 8);
LABEL_34:
      [(PLModelMigrationActionCore *)self finalizeProgress];
      v62 = v94[3];
      v63 = *(*(&v104 + 1) + 40);
      if (v62 != 1 && a4)
      {
        v63 = v63;
        *a4 = v63;
      }

      v57 = v94[3];
LABEL_38:

      _Block_object_dispose(&v104, 8);
      goto LABEL_43;
    }

    v58 = PLMigrationGetLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      v61 = *(*(&v104 + 1) + 40);
      *buf = 138543618;
      *&buf[4] = v60;
      *&buf[12] = 2114;
      *&buf[14] = v61;
      _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
    }

LABEL_32:

    goto LABEL_33;
  }

  v8 = PLMigrationGetLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = [(PLModelMigrationActionCore *)self logger];
    v11 = v10 == 0;

    if (v11)
    {
      v64 = PLMigrationGetLog();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = objc_opt_class();
        v66 = NSStringFromClass(v65);
        *buf = 138543362;
        *&buf[4] = v66;
        _os_log_impl(&dword_19BF1F000, v64, OS_LOG_TYPE_DEFAULT, "Skipping migration %{public}@ on internal builds.", buf, 0xCu);
      }
    }

    else
    {
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v12 = PLMigrationGetLog();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      LODWORD(v104) = 138543362;
      *(&v104 + 4) = v14;
      LODWORD(v81) = 12;
      v15 = _os_log_send_and_compose_impl();

      v16 = [(PLModelMigrationActionCore *)self logger:&v104];
      [v16 logWithMessage:v15 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{947, 0}];

      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  v57 = v94[3];
LABEL_43:
  _Block_object_dispose(&v93, 8);

  return v57;
}

@end