@interface PLModelMigration
- (BOOL)isMigrationCancelledWithError:(id *)error;
- (PLModelMigration)initWithMigrationContext:(id)context logger:(id)logger;
- (id)_managedObjectModelForLightweightMigrationStageWithURL:(id)l;
- (id)_nextRequiredStagedMigrationVersionAfterVersion:(id)version;
- (id)_stagedManagedObjectModelURLWithStageVersion:(id)version;
- (id)addStoreWithCoordinator:(id)coordinator migrationUUID:(id)d storeURL:(id)l options:(id)options description:(id)description fromVersion:(int)version toVersion:(int)toVersion progress:(id)self0 progressUnitCount:(unint64_t)self1 error:(id *)self2;
- (int64_t)migratePostProcessingWithActions:(id)actions migrationActionType:(int64_t)type progress:(id)progress progressUnitCount:(unint64_t)count error:(id *)error;
- (int64_t)migratePostProcessingWithProgressUnitCount:(unint64_t)count error:(id *)error;
- (int64_t)migratePreSchemaMigrationWithCurrentStoreVersion:(id)version error:(id *)error;
- (int64_t)migrateSchemaMigrationWithAutoMigrationOptions:(id)options currentStoreVersion:(id)version error:(id *)error;
- (int64_t)migrateStagedMigrationWithAutoMigrationOptions:(id)options currentStoreVersion:(id)version error:(id *)error;
- (int64_t)migrateWithError:(id *)error;
- (int64_t)runMigrationAction:(id)action withCoordinator:(id)coordinator error:(id *)error;
- (int64_t)setupWithError:(id *)error;
- (void)_registerActionClass:(Class)class actionsContainer:(id)container progressPortion:(unint64_t *)portion;
- (void)actionRegistration;
- (void)registerActionClass:(Class)class onCondition:(BOOL)condition;
- (void)registerPostRepairActionClass:(Class)class onCondition:(BOOL)condition;
- (void)registerPreRepairActionClass:(Class)class onCondition:(BOOL)condition;
- (void)registerPreSchemaActionClass:(Class)class onCondition:(BOOL)condition;
- (void)registerStagedActionClass:(Class)class onCondition:(BOOL)condition;
- (void)resetBackgroundActionClass:(Class)class onCondition:(BOOL)condition;
@end

@implementation PLModelMigration

- (BOOL)isMigrationCancelledWithError:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  progress = [(PLModelMigration *)self progress];
  isCancelled = [progress isCancelled];

  if (isCancelled)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E69BFF48];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"Migration was cancelled";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v6 errorWithDomain:v7 code:46008 userInfo:v8];

    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = 0;
  if (error)
  {
LABEL_5:
    v10 = v9;
    *error = v9;
  }

LABEL_6:

  return isCancelled;
}

- (int64_t)runMigrationAction:(id)action withCoordinator:(id)coordinator error:(id *)error
{
  actionCopy = action;
  coordinatorCopy = coordinator;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__56805;
  v29 = __Block_byref_object_dispose__56806;
  v30 = 0;
  v10 = objc_autoreleasePoolPush();
  pl_dispatch_once();
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  pathManager = [(PLModelMigration *)self pathManager];
  graphCache = [(PLModelMigration *)self graphCache];
  v15 = PLManagedObjectContextForMigrationActionWithCoordinator(coordinatorCopy, v12, pathManager, graphCache);

  [PLEnumerateAndSaveController disableConcurrencyLimiterForContext:v15];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __61__PLModelMigration_runMigrationAction_withCoordinator_error___block_invoke;
  v20[3] = &unk_1E7578898;
  v23 = &v31;
  v16 = actionCopy;
  v21 = v16;
  v17 = v15;
  v22 = v17;
  v24 = &v25;
  [v17 performBlockAndWait:v20];

  objc_autoreleasePoolPop(v10);
  if (error)
  {
    *error = v26[5];
  }

  v18 = v32[3];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  return v18;
}

uint64_t __61__PLModelMigration_runMigrationAction_withCoordinator_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 performActionWithManagedObjectContext:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
  return [a1[5] reset];
}

- (id)_stagedManagedObjectModelURLWithStageVersion:(id)version
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"photos-%d-STAGED", objc_msgSend(version, "intValue")];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 URLForResource:v3 withExtension:@"omo"];

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v6 URLForResource:v3 withExtension:@"mom"];
  }

  return v5;
}

- (id)_managedObjectModelForLightweightMigrationStageWithURL:(id)l
{
  v15 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:lCopy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * i) setManagedObjectClassName:{0, v10}];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_nextRequiredStagedMigrationVersionAfterVersion:(id)version
{
  v18 = *MEMORY[0x1E69E9840];
  integerValue = [version integerValue];
  v4 = &unk_1F0FBFE20;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = &unk_1F0FBFE20;
  v6 = [&unk_1F0FBFE20 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(&unk_1F0FBFE20);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (integerValue < [v10 intValue])
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [&unk_1F0FBFE20 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)addStoreWithCoordinator:(id)coordinator migrationUUID:(id)d storeURL:(id)l options:(id)options description:(id)description fromVersion:(int)version toVersion:(int)toVersion progress:(id)self0 progressUnitCount:(unint64_t)self1 error:(id *)self2
{
  v41 = *&version;
  v102 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  dCopy = d;
  lCopy = l;
  optionsCopy = options;
  descriptionCopy = description;
  progressCopy = progress;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__56805;
  v63 = __Block_byref_object_dispose__56806;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__56805;
  v57 = __Block_byref_object_dispose__56806;
  v58 = 0;
  obj = 0;
  LOBYTE(description) = [(PLModelMigration *)self isMigrationCancelledWithError:&obj];
  objc_storeStrong(&v58, obj);
  if ((description & 1) == 0)
  {
    toVersion = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (version: %d -> %d)", descriptionCopy, v41, toVersion];
    v20 = [PLModelMigrationActionProcessor alloc];
    pathManager = [(PLModelMigration *)self pathManager];
    analyticsEventManager = [(PLModelMigration *)self analyticsEventManager];
    logger = [(PLModelMigration *)self logger];
    v24 = [(PLModelMigrationActionProcessor *)v20 initWithUUID:dCopy pathManager:pathManager migrationActionType:1 analyticsEventManager:analyticsEventManager logger:logger progressUnitCount:1];

    [(PLModelMigrationActionProcessor *)v24 setIgnoreProgressUpdates:1];
    progress = [(PLModelMigrationActionProcessor *)v24 progress];
    [progressCopy addChild:progress withPendingUnitCount:count];

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __142__PLModelMigration_addStoreWithCoordinator_migrationUUID_storeURL_options_description_fromVersion_toVersion_progress_progressUnitCount_error___block_invoke;
    v45[3] = &unk_1E756E3C8;
    v26 = v24;
    v46 = v26;
    v50 = &v59;
    v51 = &v53;
    v47 = coordinatorCopy;
    v48 = lCopy;
    v49 = optionsCopy;
    [(PLModelMigrationActionProcessor *)v26 performActionWithName:toVersion ifRequired:1 block:v45];
    if (![(PLModelMigrationActionProcessor *)v26 isSuccess])
    {
      v27 = PLMigrationGetLog();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

      if (v28)
      {
        logger2 = [(PLModelMigration *)self logger];
        v30 = logger2 == 0;

        if (v30)
        {
          v35 = PLMigrationGetLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = v54[5];
            LODWORD(buf) = 67109634;
            DWORD1(buf) = v41;
            WORD4(buf) = 1024;
            *(&buf + 10) = toVersion;
            HIWORD(buf) = 2112;
            *&v71 = v36;
            _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Failed to open store for migration from version %d to %d. Error %@", &buf, 0x18u);
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
          buf = 0u;
          v71 = 0u;
          v31 = PLMigrationGetLog();
          os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
          v32 = v54[5];
          v65[0] = 67109634;
          v65[1] = v41;
          v66 = 1024;
          toVersionCopy = toVersion;
          v68 = 2112;
          v69 = v32;
          LODWORD(v39) = 24;
          v33 = _os_log_send_and_compose_impl();

          v34 = [(PLModelMigration *)self logger:v65];
          [v34 logWithMessage:v33 fromCodeLocation:"PLModelMigration.m" type:{686, 16}];

          if (v33 != &buf)
          {
            free(v33);
          }
        }
      }
    }
  }

  if (error)
  {
    *error = v54[5];
  }

  v37 = v60[5];
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);

  return v37;
}

BOOL __142__PLModelMigration_addStoreWithCoordinator_migrationUUID_storeURL_options_description_fromVersion_toVersion_progress_progressUnitCount_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progress];
  [v2 becomeCurrentWithPendingUnitCount:1];

  v3 = *(*(a1 + 72) + 8);
  v17 = *(v3 + 40);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __142__PLModelMigration_addStoreWithCoordinator_migrationUUID_storeURL_options_description_fromVersion_toVersion_progress_progressUnitCount_error___block_invoke_2;
  v13 = &unk_1E756E3A0;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v4 = [PLManagedObjectContext loadingPersistentStoreWithReason:@"Migration" error:&v17 workBlock:&v10];
  objc_storeStrong((v3 + 40), v17);
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) progress];
  [v7 resignCurrent];

  v8 = *(*(*(a1 + 64) + 8) + 40) != 0;
  return v8;
}

