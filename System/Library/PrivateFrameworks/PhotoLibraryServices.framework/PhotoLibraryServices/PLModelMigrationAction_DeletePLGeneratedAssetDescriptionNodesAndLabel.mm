@interface PLModelMigrationAction_DeletePLGeneratedAssetDescriptionNodesAndLabel
- (int64_t)_deleteLabelWithCode1300InContext:(id)a3 error:(id *)a4;
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_DeletePLGeneratedAssetDescriptionNodesAndLabel

- (int64_t)_deleteLabelWithCode1300InContext:(id)a3 error:(id *)a4
{
  v76 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLGraphLabel entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == 1300", @"code"];
  [v9 setPredicate:v10];

  v11 = [v6 executeFetchRequest:v9 error:a4];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 firstObject];
    if (v13)
    {
      [v6 deleteObject:v13];
      if (([v6 save:a4] & 1) == 0)
      {
        v14 = PLMigrationGetLog();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

        if (v15)
        {
          v16 = [(PLModelMigrationActionCore *)self logger];

          if (v16)
          {
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
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            *buf = 0u;
            v45 = 0u;
            v17 = PLMigrationGetLog();
            os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
            if (a4)
            {
              v18 = *a4;
            }

            else
            {
              v18 = 0;
            }

            v42 = 138412290;
            v43 = v18;
            LODWORD(v41) = 12;
            v38 = _os_log_send_and_compose_impl();

            v39 = [(PLModelMigrationActionCore *)self logger:&v42];
            [v39 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{733, 16}];

            if (v38 != buf)
            {
              free(v38);
            }
          }

          else
          {
            v36 = PLMigrationGetLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              if (a4)
              {
                v37 = *a4;
              }

              else
              {
                v37 = 0;
              }

              *buf = 138412290;
              *&buf[4] = v37;
              _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Failed to delete PLGeneratedAssetDescription label (%@)", buf, 0xCu);
            }
          }
        }

        v35 = 3;
        goto LABEL_40;
      }
    }

    else
    {
      v24 = PLMigrationGetLog();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

      if (v25)
      {
        v26 = [(PLModelMigrationActionCore *)self logger];

        if (v26)
        {
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
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          *buf = 0u;
          v45 = 0u;
          v27 = PLMigrationGetLog();
          os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
          LOWORD(v42) = 0;
          LODWORD(v41) = 2;
          v28 = _os_log_send_and_compose_impl();

          v29 = [(PLModelMigrationActionCore *)self logger:&v42];
          [v29 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{736, 0}];

          if (v28 != buf)
          {
            free(v28);
          }
        }

        else
        {
          v34 = PLMigrationGetLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "No label with code 1300 found", buf, 2u);
          }
        }
      }
    }

    v35 = 1;
LABEL_40:

    goto LABEL_41;
  }

  v19 = PLMigrationGetLog();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

  if (v20)
  {
    v21 = [(PLModelMigrationActionCore *)self logger];

    if (v21)
    {
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
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      *buf = 0u;
      v45 = 0u;
      v22 = PLMigrationGetLog();
      os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      if (a4)
      {
        v23 = *a4;
      }

      else
      {
        v23 = 0;
      }

      v42 = 138412290;
      v43 = v23;
      LODWORD(v41) = 12;
      v32 = _os_log_send_and_compose_impl();

      v33 = [(PLModelMigrationActionCore *)self logger:&v42];
      [v33 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{740, 16}];

      if (v32 != buf)
      {
        free(v32);
      }
    }

    else
    {
      v30 = PLMigrationGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        if (a4)
        {
          v31 = *a4;
        }

        else
        {
          v31 = 0;
        }

        *buf = 138412290;
        *&buf[4] = v31;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "No label with code 1300 found (Error: %@)", buf, 0xCu);
      }
    }
  }

  v35 = 3;
