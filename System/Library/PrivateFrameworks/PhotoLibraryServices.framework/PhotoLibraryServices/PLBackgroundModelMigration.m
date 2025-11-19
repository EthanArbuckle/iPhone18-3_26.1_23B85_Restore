@interface PLBackgroundModelMigration
+ (BOOL)hasCompletedBackgroundActionClass:(Class)a3 pathManager:(id)a4;
+ (BOOL)isBackgroundMigrationRegistrationAfterRebuildRequiredWithLibrary:(id)a3;
+ (BOOL)isCompletedBackgroundActionClass:(Class)a3 appPrivateData:(id)a4;
+ (BOOL)resetBackgroundActionClass:(Class)a3 pathManager:(id)a4 error:(id *)a5;
+ (int64_t)migrateBackgroundActionsWithPhotoLibraryBundle:(id)a3 logger:(id)a4 error:(id *)a5 reportProgressUsingBlock:(id)a6 continuationHandler:(id)a7;
+ (void)validateBackgroundActionClass:(Class)a3;
- (BOOL)isMigrationCancelledWithError:(id *)a3;
- (id)initBackgroundMigrationWithPhotoLibraryBundle:(id)a3 logger:(id)a4 continuationHandler:(id)a5;
- (int64_t)migrateBackgroundPostProcessingWithError:(id *)a3 reportProgressUsingBlock:(id)a4;
- (int64_t)runBackgroundMigrationAction:(id)a3 error:(id *)a4;
- (void)registerBackgroundActionClass:(Class)a3 onCondition:(BOOL)a4;
- (void)setMarkerForBackgroundAction:(id)a3 marker:(int64_t)a4;
@end

@implementation PLBackgroundModelMigration

- (BOOL)isMigrationCancelledWithError:(id *)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = [(PLBackgroundModelMigration *)self continuationHandler];

  if (v5)
  {
    v6 = [(PLBackgroundModelMigration *)self continuationHandler];
    v7 = v6[2]();

    if ((v7 & 1) == 0)
    {
      v8 = [(PLBackgroundModelMigration *)self progress];
      [v8 cancel];
    }
  }

  v9 = [(PLBackgroundModelMigration *)self progress];
  v10 = [v9 isCancelled];

  if (v10)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E69BFF48];
    v17 = *MEMORY[0x1E696A588];
    v18[0] = @"Background Migration was cancelled";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [v11 errorWithDomain:v12 code:46014 userInfo:v13];

    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = 0;
  if (a3)
  {
LABEL_8:
    v15 = v14;
    *a3 = v14;
  }

LABEL_9:

  return v10;
}

- (void)setMarkerForBackgroundAction:(id)a3 marker:(int64_t)a4
{
  v77 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"PLBackgroundModelMigration.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v40 = [MEMORY[0x1E696AAA8] currentHandler];
  [v40 handleFailureInMethod:a2 object:self file:@"PLBackgroundModelMigration.m" lineNumber:355 description:{@"Invalid parameter not satisfying: %@", @"marker != PLModelMigrationActionBackgroundStatusNotStarted"}];

LABEL_3:
  v8 = [(PLBackgroundModelMigration *)self appPrivateData];
  v9 = [v8 valueForKeyPath:@"MigrationAction.Background"];
  v10 = [v9 mutableCopy];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v11 = objc_opt_class();
  v12 = [MEMORY[0x1E695DF00] now];
  v13 = NSStringFromClass(v11);
  v14 = [v10 objectForKeyedSubscript:v13];

  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = NSStringFromClass(v11);
    [v10 setObject:v14 forKeyedSubscript:v15];

    [v14 setObject:v12 forKeyedSubscript:@"PLBackgroundMigrationStartDate"];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v14 setObject:v16 forKeyedSubscript:@"PLBackgroundMigrationStatus"];

  [v14 setObject:v12 forKeyedSubscript:@"PLBackgroundMigrationStatusDate"];
  if (a4 == 1)
  {
    v20 = [v14 objectForKeyedSubscript:@"PLBackgroundMigrationStatusAttempts"];
    v21 = [v20 integerValue];

    v22 = [MEMORY[0x1E696AD98] numberWithInteger:v21 + 1];
    [v14 setObject:v22 forKeyedSubscript:@"PLBackgroundMigrationStatusAttempts"];

    v17 = [(PLBackgroundModelMigration *)self analyticsEventManager];
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:v21 + 1];
    v24 = *MEMORY[0x1E69BF620];
    [v17 setPayloadValue:v23 forKey:*MEMORY[0x1E69BF628] onEventWithName:*MEMORY[0x1E69BF620]];