id __142__PLModelMigration_addStoreWithCoordinator_migrationUUID_storeURL_options_description_fromVersion_toVersion_progress_progressUnitCount_error___block_invoke_2(void *a1, void *a2)
{
  v3 = *MEMORY[0x1E695D4A8];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v13 = 0;
  v7 = [v5 addPersistentStoreWithType:v3 configuration:0 URL:v4 options:v6 error:&v13];
  v8 = v13;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = a2 == 0;
  }

  if (!v10)
  {
    v11 = v8;
    *a2 = v9;
  }

  return v7;
}

- (int64_t)migratePostProcessingWithActions:(id)actions migrationActionType:(int64_t)type progress:(id)progress progressUnitCount:(unint64_t)count error:(id *)error
{
  v120 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  progressCopy = progress;
  if (type == 6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:612 description:{@"Invalid parameter not satisfying: %@", @"type != PLMigrationActionTypeBackground"}];
  }

  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__56805;
  v82 = __Block_byref_object_dispose__56806;
  v83 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  obj = 0;
  selfCopy = self;
  v12 = [(PLModelMigration *)self isMigrationCancelledWithError:&obj];
  objc_storeStrong(&v83, obj);
  v13 = 1;
  if (v12)
  {
    v13 = 2;
  }

  v77 = v13;
  if ([actionsCopy count] && v75[3] == 1)
  {
    v14 = [PLModelMigrationActionProcessor alloc];
    migrationUUID = [(PLModelMigration *)self migrationUUID];
    pathManager = [(PLModelMigration *)self pathManager];
    analyticsEventManager = [(PLModelMigration *)self analyticsEventManager];
    logger = [(PLModelMigration *)self logger];
    if (type == 5)
    {
      countCopy = 0;
    }

    else
    {
      countCopy = count;
    }

    v20 = [(PLModelMigrationActionProcessor *)v14 initWithUUID:migrationUUID pathManager:pathManager migrationActionType:type analyticsEventManager:analyticsEventManager logger:logger progressUnitCount:countCopy];

    [(PLModelMigrationActionProcessor *)v20 setIgnoreProgressUpdates:1];
    progress = [(PLModelMigrationActionProcessor *)v20 progress];

    if (progress)
    {
      progress2 = [(PLModelMigrationActionProcessor *)v20 progress];
      [progressCopy addChild:progress2 withPendingUnitCount:count];
    }

    migrationContext = [(PLModelMigration *)self migrationContext];
    store = [migrationContext store];
    persistentStoreCoordinator = [store persistentStoreCoordinator];

    v72 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    v59 = actionsCopy;
    v25 = [v59 countByEnumeratingWithState:&v69 objects:v119 count:16];
    if (v25)
    {
      v60 = *v70;
LABEL_14:
      v26 = 0;
      while (1)
      {
        if (*v70 != v60)
        {
          objc_enumerationMutation(v59);
        }

        v27 = *(*(&v69 + 1) + 8 * v26);
        v28 = objc_autoreleasePoolPush();
        progress3 = [v27 progress];
        progress4 = [(PLModelMigrationActionProcessor *)v20 progress];
        [progress4 addChild:progress3 withPendingUnitCount:{objc_msgSend(objc_opt_class(), "actionProgressWeight")}];

        v31 = MEMORY[0x1E696AEC0];
        actionDescription = [objc_opt_class() actionDescription];
        v33 = [v31 stringWithFormat:@"%@", actionDescription];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __106__PLModelMigration_migratePostProcessingWithActions_migrationActionType_progress_progressUnitCount_error___block_invoke;
        v64[3] = &unk_1E756E3C8;
        v67 = &v74;
        v64[4] = selfCopy;
        v64[5] = v27;
        v65 = persistentStoreCoordinator;
        v68 = &v78;
        v34 = progress3;
        v66 = v34;
        [(PLModelMigrationActionProcessor *)v20 performActionWithName:v33 ifRequired:1 block:v64];

        if ([(PLModelMigrationActionProcessor *)v20 isSuccess])
        {
          v35 = (v79 + 5);
          v63 = v79[5];
          v36 = [(PLModelMigration *)selfCopy isMigrationCancelledWithError:&v63];
          objc_storeStrong(v35, v63);
          if (v36)
          {
            v37 = 0;
            v75[3] = 2;
          }

          else
          {
            v37 = 1;
          }
        }

        else
        {
          v38 = PLMigrationGetLog();
          v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);

          if (v39)
          {
            logger2 = [(PLModelMigration *)selfCopy logger];
            v41 = logger2 == 0;

            if (v41)
            {
              v48 = PLMigrationGetLog();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                v49 = objc_opt_class();
                v50 = NSStringFromClass(v49);
                v51 = v79[5];
                *buf = 138543618;
                *&buf[4] = v50;
                *&buf[12] = 2114;
                *&buf[14] = v51;
                _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "%{public}@ failed. Error: %{public}@", buf, 0x16u);
              }
            }

            else
            {
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
              v95 = 0u;
              v96 = 0u;
              v93 = 0u;
              v94 = 0u;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              memset(buf, 0, sizeof(buf));
              v42 = PLMigrationGetLog();
              os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
              v43 = objc_opt_class();
              v44 = NSStringFromClass(v43);
              v45 = v79[5];
              v84 = 138543618;
              v85 = v44;
              v86 = 2114;
              v87 = v45;
              LODWORD(v55) = 22;
              v46 = _os_log_send_and_compose_impl();

              v47 = [(PLModelMigration *)selfCopy logger:&v84];
              [v47 logWithMessage:v46 fromCodeLocation:"PLModelMigration.m" type:{649, 16}];

              if (v46 != buf)
              {
                free(v46);
              }
            }
          }

          v37 = 0;
        }

        objc_autoreleasePoolPop(v28);
        if (!v37)
        {
          break;
        }

        if (v25 == ++v26)
        {
          v25 = [v59 countByEnumeratingWithState:&v69 objects:v119 count:16];
          if (v25)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }
  }

  if (error)
  {
    *error = v79[5];
  }

  v52 = v75[3];
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);

  return v52;
}

