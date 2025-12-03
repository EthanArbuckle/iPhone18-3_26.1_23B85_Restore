@interface PLModelMigrationAction_RemoveExcessSocialGroupKeyAssetEdges
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
- (void)_recordUserPickedKeyAssetEdge:(id)edge inExistingKeyAssetEdgeByNodeIDDictionary:(id)dictionary;
- (void)_removeKeyAssetLabelsIfNecessaryForEdge:(id)edge existingKeyAssetEdgeByNodeID:(id)d keyAssetLabel:(id)label userPickedKeyAssetLabel:(id)assetLabel;
@end

@implementation PLModelMigrationAction_RemoveExcessSocialGroupKeyAssetEdges

- (void)_removeKeyAssetLabelsIfNecessaryForEdge:(id)edge existingKeyAssetEdgeByNodeID:(id)d keyAssetLabel:(id)label userPickedKeyAssetLabel:(id)assetLabel
{
  v20 = *MEMORY[0x1E69E9840];
  edgeCopy = edge;
  dCopy = d;
  labelCopy = label;
  assetLabelCopy = assetLabel;
  sourceNode = [edgeCopy sourceNode];
  v14 = sourceNode;
  if (sourceNode)
  {
    objectID = [sourceNode objectID];
    v16 = [dCopy objectForKeyedSubscript:objectID];

    if (!v16)
    {
      v16 = edgeCopy;
      objectID2 = [v14 objectID];
      [dCopy setObject:v16 forKey:objectID2];
    }

    if (([edgeCopy isEqual:v16] & 1) == 0)
    {
      [edgeCopy removeLabel:labelCopy];
      [edgeCopy removeLabel:assetLabelCopy];
    }
  }

  else
  {
    v16 = PLMigrationGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = edgeCopy;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Social group key asset edge %@ unexpectedly has nil sourceNode", &v18, 0xCu);
    }
  }
}

- (void)_recordUserPickedKeyAssetEdge:(id)edge inExistingKeyAssetEdgeByNodeIDDictionary:(id)dictionary
{
  v12 = *MEMORY[0x1E69E9840];
  edgeCopy = edge;
  dictionaryCopy = dictionary;
  sourceNode = [edgeCopy sourceNode];
  v8 = sourceNode;
  if (sourceNode)
  {
    objectID = [sourceNode objectID];
    [dictionaryCopy setObject:edgeCopy forKey:objectID];
  }

  else
  {
    objectID = PLMigrationGetLog();
    if (os_log_type_enabled(objectID, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = edgeCopy;
      _os_log_impl(&dword_19BF1F000, objectID, OS_LOG_TYPE_ERROR, "Social group user-picked key asset edge %@ unexpectedly has nil sourceNode", &v10, 0xCu);
    }
  }
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v90 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  pl_graphCache = [contextCopy pl_graphCache];
  v8 = [pl_graphCache labelWithCode:1001 inContext:contextCopy];

  pl_graphCache2 = [contextCopy pl_graphCache];
  v10 = [pl_graphCache2 labelWithCode:1003 inContext:contextCopy];

  pl_graphCache3 = [contextCopy pl_graphCache];
  v12 = [pl_graphCache3 labelWithCode:1004 inContext:contextCopy];

  if (v8 && v10 && v12)
  {
    errorCopy = error;
    v42 = v12;
    v43 = v8;
    progress = [(PLModelMigrationActionCore *)self progress];
    v14 = [progress totalUnitCount] / 2;

    v15 = +[PLGraphEdge fetchRequest];
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K.%K = %@", @"additionalLabelAssignments", @"label", v10];
    [v15 setPredicate:v16];

    v57 = @"sourceNode";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    [v15 setRelationshipKeyPathsForPrefetching:v17];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v54 = 0;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __107__PLModelMigrationAction_RemoveExcessSocialGroupKeyAssetEdges_performActionWithManagedObjectContext_error___block_invoke;
    v52[3] = &unk_1E7567E88;
    v52[4] = self;
    v19 = dictionary;
    v53 = v19;
    v39 = v14;
    v20 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:contextCopy fetchRequest:v15 pendingParentUnitCount:v14 error:&v54 processingBlock:v52];
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
      v20 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:contextCopy fetchRequest:v22 pendingParentUnitCount:v39 error:&v51 processingBlock:v47];
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
    if (v20 != 1 && errorCopy)
    {
      v29 = v27;
      *errorCopy = v28;
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
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
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