LABEL_15:

    goto LABEL_16;
  }

  if (a4 == 2)
  {
    v17 = [v14 objectForKeyedSubscript:@"PLBackgroundMigrationStartDate"];
    if (v17)
    {
      [v12 timeIntervalSinceDate:v17];
      v19 = v18;
    }

    else
    {
      v19 = -1.0;
    }

    v23 = [(PLBackgroundModelMigration *)self analyticsEventManager];
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
    v24 = *MEMORY[0x1E69BF620];
    [v23 setPayloadValue:v25 forKey:*MEMORY[0x1E69BF638] onEventWithName:*MEMORY[0x1E69BF620]];

    goto LABEL_15;
  }

  v24 = *MEMORY[0x1E69BF620];
LABEL_16:
  v26 = [(PLBackgroundModelMigration *)self analyticsEventManager];
  v27 = [objc_opt_class() shortenedMigrationActionClassName];
  [v26 setPayloadValue:v27 forKey:*MEMORY[0x1E69BF630] onEventWithName:v24];

  v28 = [(PLBackgroundModelMigration *)self analyticsEventManager];
  v29 = PLStringFromModelMigrationActionBackgroundStatusShort(a4);
  [v28 setPayloadValue:v29 forKey:*MEMORY[0x1E69BF648] onEventWithName:v24];

  v30 = [(PLBackgroundModelMigration *)self appPrivateData];
  v42 = 0;
  LOBYTE(v28) = [v30 setValue:v10 forKeyPath:@"MigrationAction.Background" error:&v42];
  v31 = v42;

  if ((v28 & 1) == 0)
  {
    v32 = PLMigrationGetLog();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

    if (v33)
    {
      v34 = [(PLBackgroundModelMigration *)self logger];

      if (v34)
      {
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
        v52 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        *buf = 0u;
        v35 = PLMigrationGetLog();
        os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
        v43 = 138412290;
        v44 = v31;
        LODWORD(v41) = 12;
        v36 = _os_log_send_and_compose_impl();

        v37 = [(PLBackgroundModelMigration *)self logger:&v43];
        [v37 logWithMessage:v36 fromCodeLocation:"PLBackgroundModelMigration.m" type:{395, 16}];

        if (v36 != buf)
        {
          free(v36);
        }
      }

      else
      {
        v38 = PLMigrationGetLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v31;
          _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "Failed to record marker in private app data. Error: %@", buf, 0xCu);
        }
      }
    }
  }
}

- (int64_t)runBackgroundMigrationAction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__45089;
  v24 = __Block_byref_object_dispose__45090;
  v25 = 0;
  v7 = [(PLBackgroundModelMigration *)self databaseContext];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 newShortLivedLibraryWithName:{objc_msgSend(v9, "UTF8String")}];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__PLBackgroundModelMigration_runBackgroundMigrationAction_error___block_invoke;
  v15[3] = &unk_1E75787D0;
  v15[4] = self;
  v11 = v6;
  v16 = v11;
  v18 = &v26;
  v12 = v10;
  v17 = v12;
  v19 = &v20;
  [v12 performBlockAndWait:v15];
  if (a4)
  {
    *a4 = v21[5];
  }

  v13 = v27[3];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