BOOL __106__PLModelMigration_migratePostProcessingWithActions_migrationActionType_progress_progressUnitCount_error___block_invoke(uint64_t a1)
{
  v16[72] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v14 = 0;
  v5 = [v2 runMigrationAction:v3 withCoordinator:v4 error:&v14];
  v6 = v14;
  v7 = v6;
  *(*(*(a1 + 64) + 8) + 24) = v5;
  if (*(*(*(a1 + 64) + 8) + 24) != 1 && !*(*(*(a1 + 72) + 8) + 40))
  {
    if (v6)
    {
      v15 = *MEMORY[0x1E696AA08];
      v16[0] = v6;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    }

    else
    {
      v8 = 0;
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46008 userInfo:v8];
    v10 = *(*(a1 + 72) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  [*(a1 + 56) setCompletedUnitCount:{objc_msgSend(*(a1 + 56), "totalUnitCount")}];
  v12 = *(*(*(a1 + 64) + 8) + 24) == 1;

  return v12;
}

- (int64_t)migratePostProcessingWithProgressUnitCount:(unint64_t)count error:(id *)error
{
  v52[1] = *MEMORY[0x1E69E9840];
  [(PLModelMigration *)self actionRegistration];
  v7 = self->_actionProgressPortionPreRepair + self->_actionProgressPortion + self->_actionProgressPortionPostRepair;
  v8 = vcvtd_n_f64_u64(v7, 1uLL);
  v9 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:v7 + v8];
  progress = [(PLModelMigration *)self progress];
  [progress addChild:v9 withPendingUnitCount:count];

  actionsPreRepair = self->_actionsPreRepair;
  actionProgressPortionPreRepair = self->_actionProgressPortionPreRepair;
  v50 = 0;
  v13 = [(PLModelMigration *)self migratePostProcessingWithActions:actionsPreRepair migrationActionType:3 progress:v9 progressUnitCount:actionProgressPortionPreRepair error:&v50];
  v14 = v50;
  analyticsEventManager = [(PLModelMigration *)self analyticsEventManager];
  [analyticsEventManager startRecordingTimedEventToken];
  v17 = v16;

  errorCopy = error;
  if (v13 == 1)
  {
    legacyMigrationDelegate = [(PLModelMigration *)self legacyMigrationDelegate];
    migrationContext = [(PLModelMigration *)self migrationContext];
    store = [migrationContext store];
    migrationUUID = [(PLModelMigration *)self migrationUUID];
    migrationContext2 = [(PLModelMigration *)self migrationContext];
    v23 = [legacyMigrationDelegate postProcessMigratedStore:store migrationUUID:migrationUUID fromVersion:objc_msgSend(migrationContext2 progress:"previousStoreVersion") progressUnitCount:{v9, v8}];

    if (v23)
    {
      actions = self->_actions;
      actionProgressPortion = self->_actionProgressPortion;
      v49 = v14;
      v13 = [(PLModelMigration *)self migratePostProcessingWithActions:actions migrationActionType:2 progress:v9 progressUnitCount:actionProgressPortion error:&v49];
      v26 = v49;
    }

    else
    {
      v27 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E69BFF48];
      v51 = *MEMORY[0x1E696A588];
      v52[0] = @"Legacy post migration failed";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      v26 = [v27 errorWithDomain:v28 code:46008 userInfo:v29];

      v13 = 3;
      v14 = v29;
    }

    v14 = v26;
  }

  analyticsEventManager2 = [(PLModelMigration *)self analyticsEventManager];
  v31 = *MEMORY[0x1E69BF6D0];
  [analyticsEventManager2 stopRecordingTimedEventWithToken:*MEMORY[0x1E69BF700] forKey:*MEMORY[0x1E69BF6D0] onEventWithName:v17];

  analyticsEventManager3 = [(PLModelMigration *)self analyticsEventManager];
  v33 = MEMORY[0x1E696AD98];
  legacyMigrationDelegate2 = [(PLModelMigration *)self legacyMigrationDelegate];
  migrationContext3 = [(PLModelMigration *)self migrationContext];
  store2 = [migrationContext3 store];
  v37 = [v33 numberWithUnsignedInteger:{objc_msgSend(legacyMigrationDelegate2, "assetCountForStore:", store2)}];
  stringValue = [v37 stringValue];
  [analyticsEventManager3 setPayloadValue:stringValue forKey:*MEMORY[0x1E69BF738] onEventWithName:v31];

  if (v13 == 1)
  {
    actionsPostRepair = self->_actionsPostRepair;
    actionProgressPortionPostRepair = self->_actionProgressPortionPostRepair;
    v48 = v14;
    v41 = v46;
    v13 = [(PLModelMigration *)self migratePostProcessingWithActions:actionsPostRepair migrationActionType:4 progress:v46 progressUnitCount:actionProgressPortionPostRepair error:&v48];
    v42 = v48;

    v14 = v42;
    v43 = errorCopy;
    if (!errorCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v41 = v46;
  v43 = errorCopy;
  if (errorCopy)
  {
LABEL_10:
    v44 = v14;
    *v43 = v14;
  }

LABEL_11:

  return v13;
}

- (int64_t)migrateSchemaMigrationWithAutoMigrationOptions:(id)options currentStoreVersion:(id)version error:(id *)error
{
  v121 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v8 = MEMORY[0x1E696AD98];
  optionsCopy = options;
  migrationContext = [(PLModelMigration *)self migrationContext];
  v11 = [v8 numberWithUnsignedShort:{objc_msgSend(migrationContext, "previousStoreVersion")}];
  v12 = [v11 isEqual:versionCopy];

  v80 = versionCopy;
  if ((v12 & 1) == 0)
  {
    v13 = PLMigrationGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

    if (v14)
    {
      logger = [(PLModelMigration *)self logger];

      if (logger)
      {
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
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        memset(buf, 0, sizeof(buf));
        v16 = PLMigrationGetLog();
        os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
        v17 = MEMORY[0x1E696AD98];
        migrationContext2 = [(PLModelMigration *)self migrationContext];
        v19 = [v17 numberWithUnsignedShort:{objc_msgSend(migrationContext2, "previousStoreVersion")}];
        v86 = 138543618;
        v87 = v19;
        v88 = 1024;
        LODWORD(v89[0]) = +[PLModelMigration currentModelVersion];
        LODWORD(v76) = 18;
        v20 = _os_log_send_and_compose_impl();

        v21 = [(PLModelMigration *)self logger:&v86];
        [v21 logWithMessage:v20 fromCodeLocation:"PLModelMigration.m" type:{536, 1}];

        if (v20 != buf)
        {
          free(v20);
        }

        versionCopy = v80;
      }

      else
      {
        v22 = PLMigrationGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = MEMORY[0x1E696AD98];
          migrationContext3 = [(PLModelMigration *)self migrationContext];
          v25 = [v23 numberWithUnsignedShort:{objc_msgSend(migrationContext3, "previousStoreVersion")}];
          *buf = 138543618;
          *&buf[4] = v25;
          *&buf[12] = 1024;
          *&buf[14] = +[PLModelMigration currentModelVersion];
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_INFO, "Staged lightweight migration completed, post processing from version %{public}@ to %d.", buf, 0x12u);
        }
      }
    }
  }

  analyticsEventManager = [(PLModelMigration *)self analyticsEventManager];
  [analyticsEventManager startRecordingTimedEventToken];
  v28 = v27;

  migrationContext4 = [(PLModelMigration *)self migrationContext];
  coordinator = [migrationContext4 coordinator];
  migrationUUID = [(PLModelMigration *)self migrationUUID];
  migrationContext5 = [(PLModelMigration *)self migrationContext];
  storeURL = [migrationContext5 storeURL];
  intValue = [versionCopy intValue];
  v35 = +[PLModelMigration currentModelVersion];
  progress = [(PLModelMigration *)self progress];
  v83 = 0;
  LODWORD(v75) = v35;
  v37 = [(PLModelMigration *)self addStoreWithCoordinator:coordinator migrationUUID:migrationUUID storeURL:storeURL options:optionsCopy description:@"Adding lightweight migration store" fromVersion:intValue toVersion:v75 progress:progress progressUnitCount:10 error:&v83];

  v38 = v83;
  migrationContext6 = [(PLModelMigration *)self migrationContext];
  [migrationContext6 setStore:v37];

  analyticsEventManager2 = [(PLModelMigration *)self analyticsEventManager];
  [analyticsEventManager2 addRecordingTimedEventSnippetWithToken:*MEMORY[0x1E69BF718] forKey:*MEMORY[0x1E69BF6D0] onEventWithName:v28];

  migrationContext7 = [(PLModelMigration *)self migrationContext];
  store = [migrationContext7 store];

  if (store)
  {
    v43 = flt_19C60AD80[(self->_performedActionKinds & 1) == 0];
    if ((self->_performedActionKinds & 2) != 0)
    {
      v44 = v43 + -0.1;
      v43 = v44;
    }

    v82 = v38;
    v45 = [(PLModelMigration *)self migratePostProcessingWithProgressUnitCount:(v43 * 100.0) error:&v82];
    v46 = v82;

    if (v45 == 1)
    {
      errorCopy3 = error;
      v48 = v80;
      if (!error)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    migrationContext8 = [(PLModelMigration *)self migrationContext];
    coordinator2 = [migrationContext8 coordinator];
    migrationContext9 = [(PLModelMigration *)self migrationContext];
    store2 = [migrationContext9 store];
    v81 = 0;
    v62 = [coordinator2 removePersistentStore:store2 error:&v81];
    v49 = v81;

    if (v62)
    {
      goto LABEL_24;
    }

    v63 = PLMigrationGetLog();
    v64 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);

    v48 = v80;
    if (v64)
    {
      logger2 = [(PLModelMigration *)self logger];

      if (logger2)
      {
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
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        memset(buf, 0, sizeof(buf));
        v66 = PLMigrationGetLog();
        os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
        v67 = +[PLModelMigration currentModelVersion];
        v86 = 138543874;
        v87 = v80;
        v88 = 1024;
        LODWORD(v89[0]) = v67;
        WORD2(v89[0]) = 2114;
        *(v89 + 6) = v49;
        LODWORD(v77) = 28;
        v68 = _os_log_send_and_compose_impl();

        v69 = [(PLModelMigration *)self logger:&v86];
        [v69 logWithMessage:v68 fromCodeLocation:"PLModelMigration.m" type:{546, 16}];

        if (v68 != buf)
        {
          free(v68);
        }

LABEL_24:
        errorCopy3 = error;
        v48 = v80;
        goto LABEL_34;
      }

      v73 = PLMigrationGetLog();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v74 = +[PLModelMigration currentModelVersion];
        *buf = 138543874;
        *&buf[4] = v80;
        *&buf[12] = 1024;
        *&buf[14] = v74;
        *&buf[18] = 2114;
        *&buf[20] = v49;
        _os_log_impl(&dword_19BF1F000, v73, OS_LOG_TYPE_ERROR, "Failed to remove store after lightweight migration failure %{public}@ to %d.  Error %{public}@", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to open and lightweight migrate store from schema version based on %@ to %d", v80, +[PLModelMigration currentModelVersion](PLModelMigration, "currentModelVersion")];
    v84 = *MEMORY[0x1E696A588];
    v85 = v49;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v51 = [v50 mutableCopy];

    if (v38)
    {
      [v51 setObject:v38 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    v46 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46008 userInfo:v51];

    v52 = PLMigrationGetLog();
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);

    v48 = v80;
    if (v53)
    {
      logger3 = [(PLModelMigration *)self logger];

      if (logger3)
      {
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
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        memset(buf, 0, sizeof(buf));
        v55 = PLMigrationGetLog();
        os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
        v86 = 138543618;
        v87 = v49;
        v88 = 2114;
        v89[0] = v46;
        LODWORD(v78) = 22;
        v56 = _os_log_send_and_compose_impl();

        v57 = [(PLModelMigration *)self logger:&v86];
        [v57 logWithMessage:v56 fromCodeLocation:"PLModelMigration.m" type:{557, 16}];

        if (v56 != buf)
        {
          free(v56);
        }

        v48 = v80;
      }

      else
      {
        v70 = PLMigrationGetLog();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v49;
          *&buf[12] = 2114;
          *&buf[14] = v46;
          _os_log_impl(&dword_19BF1F000, v70, OS_LOG_TYPE_ERROR, "%{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v45 = 3;
  }

  errorCopy3 = error;
LABEL_34:

  if (errorCopy3)
  {
LABEL_35:
    v71 = v46;
    *errorCopy3 = v46;
  }

LABEL_36:

  return v45;
}

- (int64_t)migrateStagedMigrationWithAutoMigrationOptions:(id)options currentStoreVersion:(id)version error:(id *)error
{
  v147 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  versionCopy = version;
  v9 = MEMORY[0x1E696AD98];
  migrationContext = [(PLModelMigration *)self migrationContext];
  v11 = [v9 numberWithUnsignedShort:{objc_msgSend(migrationContext, "previousStoreVersion")}];
  v12 = [(PLModelMigration *)self _nextRequiredStagedMigrationVersionAfterVersion:v11];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13 = MEMORY[0x1E696AE38];
  v14 = &unk_1F0FBFE20;
  v15 = [v13 discreteProgressWithTotalUnitCount:{5 * objc_msgSend(&unk_1F0FBFE20, "count")}];

  if (!v12)
  {
    v19 = 0;
    v55 = 1;
    goto LABEL_46;
  }

  errorCopy = error;
  self->_performedActionKinds |= 2uLL;
  progress = [(PLModelMigration *)self progress];
  v92 = v15;
  [progress addChild:v15 withPendingUnitCount:10];

  v17 = 0;
  v90 = *MEMORY[0x1E69BF718];
  v93 = *MEMORY[0x1E69BF6D0];
  v94 = *MEMORY[0x1E696A588];
  v95 = *MEMORY[0x1E69BFF48];
  v89 = *MEMORY[0x1E69BF720];
  v87 = *MEMORY[0x1E696AA08];
  while (1)
  {
    v103 = v17;
    v18 = [(PLModelMigration *)self isMigrationCancelledWithError:&v103];
    v19 = v103;

    if (v18)
    {
      v55 = 2;
      goto LABEL_45;
    }

    v20 = objc_autoreleasePoolPush();
    v21 = [(PLModelMigration *)self _stagedManagedObjectModelURLWithStageVersion:v12];
    v22 = PLMigrationGetLog();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (v23)
    {
      logger = [(PLModelMigration *)self logger];

      if (logger)
      {
        v25 = v20;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v26 = PLMigrationGetLog();
        os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        path = [v21 path];
        v110 = 138543874;
        v111 = versionCopy;
        v112 = 2114;
        v113 = v12;
        v114 = 2112;
        v115 = path;
        LODWORD(v85) = 32;
        v28 = _os_log_send_and_compose_impl();

        v29 = [(PLModelMigration *)self logger:&v110];
        [v29 logWithMessage:v28 fromCodeLocation:"PLModelMigration.m" type:{469, 0}];

        if (v28 != buf)
        {
          free(v28);
        }

        v20 = v25;
      }

      else
      {
        v30 = PLMigrationGetLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          path2 = [v21 path];
          *buf = 138543874;
          *&buf[4] = versionCopy;
          *&buf[12] = 2114;
          *&buf[14] = v12;
          *&buf[22] = 2112;
          *&buf[24] = path2;
          _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Starting migration stage from version %{public}@ to %{public}@, with model %@.", buf, 0x20u);
        }
      }
    }

    v32 = [(PLModelMigration *)self _managedObjectModelForLightweightMigrationStageWithURL:v21];
    v100 = v21;
    if (v32)
    {
      v97 = v20;
      v98 = v32;
      v33 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v32];
      analyticsEventManager = [(PLModelMigration *)self analyticsEventManager];
      [analyticsEventManager startRecordingTimedEventToken];
      v36 = v35;

      migrationUUID = [(PLModelMigration *)self migrationUUID];
      migrationContext2 = [(PLModelMigration *)self migrationContext];
      storeURL = [migrationContext2 storeURL];
      intValue = [versionCopy intValue];
      intValue2 = [v12 intValue];
      v102 = v19;
      LODWORD(v84) = intValue2;
      v99 = v33;
      v42 = [(PLModelMigration *)self addStoreWithCoordinator:v33 migrationUUID:migrationUUID storeURL:storeURL options:optionsCopy description:@"Adding staged migration store" fromVersion:intValue toVersion:v84 progress:v92 progressUnitCount:1 error:&v102];
      v43 = v102;

      if (v42)
      {
        analyticsEventManager2 = [(PLModelMigration *)self analyticsEventManager];
        [analyticsEventManager2 addRecordingTimedEventSnippetWithToken:v90 forKey:v93 onEventWithName:v36];

        analyticsEventManager3 = [(PLModelMigration *)self analyticsEventManager];
        [analyticsEventManager3 startRecordingTimedEventToken];
        v47 = v46;

        legacyMigrationDelegate = [(PLModelMigration *)self legacyMigrationDelegate];
        migrationUUID2 = [(PLModelMigration *)self migrationUUID];
        v50 = [legacyMigrationDelegate processWelterweightMigrationStageOnStore:v42 migrationUUID:migrationUUID2 fromVersion:objc_msgSend(versionCopy toVersion:"intValue") migrationContext:objc_msgSend(v12 progress:"intValue") progressUnitCount:{dictionary, v92, 2}];

        if (v50)
        {
          v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
          actionsStaged = self->_actionsStaged;
          self->_actionsStaged = v51;

          PLModelMigrationActionRegistration_Staged(self, [versionCopy intValue], objc_msgSend(v12, "intValue"));
          migrationContext3 = [(PLModelMigration *)self migrationContext];
          [migrationContext3 setStore:v42];

          v54 = self->_actionsStaged;
          v101 = v43;
          v55 = [(PLModelMigration *)self migratePostProcessingWithActions:v54 migrationActionType:5 progress:v92 progressUnitCount:2 error:&v101];
          v17 = v101;
        }

        else
        {
          v77 = MEMORY[0x1E696ABC0];
          v108 = v94;
          v109 = @"Legacy Staged migration failed";
          v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
          v17 = [v77 errorWithDomain:v95 code:46013 userInfo:v78];

          v43 = v78;
          v55 = 3;
        }

        analyticsEventManager4 = [(PLModelMigration *)self analyticsEventManager];
        [analyticsEventManager4 addRecordingTimedEventSnippetWithToken:v89 forKey:v93 onEventWithName:v47];
        v20 = v97;
      }

      else
      {
        v66 = MEMORY[0x1E696AEC0];
        path3 = [v100 path];
        analyticsEventManager4 = [v66 stringWithFormat:@"Failed to open store for staged migration from version %@ to %@, with model %@", versionCopy, v12, path3];

        v106 = v94;
        v107 = analyticsEventManager4;
        v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
        v70 = [v69 mutableCopy];

        if (v43)
        {
          [v70 setObject:v43 forKeyedSubscript:v87];
        }

        v88 = v70;
        v17 = [MEMORY[0x1E696ABC0] errorWithDomain:v95 code:46013 userInfo:v70];

        v71 = PLMigrationGetLog();
        v72 = os_log_type_enabled(v71, OS_LOG_TYPE_ERROR);

        v20 = v97;
        v32 = v98;
        v42 = 0;
        if (v72)
        {
          logger2 = [(PLModelMigration *)self logger];

          if (logger2)
          {
            v145 = 0u;
            v146 = 0u;
            v143 = 0u;
            v144 = 0u;
            v141 = 0u;
            v142 = 0u;
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
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
            memset(buf, 0, sizeof(buf));
            v74 = PLMigrationGetLog();
            os_log_type_enabled(v74, OS_LOG_TYPE_ERROR);
            v110 = 138543618;
            v111 = analyticsEventManager4;
            v112 = 2114;
            v113 = v17;
            LODWORD(v85) = 22;
            v75 = _os_log_send_and_compose_impl();

            v76 = [(PLModelMigration *)self logger:&v110];
            [v76 logWithMessage:v75 fromCodeLocation:"PLModelMigration.m" type:{508, 16}];

            if (v75 != buf)
            {
              free(v75);
            }

            v42 = 0;
          }

          else
          {
            v80 = PLMigrationGetLog();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *&buf[4] = analyticsEventManager4;
              *&buf[12] = 2114;
              *&buf[14] = v17;
              _os_log_impl(&dword_19BF1F000, v80, OS_LOG_TYPE_ERROR, "%{public}@. Error: %{public}@", buf, 0x16u);
            }
          }
        }

        v55 = 3;
      }
    }

    else
    {
      v56 = MEMORY[0x1E696AEC0];
      path4 = [v21 path];
      v58 = [v56 stringWithFormat:@"Failed to open model for staged migration from version %@ to %@, with model path %@", versionCopy, v12, path4];

      v59 = MEMORY[0x1E696ABC0];
      v104 = v94;
      v105 = v58;
      v99 = v58;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
      v17 = [v59 errorWithDomain:v95 code:46013 userInfo:v60];

      v61 = PLMigrationGetLog();
      LODWORD(v60) = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);

      if (!v60)
      {
        goto LABEL_33;
      }

      logger3 = [(PLModelMigration *)self logger];

      if (!logger3)
      {
        v79 = PLMigrationGetLog();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v99;
          _os_log_impl(&dword_19BF1F000, v79, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

LABEL_33:
        v55 = 3;
        goto LABEL_39;
      }

      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v63 = PLMigrationGetLog();
      os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
      v110 = 138543362;
      v111 = v99;
      LODWORD(v85) = 12;
      v64 = _os_log_send_and_compose_impl();

      v65 = [(PLModelMigration *)self logger:&v110];
      [v65 logWithMessage:v64 fromCodeLocation:"PLModelMigration.m" type:{514, 16}];

      if (v64 != buf)
      {
        free(v64);
      }

      v55 = 3;
    }

LABEL_39:

    objc_autoreleasePoolPop(v20);
    if (v55 != 1)
    {
      break;
    }

    v81 = v12;

    v12 = [(PLModelMigration *)self _nextRequiredStagedMigrationVersionAfterVersion:v81];

    versionCopy = v81;
    if (!v12)
    {
      versionCopy = v81;
      v19 = v17;
      v55 = 1;
      goto LABEL_45;
    }
  }

  v19 = v17;
LABEL_45:
  error = errorCopy;
  v15 = v92;
LABEL_46:
  [v15 setCompletedUnitCount:{objc_msgSend(v15, "totalUnitCount")}];
  if (error)
  {
    v82 = v19;
    *error = v19;
  }

  return v55;
}

- (int64_t)migratePreSchemaMigrationWithCurrentStoreVersion:(id)version error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v46 = 0;
  v47 = 0;
  pathManager = [(PLModelMigration *)self pathManager];
  photosDatabasePath = [pathManager photosDatabasePath];
  [PLManagedObjectContext getPersistentStoreURL:&v47 options:&v46 forDatabasePath:photosDatabasePath];
  v8 = v47;
  v9 = v46;

  v36 = v9;
  v10 = [v9 mutableCopy];
  v11 = MEMORY[0x1E695E110];
  [v10 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E695D380]];
  [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x1E695D318]];
  v45 = 0;
  v38 = v8;
  v12 = [MEMORY[0x1E695D6B8] cachedModelForPersistentStoreWithURL:v8 options:v10 error:&v45];
  v13 = v45;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    do
    {
      v18 = 0;
      do
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v41 + 1) + 8 * v18++) setManagedObjectClassName:0];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v16);
  }

  v19 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v14];
  migrationUUID = [(PLModelMigration *)self migrationUUID];
  intValue = [versionCopy intValue];
  v37 = versionCopy;
  intValue2 = [versionCopy intValue];
  progress = [(PLModelMigration *)self progress];
  v40 = v13;
  v24 = 1;
  LODWORD(v35) = intValue2;
  v25 = [(PLModelMigration *)self addStoreWithCoordinator:v19 migrationUUID:migrationUUID storeURL:v38 options:v10 description:@"Adding pre schema store" fromVersion:intValue toVersion:v35 progress:progress progressUnitCount:1 error:&v40];
  v26 = v40;

  if (v25)
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actionsPreSchema = self->_actionsPreSchema;
    self->_actionsPreSchema = v27;

    PLModelMigrationActionRegistration_PreSchema(self);
    v29 = [(NSMutableArray *)self->_actionsPreSchema count];
    migrationContext = [(PLModelMigration *)self migrationContext];
    [migrationContext setStore:v25];

    v31 = self->_actionsPreSchema;
    progress2 = [(PLModelMigration *)self progress];
    v39 = v26;
    v24 = [(PLModelMigration *)self migratePostProcessingWithActions:v31 migrationActionType:0 progress:progress2 progressUnitCount:10 error:&v39];
    v33 = v39;

    if (v29)
    {
      self->_performedActionKinds |= 1uLL;
    }
  }

  else
  {
    v33 = v26;
  }

  return v24;
}

