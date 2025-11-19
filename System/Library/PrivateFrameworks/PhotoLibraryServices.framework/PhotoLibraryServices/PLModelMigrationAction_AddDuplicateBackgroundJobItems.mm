@interface PLModelMigrationAction_AddDuplicateBackgroundJobItems
- (char)_currentDuplicateProcessingStatusWithManagedObjectContext:(id)a3;
- (id)_convertToPLManagedAssetOIDsFromSelectionOIDs:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (id)_managedAssetOIDsFromAdditionalAssetAttributesOIDs:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (id)_managedAssetOIDsFromDuplicateAlbumOIDs:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (id)_validObjectIDFromChange:(id)a3 entityDescriptionMap:(id)a4;
- (int64_t)_processTransactionIterator:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (int64_t)_processWithLimitedSelection:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
- (void)_cleanupLegacyProcessingTokensWithManagedObjectContext:(id)a3;
- (void)_setupPropertiesWithManagedObjectContext:(id)a3;
- (void)_updateDuplicateProcessingStatusIfNeededWithStatus:(char)a3 shouldSave:(BOOL)a4 managedObjectContext:(id)a5;
@end

@implementation PLModelMigrationAction_AddDuplicateBackgroundJobItems

- (void)_cleanupLegacyProcessingTokensWithManagedObjectContext:(id)a3
{
  v4 = a3;
  [PLModelMigrationActionUtility setHistoryTokenWithAction:self key:@"LastDuplicateDetectorProcessingToken" value:0 managedObjectContext:v4];
  [PLModelMigrationActionUtility setHistoryTokenWithAction:self key:@"LastInitialDuplicateDetectorProcessingCompletedToken" value:0 managedObjectContext:v4];
}

- (char)_currentDuplicateProcessingStatusWithManagedObjectContext:(id)a3
{
  v3 = [PLGlobalKeyValue globalValueForKey:@"DuplicateProcessingStatus" managedObjectContext:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)_updateDuplicateProcessingStatusIfNeededWithStatus:(char)a3 shouldSave:(BOOL)a4 managedObjectContext:(id)a5
{
  v5 = a3;
  v8 = a5;
  if ([(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _currentDuplicateProcessingStatusWithManagedObjectContext:?]!= v5)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithChar:v5];
    [PLGlobalKeyValue setGlobalValue:v7 forKey:@"DuplicateProcessingStatus" managedObjectContext:v8];

    [(PLModelMigrationActionBackground *)self saveWithManagedObjectContext:v8 error:0];
  }
}

- (void)_setupPropertiesWithManagedObjectContext:(id)a3
{
  v4 = MEMORY[0x1E695D5B8];
  v5 = a3;
  v6 = +[PLAdditionalAssetAttributes entityName];
  v32 = [v4 entityForName:v6 inManagedObjectContext:v5];

  v7 = [v32 attributesByName];
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = [v7 objectForKeyedSubscript:@"sceneAnalysisTimestamp"];
  [v8 addObject:v9];

  v10 = [v7 objectForKeyedSubscript:@"sceneAnalysisVersion"];
  [v8 addObject:v10];

  v11 = [v7 objectForKeyedSubscript:@"originalStableHash"];
  [v8 addObject:v11];

  v12 = [v8 copy];
  additionalAttributesPropertiesToInclude = self->_additionalAttributesPropertiesToInclude;
  self->_additionalAttributesPropertiesToInclude = v12;

  [v8 removeAllObjects];
  v14 = MEMORY[0x1E695D5B8];
  v15 = +[PLManagedAsset entityName];
  v16 = [v14 entityForName:v15 inManagedObjectContext:v5];

  v17 = [v16 attributesByName];
  v18 = [v17 objectForKeyedSubscript:@"hidden"];
  [v8 addObject:v18];

  v19 = [v17 objectForKeyedSubscript:@"trashedState"];
  [v8 addObject:v19];

  v20 = [v17 objectForKeyedSubscript:@"kindSubtype"];
  [v8 addObject:v20];

  v21 = [v17 objectForKeyedSubscript:@"adjustmentTimestamp"];
  [v8 addObject:v21];

  v22 = [v17 objectForKeyedSubscript:@"activeLibraryScopeParticipationState"];
  [v8 addObject:v22];

  v23 = [v8 copy];
  managedAssetPropertiesToInclude = self->_managedAssetPropertiesToInclude;
  self->_managedAssetPropertiesToInclude = v23;

  [v8 removeAllObjects];
  v25 = MEMORY[0x1E695D5B8];
  v26 = +[PLDuplicateAlbum entityName];
  v27 = [v25 entityForName:v26 inManagedObjectContext:v5];

  v28 = [v27 attributesByName];
  v29 = [v28 objectForKeyedSubscript:@"processingVersion"];
  [v8 addObject:v29];

  v30 = [v8 copy];
  duplicateAlbumPropertiesToInclude = self->_duplicateAlbumPropertiesToInclude;
  self->_duplicateAlbumPropertiesToInclude = v30;
}

