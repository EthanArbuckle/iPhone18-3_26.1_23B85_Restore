@interface PLModelMigrationAction_FixPackedBadgeAttributesForRAWPlusJPEG
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_FixPackedBadgeAttributesForRAWPlusJPEG

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v104[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLInternalResource entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"utiConformanceHint", 2];
  v104[0] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"dataStoreClassID", 0];
  v104[1] = v12;
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"dataStoreSubtype", 17];
  v104[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:3];
  v15 = [v10 andPredicateWithSubpredicates:v14];
  [v9 setPredicate:v15];

  v103[0] = @"asset";
  v103[1] = @"asset.additionalAttributes";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:2];
  [v9 setRelationshipKeyPathsForPrefetching:v16];

  v67 = 0;
  v17 = [v6 executeFetchRequest:v9 error:&v67];
  v18 = v67;
  v19 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v17 count], 0);
  v20 = v19;
  if (v17)
  {
    v63 = a4;
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __109__PLModelMigrationAction_FixPackedBadgeAttributesForRAWPlusJPEG_performActionWithManagedObjectContext_error___block_invoke;
    v65[3] = &unk_1E756DBB8;
    v21 = v19;
    v66 = v21;
    v22 = [v6 enumerateWithIncrementalSaveUsingObjects:v17 withBlock:v65];
    v23 = v22;
    if (!v22 || v18)
    {
      v41 = PLMigrationGetLog();
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);

      if (v42)
      {
        v43 = [(PLModelMigrationActionCore *)self logger];

        if (v43)
        {
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
          v73 = 0u;
          v74 = 0u;
          memset(buf, 0, sizeof(buf));
          v44 = PLMigrationGetLog();
          os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          v47 = [v21 completedUnitCount];
          v68 = 138543618;
          v69 = v46;
          v70 = 2048;
          v71 = v47;
          LODWORD(v62) = 22;
          v48 = _os_log_send_and_compose_impl();

          v49 = [(PLModelMigrationActionCore *)self logger:&v68];
          [v49 logWithMessage:v48 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{813, 0}];

          if (v48 != buf)
          {
            free(v48);
          }
        }

        else
        {
          v53 = PLMigrationGetLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = objc_opt_class();
            v55 = NSStringFromClass(v54);
            v56 = [v21 completedUnitCount];
            *buf = 138543618;
            *&buf[4] = v55;
            *&buf[12] = 2048;
            *&buf[14] = v56;
            _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@: Added RAW packed badge attributes to %llu assets", buf, 0x16u);
          }
        }
      }

      v40 = 1;
    }

    else
    {
      v18 = v22;
      v24 = PLMigrationGetLog();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (v25)
      {
        v26 = [(PLModelMigrationActionCore *)self logger];

        if (v26)
        {
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
          v73 = 0u;
          v74 = 0u;
          memset(buf, 0, sizeof(buf));
          v27 = PLMigrationGetLog();
          os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          v68 = 138543618;
          v69 = v29;
          v70 = 2114;
          v71 = v18;
          LODWORD(v62) = 22;
          v30 = _os_log_send_and_compose_impl();

          v31 = [(PLModelMigrationActionCore *)self logger:&v68];
          [v31 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{811, 16}];

          if (v30 != buf)
          {
            free(v30);
          }
        }

        else
        {
          v57 = PLMigrationGetLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v58 = objc_opt_class();
            v59 = NSStringFromClass(v58);
            *buf = 138543618;
            *&buf[4] = v59;
            *&buf[12] = 2114;
            *&buf[14] = v18;
            _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
          }
        }
      }

      v40 = 3;
    }

    a4 = v63;

    goto LABEL_30;
  }

  v32 = PLMigrationGetLog();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

  if (!v33)
  {
LABEL_20:
    v40 = 3;
    goto LABEL_30;
  }

  v34 = [(PLModelMigrationActionCore *)self logger];

  if (!v34)
  {
    v50 = PLMigrationGetLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *buf = 138543618;
      *&buf[4] = v52;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      _os_log_impl(&dword_19BF1F000, v50, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
    }

    goto LABEL_20;
  }

  v64 = a4;
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
  v73 = 0u;
  v74 = 0u;
  memset(buf, 0, sizeof(buf));
  v35 = PLMigrationGetLog();
  os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  v68 = 138543618;
  v69 = v37;
  v70 = 2114;
  v71 = v18;
  LODWORD(v62) = 22;
  v38 = _os_log_send_and_compose_impl();

  v39 = [(PLModelMigrationActionCore *)self logger:&v68];
  [v39 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{817, 16}];

  if (v38 != buf)
  {
    free(v38);
  }

  v40 = 3;
  a4 = v64;
LABEL_30:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (a4)
  {
    v60 = v18;
    *a4 = v18;
  }

  return v40;
}

@end