- (int64_t)setupWithError:(id *)error
{
  v139 = *MEMORY[0x1E69E9840];
  v5 = PLMigrationGetLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    logger = [(PLModelMigration *)self logger];

    if (logger)
    {
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
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
      *buf = 0u;
      v108 = 0u;
      v8 = PLMigrationGetLog();
      os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      migrationContext = [(PLModelMigration *)self migrationContext];
      v103 = 67109376;
      previousStoreVersion = [migrationContext previousStoreVersion];
      v105 = 1024;
      v106 = +[PLModelMigration currentModelVersion];
      LODWORD(v92) = 14;
      v10 = _os_log_send_and_compose_impl();

      v11 = [(PLModelMigration *)self logger:&v103];
      [v11 logWithMessage:v10 fromCodeLocation:"PLModelMigration.m" type:{359, 1}];

      if (v10 != buf)
      {
        free(v10);
      }
    }

    else
    {
      v12 = PLMigrationGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        migrationContext2 = [(PLModelMigration *)self migrationContext];
        *buf = 67109376;
        *&buf[4] = [migrationContext2 previousStoreVersion];
        *&buf[8] = 1024;
        *&buf[10] = +[PLModelMigration currentModelVersion];
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "Store has incompatible model version %d, will attempt migration to current version %d.", buf, 0xEu);
      }
    }
  }

  v14 = +[PLModelMigration currentModelVersion];
  migrationContext3 = [(PLModelMigration *)self migrationContext];
  previousStoreVersion2 = [migrationContext3 previousStoreVersion];

  if (v14 < previousStoreVersion2)
  {
    allowRebuild = self->_allowRebuild;
    v18 = PLMigrationGetLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (allowRebuild)
    {
      if (!v19)
      {
        goto LABEL_25;
      }

      logger2 = [(PLModelMigration *)self logger];

      if (logger2)
      {
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
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
        *buf = 0u;
        v108 = 0u;
        v21 = PLMigrationGetLog();
        os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
        migrationContext4 = [(PLModelMigration *)self migrationContext];
        previousStoreVersion3 = [migrationContext4 previousStoreVersion];
        v24 = +[PLModelMigration currentModelVersion];
        v103 = 67109376;
        previousStoreVersion = previousStoreVersion3;
        v105 = 1024;
        v106 = v24;
        LODWORD(v92) = 14;
        v25 = _os_log_send_and_compose_impl();

        v26 = [(PLModelMigration *)self logger:&v103];
        v27 = v26;
        v28 = v25;
        v29 = 366;
        goto LABEL_23;
      }

      v70 = PLMigrationGetLog();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        migrationContext5 = [(PLModelMigration *)self migrationContext];
        previousStoreVersion4 = [migrationContext5 previousStoreVersion];
        v73 = +[PLModelMigration currentModelVersion];
        *buf = 67109376;
        *&buf[4] = previousStoreVersion4;
        *&buf[8] = 1024;
        *&buf[10] = v73;
        v74 = "*** MIGRATION INVERSION ***\n***\n***\n***\n*** Photos database has a model version [%d] that is newer than the Photos frameworks model version [%d].\n***\n*** Frameworks and database are out of sync.\n*** This will trigger a rebuild from file system.\n***\n***\n";
LABEL_46:
        _os_log_impl(&dword_19BF1F000, v70, OS_LOG_TYPE_ERROR, v74, buf, 0xEu);
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_25;
      }

      logger3 = [(PLModelMigration *)self logger];

      if (logger3)
      {
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
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
        *buf = 0u;
        v108 = 0u;
        v55 = PLMigrationGetLog();
        os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
        migrationContext6 = [(PLModelMigration *)self migrationContext];
        previousStoreVersion5 = [migrationContext6 previousStoreVersion];
        v58 = +[PLModelMigration currentModelVersion];
        v103 = 67109376;
        previousStoreVersion = previousStoreVersion5;
        v105 = 1024;
        v106 = v58;
        LODWORD(v92) = 14;
        v25 = _os_log_send_and_compose_impl();

        v26 = [(PLModelMigration *)self logger:&v103];
        v27 = v26;
        v28 = v25;
        v29 = 368;
LABEL_23:
        [v26 logWithMessage:v28 fromCodeLocation:"PLModelMigration.m" type:{v29, 16}];

        if (v25 != buf)
        {
          free(v25);
        }

LABEL_25:
        if (error)
        {
LABEL_26:
          v94 = *MEMORY[0x1E69BFF48];
          v96 = MEMORY[0x1E696ABC0];
          v101[0] = *MEMORY[0x1E696A368];
          migrationContext7 = [(PLModelMigration *)self migrationContext];
          storeURL = [migrationContext7 storeURL];
          [storeURL path];
          v41 = v98 = error;
          v102[0] = v41;
          v101[1] = *MEMORY[0x1E696A998];
          migrationContext8 = [(PLModelMigration *)self migrationContext];
          storeURL2 = [migrationContext8 storeURL];
          uRLByDeletingLastPathComponent = [storeURL2 URLByDeletingLastPathComponent];
          v44URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
          v102[1] = v44URLByDeletingLastPathComponent;
          v101[2] = *MEMORY[0x1E696A278];
          v59 = MEMORY[0x1E696AEC0];
          migrationContext9 = [(PLModelMigration *)self migrationContext];
          6006 = [v59 stringWithFormat:@"Database schema version %d is newer than the current schema version %d. A newer version of Photos needs to be installed.", objc_msgSend(migrationContext9, "previousStoreVersion"), +[PLModelMigration currentModelVersion](PLModelMigration, "currentModelVersion")];
          v102[2] = 6006;
          v49 = 3;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:3];
          v52 = v94;
          v51 = v96;
          v53 = 46006;
          goto LABEL_27;
        }

        return 3;
      }

      v70 = PLMigrationGetLog();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        migrationContext5 = [(PLModelMigration *)self migrationContext];
        previousStoreVersion6 = [migrationContext5 previousStoreVersion];
        v79 = +[PLModelMigration currentModelVersion];
        *buf = 67109376;
        *&buf[4] = previousStoreVersion6;
        *&buf[8] = 1024;
        *&buf[10] = v79;
        v74 = "*** MIGRATION INVERSION ***\n***\n***\n***\n*** Photos database has a model version [%d] that is newer than the Photos frameworks model version [%d].\n***\n***\n";
        goto LABEL_46;
      }
    }

    if (error)
    {
      goto LABEL_26;
    }

    return 3;
  }

  migrationContext10 = [(PLModelMigration *)self migrationContext];
  v31 = [migrationContext10 previousStoreVersion] >> 1;

  if (v31 <= 0xBBA)
  {
    v32 = PLMigrationGetLog();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

    if (v33)
    {
      logger4 = [(PLModelMigration *)self logger];

      if (!logger4)
      {
        v75 = PLMigrationGetLog();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          migrationContext11 = [(PLModelMigration *)self migrationContext];
          previousStoreVersion7 = [migrationContext11 previousStoreVersion];
          *buf = 67109376;
          *&buf[4] = previousStoreVersion7;
          *&buf[8] = 1024;
          *&buf[10] = 6006;
          _os_log_impl(&dword_19BF1F000, v75, OS_LOG_TYPE_ERROR, "Cannot perform lightweight migration, store model version %d is older than oldest supported version %d", buf, 0xEu);
        }

        if (!error)
        {
          return 3;
        }

        goto LABEL_19;
      }

      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
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
      *buf = 0u;
      v108 = 0u;
      v35 = PLMigrationGetLog();
      os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
      migrationContext12 = [(PLModelMigration *)self migrationContext];
      previousStoreVersion8 = [migrationContext12 previousStoreVersion];
      v103 = 67109376;
      previousStoreVersion = previousStoreVersion8;
      v105 = 1024;
      v106 = 6006;
      LODWORD(v92) = 14;
      v38 = _os_log_send_and_compose_impl();

      v39 = [(PLModelMigration *)self logger:&v103];
      [v39 logWithMessage:v38 fromCodeLocation:"PLModelMigration.m" type:{375, 16}];

      if (v38 != buf)
      {
        free(v38);
      }
    }

    if (!error)
    {
      return 3;
    }