- (id)_validObjectIDFromChange:(id)a3 entityDescriptionMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 changedObjectID];
  v9 = [v6 changeType];
  if (v9 == 1)
  {
    v15 = [v8 entity];
    v16 = +[PLAdditionalAssetAttributes entityName];
    v17 = [v7 objectForKeyedSubscript:v16];
    if ([v15 isEqual:v17])
    {
      v18 = [v6 updatedProperties];
      v19 = [v18 intersectsSet:self->_additionalAttributesPropertiesToInclude];
    }

    else
    {
      v19 = 0;
    }

    v20 = [v8 entity];
    v21 = +[PLManagedAsset entityName];
    v22 = [v7 objectForKeyedSubscript:v21];
    if ([v20 isEqual:v22])
    {
      v23 = [v6 updatedProperties];
      v24 = [v23 intersectsSet:self->_managedAssetPropertiesToInclude];

      v19 |= v24;
    }

    v25 = [v8 entity];
    v26 = +[PLDuplicateAlbum entityName];
    v27 = [v7 objectForKeyedSubscript:v26];
    if ([v25 isEqual:v27])
    {
      v28 = [v6 updatedProperties];
      v29 = [v28 intersectsSet:self->_duplicateAlbumPropertiesToInclude];

      if (((v29 | v19) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {

      if ((v19 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_4:
    v14 = v8;
    goto LABEL_13;
  }

  if (!v9)
  {
    v10 = [v8 entity];
    v11 = +[PLAdditionalAssetAttributes entityName];
    v12 = [v7 objectForKeyedSubscript:v11];
    v13 = [v10 isEqual:v12];

    if (v13)
    {
      goto LABEL_4;
    }
  }

LABEL_12:
  v14 = 0;
LABEL_13:

  return v14;
}

- (id)_managedAssetOIDsFromDuplicateAlbumOIDs:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v71[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([v8 count])
  {
    v11 = MEMORY[0x1E695D5E0];
    v12 = +[PLDuplicateAlbum entityName];
    v13 = [v11 fetchRequestWithEntityName:v12];

    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v8];
    [v13 setPredicate:v14];

    v71[0] = @"assets";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
    [v13 setRelationshipKeyPathsForPrefetching:v15];

    v35 = 0;
    v16 = [v9 executeFetchRequest:v13 error:&v35];
    v17 = v35;
    if (v16)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __124__PLModelMigrationAction_AddDuplicateBackgroundJobItems__managedAssetOIDsFromDuplicateAlbumOIDs_managedObjectContext_error___block_invoke;
      v33[3] = &unk_1E7564BD8;
      v18 = v10;
      v34 = v18;
      [v16 enumerateObjectsUsingBlock:v33];
      v10 = v34;
LABEL_14:

      v10 = v18;
      goto LABEL_15;
    }

    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      v21 = [(PLModelMigrationActionBackground *)self logger];

      if (!v21)
      {
        v27 = PLMigrationGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          *buf = 138543618;
          *&buf[4] = v29;
          *&buf[12] = 2112;
          *&buf[14] = v17;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Failed to fetch oids for %{public}@. Error: %@", buf, 0x16u);
        }

        if (a5)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }

      v69 = 0u;
      v70 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v22 = PLMigrationGetLog();
      os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      v23 = objc_opt_class();
      v32 = NSStringFromClass(v23);
      v36 = 138543618;
      v37 = v32;
      v38 = 2112;
      v39 = v17;
      LODWORD(v31) = 22;
      v24 = _os_log_send_and_compose_impl();

      v25 = [(PLModelMigrationActionBackground *)self logger:&v36];
      [v25 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1873, 16}];

      if (v24 != buf)
      {
        free(v24);
      }
    }

    if (a5)
    {
LABEL_9:
      v26 = v17;
      v18 = 0;
      *a5 = v17;
      goto LABEL_14;
    }

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

LABEL_15:

  return v10;
}

- (id)_managedAssetOIDsFromAdditionalAssetAttributesOIDs:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v71[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([v8 count])
  {
    v11 = MEMORY[0x1E695D5E0];
    v12 = +[PLAdditionalAssetAttributes entityName];
    v13 = [v11 fetchRequestWithEntityName:v12];

    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v8];
    [v13 setPredicate:v14];

    v71[0] = @"asset";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
    [v13 setPropertiesToFetch:v15];

    [v13 setResultType:2];
    v35 = 0;
    v16 = [v9 executeFetchRequest:v13 error:&v35];
    v17 = v35;
    if (v16)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __135__PLModelMigrationAction_AddDuplicateBackgroundJobItems__managedAssetOIDsFromAdditionalAssetAttributesOIDs_managedObjectContext_error___block_invoke;
      v33[3] = &unk_1E7574658;
      v18 = v10;
      v34 = v18;
      [v16 enumerateObjectsUsingBlock:v33];
      v10 = v34;
LABEL_14:

      v10 = v18;
      goto LABEL_15;
    }

    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      v21 = [(PLModelMigrationActionBackground *)self logger];

      if (!v21)
      {
        v27 = PLMigrationGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          *buf = 138543618;
          *&buf[4] = v29;
          *&buf[12] = 2112;
          *&buf[14] = v17;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Failed to fetch oids for %{public}@. Error: %@", buf, 0x16u);
        }

        if (a5)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }

      v69 = 0u;
      v70 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v22 = PLMigrationGetLog();
      os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      v23 = objc_opt_class();
      v32 = NSStringFromClass(v23);
      v36 = 138543618;
      v37 = v32;
      v38 = 2112;
      v39 = v17;
      LODWORD(v31) = 22;
      v24 = _os_log_send_and_compose_impl();

      v25 = [(PLModelMigrationActionBackground *)self logger:&v36];
      [v25 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1848, 16}];

      if (v24 != buf)
      {
        free(v24);
      }
    }

    if (a5)
    {
LABEL_9:
      v26 = v17;
      v18 = 0;
      *a5 = v17;
      goto LABEL_14;
    }

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