void __65__PLBackgroundModelMigration_runBackgroundMigrationAction_error___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setMarkerForBackgroundAction:*(a1 + 40) marker:1];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) managedObjectContext];
  v4 = *(*(a1 + 64) + 8);
  obj = *(v4 + 40);
  v5 = [v2 performActionWithManagedObjectContext:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v5;

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(a1 + 32) setMarkerForBackgroundAction:*(a1 + 40) marker:2];
  }

  else
  {
    v6 = PLMigrationGetLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = [*(a1 + 32) logger];

      if (v8)
      {
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
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        *buf = 0u;
        v9 = PLMigrationGetLog();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v25 = 138543362;
        v26 = v11;
        LODWORD(v23) = 12;
        v12 = _os_log_send_and_compose_impl();

        v13 = [*(a1 + 32) logger];
        [v13 logWithMessage:v12 fromCodeLocation:"PLBackgroundModelMigration.m" type:{332, 0}];

        if (v12 != buf)
        {
          free(v12);
        }
      }

      else
      {
        v14 = PLMigrationGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          *buf = 138543362;
          *&buf[4] = v16;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ skipped setting background completed marker due to failed action", buf, 0xCu);
        }
      }
    }
  }

  v17 = [*(a1 + 32) analyticsEventManager];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "libraryIdentifier")}];
  [v17 setPayloadValue:v18 forKey:*MEMORY[0x1E69BF6C8] onEventWithName:*MEMORY[0x1E69BF6D0]];

  v19 = [*(a1 + 32) analyticsEventManager];
  v20 = PLStringFromModelMigrationActionResultShort(*(*(*(a1 + 56) + 8) + 24));
  v21 = *MEMORY[0x1E69BF620];
  [v19 setPayloadValue:v20 forKey:*MEMORY[0x1E69BF640] onEventWithName:*MEMORY[0x1E69BF620]];

  v22 = [*(a1 + 32) analyticsEventManager];
  [v22 publishEventWithName:v21];
}