LABEL_19:
    v93 = *MEMORY[0x1E69BFF48];
    v95 = MEMORY[0x1E696ABC0];
    v99[0] = *MEMORY[0x1E696A368];
    migrationContext7 = [(PLModelMigration *)self migrationContext];
    storeURL = [migrationContext7 storeURL];
    [storeURL path];
    v41 = v98 = error;
    v100[0] = v41;
    v99[1] = *MEMORY[0x1E696A998];
    migrationContext8 = [(PLModelMigration *)self migrationContext];
    storeURL2 = [migrationContext8 storeURL];
    uRLByDeletingLastPathComponent = [storeURL2 URLByDeletingLastPathComponent];
    v44URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
    v100[1] = v44URLByDeletingLastPathComponent;
    v99[2] = *MEMORY[0x1E696A578];
    v46 = MEMORY[0x1E696AEC0];
    migrationContext9 = [(PLModelMigration *)self migrationContext];
    6006 = [v46 stringWithFormat:@"Store version %d is unsupported for migration (older than %d).", objc_msgSend(migrationContext9, "previousStoreVersion"), 6006];
    v100[2] = 6006;
    v49 = 3;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:3];
    v52 = v93;
    v51 = v95;
    v53 = 46011;
LABEL_27:
    *v98 = [v51 errorWithDomain:v52 code:v53 userInfo:v50];

    return v49;
  }

  if (!self->_allowRebuild)
  {
    migrationContext13 = [(PLModelMigration *)self migrationContext];
    if (([migrationContext13 policy] & 4) == 0)
    {

      return 1;
    }

    v67 = MEMORY[0x1E69BF2A0];
    pathManager = [(PLModelMigration *)self pathManager];
    libraryURL = [pathManager libraryURL];
    LODWORD(v67) = [v67 isSystemPhotoLibraryURL:libraryURL];

    if (!v67)
    {
      return 1;
    }
  }

  if (self->_didCreateSqliteErrorIndicator)
  {
    return 1;
  }

  v60 = PLMigrationGetLog();
  v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);

  if (v61)
  {
    logger5 = [(PLModelMigration *)self logger];

    if (logger5)
    {
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
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
      *buf = 0u;
      v108 = 0u;
      v63 = PLMigrationGetLog();
      os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
      LOWORD(v103) = 0;
      LODWORD(v92) = 2;
      v64 = _os_log_send_and_compose_impl();

      v65 = [(PLModelMigration *)self logger:&v103];
      [v65 logWithMessage:v64 fromCodeLocation:"PLModelMigration.m" type:{383, 0}];

      if (v64 != buf)
      {
        free(v64);
      }
    }

    else
    {
      v80 = PLMigrationGetLog();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v80, OS_LOG_TYPE_DEFAULT, "Creating sqlite error indicator file", buf, 2u);
      }
    }
  }

  v49 = 1;
  self->_didCreateSqliteErrorIndicator = 1;
  pathManager2 = [(PLModelMigration *)self pathManager];
  [pathManager2 setSqliteErrorForRebuildReason:4 allowsExit:0];

  pathManager3 = [(PLModelMigration *)self pathManager];
  sqliteErrorIndicatorFileExists = [pathManager3 sqliteErrorIndicatorFileExists];

  if ((sqliteErrorIndicatorFileExists & 1) == 0)
  {
    v84 = PLMigrationGetLog();
    v85 = os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);

    if (v85)
    {
      logger6 = [(PLModelMigration *)self logger];

      if (logger6)
      {
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
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
        *buf = 0u;
        v108 = 0u;
        v87 = PLMigrationGetLog();
        os_log_type_enabled(v87, OS_LOG_TYPE_ERROR);
        LOWORD(v103) = 0;
        LODWORD(v92) = 2;
        v88 = _os_log_send_and_compose_impl();

        v89 = [(PLModelMigration *)self logger:&v103];
        [v89 logWithMessage:v88 fromCodeLocation:"PLModelMigration.m" type:{388, 16}];

        if (v88 != buf)
        {
          free(v88);
        }
      }

      else
      {
        v90 = PLMigrationGetLog();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v90, OS_LOG_TYPE_ERROR, "Failed to create sqlite error indicator file to guard against lightweight migration crash loop", buf, 2u);
        }
      }
    }

    return 3;
  }

  return v49;
}