LABEL_15:

  return v10;
}

- (id)_convertToPLManagedAssetOIDsFromSelectionOIDs:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = MEMORY[0x1E695D5B8];
  v9 = a3;
  v10 = +[PLAdditionalAssetAttributes entityName];
  v11 = [v8 entityForName:v10 inManagedObjectContext:v7];

  v12 = MEMORY[0x1E695D5B8];
  v13 = +[PLManagedAsset entityName];
  v14 = [v12 entityForName:v13 inManagedObjectContext:v7];

  v15 = MEMORY[0x1E695D5B8];
  v16 = +[PLDuplicateAlbum entityName];
  v17 = [v15 entityForName:v16 inManagedObjectContext:v7];

  v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __130__PLModelMigrationAction_AddDuplicateBackgroundJobItems__convertToPLManagedAssetOIDsFromSelectionOIDs_managedObjectContext_error___block_invoke;
  v44[3] = &unk_1E7564BB0;
  v21 = v11;
  v45 = v21;
  v22 = v19;
  v46 = v22;
  v23 = v17;
  v47 = v23;
  v24 = v20;
  v48 = v24;
  v25 = v14;
  v49 = v25;
  v26 = v18;
  v50 = v26;
  v51 = self;
  [v9 enumerateObjectsUsingBlock:v44];

  v43 = 0;
  v27 = [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _managedAssetOIDsFromAdditionalAssetAttributesOIDs:v22 managedObjectContext:v7 error:&v43];
  v28 = v43;
  if (!v27)
  {
LABEL_7:

    v35 = v28;
    v32 = 0;
    v36 = a5;
    if (a5)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v40 = v25;
  v29 = v23;
  v30 = v21;
  v31 = [v27 allObjects];
  [v26 addObjectsFromArray:v31];

  v42 = v28;
  v32 = [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _managedAssetOIDsFromDuplicateAlbumOIDs:v24 managedObjectContext:v7 error:&v42];
  v33 = v42;

  if (!v32)
  {
    v28 = v33;
    v21 = v30;
    v23 = v29;
    v25 = v40;
    goto LABEL_7;
  }

  v34 = [v32 allObjects];
  [v26 addObjectsFromArray:v34];

  v35 = v33;
  v21 = v30;
  v23 = v29;
  v25 = v40;
  v36 = a5;
  if (!v26)
  {
    if (a5)
    {
LABEL_5:
      v37 = v35;
      v26 = 0;
      *v36 = v35;
      goto LABEL_9;
    }

LABEL_8:
    v26 = 0;
  }

LABEL_9:

  v38 = v26;
  return v26;
}

