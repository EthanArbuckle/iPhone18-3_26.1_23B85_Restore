@interface PLModelMigrationAction_DeleteDanglingPLGraphEdges
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_DeleteDanglingPLGraphEdges

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v104[2] = *MEMORY[0x1E69E9840];
  v50 = a3;
  v4 = MEMORY[0x1E696AB28];
  v54 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"sourceNode"];
  v103[0] = v54;
  v53 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"sourceAsset"];
  v103[1] = v53;
  v52 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"sourceMoment"];
  v103[2] = v52;
  v51 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"sourcePerson"];
  v103[3] = v51;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:4];
  v6 = [v4 andPredicateWithSubpredicates:v5];
  v104[0] = v6;
  v7 = MEMORY[0x1E696AB28];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"targetNode"];
  v102[0] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"targetAsset"];
  v102[1] = v9;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"targetMoment"];
  v102[2] = v10;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"targetPerson"];
  v102[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:4];
  v13 = [v7 andPredicateWithSubpredicates:v12];
  v104[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
  v15 = [v4 orPredicateWithSubpredicates:v14];

  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__43771;
  v65 = __Block_byref_object_dispose__43772;
  v66 = 0;
  v16 = MEMORY[0x1E695D5E0];
  v17 = +[PLGraphEdge entityName];
  v18 = [v16 fetchRequestWithEntityName:v17];

  [v18 setPredicate:v15];
  v19 = [PLEnumerateAndSaveController alloc];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __97__PLModelMigrationAction_DeleteDanglingPLGraphEdges_performActionWithManagedObjectContext_error___block_invoke;
  v59[3] = &unk_1E7575B30;
  v22 = v50;
  v60 = v22;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __97__PLModelMigrationAction_DeleteDanglingPLGraphEdges_performActionWithManagedObjectContext_error___block_invoke_2;
  v58[3] = &unk_1E7572E50;
  v58[4] = self;
  v58[5] = &v61;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __97__PLModelMigrationAction_DeleteDanglingPLGraphEdges_performActionWithManagedObjectContext_error___block_invoke_3;
  v57[3] = &unk_1E756C6E8;
  v57[4] = &v61;
  v23 = [(PLEnumerateAndSaveController *)v19 initWithName:v21 fetchRequest:v18 context:v22 options:0 generateContextBlock:v59 didFetchObjectIDsBlock:v58 processResultBlock:v57];

  v56 = 0;
  LODWORD(v19) = [(PLEnumerateAndSaveController *)v23 processObjectsWithError:&v56];
  v24 = v56;
  if (v19)
  {
    v25 = PLMigrationGetLog();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);

    if (v26)
    {
      v27 = [(PLModelMigrationActionCore *)self logger];
      v28 = v27 == 0;

      if (v28)
      {
        v42 = PLMigrationGetLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = [v62[5] completedUnitCount];
          *buf = 134217984;
          *&buf[4] = v43;
          _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_INFO, "Completed playback bit update on %lu assets", buf, 0xCu);
        }
      }

      else
      {
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
        memset(buf, 0, sizeof(buf));
        v29 = PLMigrationGetLog();
        os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
        v30 = [v62[5] completedUnitCount];
        v67 = 134217984;
        v68 = v30;
        LODWORD(v49) = 12;
        v31 = _os_log_send_and_compose_impl();

        v32 = [(PLModelMigrationActionCore *)self logger:&v67];
        [v32 logWithMessage:v31 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{809, 1}];

        if (v31 != buf)
        {
          free(v31);
        }
      }
    }

    v44 = 1;
  }

  else
  {
    v33 = PLMigrationGetLog();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

    if (v34)
    {
      v35 = [(PLModelMigrationActionCore *)self logger];
      v36 = v35 == 0;

      if (v36)
      {
        v45 = PLMigrationGetLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          *buf = 138543618;
          *&buf[4] = v47;
          *&buf[12] = 2112;
          *&buf[14] = v24;
          _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
        }
      }

      else
      {
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
        memset(buf, 0, sizeof(buf));
        v37 = PLMigrationGetLog();
        os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v67 = 138543618;
        v68 = v39;
        v69 = 2112;
        v70 = v24;
        LODWORD(v49) = 22;
        v40 = _os_log_send_and_compose_impl();

        v41 = [(PLModelMigrationActionCore *)self logger:&v67];
        [v41 logWithMessage:v40 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{812, 16}];

        if (v40 != buf)
        {
          free(v40);
        }
      }
    }

    v44 = 3;
  }

  _Block_object_dispose(&v61, 8);
  return v44;
}

@end