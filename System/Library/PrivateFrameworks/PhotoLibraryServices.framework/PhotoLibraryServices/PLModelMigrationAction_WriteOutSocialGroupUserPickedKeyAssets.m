@interface PLModelMigrationAction_WriteOutSocialGroupUserPickedKeyAssets
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_WriteOutSocialGroupUserPickedKeyAssets

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v102 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLGraphLabel entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"code == %d", 1003];
  [v10 setPredicate:v11];

  v67 = 0;
  v12 = [v7 executeFetchRequest:v10 error:&v67];
  v13 = v67;
  if (v12)
  {
    v14 = [v12 firstObject];
    if (!v14)
    {
      v27 = PLMigrationGetLog();
      v28 = 1;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v28 = 1;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_INFO, "Did not find label with code PLBuiltInGraphLabelCodeSocialGroupKeyAssetUserPicked.", buf, 2u);
      }

      goto LABEL_41;
    }

    v61 = a2;
    v64 = v13;
    v65 = self;
    v63 = v12;
    v15 = v7;
    v16 = [(PLManagedObject *)PLGraphEdge entityInManagedObjectContext:v7];
    v17 = [v16 relationshipsByName];
    v18 = @"labels";
    v19 = [v17 objectForKey:@"labels"];

    v62 = v16;
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v29 = [v16 relationshipsByName];
      v30 = [v29 objectForKey:@"additionalLabels"];

      v20 = v30 == 0;
      if (v30)
      {
        v18 = @"additionalLabels";
      }

      else
      {
        v18 = 0;
      }
    }

    v31 = MEMORY[0x1E695D5E0];
    v32 = +[PLGraphEdge entityName];
    v33 = [v31 fetchRequestWithEntityName:v32];

    [v33 setResultType:1];
    v34 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K = %@", v18, v14];
    [v33 setPredicate:v34];

    if (v20)
    {
      v35 = PLMigrationGetLog();
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

      v7 = v15;
      if (v36)
      {
        self = v65;
        v37 = [(PLModelMigrationActionCore *)v65 logger];

        if (v37)
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
          *buf = 0u;
          v71 = 0u;
          v38 = PLMigrationGetLog();
          os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
          LOWORD(v68) = 0;
          LODWORD(v59) = 2;
          v39 = _os_log_send_and_compose_impl();

          v40 = [(PLModelMigrationActionCore *)v65 logger:&v68];
          [v40 logWithMessage:v39 fromCodeLocation:"PLModelMigrationActionPreSchema.m" type:{99, 16}];

          v12 = v63;
          if (v39 != buf)
          {
            free(v39);
          }
        }

        else
        {
          v51 = PLMigrationGetLog();
          v12 = v63;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_ERROR, "Failed to identify the relationship name for Edge.additionalLabels during pre schema migration.", buf, 2u);
          }
        }

        v28 = 1;
      }

      else
      {
        v28 = 1;
        v12 = v63;
        self = v65;
      }

      v27 = v62;
      goto LABEL_40;
    }

    v66 = 0;
    v7 = v15;
    v41 = [v15 executeFetchRequest:v33 error:&v66];
    v60 = v66;
    if (v41)
    {
      v42 = [(PLModelMigrationActionCore *)v65 migrationContextUserInfo];

      v12 = v63;
      if (!v42)
      {
        v57 = [MEMORY[0x1E696AAA8] currentHandler];
        [v57 handleFailureInMethod:v61 object:v65 file:@"PLModelMigrationActionPreSchema.m" lineNumber:90 description:@"migrationContextUserInfo should not be nil."];
      }

      v43 = [(PLModelMigrationActionCore *)v65 migrationContextUserInfo];
      [v43 setObject:v41 forKeyedSubscript:@"socialGroupUserPickAssetEdgeIDs"];

      v28 = 1;
    }

    else
    {
      v44 = PLMigrationGetLog();
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);

      if (v45)
      {
        v46 = [(PLModelMigrationActionCore *)v65 logger];

        if (!v46)
        {
          v56 = PLMigrationGetLog();
          v27 = v62;
          v12 = v63;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v64;
            _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_ERROR, "Failed to fetch edges with user picked label with error: %@", buf, 0xCu);
          }

          v28 = 3;
          goto LABEL_30;
        }

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
        *buf = 0u;
        v71 = 0u;
        v47 = PLMigrationGetLog();
        os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
        v68 = 138412290;
        v69 = v64;
        LODWORD(v59) = 12;
        v48 = _os_log_send_and_compose_impl();

        v49 = [(PLModelMigrationActionCore *)v65 logger:&v68];
        [v49 logWithMessage:v48 fromCodeLocation:"PLModelMigrationActionPreSchema.m" type:{94, 16}];

        if (v48 != buf)
        {
          free(v48);
        }
      }

      v28 = 3;
      v12 = v63;
    }

    v27 = v62;
LABEL_30:

    self = v65;
LABEL_40:

    v13 = v64;
LABEL_41:

    goto LABEL_42;
  }

  v21 = PLMigrationGetLog();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

  if (v22)
  {
    v23 = [(PLModelMigrationActionCore *)self logger];

    if (v23)
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
      *buf = 0u;
      v71 = 0u;
      v24 = PLMigrationGetLog();
      os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      v68 = 138412290;
      v69 = v13;
      LODWORD(v58) = 12;
      v25 = _os_log_send_and_compose_impl();

      v26 = [(PLModelMigrationActionCore *)self logger:&v68];
      [v26 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActionPreSchema.m" type:{107, 16}];

      if (v25 != buf)
      {
        free(v25);
      }
    }

    else
    {
      v50 = PLMigrationGetLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v13;
        _os_log_impl(&dword_19BF1F000, v50, OS_LOG_TYPE_ERROR, "Failed to fetch labels with error: %@", buf, 0xCu);
      }
    }
  }

  v28 = 3;
LABEL_42:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v52 = v13;
  v53 = v52;
  if (v28 != 1 && a4)
  {
    v54 = v52;
    *a4 = v53;
  }

  return v28;
}

@end