- (int64_t)_processWithLimitedSelection:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v110 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v73 = 0;
    v10 = [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _convertToPLManagedAssetOIDsFromSelectionOIDs:v8 managedObjectContext:v9 error:&v73];
    v11 = v73;
    if (!v10)
    {
      v35 = PLMigrationGetLog();
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

      if (v36)
      {
        v37 = [(PLModelMigrationActionBackground *)self logger];

        if (v37)
        {
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
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
          buf = 0u;
          v79 = 0u;
          v38 = PLMigrationGetLog();
          os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
          v76 = 138412290;
          v77 = v11;
          LODWORD(v59) = 12;
          v39 = _os_log_send_and_compose_impl();

          v40 = [(PLModelMigrationActionBackground *)self logger:&v76];
          [v40 logWithMessage:v39 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1753, 16}];

          if (v39 != &buf)
          {
            free(v39);
          }
        }

        else
        {
          v53 = PLMigrationGetLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v11;
            _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_ERROR, "Failed to convert selection oids. Error: %@", &buf, 0xCu);
          }
        }
      }

      if (a5)
      {
        v54 = v11;
        *a5 = v11;
      }

      v34 = 3;
      goto LABEL_59;
    }

    if (![v10 count])
    {
      v34 = 1;
LABEL_59:

      goto LABEL_60;
    }

    v65 = self;
    v12 = MEMORY[0x1E695D5E0];
    v13 = +[PLManagedAsset entityName];
    v14 = [v12 fetchRequestWithEntityName:v13];

    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v10];
    [v14 setPredicate:v15];

    [v14 setResultType:2];
    v75 = @"uuid";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
    [v14 setPropertiesToFetch:v16];

    v72 = v11;
    v17 = [v9 executeFetchRequest:v14 error:&v72];
    v64 = v72;

    v66 = v9;
    if (v17)
    {
      v60 = a5;
      v61 = v10;
      v62 = v8;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v63 = v17;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v68 objects:v74 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v69;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v69 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [*(*(&v68 + 1) + 8 * i) objectForKeyedSubscript:@"uuid"];
            if (v23)
            {
              v24 = [PLBackgroundJobWorkItem insertBackgroundJobWorkItemWithIdentifier:v23 jobType:6 jobFlags:3 inManagedObjectContext:v9];
            }

            else
            {
              v25 = PLMigrationGetLog();
              v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);

              v9 = v66;
              if (v26)
              {
                v27 = [(PLModelMigrationActionBackground *)v65 logger];

                if (v27)
                {
                  v108 = 0u;
                  v109 = 0u;
                  v106 = 0u;
                  v107 = 0u;
                  v104 = 0u;
                  v105 = 0u;
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
                  buf = 0u;
                  v79 = 0u;
                  v28 = PLMigrationGetLog();
                  os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
                  LOWORD(v76) = 0;
                  LODWORD(v59) = 2;
                  v29 = _os_log_send_and_compose_impl();

                  v30 = [(PLModelMigrationActionBackground *)v65 logger:&v76];
                  [v30 logWithMessage:v29 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1778, 1}];

                  if (v29 != &buf)
                  {
                    free(v29);
                  }
                }

                else
                {
                  v31 = PLMigrationGetLog();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                  {
                    LOWORD(buf) = 0;
                    _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_INFO, "Asset with missing uuid, skipping", &buf, 2u);
                  }
                }

                v9 = v66;
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v68 objects:v74 count:16];
        }

        while (v20);
      }

      v67 = v64;
      v32 = [v9 save:&v67];
      v33 = v67;

      if (v32)
      {
        v34 = 1;
        v11 = v33;
        v10 = v61;
        v8 = v62;
        v9 = v66;
        v17 = v63;
LABEL_58:

        goto LABEL_59;
      }

      v47 = PLMigrationGetLog();
      v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);

      v8 = v62;
      a5 = v60;
      if (v48)
      {
        v49 = [(PLModelMigrationActionBackground *)v65 logger];

        if (v49)
        {
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
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
          buf = 0u;
          v79 = 0u;
          v50 = PLMigrationGetLog();
          os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
          v76 = 138412290;
          v77 = v33;
          LODWORD(v59) = 12;
          v51 = _os_log_send_and_compose_impl();

          v52 = [(PLModelMigrationActionBackground *)v65 logger:&v76];
          [v52 logWithMessage:v51 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1786, 0}];

          if (v51 != &buf)
          {
            free(v51);
          }
        }

        else
        {
          v56 = PLMigrationGetLog();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v33;
            _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_DEFAULT, "Save failed. Error: %@", &buf, 0xCu);
          }
        }
      }

      v10 = v61;
      v17 = v63;
      if (!v60)
      {
        v34 = 3;
        v11 = v33;
        goto LABEL_57;
      }

      v11 = v33;
