@interface PLModelMigrationAction_UpdateDuplicateProcessingState
- (PLModelMigrationAction_UpdateDuplicateProcessingState)updateDuplicateProcessingStateWithProcessingState:(unsigned __int16)state pendingParentUnitCount:(int64_t)count assetProcessingStateMap:(id)map context:(id)context request:(id)request error:(id *)error;
- (id)fetchRequestForAnimated;
- (id)fetchRequestForAudioVideo;
- (id)fetchRequestForDocument;
- (id)fetchRequestForExposureScore;
- (id)fetchRequestForScreenshot;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
- (int64_t)processAssetStateMap:(id)map pendingParentUnitCount:(int64_t)count context:(id)context error:(id *)error;
- (int64_t)updateSceneClassificationDuplicateProcessingStateWithProcessingState:(unsigned __int16)state pendingParentUnitCount:(int64_t)count assetProcessingStateMap:(id)map context:(id)context request:(id)request error:(id *)error;
@end

@implementation PLModelMigrationAction_UpdateDuplicateProcessingState

- (PLModelMigrationAction_UpdateDuplicateProcessingState)updateDuplicateProcessingStateWithProcessingState:(unsigned __int16)state pendingParentUnitCount:(int64_t)count assetProcessingStateMap:(id)map context:(id)context request:(id)request error:(id *)error
{
  stateCopy = state;
  v78 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  contextCopy = context;
  requestCopy = request;
  v40 = 0;
  v17 = [contextCopy executeFetchRequest:requestCopy error:&v40];
  v18 = v40;
  if ([v17 count])
  {
    context = objc_autoreleasePoolPush();
    v19 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v17 count], count);
    v20 = [MEMORY[0x1E695DFD8] setWithArray:v17];
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:stateCopy];
    [mapCopy setObject:v20 forKeyedSubscript:v21];

    v22 = PLMigrationGetLog();
    LODWORD(v20) = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
        v38 = v18;
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
        memset(buf, 0, sizeof(buf));
        v24 = PLMigrationGetLog();
        os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = [v17 count];
        v41 = 138543874;
        v42 = v26;
        v43 = 2050;
        v44 = v27;
        v45 = 1024;
        v46 = stateCopy;
        LODWORD(v37) = 28;
        v28 = _os_log_send_and_compose_impl();

        v29 = [(PLModelMigrationActionCore *)self logger:&v41];
        [v29 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1371, 0}];

        if (v28 != buf)
        {
          free(v28);
        }

        v18 = v38;
      }

      else
      {
        v32 = PLMigrationGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          v35 = [v17 count];
          *buf = 138543874;
          *&buf[4] = v34;
          *&buf[12] = 2050;
          *&buf[14] = v35;
          *&buf[22] = 1024;
          *&buf[24] = stateCopy;
          _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: Found %{public}td assets for duplicate processing state: %u", buf, 0x1Cu);
        }
      }
    }

    [v19 setCompletedUnitCount:{objc_msgSend(v19, "totalUnitCount")}];

    objc_autoreleasePoolPop(context);
    goto LABEL_15;
  }

  if (v17)
  {
LABEL_15:
    v31 = 1;
    goto LABEL_16;
  }

  if (error)
  {
    v30 = v18;
    *error = v18;
  }

  v31 = 3;
LABEL_16:

  return v31;
}