LABEL_41:

  return v35;
}

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v104[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 1;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__43771;
  v64 = __Block_byref_object_dispose__43772;
  v65 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLGraphNode entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v104[0] = @"primaryLabel";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v10];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"primaryLabelCode", 1300];
  [v9 setPredicate:v11];

  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__43771;
  v58 = __Block_byref_object_dispose__43772;
  v59 = 0;
  v12 = [PLEnumerateAndSaveController alloc];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __117__PLModelMigrationAction_DeletePLGeneratedAssetDescriptionNodesAndLabel_performActionWithManagedObjectContext_error___block_invoke;
  v52[3] = &unk_1E7575B30;
  v53 = v6;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __117__PLModelMigrationAction_DeletePLGeneratedAssetDescriptionNodesAndLabel_performActionWithManagedObjectContext_error___block_invoke_2;
  v51[3] = &unk_1E7572E50;
  v51[4] = self;
  v51[5] = &v54;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __117__PLModelMigrationAction_DeletePLGeneratedAssetDescriptionNodesAndLabel_performActionWithManagedObjectContext_error___block_invoke_3;
  v47[3] = &unk_1E756C698;
  v47[4] = self;
  v49 = &v60;
  v50 = &v66;
  v15 = v53;
  v48 = v15;
  v16 = [(PLEnumerateAndSaveController *)v12 initWithName:v14 fetchRequest:v9 context:v15 options:0 generateContextBlock:v52 didFetchObjectIDsBlock:v51 processResultBlock:v47];

  v17 = (v61 + 5);
  obj = v61[5];
  v18 = [(PLEnumerateAndSaveController *)v16 processObjectsWithError:&obj];
  objc_storeStrong(v17, obj);
  if (v18)
  {
    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (!v20)
    {
      goto LABEL_17;
    }

    v21 = [(PLModelMigrationActionCore *)self logger];
    v22 = v21 == 0;

    if (!v22)
    {
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
      buf = 0u;
      v73 = 0u;
      v23 = PLMigrationGetLog();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      v24 = [v55[5] totalUnitCount];
      v70 = 134217984;
      v71 = v24;
      LODWORD(v44) = 12;
      v25 = _os_log_send_and_compose_impl();

      v26 = [(PLModelMigrationActionCore *)self logger:&v70];
      [v26 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{709, 0}];

      if (v25 == &buf)
      {
        goto LABEL_17;
      }

      v27 = v25;
LABEL_10:
      free(v27);
      goto LABEL_17;
    }

    v36 = PLMigrationGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [v55[5] totalUnitCount];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v37;
      _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "Removed %lld PLGeneratedAssetDescription nodes.", &buf, 0xCu);
    }
  }

  else
  {
    v67[3] = 3;
    v28 = PLMigrationGetLog();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

    if (!v29)
    {
      goto LABEL_17;
    }

    v30 = [(PLModelMigrationActionCore *)self logger];
    v31 = v30 == 0;

    if (!v31)
    {
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
      buf = 0u;
      v73 = 0u;
      v32 = PLMigrationGetLog();
      os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
      v33 = v61[5];
      v70 = 138412290;
      v71 = v33;
      LODWORD(v44) = 12;
      v34 = _os_log_send_and_compose_impl();

      v35 = [(PLModelMigrationActionCore *)self logger:&v70];
      [v35 logWithMessage:v34 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{712, 16}];

      if (v34 == &buf)
      {
        goto LABEL_17;
      }

      v27 = v34;
      goto LABEL_10;
    }

    v36 = PLMigrationGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v38 = v61[5];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v38;
      _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Failed to remove PLGeneratedAssetDescription nodes (%@)", &buf, 0xCu);
    }
  }

LABEL_17:
  v39 = (v61 + 5);
  if (v67[3] != 1)
  {
    v41 = v61[5];
    if (!a4)
    {
      goto LABEL_23;
    }

LABEL_22:
    v41 = v41;
    *a4 = v41;
    goto LABEL_23;
  }

  v45 = v61[5];
  v40 = [(PLModelMigrationAction_DeletePLGeneratedAssetDescriptionNodesAndLabel *)self _deleteLabelWithCode1300InContext:v15 error:&v45];
  objc_storeStrong(v39, v45);
  v67[3] = v40;
  v41 = v61[5];
  if (v40 != 1 && a4)
  {
    goto LABEL_22;
  }

LABEL_23:

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v42 = v67[3];

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
  return v42;
}

@end