LABEL_55:
      v57 = v33;
      *a5 = v33;
      v34 = 3;
LABEL_57:
      v9 = v66;
      goto LABEL_58;
    }

    v41 = PLMigrationGetLog();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);

    if (v42)
    {
      v43 = [(PLModelMigrationActionBackground *)v65 logger];

      if (!v43)
      {
        v55 = PLMigrationGetLog();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v64;
          _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_ERROR, "Failed to fetch assets. Error: %@", &buf, 0xCu);
        }

        if (a5)
        {
          goto LABEL_35;
        }

        goto LABEL_49;
      }

      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
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
      buf = 0u;
      v79 = 0u;
      v44 = PLMigrationGetLog();
      os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      v76 = 138412290;
      v77 = v64;
      LODWORD(v59) = 12;
      v45 = _os_log_send_and_compose_impl();

      v46 = [(PLModelMigrationActionBackground *)v65 logger:&v76];
      [v46 logWithMessage:v45 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1769, 16}];

      if (v45 != &buf)
      {
        free(v45);
      }
    }

    if (a5)
    {
LABEL_35:
      v11 = v64;
      v33 = v64;
      goto LABEL_55;
    }

LABEL_49:
    v34 = 3;
    v11 = v64;
    goto LABEL_58;
  }

  v34 = 1;
LABEL_60:

  return v34;
}