- (int64_t)updateSceneClassificationDuplicateProcessingStateWithProcessingState:(unsigned __int16)state pendingParentUnitCount:(int64_t)count assetProcessingStateMap:(id)map context:(id)context request:(id)request error:(id *)error
{
  stateCopy = state;
  v96 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  contextCopy = context;
  requestCopy = request;
  v57 = 0;
  v17 = [contextCopy executeFetchRequest:requestCopy error:&v57];
  v18 = v57;
  if ([v17 count])
  {
    v50 = v18;
    v51 = requestCopy;
    v52 = contextCopy;
    v47 = mapCopy;
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v48 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v17 count], count);
    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v20 = v17;
    v21 = [v20 countByEnumeratingWithState:&v53 objects:v95 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v54;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v54 != v23)
          {
            objc_enumerationMutation(v20);
          }

          assetAttributes = [*(*(&v53 + 1) + 8 * i) assetAttributes];
          asset = [assetAttributes asset];
          objectID = [asset objectID];

          if (objectID)
          {
            [v19 addObject:objectID];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v53 objects:v95 count:16];
      }

      while (v22);
    }

    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:stateCopy];
    mapCopy = v47;
    [v47 setObject:v19 forKeyedSubscript:v28];

    v29 = PLMigrationGetLog();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

    if (v30)
    {
      logger = [(PLModelMigrationActionCore *)selfCopy logger];

      if (logger)
      {
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
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        memset(buf, 0, sizeof(buf));
        v32 = PLMigrationGetLog();
        os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = [v20 count];
        v58 = 138543874;
        v59 = v34;
        v60 = 2050;
        v61 = v35;
        v62 = 1024;
        v63 = stateCopy;
        LODWORD(v45) = 28;
        v36 = _os_log_send_and_compose_impl();

        v37 = [(PLModelMigrationActionCore *)selfCopy logger:&v58];
        [v37 logWithMessage:v36 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1351, 0}];

        if (v36 != buf)
        {
          free(v36);
        }
      }

      else
      {
        v40 = PLMigrationGetLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          v43 = [v20 count];
          *buf = 138543874;
          *&buf[4] = v42;
          *&buf[12] = 2050;
          *&buf[14] = v43;
          *&buf[22] = 1024;
          *&buf[24] = stateCopy;
          _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: Found %{public}td assets for duplicate processing state: %u", buf, 0x1Cu);
        }
      }
    }

    [v48 setCompletedUnitCount:{objc_msgSend(v48, "totalUnitCount")}];

    objc_autoreleasePoolPop(context);
    v38 = 1;
    requestCopy = v51;
    contextCopy = v52;
    v18 = v50;
  }

  else if (v17)
  {
    v38 = 1;
  }

  else
  {
    if (error)
    {
      v39 = v18;
      *error = v18;
    }

    v38 = 3;
  }

  return v38;
}

