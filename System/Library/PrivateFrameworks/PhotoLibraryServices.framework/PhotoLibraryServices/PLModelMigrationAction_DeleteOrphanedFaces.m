@interface PLModelMigrationAction_DeleteOrphanedFaces
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_DeleteOrphanedFaces

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v115[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[PLDetectedFace fetchRequest];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"assetForFace"];
  v115[0] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"faceCrop"];
  v115[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:2];
  [v7 addObjectsFromArray:v10];

  if ([(PLModelMigrationActionCore *)self startingSchemaVersion]>= 0x427D)
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"assetForTemporalDetectedFaces"];
    [v7 addObject:v11];
  }

  v12 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v7];
  [v6 setPredicate:v12];

  [v6 setFetchBatchSize:100];
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 1;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__23792;
  v74 = __Block_byref_object_dispose__23793;
  v75 = 0;
  v69 = 0;
  v13 = [v5 executeFetchRequest:v6 error:&v69];
  v62 = v69;
  if ([v13 count])
  {
    v14 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v13 count], 0);
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __90__PLModelMigrationAction_DeleteOrphanedFaces_performActionWithManagedObjectContext_error___block_invoke;
    v64[3] = &unk_1E7569CA8;
    v64[4] = self;
    v67 = &v70;
    v68 = &v76;
    v65 = v5;
    v15 = v14;
    v66 = v15;
    v16 = [v65 enumerateWithIncrementalSaveUsingObjects:v13 withBlock:v64];
    if (v16)
    {
      v77[3] = 3;
      v17 = PLMigrationGetLog();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

      if (v18)
      {
        v19 = [(PLModelMigrationActionCore *)self logger];
        v20 = v19 == 0;

        if (v20)
        {
          v43 = PLMigrationGetLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = objc_opt_class();
            v45 = NSStringFromClass(v44);
            *buf = 138543618;
            *&buf[4] = v45;
            *&buf[12] = 2114;
            *&buf[14] = v16;
            _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v113 = 0u;
          v114 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v21 = PLMigrationGetLog();
          os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          v80 = 138543618;
          v81 = v23;
          v82 = 2114;
          v83 = v16;
          LODWORD(v61) = 22;
          v24 = _os_log_send_and_compose_impl();

          v25 = [(PLModelMigrationActionCore *)self logger:&v80];
          [v25 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{782, 16}];

          if (v24 != buf)
          {
            free(v24);
          }
        }
      }

      if (v71[5])
      {
        v46 = v71[5];
      }

      else
      {
        v46 = v16;
      }

      objc_storeStrong(v71 + 5, v46);
    }

    else
    {
      v35 = PLMigrationGetLog();
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

      if (v36)
      {
        v37 = [(PLModelMigrationActionCore *)self logger];
        v38 = v37 == 0;

        if (v38)
        {
          v53 = PLMigrationGetLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = [v13 count];
            *buf = 134217984;
            *&buf[4] = v54;
            _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_DEFAULT, "Deleted orphaned faces: %tu", buf, 0xCu);
          }
        }

        else
        {
          v113 = 0u;
          v114 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v39 = PLMigrationGetLog();
          os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
          v40 = [v13 count];
          v80 = 134217984;
          v81 = v40;
          LODWORD(v61) = 12;
          v41 = _os_log_send_and_compose_impl();

          v42 = [(PLModelMigrationActionCore *)self logger:&v80];
          [v42 logWithMessage:v41 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{779, 0}];

          if (v41 != buf)
          {
            free(v41);
          }
        }
      }
    }

LABEL_26:
    goto LABEL_27;
  }

  if (!v13)
  {
    v77[3] = 3;
    v26 = PLMigrationGetLog();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

    if (v27)
    {
      v28 = [(PLModelMigrationActionCore *)self logger];
      v29 = v28 == 0;

      if (v29)
      {
        v55 = PLMigrationGetLog();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v56 = objc_opt_class();
          v57 = NSStringFromClass(v56);
          *buf = 138543618;
          *&buf[4] = v57;
          *&buf[12] = 2114;
          *&buf[14] = v62;
          _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v113 = 0u;
        v114 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v30 = PLMigrationGetLog();
        os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v80 = 138543618;
        v81 = v32;
        v82 = 2114;
        v83 = v62;
        LODWORD(v61) = 22;
        v33 = _os_log_send_and_compose_impl();

        v34 = [(PLModelMigrationActionCore *)self logger:&v80];
        [v34 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{787, 16}];

        if (v33 != buf)
        {
          free(v33);
        }
      }
    }

    v58 = v71;
    v59 = v71[5];
    if (!v59)
    {
      v59 = v62;
    }

    v60 = v59;
    v15 = v58[5];
    v58[5] = v60;
    goto LABEL_26;
  }

LABEL_27:
  v47 = +[PLManagedLegacyFace entityName];
  v48 = [MEMORY[0x1E696AE18] predicateWithFormat:@"asset == nil"];
  [PLModelMigrator executeBatchDeleteWithEntityName:v47 predicate:v48 managedObjectContext:v5 error:0];

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v49 = v77[3];
  v50 = v71[5];
  if (v49 != 1 && a4)
  {
    v50 = v50;
    *a4 = v50;
  }

  v51 = v77[3];
  _Block_object_dispose(&v70, 8);

  _Block_object_dispose(&v76, 8);
  return v51;
}

@end