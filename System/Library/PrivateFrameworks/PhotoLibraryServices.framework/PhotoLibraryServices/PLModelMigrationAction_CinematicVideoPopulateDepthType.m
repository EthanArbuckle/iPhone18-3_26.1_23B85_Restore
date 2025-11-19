@interface PLModelMigrationAction_CinematicVideoPopulateDepthType
- (id)buildFetchRequest;
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_CinematicVideoPopulateDepthType

- (id)buildFetchRequest
{
  v18[3] = *MEMORY[0x1E69E9840];
  v2 = [(PLModelMigrationActionBackground *)self resumeMarker];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = MEMORY[0x1E696AB28];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kind", 1];
  v18[0] = v7;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"depthType", 0];
  v18[1] = v8;
  if (v2)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"addedDate", v2];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v9 = ;
  v18[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v11 = [v6 andPredicateWithSubpredicates:v10];
  [v5 setPredicate:v11];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
  v17 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  [v5 setSortDescriptors:v13];

  [v5 setFetchBatchSize:100];
  v16[0] = @"master.mediaMetadata";
  v16[1] = @"modernResources";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [v5 setRelationshipKeyPathsForPrefetching:v14];

  return v5;
}

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v111 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 1;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__1060;
  v70 = __Block_byref_object_dispose__1061;
  v71 = 0;
  v7 = [(PLModelMigrationAction_CinematicVideoPopulateDepthType *)self buildFetchRequest];
  v8 = v67 + 5;
  obj = v67[5];
  v9 = [v6 executeFetchRequest:v7 error:&obj];
  objc_storeStrong(v8, obj);
  if (v9)
  {
    v10 = -[PLModelMigrationActionBackground cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v9 count], 0);
    v11 = PLMigrationGetLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

    if (v12)
    {
      v13 = [(PLModelMigrationActionBackground *)self logger];
      v14 = v13 == 0;

      if (v14)
      {
        v29 = PLMigrationGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [v9 count];
          *buf = 134217984;
          *&buf[4] = v30;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_INFO, "Populating depthType for %lu video assets", buf, 0xCu);
        }
      }

      else
      {
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
        v81 = 0u;
        v82 = 0u;
        memset(buf, 0, sizeof(buf));
        v15 = PLMigrationGetLog();
        os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
        v16 = [v9 count];
        v76 = 134217984;
        v77 = v16;
        LODWORD(v59) = 12;
        v17 = _os_log_send_and_compose_impl();

        v18 = [(PLModelMigrationActionBackground *)self logger:&v76];
        [v18 logWithMessage:v17 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{312, 1}];

        if (v17 != buf)
        {
          free(v17);
        }
      }
    }

    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __102__PLModelMigrationAction_CinematicVideoPopulateDepthType_performActionWithManagedObjectContext_error___block_invoke;
    v61[3] = &unk_1E756DBE0;
    v63 = &v72;
    v61[4] = self;
    v64 = &v66;
    v31 = v10;
    v62 = v31;
    v32 = [v6 enumerateWithIncrementalSaveUsingObjects:v9 withBlock:v61];
    if (v32 && !v67[5])
    {
      objc_storeStrong(v67 + 5, v32);
      v73[3] = 3;
      v41 = PLMigrationGetLog();
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);

      if (v42)
      {
        v43 = [(PLModelMigrationActionBackground *)self logger];
        v44 = v43 == 0;

        if (!v44)
        {
          v60 = a4;
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
          v81 = 0u;
          v82 = 0u;
          memset(buf, 0, sizeof(buf));
          v45 = PLMigrationGetLog();
          os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          v76 = 138543618;
          v77 = v47;
          v78 = 2112;
          v79 = v32;
          LODWORD(v59) = 22;
          v39 = _os_log_send_and_compose_impl();

          a4 = v60;
          v48 = [(PLModelMigrationActionBackground *)self logger:&v76];
          [v48 logWithMessage:v39 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{341, 16}];

LABEL_21:
          if (v39 != buf)
          {
            free(v39);
          }

          goto LABEL_32;
        }

        v49 = PLMigrationGetLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v55 = objc_opt_class();
          v56 = NSStringFromClass(v55);
          *buf = 138543618;
          *&buf[4] = v56;
          *&buf[12] = 2112;
          *&buf[14] = v32;
          _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v33 = PLMigrationGetLog();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);

      if (v34)
      {
        v35 = [(PLModelMigrationActionBackground *)self logger];
        v36 = v35 == 0;

        if (!v36)
        {
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
          v81 = 0u;
          v82 = 0u;
          memset(buf, 0, sizeof(buf));
          v37 = PLMigrationGetLog();
          os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
          v38 = [v31 completedUnitCount];
          v76 = 134217984;
          v77 = v38;
          LODWORD(v59) = 12;
          v39 = _os_log_send_and_compose_impl();

          v40 = [(PLModelMigrationActionBackground *)self logger:&v76];
          [v40 logWithMessage:v39 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{343, 1}];

          goto LABEL_21;
        }

        v49 = PLMigrationGetLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = [v31 completedUnitCount];
          *buf = 134217984;
          *&buf[4] = v50;
          _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_INFO, "Completed update of %lu assets", buf, 0xCu);
        }

LABEL_31:
      }
    }

LABEL_32:

    goto LABEL_33;
  }

  v73[3] = 3;
  v19 = PLMigrationGetLog();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

  if (v20)
  {
    v21 = [(PLModelMigrationActionBackground *)self logger];
    v22 = v21 == 0;

    if (v22)
    {
      v51 = PLMigrationGetLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        v54 = v67[5];
        *buf = 138543618;
        *&buf[4] = v53;
        *&buf[12] = 2112;
        *&buf[14] = v54;
        _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %@", buf, 0x16u);
      }
    }

    else
    {
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
      v81 = 0u;
      v82 = 0u;
      memset(buf, 0, sizeof(buf));
      v23 = PLMigrationGetLog();
      os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = v67[5];
      v76 = 138543618;
      v77 = v25;
      v78 = 2112;
      v79 = v26;
      LODWORD(v59) = 22;
      v27 = _os_log_send_and_compose_impl();

      v28 = [(PLModelMigrationActionBackground *)self logger:&v76];
      [v28 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{347, 16}];

      if (v27 != buf)
      {
        free(v27);
      }
    }
  }

LABEL_33:
  if (v73[3] == 1)
  {
    [(PLModelMigrationActionBackground *)self setResumeMarkerValue:0];
  }

  [(PLModelMigrationActionBackground *)self finalizeProgress];
  if (a4)
  {
    *a4 = v67[5];
  }

  v57 = v73[3];

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v72, 8);

  return v57;
}

@end