- (int64_t)_processTransactionIterator:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v57[3] = *MEMORY[0x1E69E9840];
  v33 = a3;
  v7 = a4;
  v32 = self;
  [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _setupPropertiesWithManagedObjectContext:v7];
  v34 = +[PLAdditionalAssetAttributes entityName];
  v56[0] = v34;
  v8 = MEMORY[0x1E695D5B8];
  v9 = +[PLAdditionalAssetAttributes entityName];
  v10 = [v8 entityForName:v9 inManagedObjectContext:v7];
  v57[0] = v10;
  v11 = +[PLManagedAsset entityName];
  v56[1] = v11;
  v12 = MEMORY[0x1E695D5B8];
  v13 = +[PLManagedAsset entityName];
  v14 = [v12 entityForName:v13 inManagedObjectContext:v7];
  v57[1] = v14;
  v15 = +[PLDuplicateAlbum entityName];
  v56[2] = v15;
  v16 = MEMORY[0x1E695D5B8];
  v17 = +[PLDuplicateAlbum entityName];
  v18 = [v16 entityForName:v17 inManagedObjectContext:v7];
  v57[2] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];

  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 1;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__1060;
  v50 = __Block_byref_object_dispose__1061;
  v51 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __112__PLModelMigrationAction_AddDuplicateBackgroundJobItems__processTransactionIterator_managedObjectContext_error___block_invoke;
  v36[3] = &unk_1E7564B88;
  v41 = v44;
  v36[4] = v32;
  v22 = v19;
  v37 = v22;
  v23 = v21;
  v38 = v23;
  v24 = v20;
  v39 = v24;
  v42 = &v52;
  v25 = v7;
  v40 = v25;
  v43 = &v46;
  [v33 enumerateRemainingTransactionsWithBlock:v36];
  if (v53[3] != 1)
  {
    v28 = v47[5];
LABEL_7:
    if (a5)
    {
      v28 = v28;
      *a5 = v28;
    }

    goto LABEL_9;
  }

  if ([v24 count])
  {
    v26 = (v47 + 5);
    obj = v47[5];
    v27 = [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)v32 _processWithLimitedSelection:v24 managedObjectContext:v25 error:&obj];
    objc_storeStrong(v26, obj);
    v53[3] = v27;
  }

  else
  {
    v27 = v53[3];
  }

  v28 = v47[5];
  if (v27 != 1)
  {
    goto LABEL_7;
  }

LABEL_9:

  v29 = v53[3];
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
  return v29;
}

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v110 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [[PLGlobalValues alloc] initWithManagedObjectContext:v6];
  if (([(PLGlobalValues *)v7 libraryCreateOptions]& 0x40) != 0)
  {
    v17 = PLMigrationGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (!v18)
    {
      goto LABEL_28;
    }

    v19 = [(PLModelMigrationActionBackground *)self logger];

    if (!v19)
    {
      v30 = PLMigrationGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Skipping migration processing, background jobs are disabled for this library", buf, 2u);
      }

      goto LABEL_28;
    }

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
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
    *buf = 0u;
    v79 = 0u;
    v20 = PLMigrationGetLog();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    LOWORD(v76) = 0;
    LODWORD(v69) = 2;
    v15 = _os_log_send_and_compose_impl();

    v21 = [(PLModelMigrationActionBackground *)self logger:&v76];
    [v21 logWithMessage:v15 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1589, 0}];

    if (v15 == buf)
    {
      goto LABEL_28;
    }