- (int64_t)processAssetStateMap:(id)map pendingParentUnitCount:(int64_t)count context:(id)context error:(id *)error
{
  v129 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  contextCopy = context;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 1;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__23792;
  v86 = __Block_byref_object_dispose__23793;
  v87 = 0;
  v64 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  selfCopy = self;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = mapCopy;
  v9 = [obj countByEnumeratingWithState:&v78 objects:v128 count:16];
  if (v9)
  {
    v65 = *v79;
    do
    {
      v10 = 0;
      v66 = v9;
      do
      {
        if (*v79 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v78 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [obj objectForKeyedSubscript:v11];
        v14 = +[PLManagedAsset fetchRequest];
        v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v13];
        [v14 setPredicate:v15];

        v127 = @"additionalAttributes";
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v127 count:1];
        [v14 setRelationshipKeyPathsForPrefetching:v16];

        [v14 setFetchBatchSize:100];
        v17 = v83 + 5;
        v77 = v83[5];
        v18 = [contextCopy executeFetchRequest:v14 error:&v77];
        objc_storeStrong(v17, v77);
        if ([v18 count])
        {
          v19 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](selfCopy, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v18 count], count);
          v71[0] = MEMORY[0x1E69E9820];
          v71[1] = 3221225472;
          v71[2] = __115__PLModelMigrationAction_UpdateDuplicateProcessingState_processAssetStateMap_pendingParentUnitCount_context_error___block_invoke;
          v71[3] = &unk_1E7569CD0;
          v71[4] = v11;
          v72 = v64;
          v73 = selfCopy;
          v75 = &v82;
          v76 = &v88;
          v20 = v19;
          v74 = v20;
          v21 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v18 withBlock:v71];
          v22 = v21;
          v23 = v89[3];
          if (v23 != 2 && v21)
          {
            objc_storeStrong(v83 + 5, v21);
            v89[3] = 3;
            goto LABEL_17;
          }

          if (v23 == 1)
          {
            v24 = PLMigrationGetLog();
            v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

            if (v25)
            {
              logger = [(PLModelMigrationActionCore *)selfCopy logger];
              v27 = logger == 0;

              if (v27)
              {
                v49 = PLMigrationGetLog();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  v50 = objc_opt_class();
                  v51 = NSStringFromClass(v50);
                  v52 = [v18 count];
                  *buf = 138543618;
                  *&buf[4] = v51;
                  *&buf[12] = 2050;
                  *&buf[14] = v52;
                  _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@: Updated processing state for %{public}td assets.", buf, 0x16u);
                }
              }

              else
              {
                v125 = 0u;
                v126 = 0u;
                v123 = 0u;
                v124 = 0u;
                v121 = 0u;
                v122 = 0u;
                v119 = 0u;
                v120 = 0u;
                v117 = 0u;
                v118 = 0u;
                v115 = 0u;
                v116 = 0u;
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
                memset(buf, 0, sizeof(buf));
                v28 = PLMigrationGetLog();
                os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
                v29 = objc_opt_class();
                v30 = NSStringFromClass(v29);
                v31 = [v18 count];
                v92 = 138543618;
                v93 = v30;
                v94 = 2050;
                v95 = v31;
                LODWORD(v61) = 22;
                v32 = _os_log_send_and_compose_impl();

                v33 = [(PLModelMigrationActionCore *)selfCopy logger:&v92];
                [v33 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1316, 0}];

                if (v32 != buf)
                {
                  free(v32);
                }
              }
            }

            v48 = 0;
            LOBYTE(v35) = 1;
          }

          else
          {
LABEL_17:
            v34 = PLMigrationGetLog();
            v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);

            if (v35)
            {
              logger2 = [(PLModelMigrationActionCore *)selfCopy logger];
              v37 = logger2 == 0;

              if (v37)
              {
                v44 = PLMigrationGetLog();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  v45 = objc_opt_class();
                  v46 = NSStringFromClass(v45);
                  v47 = v83[5];
                  *buf = 138543618;
                  *&buf[4] = v46;
                  *&buf[12] = 2114;
                  *&buf[14] = v47;
                  _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
                }
              }

              else
              {
                v125 = 0u;
                v126 = 0u;
                v123 = 0u;
                v124 = 0u;
                v121 = 0u;
                v122 = 0u;
                v119 = 0u;
                v120 = 0u;
                v117 = 0u;
                v118 = 0u;
                v115 = 0u;
                v116 = 0u;
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
                memset(buf, 0, sizeof(buf));
                v38 = PLMigrationGetLog();
                os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
                v39 = objc_opt_class();
                v40 = NSStringFromClass(v39);
                v41 = v83[5];
                v92 = 138543618;
                v93 = v40;
                v94 = 2114;
                v95 = v41;
                LODWORD(v61) = 22;
                v42 = _os_log_send_and_compose_impl();

                v43 = [(PLModelMigrationActionCore *)selfCopy logger:&v92];
                [v43 logWithMessage:v42 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1318, 16}];

                if (v42 != buf)
                {
                  free(v42);
                }
              }

              LOBYTE(v35) = 0;
            }

            v48 = 2;
          }

          if (!v35)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        if (!v18)
        {
          v89[3] = 3;
        }

LABEL_31:
        v48 = 0;
LABEL_32:

        objc_autoreleasePoolPop(v12);
        if (v48)
        {
          goto LABEL_35;
        }

        ++v10;
      }

      while (v66 != v10);
      v9 = [obj countByEnumeratingWithState:&v78 objects:v128 count:16];
    }

    while (v9);
  }

LABEL_35:

  if (v89[3] == 1 && [v64 count])
  {
    v53 = +[PLManagedAsset fetchRequest];
    v54 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v64];
    [v53 setPredicate:v54];

    [v53 setFetchBatchSize:100];
    v55 = v83 + 5;
    v70 = v83[5];
    v56 = [PLModelMigrationActionUtility removeFromDuplicatesWithAction:selfCopy managedObjectContext:contextCopy fetchRequest:v53 requiresLibraryReprocessing:1 error:&v70];
    objc_storeStrong(v55, v70);
    v89[3] = v56;
  }

  v57 = v89[3];
  v58 = v83[5];
  if (v57 != 1 && error)
  {
    v58 = v58;
    *error = v58;
  }

  v59 = v89[3];
  _Block_object_dispose(&v82, 8);

  _Block_object_dispose(&v88, 8);
  return v59;
}

