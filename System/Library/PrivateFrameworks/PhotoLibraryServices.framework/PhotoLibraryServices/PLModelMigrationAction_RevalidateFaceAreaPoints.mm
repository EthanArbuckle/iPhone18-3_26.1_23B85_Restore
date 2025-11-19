@interface PLModelMigrationAction_RevalidateFaceAreaPoints
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_RevalidateFaceAreaPoints

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v122[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PLModelMigrationActionBackground *)self resumeMarker];
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.@count > 0", @"detectedFaces"];
  v122[0] = v11;
  if (v6)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"addedDate", v6];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v12 = ;
  v122[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];
  [v9 setPredicate:v14];

  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
  v121 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
  [v9 setSortDescriptors:v16];

  v120 = @"detectedFaces";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v17];

  [v9 setFetchBatchSize:100];
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 1;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__1060;
  v79 = __Block_byref_object_dispose__1061;
  v80 = 0;
  obj = 0;
  v18 = [v5 executeFetchRequest:v9 error:&obj];
  objc_storeStrong(&v80, obj);
  if (v18)
  {
    v19 = -[PLModelMigrationActionBackground cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v18 count], 0);
    v20 = PLMigrationGetLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);

    if (v21)
    {
      v22 = [(PLModelMigrationActionBackground *)self logger];
      v23 = v22 == 0;

      if (v23)
      {
        v38 = PLMigrationGetLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = [v18 count];
          *buf = 134217984;
          *&buf[4] = v39;
          _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_INFO, "Revalidating faceAreaPoints for %lu assets", buf, 0xCu);
        }
      }

      else
      {
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
        memset(buf, 0, sizeof(buf));
        v24 = PLMigrationGetLog();
        os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
        v25 = [v18 count];
        v85 = 134217984;
        v86 = v25;
        LODWORD(v68) = 12;
        v26 = _os_log_send_and_compose_impl();

        v27 = [(PLModelMigrationActionBackground *)self logger:&v85];
        [v27 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{225, 1}];

        if (v26 != buf)
        {
          free(v26);
        }
      }
    }

    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __95__PLModelMigrationAction_RevalidateFaceAreaPoints_performActionWithManagedObjectContext_error___block_invoke;
    v70[3] = &unk_1E756DBE0;
    v70[4] = self;
    v72 = &v81;
    v73 = &v75;
    v40 = v19;
    v71 = v40;
    v41 = [v5 enumerateWithIncrementalSaveUsingObjects:v18 withBlock:v70];
    if (v41 && !v76[5])
    {
      objc_storeStrong(v76 + 5, v41);
      v82[3] = 3;
      v50 = PLMigrationGetLog();
      v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);

      if (v51)
      {
        v52 = [(PLModelMigrationActionBackground *)self logger];
        v53 = v52 == 0;

        if (!v53)
        {
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
          memset(buf, 0, sizeof(buf));
          v54 = PLMigrationGetLog();
          os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
          v55 = objc_opt_class();
          v56 = NSStringFromClass(v55);
          v85 = 138543618;
          v86 = v56;
          v87 = 2112;
          v88 = v41;
          LODWORD(v68) = 22;
          v48 = _os_log_send_and_compose_impl();

          v57 = [(PLModelMigrationActionBackground *)self logger:&v85];
          [v57 logWithMessage:v48 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{248, 16}];

LABEL_24:
          if (v48 != buf)
          {
            free(v48);
          }

          goto LABEL_35;
        }

        v58 = PLMigrationGetLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v64 = objc_opt_class();
          v65 = NSStringFromClass(v64);
          *buf = 138543618;
          *&buf[4] = v65;
          *&buf[12] = 2112;
          *&buf[14] = v41;
          _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v42 = PLMigrationGetLog();
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_INFO);

      if (v43)
      {
        v44 = [(PLModelMigrationActionBackground *)self logger];
        v45 = v44 == 0;

        if (!v45)
        {
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
          memset(buf, 0, sizeof(buf));
          v46 = PLMigrationGetLog();
          os_log_type_enabled(v46, OS_LOG_TYPE_INFO);
          v47 = [v40 completedUnitCount];
          v85 = 134217984;
          v86 = v47;
          LODWORD(v68) = 12;
          v48 = _os_log_send_and_compose_impl();

          v49 = [(PLModelMigrationActionBackground *)self logger:&v85];
          [v49 logWithMessage:v48 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{250, 1}];

          goto LABEL_24;
        }

        v58 = PLMigrationGetLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          v59 = [v40 completedUnitCount];
          *buf = 134217984;
          *&buf[4] = v59;
          _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_INFO, "Completed update of %lu assets", buf, 0xCu);
        }

LABEL_34:
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  v82[3] = 3;
  v28 = PLMigrationGetLog();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

  if (v29)
  {
    v30 = [(PLModelMigrationActionBackground *)self logger];
    v31 = v30 == 0;

    if (v31)
    {
      v60 = PLMigrationGetLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        v63 = v76[5];
        *buf = 138543618;
        *&buf[4] = v62;
        *&buf[12] = 2112;
        *&buf[14] = v63;
        _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %@", buf, 0x16u);
      }
    }

    else
    {
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
      memset(buf, 0, sizeof(buf));
      v32 = PLMigrationGetLog();
      os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = v76[5];
      v85 = 138543618;
      v86 = v34;
      v87 = 2112;
      v88 = v35;
      LODWORD(v68) = 22;
      v36 = _os_log_send_and_compose_impl();

      v37 = [(PLModelMigrationActionBackground *)self logger:&v85];
      [v37 logWithMessage:v36 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{254, 16}];

      if (v36 != buf)
      {
        free(v36);
      }
    }
  }

LABEL_36:
  if (v82[3] == 1)
  {
    [(PLModelMigrationActionBackground *)self setResumeMarkerValue:0];
  }

  [(PLModelMigrationActionBackground *)self finalizeProgress];
  if (a4)
  {
    *a4 = v76[5];
  }

  v66 = v82[3];

  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v81, 8);

  return v66;
}

@end