LABEL_10:
    free(v15);
    goto LABEL_28;
  }

  v8 = [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _currentDuplicateProcessingStatusWithManagedObjectContext:v6];
  if (v8 < 1)
  {
    [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _updateDuplicateProcessingStatusIfNeededWithStatus:0xFFFFFFFFLL shouldSave:1 managedObjectContext:v6];
    v22 = [PLModelMigrationActionUtility getHistoryTokenWithAction:self key:@"LastDuplicateDetectorProcessingToken" managedObjectContext:v6];
    if (!v22)
    {
      v31 = PLMigrationGetLog();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

      if (v32)
      {
        v33 = [(PLModelMigrationActionBackground *)self logger];

        if (v33)
        {
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
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
          *buf = 0u;
          v79 = 0u;
          v34 = PLMigrationGetLog();
          os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
          LOWORD(v76) = 0;
          LODWORD(v69) = 2;
          v35 = _os_log_send_and_compose_impl();

          v36 = [(PLModelMigrationActionBackground *)self logger:&v76];
          [v36 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1613, 0}];

          if (v35 != buf)
          {
            free(v35);
          }
        }

        else
        {
          v59 = PLMigrationGetLog();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_DEFAULT, "Skipping migration processing, missing history token ", buf, 2u);
          }
        }
      }

      [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _cleanupLegacyProcessingTokensWithManagedObjectContext:v6];
      v27 = 1;
      [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _updateDuplicateProcessingStatusIfNeededWithStatus:0 shouldSave:1 managedObjectContext:v6];
      [(PLModelMigrationActionBackground *)self finalizeProgress];
      goto LABEL_69;
    }

    v23 = [PLModelMigrationActionUtility getHistoryTokenWithAction:self key:@"LastInitialDuplicateDetectorProcessingCompletedToken" managedObjectContext:v6];
    if (v23)
    {
      if ([PLModelMigrationActionUtility shouldProcessHistoryTokenWithAction:self token:v22 cutoffPercent:v6 managedObjectContext:0.5])
      {
        v71 = v23;
        v75 = 0;
        v24 = [PLPersistentHistoryTransactionIterator iteratorSinceToken:v22 withManagedObjectObjectContext:v6 error:&v75];
        v25 = v75;
        v26 = v25;
        if (!v24)
        {
          v53 = PLMigrationGetLog();
          v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);

          if (v54)
          {
            v55 = [(PLModelMigrationActionBackground *)self logger];

            if (v55)
            {
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v104 = 0u;
              v105 = 0u;
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
              *buf = 0u;
              v79 = 0u;
              v56 = PLMigrationGetLog();
              os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
              v76 = 138412290;
              v77 = v26;
              LODWORD(v69) = 12;
              v57 = _os_log_send_and_compose_impl();

              v58 = [(PLModelMigrationActionBackground *)self logger:&v76];
              [v58 logWithMessage:v57 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1646, 0}];

              if (v57 != buf)
              {
                free(v57);
              }
            }

            else
            {
              v67 = PLMigrationGetLog();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v26;
                _os_log_impl(&dword_19BF1F000, v67, OS_LOG_TYPE_DEFAULT, "Skipping migration processing, failed to create history transaction iterator. Error: %@", buf, 0xCu);
              }
            }
          }

          if (a4)
          {
            v68 = v26;
            *a4 = v26;
          }

          [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _cleanupLegacyProcessingTokensWithManagedObjectContext:v6];
          v27 = 1;
          [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _updateDuplicateProcessingStatusIfNeededWithStatus:0 shouldSave:1 managedObjectContext:v6];
          goto LABEL_67;
        }

        v74 = v25;
        v27 = [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _processTransactionIterator:v24 managedObjectContext:v6 error:&v74];
        v28 = v74;

        if (v27 == 3)
        {
          v62 = [(PLModelMigrationActionBackground *)self pathManager];
          [v62 libraryURL];
          v63 = v70 = v24;
          v64 = PLIsFinalBackgroundMigrationRetryAttempt(v63);

          v24 = v70;
          if (v64)
          {
            [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _cleanupLegacyProcessingTokensWithManagedObjectContext:v6];
            [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _updateDuplicateProcessingStatusIfNeededWithStatus:0 shouldSave:0 managedObjectContext:v6];
            v72 = v28;
            v29 = &v72;
LABEL_50:
            v27 = [(PLModelMigrationActionBackground *)self saveWithManagedObjectContext:v6 error:v29];
            v65 = *v29;

            v26 = v65;
            if (v27 == 1)
            {
LABEL_55:

LABEL_67:
              [(PLModelMigrationActionBackground *)self finalizeProgress];

              v23 = v71;
              goto LABEL_68;
            }

LABEL_53:
            if (a4)
            {
              v66 = v26;
              *a4 = v26;
            }

            goto LABEL_55;
          }
        }

        else if (v27 == 1)
        {
          [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _cleanupLegacyProcessingTokensWithManagedObjectContext:v6];
          [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _updateDuplicateProcessingStatusIfNeededWithStatus:2 shouldSave:0 managedObjectContext:v6];
          v73 = v28;
          v29 = &v73;
          goto LABEL_50;
        }

        v26 = v28;
        goto LABEL_53;
      }

      v49 = PLMigrationGetLog();
      v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);

      if (v50)
      {
        v51 = [(PLModelMigrationActionBackground *)self logger];

        if (v51)
        {
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
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
          *buf = 0u;
          v79 = 0u;
          v52 = PLMigrationGetLog();
          os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
          LOWORD(v76) = 0;
          LODWORD(v69) = 2;
          v44 = _os_log_send_and_compose_impl();

          v45 = [(PLModelMigrationActionBackground *)self logger:&v76];
          v46 = v45;
          v47 = v44;
          v48 = 1634;
LABEL_36:
          [v45 logWithMessage:v47 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{v48, 0}];

          if (v44 != buf)
          {
            free(v44);
          }

          goto LABEL_60;
        }

        v60 = PLMigrationGetLog();
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_59;
        }

        *buf = 0;
        v61 = "Skipping migration processing, history token not in a valid state";