- (int64_t)migrateBackgroundPostProcessingWithError:(id *)a3 reportProgressUsingBlock:(id)a4
{
  v113 = *MEMORY[0x1E69E9840];
  v50 = a4;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__45089;
  v75 = __Block_byref_object_dispose__45090;
  v76 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  obj = 0;
  v51 = self;
  LODWORD(self) = [(PLBackgroundModelMigration *)self isMigrationCancelledWithError:&obj];
  objc_storeStrong(&v76, obj);
  v5 = 1;
  if (self)
  {
    v5 = 2;
  }

  v70 = v5;
  if ([(NSMutableArray *)v51->_actionsBackground count]&& v68[3] == 1)
  {
    v6 = [PLModelMigrationActionProcessor alloc];
    v7 = [(PLBackgroundModelMigration *)v51 migrationUUID];
    v8 = [(PLBackgroundModelMigration *)v51 pathManager];
    v9 = [(PLBackgroundModelMigration *)v51 analyticsEventManager];
    v10 = [(PLBackgroundModelMigration *)v51 logger];
    v11 = [(PLModelMigrationActionProcessor *)v6 initWithUUID:v7 pathManager:v8 migrationActionType:6 analyticsEventManager:v9 logger:v10 progressUnitCount:v51->_actionProgressPortionBackground];

    [(PLModelMigrationActionProcessor *)v11 setIgnoreProgressUpdates:1];
    v12 = [(PLModelMigrationActionProcessor *)v11 progress];

    if (v12)
    {
      v13 = [(PLBackgroundModelMigration *)v51 progress];
      v14 = [(PLModelMigrationActionProcessor *)v11 progress];
      [v13 addChild:v14 withPendingUnitCount:v51->_actionProgressPortionBackground];
    }

    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v62 = 0u;
    v47 = v51->_actionsBackground;
    v15 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v62 objects:v112 count:16];
    if (v15)
    {
      v48 = *v63;
LABEL_9:
      v16 = 0;
      v49 = v15;
      while (1)
      {
        if (*v63 != v48)
        {
          objc_enumerationMutation(v47);
        }

        v17 = *(*(&v62 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        v19 = [v17 progress];
        v58 = 0;
        v59 = &v58;
        v60 = 0x2020000000;
        v61 = 0;
        v20 = [(PLModelMigrationActionProcessor *)v11 progress];
        [v20 addChild:v19 withPendingUnitCount:{objc_msgSend(objc_opt_class(), "actionProgressWeight")}];

        v21 = MEMORY[0x1E696AEC0];
        v22 = [objc_opt_class() actionDescription];
        v23 = [v21 stringWithFormat:@"%@", v22];

        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __96__PLBackgroundModelMigration_migrateBackgroundPostProcessingWithError_reportProgressUsingBlock___block_invoke;
        v53[3] = &unk_1E756CB18;
        v53[4] = v51;
        v53[5] = v17;
        v55 = &v67;
        v56 = &v71;
        v57 = &v58;
        v24 = v19;
        v54 = v24;
        [(PLModelMigrationActionProcessor *)v11 performActionWithName:v23 ifRequired:1 block:v53];
        if (v50)
        {
          v25 = v59[3];
          if (!v25)
          {
            v25 = [v24 completedUnitCount];
          }

          v50[2](v50, v25, [v24 totalUnitCount], v23);
        }

        if ([(PLModelMigrationActionProcessor *)v11 isSuccess])
        {
          v26 = (v72 + 5);
          v52 = v72[5];
          v27 = [(PLBackgroundModelMigration *)v51 isMigrationCancelledWithError:&v52];
          objc_storeStrong(v26, v52);
          if (v27)
          {
            v28 = 0;
            v68[3] = 2;
          }

          else
          {
            v28 = 1;
          }
        }

        else
        {
          v29 = PLMigrationGetLog();
          v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

          if (v30)
          {
            v31 = [(PLBackgroundModelMigration *)v51 logger];
            v32 = v31 == 0;

            if (v32)
            {
              v39 = PLMigrationGetLog();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v40 = objc_opt_class();
                v41 = NSStringFromClass(v40);
                v42 = v72[5];
                *buf = 138543618;
                *&buf[4] = v41;
                *&buf[12] = 2114;
                *&buf[14] = v42;
                _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "%{public}@ failed. Error: %{public}@", buf, 0x16u);
              }
            }

            else
            {
              v110 = 0u;
              v111 = 0u;
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
              memset(buf, 0, sizeof(buf));
              v33 = PLMigrationGetLog();
              os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
              v34 = objc_opt_class();
              v35 = NSStringFromClass(v34);
              v36 = v72[5];
              v77 = 138543618;
              v78 = v35;
              v79 = 2114;
              v80 = v36;
              LODWORD(v45) = 22;
              v37 = _os_log_send_and_compose_impl();

              v38 = [(PLBackgroundModelMigration *)v51 logger:&v77];
              [v38 logWithMessage:v37 fromCodeLocation:"PLBackgroundModelMigration.m" type:{303, 16}];

              if (v37 != buf)
              {
                free(v37);
              }
            }
          }

          v28 = 0;
        }

        _Block_object_dispose(&v58, 8);
        objc_autoreleasePoolPop(v18);
        if (!v28)
        {
          break;
        }

        if (v49 == ++v16)
        {
          v15 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v62 objects:v112 count:16];
          if (v15)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }
  }

  if (a3)
  {
    *a3 = v72[5];
  }

  v43 = v68[3];
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);

  return v43;
}

BOOL __96__PLBackgroundModelMigration_migrateBackgroundPostProcessingWithError_reportProgressUsingBlock___block_invoke(uint64_t a1)
{
  v8[72] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8[0] = 0;
  v4 = [v2 runBackgroundMigrationAction:v3 error:v8];
  v5 = v8[0];
  *(*(*(a1 + 56) + 8) + 24) = v4;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v5);
  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 48) completedUnitCount];
  [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "totalUnitCount")}];
  v6 = *(*(*(a1 + 56) + 8) + 24) == 1;

  return v6;
}