- (id)fetchRequestForDocument
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = +[PLSceneClassification fetchRequest];
  v3 = MEMORY[0x1E696AB28];
  v4 = MEMORY[0x1E696AE18];
  v5 = [PLSceneClassification PLJunkSceneClassificationIDForLabel:@"hier_text_document"];
  v6 = [v4 predicateWithFormat:@"%K == %@", @"sceneIdentifier", v5];
  v13[0] = v6;
  0x3FE2E147AE147AE1 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %lf", @"confidence", 0x3FE2E147AE147AE1];
  v13[1] = 0x3FE2E147AE147AE1;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v9 = [v3 andPredicateWithSubpredicates:v8];
  [v2 setPredicate:v9];

  v12 = @"assetAttributes.asset";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v2 setRelationshipKeyPathsForPrefetching:v10];

  [v2 setFetchBatchSize:100];

  return v2;
}

- (id)fetchRequestForExposureScore
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = +[PLManagedAsset fetchRequest];
  v3 = MEMORY[0x1E696AB28];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 0];
  v9[0] = v4;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %lf", @"mediaAnalysisAttributes.exposureScore", 0];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];
  [v2 setPredicate:v7];

  [v2 setResultType:1];

  return v2;
}

- (id)fetchRequestForAnimated
{
  v2 = +[PLManagedAsset fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"playbackStyle", 2];
  [v2 setPredicate:v3];

  [v2 setResultType:1];

  return v2;
}

- (id)fetchRequestForScreenshot
{
  v2 = +[PLManagedAsset fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kindSubtype", 10];
  [v2 setPredicate:v3];

  [v2 setResultType:1];

  return v2;
}

- (id)fetchRequestForAudioVideo
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = +[PLManagedAsset fetchRequest];
  v3 = MEMORY[0x1E696AB28];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 1];
  v9[0] = v4;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 2];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v3 orPredicateWithSubpredicates:v6];
  [v2 setPredicate:v7];

  [v2 setResultType:1];

  return v2;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  progress = [(PLModelMigrationActionCore *)self progress];
  v8 = [progress totalUnitCount] / 7;

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  fetchRequestForAudioVideo = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self fetchRequestForAudioVideo];
  v30 = 0;
  v11 = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self updateDuplicateProcessingStateWithProcessingState:2 pendingParentUnitCount:v8 assetProcessingStateMap:v9 context:contextCopy request:fetchRequestForAudioVideo error:&v30];
  v12 = v30;

  if (v11 != 1)
  {
    goto LABEL_9;
  }

  fetchRequestForScreenshot = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self fetchRequestForScreenshot];
  v29 = v12;
  v11 = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self updateDuplicateProcessingStateWithProcessingState:4 pendingParentUnitCount:v8 assetProcessingStateMap:v9 context:contextCopy request:fetchRequestForScreenshot error:&v29];
  v14 = v29;

  if (v11 != 1)
  {
    goto LABEL_8;
  }

  fetchRequestForAnimated = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self fetchRequestForAnimated];
  v28 = v14;
  v11 = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self updateDuplicateProcessingStateWithProcessingState:8 pendingParentUnitCount:v8 assetProcessingStateMap:v9 context:contextCopy request:fetchRequestForAnimated error:&v28];
  v12 = v28;

  if (v11 != 1)
  {
    goto LABEL_9;
  }

  fetchRequestForExposureScore = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self fetchRequestForExposureScore];
  v27 = v12;
  v11 = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self updateDuplicateProcessingStateWithProcessingState:32 pendingParentUnitCount:v8 assetProcessingStateMap:v9 context:contextCopy request:fetchRequestForExposureScore error:&v27];
  v14 = v27;

  if (v11 == 1)
  {
    fetchRequestForDocument = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self fetchRequestForDocument];
    v26 = v14;
    v11 = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self updateSceneClassificationDuplicateProcessingStateWithProcessingState:16 pendingParentUnitCount:v8 assetProcessingStateMap:v9 context:contextCopy request:fetchRequestForDocument error:&v26];
    v12 = v26;

    if (v11 == 1)
    {
      if ([v9 count])
      {
        v18 = objc_autoreleasePoolPush();
        v25 = v12;
        v11 = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self processAssetStateMap:v9 pendingParentUnitCount:v8 context:contextCopy error:&v25];
        v19 = v25;

        objc_autoreleasePoolPop(v18);
        v12 = v19;
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = v14;
  }

LABEL_9:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v20 = v12;
  v21 = v20;
  if (v11 != 1 && error != 0)
  {
    v23 = v20;
    *error = v21;
  }

  return v11;
}

@end