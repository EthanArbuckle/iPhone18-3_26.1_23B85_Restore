@interface PLModelMigrationAction_WriteEdgeExternalIdentifiers
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_WriteEdgeExternalIdentifiers

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLModelMigrationActionCore *)self progress];
  v8 = [v7 totalUnitCount] / 2;

  v9 = [v6 pl_graphCache];
  [v9 resetNextAvailableEdgeExternalIdentifier];
  v10 = +[PLGraphEdge fetchRequest];
  v36 = 0;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __99__PLModelMigrationAction_WriteEdgeExternalIdentifiers_performActionWithManagedObjectContext_error___block_invoke;
  v33[3] = &unk_1E7567E88;
  v11 = v6;
  v34 = v11;
  v35 = @"externalIdentifier";
  v12 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v11 fetchRequest:v10 pendingParentUnitCount:v8 error:&v36 processingBlock:v33];
  v13 = v36;
  if (v12 == 1)
  {
    v30 = a4;
    v14 = MEMORY[0x1E695D5E0];
    v15 = +[PLGraphLabel entityName];
    v16 = [v14 fetchRequestWithEntityName:v15];

    v32 = v13;
    v12 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v11 fetchRequest:v16 pendingParentUnitCount:v8 error:&v32 processingBlock:&__block_literal_global_167];
    v17 = v32;

    if (v12 != 1)
    {
      v18 = PLMigrationGetLog();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

      if (v19)
      {
        v20 = [(PLModelMigrationActionCore *)self logger];

        if (v20)
        {
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          *buf = 0u;
          v38 = 0u;
          v21 = PLMigrationGetLog();
          os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
          v31[0] = 0;
          LODWORD(v29) = 2;
          v22 = _os_log_send_and_compose_impl();

          v23 = [(PLModelMigrationActionCore *)self logger:v31];
          [v23 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{491, 16}];

          if (v22 != buf)
          {
            free(v22);
          }
        }

        else
        {
          v24 = PLMigrationGetLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "PLModelMigrationAction_WriteEdgeExternalIdentifiers failed to clear bitset data on existing labels.", buf, 2u);
          }
        }
      }
    }

    v13 = v17;
    a4 = v30;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v25 = v13;
  v26 = v25;
  if (v12 != 1 && a4)
  {
    v27 = v25;
    *a4 = v26;
  }

  return v12;
}

@end