- (int64_t)migrateWithError:(id *)error
{
  v127[1] = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  start = [MEMORY[0x1E69BF318] start];
  v87 = 0;
  v7 = [(PLModelMigration *)self setupWithError:&v87];
  v8 = v87;
  migrationContext = [(PLModelMigration *)self migrationContext];
  store = [migrationContext store];
  if (store)
  {

    if (v7 != 1)
    {
      goto LABEL_13;
    }

    v81 = start;
    analyticsEventManager = [(PLModelMigration *)self analyticsEventManager];
    v12 = MEMORY[0x1E696AD98];
    migrationContext2 = [(PLModelMigration *)self migrationContext];
    v14 = [v12 numberWithUnsignedShort:{objc_msgSend(migrationContext2, "previousStoreVersion")}];
    v15 = [v14 description];
    v16 = *MEMORY[0x1E69BF6D0];
    [analyticsEventManager setPayloadValue:v15 forKey:*MEMORY[0x1E69BF6E0] onEventWithName:*MEMORY[0x1E69BF6D0]];

    analyticsEventManager2 = [(PLModelMigration *)self analyticsEventManager];
    v18 = [MEMORY[0x1E696AD98] numberWithInt:{+[PLModelMigration currentModelVersion](PLModelMigration, "currentModelVersion")}];
    stringValue = [v18 stringValue];
    [analyticsEventManager2 setPayloadValue:stringValue forKey:*MEMORY[0x1E69BF730] onEventWithName:v16];

    v83 = v8;
    v7 = [(PLModelMigration *)self migratePostProcessingWithProgressUnitCount:100 error:&v83];
    v20 = v8;
    v8 = v83;
  }

  else
  {

    if (v7 != 1)
    {
      goto LABEL_13;
    }

    v81 = start;
    migrationContext3 = [(PLModelMigration *)self migrationContext];
    options = [migrationContext3 options];
    v20 = [options mutableCopy];

    v23 = MEMORY[0x1E695E118];
    [v20 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695D380]];
    [v20 setObject:v23 forKeyedSubscript:*MEMORY[0x1E695D318]];
    v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v127[0] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:1];
    [v20 setObject:v25 forKeyedSubscript:*MEMORY[0x1E695D3D8]];

    v26 = MEMORY[0x1E696AD98];
    migrationContext4 = [(PLModelMigration *)self migrationContext];
    v28 = [v26 numberWithUnsignedShort:{objc_msgSend(migrationContext4, "previousStoreVersion")}];

    analyticsEventManager3 = [(PLModelMigration *)self analyticsEventManager];
    stringValue2 = [v28 stringValue];
    v16 = *MEMORY[0x1E69BF6D0];
    [analyticsEventManager3 setPayloadValue:stringValue2 forKey:*MEMORY[0x1E69BF6E0] onEventWithName:*MEMORY[0x1E69BF6D0]];

    analyticsEventManager4 = [(PLModelMigration *)self analyticsEventManager];
    v32 = [MEMORY[0x1E696AD98] numberWithInt:{+[PLModelMigration currentModelVersion](PLModelMigration, "currentModelVersion")}];
    v33 = [v32 description];
    [analyticsEventManager4 setPayloadValue:v33 forKey:*MEMORY[0x1E69BF730] onEventWithName:v16];

    analyticsEventManager5 = [(PLModelMigration *)self analyticsEventManager];
    [analyticsEventManager5 startRecordingTimedEventToken];
    v36 = v35;

    v86 = v8;
    v7 = [(PLModelMigration *)self migratePreSchemaMigrationWithCurrentStoreVersion:v28 error:&v86];
    v37 = v86;

    analyticsEventManager6 = [(PLModelMigration *)self analyticsEventManager];
    [analyticsEventManager6 addRecordingTimedEventSnippetWithToken:*MEMORY[0x1E69BF708] forKey:v16 onEventWithName:v36];

    if (v7 == 1)
    {
      v85 = v37;
      v7 = [(PLModelMigration *)self migrateStagedMigrationWithAutoMigrationOptions:v20 currentStoreVersion:v28 error:&v85];
      v39 = v85;

      if (v7 == 1)
      {
        v84 = v39;
        v7 = [(PLModelMigration *)self migrateSchemaMigrationWithAutoMigrationOptions:v20 currentStoreVersion:v28 error:&v84];
        v37 = v84;
      }

      else
      {
        v37 = v39;
      }
    }

    v8 = v37;
  }

  if (v7 == 1)
  {
    analyticsEventManager7 = [(PLModelMigration *)self analyticsEventManager];
    v41 = MEMORY[0x1E696AD98];
    pathManager = [(PLModelMigration *)self pathManager];
    v43 = [v41 numberWithLongLong:{+[PLPersistentHistoryUtilities fetchApproximateChangeCountWithPathManager:error:](PLPersistentHistoryUtilities, "fetchApproximateChangeCountWithPathManager:error:", pathManager, 0)}];
    [analyticsEventManager7 setPayloadValue:v43 forKey:*MEMORY[0x1E69BF6F0] onEventWithName:v16];

    analyticsEventManager8 = [(PLModelMigration *)self analyticsEventManager];
    v45 = MEMORY[0x1E696AD98];
    pathManager2 = [(PLModelMigration *)self pathManager];
    v47 = [v45 numberWithLongLong:{+[PLPersistentHistoryUtilities fetchApproximateTransactionCountWithPathManager:error:](PLPersistentHistoryUtilities, "fetchApproximateTransactionCountWithPathManager:error:", pathManager2, 0)}];
    [analyticsEventManager8 setPayloadValue:v47 forKey:*MEMORY[0x1E69BF6F8] onEventWithName:v16];

    v7 = 1;
    start = v81;
    goto LABEL_19;
  }

  start = v81;
