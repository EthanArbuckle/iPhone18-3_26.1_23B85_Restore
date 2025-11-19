@interface PLModelMigrationAction_RemoveExcessSocialGroupKeyAssetEdges
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
- (void)_recordUserPickedKeyAssetEdge:(id)a3 inExistingKeyAssetEdgeByNodeIDDictionary:(id)a4;
- (void)_removeKeyAssetLabelsIfNecessaryForEdge:(id)a3 existingKeyAssetEdgeByNodeID:(id)a4 keyAssetLabel:(id)a5 userPickedKeyAssetLabel:(id)a6;
@end

@implementation PLModelMigrationAction_RemoveExcessSocialGroupKeyAssetEdges

- (void)_removeKeyAssetLabelsIfNecessaryForEdge:(id)a3 existingKeyAssetEdgeByNodeID:(id)a4 keyAssetLabel:(id)a5 userPickedKeyAssetLabel:(id)a6
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 sourceNode];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectID];
    v16 = [v10 objectForKeyedSubscript:v15];

    if (!v16)
    {
      v16 = v9;
      v17 = [v14 objectID];
      [v10 setObject:v16 forKey:v17];
    }

    if (([v9 isEqual:v16] & 1) == 0)
    {
      [v9 removeLabel:v11];
      [v9 removeLabel:v12];
    }
  }

  else
  {
    v16 = PLMigrationGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Social group key asset edge %@ unexpectedly has nil sourceNode", &v18, 0xCu);
    }
  }
}

- (void)_recordUserPickedKeyAssetEdge:(id)a3 inExistingKeyAssetEdgeByNodeIDDictionary:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 sourceNode];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectID];
    [v6 setObject:v5 forKey:v9];
  }

  else
  {
    v9 = PLMigrationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Social group user-picked key asset edge %@ unexpectedly has nil sourceNode", &v10, 0xCu);
    }
  }
}

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v90 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 pl_graphCache];
  v8 = [v7 labelWithCode:1001 inContext:v6];

  v9 = [v6 pl_graphCache];
  v10 = [v9 labelWithCode:1003 inContext:v6];

  v11 = [v6 pl_graphCache];
  v12 = [v11 labelWithCode:1004 inContext:v6];

  if (v8 && v10 && v12)
  {
    v41 = a4;
    v42 = v12;
    v43 = v8;
    v13 = [(PLModelMigrationActionCore *)self progress];
    v14 = [v13 totalUnitCount] / 2;

    v15 = +[PLGraphEdge fetchRequest];
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K.%K = %@", @"additionalLabelAssignments", @"label", v10];
    [v15 setPredicate:v16];

    v57 = @"sourceNode";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    [v15 setRelationshipKeyPathsForPrefetching:v17];

    v18 = [MEMORY[0x1E695DF90] dictionary];
    v54 = 0;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __107__PLModelMigrationAction_RemoveExcessSocialGroupKeyAssetEdges_performActionWithManagedObjectContext_error___block_invoke;
    v52[3] = &unk_1E7567E88;
    v52[4] = self;
    v19 = v18;
    v53 = v19;
    v39 = v14;
    v20 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v6 fetchRequest:v15 pendingParentUnitCount:v14 error:&v54 processingBlock:v52];
    v21 = v54;
    if (v20 == 1)
    {
      v22 = +[PLGraphEdge fetchRequest];
      v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K.%K = %@", @"additionalLabelAssignments", @"label", v43];
      [v22 setPredicate:v23];

      v56 = @"sourceNode";
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
      [v22 setRelationshipKeyPathsForPrefetching:v24];

      v51 = v21;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __107__PLModelMigrationAction_RemoveExcessSocialGroupKeyAssetEdges_performActionWithManagedObjectContext_error___block_invoke_2;
      v47[3] = &unk_1E7567EF8;
      v47[4] = self;
      v25 = v19;
      v48 = v25;
      v26 = v43;
      v49 = v26;
      v50 = v10;
      v20 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v6 fetchRequest:v22 pendingParentUnitCount:v39 error:&v51 processingBlock:v47];
      v40 = v51;

      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __107__PLModelMigrationAction_RemoveExcessSocialGroupKeyAssetEdges_performActionWithManagedObjectContext_error___block_invoke_3;
      v44[3] = &unk_1E7567F20;
      v45 = v26;
      v46 = v42;
      [v25 enumerateKeysAndObjectsUsingBlock:v44];

      v21 = v40;
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v27 = v21;
    v28 = v27;
    if (v20 != 1 && v41)
    {
      v29 = v27;
      *v41 = v28;
    }

    v12 = v42;
    v8 = v43;
  }

  else
  {
    v30 = PLMigrationGetLog();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

    if (v31)
    {
      v32 = [(PLModelMigrationActionCore *)self logger];

      if (v32)
      {
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
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        *buf = 0u;
        v59 = 0u;
        v33 = PLMigrationGetLog();
        os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        v55[0] = 0;
        LODWORD(v38) = 2;
        v34 = _os_log_send_and_compose_impl();

        v35 = [(PLModelMigrationActionCore *)self logger:v55];
        [v35 logWithMessage:v34 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{577, 0}];

        if (v34 != buf)
        {
          free(v34);
        }
      }

      else
      {
        v36 = PLMigrationGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "PLModelMigrationAction_RemoveDuplicateSocialGroupKeyAssetEdges missing labels, so no work needs to be done", buf, 2u);
        }
      }
    }

    v28 = 0;
    v20 = 1;
  }

  return v20;
}

@end