- (void)registerBackgroundActionClass:(Class)a3 onCondition:(BOOL)a4
{
  v4 = a4;
  v84 = *MEMORY[0x1E69E9840];
  [PLBackgroundModelMigration validateBackgroundActionClass:?];
  v7 = objc_opt_class();
  v8 = [(PLBackgroundModelMigration *)self appPrivateData];
  v9 = [v7 isCompletedBackgroundActionClass:a3 appPrivateData:v8];

  if (v4)
  {
    if (v9)
    {
      v10 = PLMigrationGetLog();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (!v11)
      {
        return;
      }

      v12 = [(PLBackgroundModelMigration *)self logger];

      if (v12)
      {
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
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        *buf = 0u;
        v53 = 0u;
        v13 = PLMigrationGetLog();
        os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        v14 = NSStringFromClass(a3);
        v50 = 138543362;
        v51 = v14;
        LODWORD(v49) = 12;
        v15 = _os_log_send_and_compose_impl();

        v16 = [(PLBackgroundModelMigration *)self logger:&v50];
        v17 = v16;
        v18 = v15;
        v19 = 186;
        goto LABEL_10;
      }

      v45 = PLMigrationGetLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = NSStringFromClass(a3);
        *buf = 138543362;
        *&buf[4] = v46;
        v47 = "Skipping registering completed background action class: %{public}@";
LABEL_25:
        _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_DEFAULT, v47, buf, 0xCu);

        goto LABEL_26;
      }

      goto LABEL_26;
    }

    v25 = [a3 alloc];
    internalMigrationContext = self->_internalMigrationContext;
    v27 = [(PLBackgroundModelMigration *)self logger];
    v28 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{-[objc_class actionProgressWeight](a3, "actionProgressWeight")}];
    v29 = [(PLBackgroundModelMigration *)self continuationHandler];
    v30 = [v25 initWithMigrationContext:internalMigrationContext logger:v27 progress:v28 continuationHandler:v29];

    v31 = [(objc_class *)a3 actionProgressWeight];
    actionsBackground = self->_actionsBackground;
    self->_actionProgressPortionBackground += v31;
    [(NSMutableArray *)actionsBackground addObject:v30];
    v33 = PLMigrationGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEBUG, "Registering background action: %{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if ((v9 & 1) == 0)
  {
    v34 = [a3 alloc];
    v35 = self->_internalMigrationContext;
    v36 = [(PLBackgroundModelMigration *)self logger];
    v37 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{-[objc_class actionProgressWeight](a3, "actionProgressWeight")}];
    v38 = [(PLBackgroundModelMigration *)self continuationHandler];
    v30 = [v34 initWithMigrationContext:v35 logger:v36 progress:v37 continuationHandler:v38];

    [(PLBackgroundModelMigration *)self setMarkerForBackgroundAction:v30 marker:3];
    v39 = PLMigrationGetLog();
    LODWORD(v36) = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);

    if (!v36)
    {
      goto LABEL_19;
    }

    v40 = [(PLBackgroundModelMigration *)self logger];

    if (v40)
    {
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
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      *buf = 0u;
      v53 = 0u;
      v41 = PLMigrationGetLog();
      os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
      v42 = NSStringFromClass(a3);
      v50 = 138543362;
      v51 = v42;
      LODWORD(v49) = 12;
      v43 = _os_log_send_and_compose_impl();

      v44 = [(PLBackgroundModelMigration *)self logger:&v50];
      [v44 logWithMessage:v43 fromCodeLocation:"PLBackgroundModelMigration.m" type:{194, 0}];

      if (v43 != buf)
      {
        free(v43);
      }

      goto LABEL_19;
    }

    v33 = PLMigrationGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v48 = NSStringFromClass(a3);
      *buf = 138543362;
      *&buf[4] = v48;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Skipping registering background action class: %{public}@", buf, 0xCu);
    }

LABEL_14:

LABEL_19:
    return;
  }

  v20 = PLMigrationGetLog();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

  if (!v21)
  {
    return;
  }

  v22 = [(PLBackgroundModelMigration *)self logger];

  if (!v22)
  {
    v45 = PLMigrationGetLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = NSStringFromClass(a3);
      *buf = 138543362;
      *&buf[4] = v46;
      v47 = "Skipping registering skipped background action class: %{public}@";
      goto LABEL_25;
    }