LABEL_13:
  v48 = PLMigrationGetLog();
  v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);

  if (!v49)
  {
    goto LABEL_17;
  }

  logger = [(PLModelMigration *)self logger];

  if (logger)
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
    v98 = 0u;
    v97 = 0u;
    memset(buf, 0, sizeof(buf));
    v51 = PLMigrationGetLog();
    os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
    v88 = 138412290;
    v89 = v8;
    LODWORD(v80) = 12;
    v52 = _os_log_send_and_compose_impl();

    v53 = [(PLModelMigration *)self logger:&v88];
    [v53 logWithMessage:v52 fromCodeLocation:"PLModelMigration.m" type:{339, 16}];

    if (v52 != buf)
    {
      free(v52);
    }

LABEL_17:
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v79 = PLMigrationGetLog();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&dword_19BF1F000, v79, OS_LOG_TYPE_ERROR, "Failed to migrate library. Error: %@", buf, 0xCu);
  }

  if (error)
  {
LABEL_18:
    v54 = v8;
    *error = v8;
  }

LABEL_19:
  v55 = CFAbsoluteTimeGetCurrent() - Current;
  if (Current <= 0.0)
  {
    v56 = 0.0;
  }

  else
  {
    v56 = v55;
  }

  stop = [start stop];
  v58 = PLMigrationGetLog();
  v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);

  if (v59)
  {
    logger2 = [(PLModelMigration *)self logger];

    if (logger2)
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
      v98 = 0u;
      v97 = 0u;
      memset(buf, 0, sizeof(buf));
      v61 = PLMigrationGetLog();
      os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
      v62 = PLStringFromModelMigrationActionResultShort(v7);
      v82 = start;
      v63 = [start perfCheckLogStringWithPerfCheckInfo:stop];
      progress = [(PLModelMigration *)self progress];
      v65 = [progress completedUnitCount] * 100.0;
      progress2 = [(PLModelMigration *)self progress];
      totalUnitCount = [progress2 totalUnitCount];
      v88 = 138544130;
      v89 = v62;
      v90 = 2048;
      v91 = v56;
      v92 = 2114;
      v93 = v63;
      v94 = 2048;
      v95 = v65 / totalUnitCount;
      LODWORD(v80) = 42;
      v68 = _os_log_send_and_compose_impl();

      v69 = [(PLModelMigration *)self logger:&v88];
      [v69 logWithMessage:v68 fromCodeLocation:"PLModelMigration.m" type:{349, 0}];

      if (v68 != buf)
      {
        free(v68);
      }

      start = v82;
    }

    else
    {
      v70 = PLMigrationGetLog();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v71 = PLStringFromModelMigrationActionResultShort(v7);
        v72 = [start perfCheckLogStringWithPerfCheckInfo:stop];
        [(PLModelMigration *)self progress];
        v74 = v73 = start;
        v75 = [v74 completedUnitCount] * 100.0;
        progress3 = [(PLModelMigration *)self progress];
        totalUnitCount2 = [progress3 totalUnitCount];
        *buf = 138544130;
        *&buf[4] = v71;
        *&buf[12] = 2048;
        *&buf[14] = v56;
        *&buf[22] = 2114;
        *&buf[24] = v72;
        LOWORD(v97) = 2048;
        *(&v97 + 2) = v75 / totalUnitCount2;
        _os_log_impl(&dword_19BF1F000, v70, OS_LOG_TYPE_DEFAULT, "Completed migration - Result: %{public}@. Metrics: %.2lfs%{public}@, action progress:(%.2lf %%)", buf, 0x2Au);

        start = v73;
      }
    }
  }

  return v7;
}

- (void)resetBackgroundActionClass:(Class)class onCondition:(BOOL)condition
{
  v75 = *MEMORY[0x1E69E9840];
  if (condition)
  {
    pathManager = [(PLModelMigration *)self pathManager];
    v39 = 0;
    v7 = [PLBackgroundModelMigration resetBackgroundActionClass:class pathManager:pathManager error:&v39];
    v8 = v39;

    v9 = PLMigrationGetLog();
    v10 = v9;
    if (v7)
    {
      v11 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        logger = [(PLModelMigration *)self logger];

        if (logger)
        {
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
          memset(buf, 0, sizeof(buf));
          v13 = PLMigrationGetLog();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          v14 = NSStringFromClass(class);
          v40 = 138543362;
          v41 = v14;
          LODWORD(v38) = 12;
          v15 = _os_log_send_and_compose_impl();

          v16 = [(PLModelMigration *)self logger:&v40];
          v17 = v16;
          v18 = v15;
          v19 = 286;
          v20 = 0;
          goto LABEL_13;
        }

        v32 = PLMigrationGetLog();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        v33 = NSStringFromClass(class);
        *buf = 138543362;
        *&buf[4] = v33;
        v34 = "[ResetBackgroundAction] Successfully reset background action class: %{public}@.";
        v35 = v32;
        v36 = OS_LOG_TYPE_DEFAULT;
        v37 = 12;
        goto LABEL_21;
      }
    }

    else
    {
      v28 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (v28)
      {
        logger2 = [(PLModelMigration *)self logger];

        if (logger2)
        {
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
          memset(buf, 0, sizeof(buf));
          v30 = PLMigrationGetLog();
          os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
          v31 = NSStringFromClass(class);
          v40 = 138543618;
          v41 = v31;
          v42 = 2114;
          v43 = v8;
          LODWORD(v38) = 22;
          v15 = _os_log_send_and_compose_impl();

          v16 = [(PLModelMigration *)self logger:&v40];
          v17 = v16;
          v18 = v15;
          v19 = 288;
          v20 = 16;
LABEL_13:
          [v16 logWithMessage:v18 fromCodeLocation:"PLModelMigration.m" type:{v19, v20}];

          if (v15 != buf)
          {
            free(v15);
          }

          goto LABEL_23;
        }

        v32 = PLMigrationGetLog();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        v33 = NSStringFromClass(class);
        *buf = 138543618;
        *&buf[4] = v33;
        *&buf[12] = 2114;
        *&buf[14] = v8;
        v34 = "[ResetBackgroundAction] Failed to reset background action class: %{public}@. Error: %{public}@";
        v35 = v32;
        v36 = OS_LOG_TYPE_ERROR;
        v37 = 22;
LABEL_21:
        _os_log_impl(&dword_19BF1F000, v35, v36, v34, buf, v37);

        goto LABEL_22;
      }
    }

LABEL_23:

    return;
  }

  v21 = PLMigrationGetLog();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

  if (!v22)
  {
    return;
  }

  logger3 = [(PLModelMigration *)self logger];

  if (!logger3)
  {
    v8 = PLMigrationGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v32 = NSStringFromClass(class);
      *buf = 138543362;
      *&buf[4] = v32;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "[ResetBackgroundAction] Skipping reset background action class: %{public}@", buf, 0xCu);
LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_23;
  }

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
  memset(buf, 0, sizeof(buf));
  v24 = PLMigrationGetLog();
  os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  v25 = NSStringFromClass(class);
  v40 = 138543362;
  v41 = v25;
  LODWORD(v38) = 12;
  v26 = _os_log_send_and_compose_impl();

  v27 = [(PLModelMigration *)self logger:&v40];
  [v27 logWithMessage:v26 fromCodeLocation:"PLModelMigration.m" type:{291, 0}];

  if (v26 != buf)
  {
    free(v26);
  }
}

- (void)_registerActionClass:(Class)class actionsContainer:(id)container progressPortion:(unint64_t *)portion
{
  v21 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  if (!containerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:268 description:{@"Invalid parameter not satisfying: %@", @"actions"}];
  }

  v10 = [class alloc];
  migrationContext = [(PLModelMigration *)self migrationContext];
  logger = [(PLModelMigration *)self logger];
  v13 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{-[objc_class actionProgressWeight](class, "actionProgressWeight")}];
  v14 = [v10 initWithMigrationContext:migrationContext logger:logger progress:v13];

  if (portion)
  {
    *portion += [(objc_class *)class actionProgressWeight];
  }

  [containerCopy addObject:v14];
  v15 = PLMigrationGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138543362;
    v20 = v17;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "Registering action: %{public}@", buf, 0xCu);
  }
}

