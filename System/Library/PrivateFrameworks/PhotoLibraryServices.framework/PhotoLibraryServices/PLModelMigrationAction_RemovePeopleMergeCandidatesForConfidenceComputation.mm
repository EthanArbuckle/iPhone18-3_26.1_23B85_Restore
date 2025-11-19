@interface PLModelMigrationAction_RemovePeopleMergeCandidatesForConfidenceComputation
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_RemovePeopleMergeCandidatesForConfidenceComputation

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v96 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 1;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__23792;
  v55 = __Block_byref_object_dispose__23793;
  v56 = 0;
  v7 = +[PLPerson fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d || %K == %d", @"verifiedType", 1, @"verifiedType", 2];
  [v7 setPredicate:v8];

  v9 = v52 + 5;
  obj = v52[5];
  v10 = [v6 executeFetchRequest:v7 error:&obj];
  objc_storeStrong(v9, obj);
  if ([v10 count])
  {
    v11 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v10 count], 0);
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __122__PLModelMigrationAction_RemovePeopleMergeCandidatesForConfidenceComputation_performActionWithManagedObjectContext_error___block_invoke;
    v41[3] = &unk_1E7569C30;
    v43 = &v46;
    v41[4] = self;
    v44 = &v51;
    v45 = &v57;
    v12 = v11;
    v42 = v12;
    v13 = [v6 enumerateWithIncrementalSaveUsingObjects:v10 withBlock:v41];
    if (v13 && !v52[5])
    {
      objc_storeStrong(v52 + 5, v13);
      v58[3] = 3;
    }

    if (v58[3] == 1)
    {
      v14 = PLMigrationGetLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

      if (v15)
      {
        v16 = [(PLModelMigrationActionCore *)self logger];
        v17 = v16 == 0;

        if (!v17)
        {
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
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          memset(buf, 0, sizeof(buf));
          v18 = PLMigrationGetLog();
          os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          v19 = v47[3];
          v61 = 67109120;
          LODWORD(v62) = v19;
          LODWORD(v40) = 8;
          v20 = _os_log_send_and_compose_impl();

          v21 = [(PLModelMigrationActionCore *)self logger:&v61];
          [v21 logWithMessage:v20 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{395, 0}];

          goto LABEL_14;
        }

        v31 = PLMigrationGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v47[3];
          *buf = 67109120;
          *&buf[4] = v32;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "Updated merge candidates for %d verified persons", buf, 8u);
        }

LABEL_21:
      }
    }

    else
    {
      v22 = PLMigrationGetLog();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (v23)
      {
        v24 = [(PLModelMigrationActionCore *)self logger];
        v25 = v24 == 0;

        if (!v25)
        {
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
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          memset(buf, 0, sizeof(buf));
          v26 = PLMigrationGetLog();
          os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          v29 = v52[5];
          v61 = 138543618;
          v62 = v28;
          v63 = 2114;
          v64 = v29;
          LODWORD(v40) = 22;
          v20 = _os_log_send_and_compose_impl();

          v30 = [(PLModelMigrationActionCore *)self logger:&v61];
          [v30 logWithMessage:v20 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{397, 16}];

LABEL_14:
          if (v20 != buf)
          {
            free(v20);
          }

          goto LABEL_22;
        }

        v31 = PLMigrationGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          v35 = v52[5];
          *buf = 138543618;
          *&buf[4] = v34;
          *&buf[12] = 2114;
          *&buf[14] = v35;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
        }

        goto LABEL_21;
      }
    }

LABEL_22:

    _Block_object_dispose(&v46, 8);
    goto LABEL_23;
  }

  if (v52[5])
  {
    v58[3] = 3;
  }

LABEL_23:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v36 = v58[3];
  v37 = v52[5];
  if (v36 != 1 && a4)
  {
    v37 = v37;
    *a4 = v37;
  }

  v38 = v58[3];
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);
  return v38;
}

@end