LABEL_26:

    return;
  }

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
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  *buf = 0u;
  v53 = 0u;
  v23 = PLMigrationGetLog();
  os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  v24 = NSStringFromClass(a3);
  v50 = 138543362;
  v51 = v24;
  LODWORD(v49) = 12;
  v15 = _os_log_send_and_compose_impl();

  v16 = [(PLBackgroundModelMigration *)self logger:&v50];
  v17 = v16;
  v18 = v15;
  v19 = 196;
LABEL_10:
  [v16 logWithMessage:v18 fromCodeLocation:"PLBackgroundModelMigration.m" type:{v19, 0}];

  if (v15 != buf)
  {
    free(v15);
  }
}

- (id)initBackgroundMigrationWithPhotoLibraryBundle:(id)a3 logger:(id)a4 continuationHandler:(id)a5
{
  v9 = a3;
  v36 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PLBackgroundModelMigration.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"bundle", v36}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v34 = [MEMORY[0x1E696AAA8] currentHandler];
  [v34 handleFailureInMethod:a2 object:self file:@"PLBackgroundModelMigration.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"continuationHandler"}];

LABEL_3:
  v12 = [[PLDatabaseContext alloc] initWithLibraryBundle:v9];
  v13 = objc_alloc_init(MEMORY[0x1E69BF1F0]);
  v14 = [PLBackgroundMigrationContext alloc];
  v15 = [v9 pathManager];
  v16 = [(PLBackgroundMigrationContext *)v14 initWithPathManager:v15 databaseContext:v12 analyticsEventManager:v13];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"PLBackgroundModelMigration.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"[ctx isKindOfClass:PLBackgroundMigrationContext.class]"}];
  }

  v43.receiver = self;
  v43.super_class = PLBackgroundModelMigration;
  v17 = [(PLBackgroundModelMigration *)&v43 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_logger, a4);
    v19 = _Block_copy(v11);
    continuationHandler = v18->_continuationHandler;
    v18->_continuationHandler = v19;

    objc_storeStrong(&v18->_internalMigrationContext, v16);
    v21 = [MEMORY[0x1E696AFB0] UUID];
    v22 = [v21 UUIDString];
    migrationUUID = v18->_migrationUUID;
    v18->_migrationUUID = v22;

    v24 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
    progress = v18->_progress;
    v18->_progress = v24;

    [(NSProgress *)v18->_progress setCancellable:1];
    objc_initWeak(&location, v18);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __103__PLBackgroundModelMigration_initBackgroundMigrationWithPhotoLibraryBundle_logger_continuationHandler___block_invoke;
    v40[3] = &unk_1E75788C0;
    objc_copyWeak(&v41, &location);
    [(NSProgress *)v18->_progress setCancellationHandler:v40];
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actionsBackground = v18->_actionsBackground;
    v18->_actionsBackground = v26;

    v18->_actionProgressPortionBackground = 0;
    v28 = objc_initWeak(&from, v18);

    v29 = objc_alloc(MEMORY[0x1E69BF270]);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __103__PLBackgroundModelMigration_initBackgroundMigrationWithPhotoLibraryBundle_logger_continuationHandler___block_invoke_69;
    v37[3] = &unk_1E7576828;
    objc_copyWeak(&v38, &from);
    v30 = [v29 initWithBlock:v37];
    objc_destroyWeak(&v38);
    objc_destroyWeak(&from);
    lazyAppPrivateData = v18->_lazyAppPrivateData;
    v18->_lazyAppPrivateData = v30;

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __103__PLBackgroundModelMigration_initBackgroundMigrationWithPhotoLibraryBundle_logger_continuationHandler___block_invoke(uint64_t a1)
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
      [v9 logWithMessage:v7 fromCodeLocation:"PLBackgroundModelMigration.m" type:{141, 0}];

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
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Background Migration was cancelled", buf, 2u);
      }
    }
  }
}