- (void)registerPostRepairActionClass:(Class)class onCondition:(BOOL)condition
{
  conditionCopy = condition;
  v54 = *MEMORY[0x1E69E9840];
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    if (conditionCopy)
    {
LABEL_3:
      actionsPostRepair = self->_actionsPostRepair;

      [(PLModelMigration *)self _registerActionClass:class actionsContainer:actionsPostRepair progressPortion:&self->_actionProgressPortionPostRepair];
      return;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"[(Class)actionClass isSubclassOfClass:PLModelMigrationActionPostRepair.class]"}];

    if (conditionCopy)
    {
      goto LABEL_3;
    }
  }

  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    logger = [(PLModelMigration *)self logger];

    if (logger)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *buf = 0u;
      v23 = 0u;
      v13 = PLMigrationGetLog();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      v14 = NSStringFromClass(class);
      v20 = 138543362;
      v21 = v14;
      LODWORD(v19) = 12;
      v15 = _os_log_send_and_compose_impl();

      v16 = [(PLModelMigration *)self logger:&v20];
      [v16 logWithMessage:v15 fromCodeLocation:"PLModelMigration.m" type:{263, 0}];

      if (v15 != buf)
      {
        free(v15);
      }
    }

    else
    {
      v17 = PLMigrationGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = NSStringFromClass(class);
        *buf = 138543362;
        *&buf[4] = v18;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Skipping registering post repair action class: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)registerPreRepairActionClass:(Class)class onCondition:(BOOL)condition
{
  conditionCopy = condition;
  v54 = *MEMORY[0x1E69E9840];
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    if (conditionCopy)
    {
LABEL_3:
      actionsPreRepair = self->_actionsPreRepair;

      [(PLModelMigration *)self _registerActionClass:class actionsContainer:actionsPreRepair progressPortion:&self->_actionProgressPortionPreRepair];
      return;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"[(Class)actionClass isSubclassOfClass:PLModelMigrationActionPreRepair.class]"}];

    if (conditionCopy)
    {
      goto LABEL_3;
    }
  }

  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    logger = [(PLModelMigration *)self logger];

    if (logger)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *buf = 0u;
      v23 = 0u;
      v13 = PLMigrationGetLog();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      v14 = NSStringFromClass(class);
      v20 = 138543362;
      v21 = v14;
      LODWORD(v19) = 12;
      v15 = _os_log_send_and_compose_impl();

      v16 = [(PLModelMigration *)self logger:&v20];
      [v16 logWithMessage:v15 fromCodeLocation:"PLModelMigration.m" type:{253, 0}];

      if (v15 != buf)
      {
        free(v15);
      }
    }

    else
    {
      v17 = PLMigrationGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = NSStringFromClass(class);
        *buf = 138543362;
        *&buf[4] = v18;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Skipping registering pre repair action class: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)registerStagedActionClass:(Class)class onCondition:(BOOL)condition
{
  conditionCopy = condition;
  v54 = *MEMORY[0x1E69E9840];
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    if (conditionCopy)
    {
LABEL_3:
      actionsStaged = self->_actionsStaged;

      [(PLModelMigration *)self _registerActionClass:class actionsContainer:actionsStaged progressPortion:0];
      return;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"[(Class)actionClass isSubclassOfClass:PLModelMigrationActionStaged.class]"}];

    if (conditionCopy)
    {
      goto LABEL_3;
    }
  }

  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    logger = [(PLModelMigration *)self logger];

    if (logger)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *buf = 0u;
      v23 = 0u;
      v13 = PLMigrationGetLog();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      v14 = NSStringFromClass(class);
      v20 = 138543362;
      v21 = v14;
      LODWORD(v19) = 12;
      v15 = _os_log_send_and_compose_impl();

      v16 = [(PLModelMigration *)self logger:&v20];
      [v16 logWithMessage:v15 fromCodeLocation:"PLModelMigration.m" type:{243, 0}];

      if (v15 != buf)
      {
        free(v15);
      }
    }

    else
    {
      v17 = PLMigrationGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = NSStringFromClass(class);
        *buf = 138543362;
        *&buf[4] = v18;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Skipping registering staged action class: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)registerPreSchemaActionClass:(Class)class onCondition:(BOOL)condition
{
  conditionCopy = condition;
  v54 = *MEMORY[0x1E69E9840];
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    if (conditionCopy)
    {
LABEL_3:
      actionsPreSchema = self->_actionsPreSchema;

      [(PLModelMigration *)self _registerActionClass:class actionsContainer:actionsPreSchema progressPortion:0];
      return;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:228 description:{@"Invalid parameter not satisfying: %@", @"[(Class)actionClass isSubclassOfClass:PLModelMigrationActionPreSchema.class]"}];

    if (conditionCopy)
    {
      goto LABEL_3;
    }
  }

  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    logger = [(PLModelMigration *)self logger];

    if (logger)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *buf = 0u;
      v23 = 0u;
      v13 = PLMigrationGetLog();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      v14 = NSStringFromClass(class);
      v20 = 138543362;
      v21 = v14;
      LODWORD(v19) = 12;
      v15 = _os_log_send_and_compose_impl();

      v16 = [(PLModelMigration *)self logger:&v20];
      [v16 logWithMessage:v15 fromCodeLocation:"PLModelMigration.m" type:{233, 0}];

      if (v15 != buf)
      {
        free(v15);
      }
    }

    else
    {
      v17 = PLMigrationGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = NSStringFromClass(class);
        *buf = 138543362;
        *&buf[4] = v18;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Skipping registering pre schema action class: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)registerActionClass:(Class)class onCondition:(BOOL)condition
{
  conditionCopy = condition;
  v54 = *MEMORY[0x1E69E9840];
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    if (conditionCopy)
    {
LABEL_3:
      actions = self->_actions;

      [(PLModelMigration *)self _registerActionClass:class actionsContainer:actions progressPortion:&self->_actionProgressPortion];
      return;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:219 description:{@"Invalid parameter not satisfying: %@", @"[(Class)actionClass isSubclassOfClass:PLModelMigrationAction.class]"}];

    if (conditionCopy)
    {
      goto LABEL_3;
    }
  }

  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    logger = [(PLModelMigration *)self logger];

    if (logger)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *buf = 0u;
      v23 = 0u;
      v13 = PLMigrationGetLog();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      v14 = NSStringFromClass(class);
      v20 = 138543362;
      v21 = v14;
      LODWORD(v19) = 12;
      v15 = _os_log_send_and_compose_impl();

      v16 = [(PLModelMigration *)self logger:&v20];
      [v16 logWithMessage:v15 fromCodeLocation:"PLModelMigration.m" type:{223, 0}];

      if (v15 != buf)
      {
        free(v15);
      }
    }

    else
    {
      v17 = PLMigrationGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = NSStringFromClass(class);
        *buf = 138543362;
        *&buf[4] = v18;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Skipping registering action class: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)actionRegistration
{
  PLModelMigrationActionRegistration_PreSchema(self);
  PLModelMigrationActionRegistration_Repairs(self);
  PLModelMigrationActionRegistration_15000(self);
  PLModelMigrationActionRegistration_16000(self);
  PLModelMigrationActionRegistration_17000(self);
  PLModelMigrationActionRegistration_18000(self);

  PLModelMigrationActionRegistration_19000(self);
}

- (PLModelMigration)initWithMigrationContext:(id)context logger:(id)logger
{
  contextCopy = context;
  loggerCopy = logger;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"migrationContext"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"[migrationContext isKindOfClass:PLMigrationContext.class]"}];
  }

  v31.receiver = self;
  v31.super_class = PLModelMigration;
  v10 = [(PLModelMigration *)&v31 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_logger, logger);
    objc_storeStrong(&v11->_internalMigrationContext, context);
    v11->_performedActionKinds = 0;
    v11->_didCreateSqliteErrorIndicator = 0;
    v11->_allowRebuild = ([contextCopy policy] & 2) != 0;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    migrationUUID = v11->_migrationUUID;
    v11->_migrationUUID = uUIDString;

    v15 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
    progress = v11->_progress;
    v11->_progress = v15;

    [(NSProgress *)v11->_progress setCancellable:1];
    objc_initWeak(&location, v11);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __52__PLModelMigration_initWithMigrationContext_logger___block_invoke;
    v28[3] = &unk_1E75788C0;
    objc_copyWeak(&v29, &location);
    [(NSProgress *)v11->_progress setCancellationHandler:v28];
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actions = v11->_actions;
    v11->_actions = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actionsPreSchema = v11->_actionsPreSchema;
    v11->_actionsPreSchema = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actionsPreRepair = v11->_actionsPreRepair;
    v11->_actionsPreRepair = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actionsPostRepair = v11->_actionsPostRepair;
    v11->_actionsPostRepair = v23;

    v11->_actionProgressPortion = 0;
    v11->_actionProgressPortionPreRepair = 0;
    v11->_actionProgressPortionPostRepair = 0;
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __52__PLModelMigration_initWithMigrationContext_logger___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = PLMigrationGetLog();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained logger];

    if (v5)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      *buf = 0u;
      v14 = 0u;
      v6 = PLMigrationGetLog();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      v12[0] = 0;
      LODWORD(v11) = 2;
      v7 = _os_log_send_and_compose_impl();

      v8 = objc_loadWeakRetained((a1 + 32));
      v9 = [v8 logger];
      [v9 logWithMessage:v7 fromCodeLocation:"PLModelMigration.m" type:{173, 0}];

      if (v7 != buf)
      {
        free(v7);
      }
    }

    else
    {
      v10 = PLMigrationGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Migration was cancelled", buf, 2u);
      }
    }
  }
}

@end