LABEL_58:
        _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_DEFAULT, v61, buf, 2u);
LABEL_59:
      }
    }

    else
    {
      v40 = PLMigrationGetLog();
      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

      if (v41)
      {
        v42 = [(PLModelMigrationActionBackground *)self logger];

        if (v42)
        {
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
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
          *buf = 0u;
          v79 = 0u;
          v43 = PLMigrationGetLog();
          os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
          LOWORD(v76) = 0;
          LODWORD(v69) = 2;
          v44 = _os_log_send_and_compose_impl();

          v45 = [(PLModelMigrationActionBackground *)self logger:&v76];
          v46 = v45;
          v47 = v44;
          v48 = 1624;
          goto LABEL_36;
        }

        v60 = PLMigrationGetLog();
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_59;
        }

        *buf = 0;
        v61 = "Skipping migration processing, missing initial processing token ";
        goto LABEL_58;
      }
    }

LABEL_60:
    [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _cleanupLegacyProcessingTokensWithManagedObjectContext:v6];
    v27 = 1;
    [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _updateDuplicateProcessingStatusIfNeededWithStatus:0 shouldSave:1 managedObjectContext:v6];
    [(PLModelMigrationActionBackground *)self finalizeProgress];
LABEL_68:

LABEL_69:
    goto LABEL_29;
  }

  v9 = v8;
  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = [(PLModelMigrationActionBackground *)self logger];

    if (!v12)
    {
      v37 = PLMigrationGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = PLStringFromDuplicateProcessingStatus(v9);
        *buf = 138543362;
        *&buf[4] = v38;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Skipping migration processing, based on processing status: %{public}@", buf, 0xCu);
      }

      goto LABEL_28;
    }

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
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
    *buf = 0u;
    v79 = 0u;
    v13 = PLMigrationGetLog();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    v14 = PLStringFromDuplicateProcessingStatus(v9);
    v76 = 138543362;
    v77 = v14;
    LODWORD(v69) = 12;
    v15 = _os_log_send_and_compose_impl();

    v16 = [(PLModelMigrationActionBackground *)self logger:&v76];
    [v16 logWithMessage:v15 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1600, 0}];

    if (v15 != buf)
    {
      goto LABEL_10;
    }
  }

LABEL_28:
  [(PLModelMigrationAction_AddDuplicateBackgroundJobItems *)self _cleanupLegacyProcessingTokensWithManagedObjectContext:v6];
  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v27 = 1;
LABEL_29:

  return v27;
}

@end