id __103__PLBackgroundModelMigration_initBackgroundMigrationWithPhotoLibraryBundle_logger_continuationHandler___block_invoke_69(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = MEMORY[0x1E69BF188];
    v4 = [WeakRetained pathManager];
    v5 = [v4 libraryURL];
    v6 = [v3 appPrivateDataForLibraryURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isBackgroundMigrationRegistrationAfterRebuildRequiredWithLibrary:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    v4 = PLModelMigrationSubclassesForClass();
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          if ([v11 isResetAfterRebuildRequiredWithLibrary:v3])
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v8);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v28 = 0;
      v15 = *v31;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v30 + 1) + 8 * j);
          v18 = [v3 pathManager];
          LODWORD(v17) = [PLBackgroundModelMigration hasCompletedBackgroundActionClass:v17 pathManager:v18];

          if (v17)
          {
            v19 = objc_opt_class();
            v20 = [v3 pathManager];
            v29 = 0;
            v21 = [PLBackgroundModelMigration resetBackgroundActionClass:v19 pathManager:v20 error:&v29];
            v22 = v29;

            v23 = PLMigrationGetLog();
            v24 = v23;
            if (v21)
            {
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Requesting background migration after rebuild", buf, 2u);
              }

              v28 = 1;
            }

            else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v39 = v22;
              _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Failed to reset: PLModelMigrationAction_UpdateAssetAdjustmentsState. Error: %@", buf, 0xCu);
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v14);
    }

    else
    {
      v28 = 0;
    }

    v25 = v6;
    v26 = v28;
  }

  else
  {
    v25 = PLMigrationGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Unable to check background migration action reset after rebuild due to missing library", buf, 2u);
    }

    v26 = 0;
  }

  return v26 & 1;
}

+ (BOOL)isCompletedBackgroundActionClass:(Class)a3 appPrivateData:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (!a3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PLBackgroundModelMigration.m" lineNumber:344 description:{@"Invalid parameter not satisfying: %@", @"actionClass"}];

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PLBackgroundModelMigration.m" lineNumber:345 description:{@"Invalid parameter not satisfying: %@", @"appPrivateData"}];

    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [v8 valueForKeyPath:@"MigrationAction.Background"];
  v10 = NSStringFromClass(a3);
  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = [v11 objectForKeyedSubscript:@"PLBackgroundMigrationStatus"];
  v13 = [v12 integerValue];

  return (v13 & 0xFFFFFFFFFFFFFFFELL) == 2;
}

+ (int64_t)migrateBackgroundActionsWithPhotoLibraryBundle:(id)a3 logger:(id)a4 error:(id *)a5 reportProgressUsingBlock:(id)a6 continuationHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v15 = PLBackgroundMigrationActionQueue();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __135__PLBackgroundModelMigration_migrateBackgroundActionsWithPhotoLibraryBundle_logger_error_reportProgressUsingBlock_continuationHandler___block_invoke;
  v22[3] = &unk_1E7574DC0;
  v23 = v11;
  v24 = v12;
  v25 = v14;
  v26 = v13;
  v27 = &v29;
  v28 = a5;
  v16 = v13;
  v17 = v14;
  v18 = v12;
  v19 = v11;
  dispatch_sync(v15, v22);

  v20 = v30[3];
  _Block_object_dispose(&v29, 8);
  return v20;
}

void __135__PLBackgroundModelMigration_migrateBackgroundActionsWithPhotoLibraryBundle_logger_error_reportProgressUsingBlock_continuationHandler___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [[PLBackgroundModelMigration alloc] initBackgroundMigrationWithPhotoLibraryBundle:*(a1 + 32) logger:*(a1 + 40) continuationHandler:*(a1 + 48)];
  PLModelMigrationActionRegistration_Background(v3);
  v23 = 0;
  v4 = [v3 migrateBackgroundPostProcessingWithError:&v23 reportProgressUsingBlock:*(a1 + 56)];
  v5 = v23;
  *(*(*(a1 + 64) + 8) + 24) = v4;
  v6 = *(*(*(a1 + 64) + 8) + 24);
  if (v6 != 3)
  {
    if (v6 != 1)
    {
      goto LABEL_10;
    }

    v7 = [*(a1 + 32) libraryURL];
    PLDeregisterBackgroundMigrationLibraryURL(v7);
    goto LABEL_4;
  }

  v8 = [*(a1 + 32) libraryURL];
  v9 = PLBumpBackgroundMigrationLibraryURL(v8);

  if (v9 < 4)
  {
    goto LABEL_10;
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = [v3 logger];

  if (!v12)
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v5;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Background migration failure hit max retry attempts. Marking it as DONE until next process restart. Error: %@", buf, 0xCu);
    }

LABEL_4:

    goto LABEL_10;
  }

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
  v33 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *buf = 0u;
  v13 = PLMigrationGetLog();
  os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  v24 = 138412290;
  v25 = v5;
  LODWORD(v22) = 12;
  v14 = _os_log_send_and_compose_impl();

  v15 = [v3 logger];
  [v15 logWithMessage:v14 fromCodeLocation:"PLBackgroundModelMigration.m" type:{253, 16}];

  if (v14 != buf)
  {
    free(v14);
  }

LABEL_10:

  objc_autoreleasePoolPop(v2);
  v16 = *(a1 + 72);
  v17 = *(*(*(a1 + 64) + 8) + 24);
  v18 = v5;
  v19 = v18;
  if (v17 != 1 && v16 != 0)
  {
    v21 = v18;
    *v16 = v19;
  }
}

+ (void)validateBackgroundActionClass:(Class)a3
{
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = NSStringFromClass(a3);
    [v7 handleFailureInMethod:a2 object:a1 file:@"PLBackgroundModelMigration.m" lineNumber:227 description:{@"Invalid background action class: %@", v6}];
  }
}

+ (BOOL)resetBackgroundActionClass:(Class)a3 pathManager:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a4;
  [a1 validateBackgroundActionClass:a3];
  v9 = MEMORY[0x1E69BF188];
  v10 = [v8 libraryURL];
  v11 = [v9 appPrivateDataForLibraryURL:v10];

  v12 = [v11 valueForKeyPath:@"MigrationAction.Background"];
  v13 = [v12 mutableCopy];

  v14 = NSStringFromClass(a3);
  [v13 removeObjectForKey:v14];

  v28 = 0;
  v15 = [v11 setValue:v13 forKeyPath:@"MigrationAction.Background" error:&v28];
  v16 = v28;
  if (v15)
  {
    v27 = v16;
    v17 = [PLModelMigrationActionBackground resetResumeMarkerForActionClass:a3 pathManager:v8 error:&v27];
    v18 = v27;

    if (v17)
    {
      v19 = v18;
      v20 = 1;
      goto LABEL_10;
    }

    v21 = PLMigrationGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromClass(a3);
      *buf = 138543618;
      v30 = v26;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to reset the resume marker id in private app data for class: %{public}@. Error: %@", buf, 0x16u);
    }
  }

  else
  {
    v21 = PLMigrationGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromClass(a3);
      *buf = 138543618;
      v30 = v22;
      v31 = 2112;
      v32 = v16;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to reset marker in private app data for class: %{public}@. Error: %@", buf, 0x16u);
    }

    v18 = v16;
  }

  v23 = v18;
  v19 = v23;
  if (a5)
  {
    v24 = v23;
    v20 = 0;
    *a5 = v19;
  }

  else
  {
    v20 = 0;
  }

LABEL_10:

  return v20;
}

+ (BOOL)hasCompletedBackgroundActionClass:(Class)a3 pathManager:(id)a4
{
  v6 = a4;
  [a1 validateBackgroundActionClass:a3];
  v7 = MEMORY[0x1E69BF188];
  v8 = [v6 libraryURL];

  v9 = [v7 appPrivateDataForLibraryURL:v8];

  LOBYTE(a3) = [a1 isCompletedBackgroundActionClass:a3 appPrivateData:v9];
  return a3;
}

@end