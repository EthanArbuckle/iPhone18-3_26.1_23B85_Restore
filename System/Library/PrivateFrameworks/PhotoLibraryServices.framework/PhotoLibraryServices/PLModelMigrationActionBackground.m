@interface PLModelMigrationActionBackground
+ (BOOL)resetResumeMarkerForActionClass:(Class)a3 pathManager:(id)a4 error:(id *)a5;
+ (id)_resumeMakerKeyPathForActionClass:(Class)a3;
+ (id)actionDescription;
+ (id)shortenedMigrationActionClassName;
- (BOOL)isCancelled;
- (BOOL)isCancelledWithResumeMarker:(id)a3 error:(id *)a4;
- (NSString)description;
- (PLModelMigrationActionBackground)initWithMigrationContext:(id)a3 logger:(id)a4 progress:(id)a5 continuationHandler:(id)a6;
- (id)cancellableDiscreteProgressWithTotalUnitCount:(int64_t)a3 pendingParentUnitCount:(int64_t)a4;
- (id)databaseContext;
- (id)resumeMarker;
- (int64_t)saveWithManagedObjectContext:(id)a3 error:(id *)a4;
- (void)finalizeProgress;
- (void)setResumeMarkerValue:(id)a3;
@end

@implementation PLModelMigrationActionBackground

- (id)databaseContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(PLModelMigrationContext *)self->_migrationContext databaseContext];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = PLModelMigrationActionBackground;
  v3 = [(PLModelMigrationActionBackground *)&v10 description];
  v4 = [(PLModelMigrationActionBackground *)self actionName];
  v5 = [objc_opt_class() actionDescription];
  v6 = [(PLModelMigrationActionBackground *)self progress];
  v7 = [v6 localizedDescription];
  v8 = [v3 stringByAppendingFormat:@": [%@] description: %@, progress: %@", v4, v5, v7];

  return v8;
}

- (BOOL)isCancelledWithResumeMarker:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLModelMigrationActionBackground *)self isCancelled];
  if (v7)
  {
    if (a4)
    {
      v8 = MEMORY[0x1E696ABC0];
      v9 = *MEMORY[0x1E69BFF48];
      v15 = *MEMORY[0x1E696A588];
      v16[0] = @"Migration was cancelled";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *a4 = [v8 errorWithDomain:v9 code:46014 userInfo:v10];
    }

    if (v6)
    {
      v11 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 URIRepresentation];
          v11 = [v13 absoluteString];
        }

        else
        {
          v11 = 0;
        }
      }

      [(PLModelMigrationActionBackground *)self setResumeMarkerValue:v11];
    }
  }

  return v7;
}

- (BOOL)isCancelled
{
  v3 = [(PLModelMigrationActionBackground *)self continuationHandler];

  if (v3)
  {
    v4 = [(PLModelMigrationActionBackground *)self continuationHandler];
    v5 = v4[2]();

    if ((v5 & 1) == 0)
    {
      v6 = [(PLModelMigrationActionBackground *)self progress];
      [v6 cancel];
    }
  }

  v7 = [(PLModelMigrationActionBackground *)self progress];
  v8 = [v7 isCancelled];

  return v8;
}

- (int64_t)saveWithManagedObjectContext:(id)a3 error:(id *)a4
{
  if ([a3 save:a4])
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)finalizeProgress
{
  v5 = [(PLModelMigrationActionBackground *)self progress];
  v3 = [v5 totalUnitCount];
  v4 = [(PLModelMigrationActionBackground *)self progress];
  [v4 setCompletedUnitCount:v3];
}

- (id)cancellableDiscreteProgressWithTotalUnitCount:(int64_t)a3 pendingParentUnitCount:(int64_t)a4
{
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [(PLModelMigrationActionBackground *)self progress];
  v10 = [(PLModelMigrationActionBackground *)self logger];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __105__PLModelMigrationActionBackground_cancellableDiscreteProgressWithTotalUnitCount_pendingParentUnitCount___block_invoke;
  v14[3] = &unk_1E7573650;
  v15 = v8;
  v11 = v8;
  v12 = PLCancellableDiscreteProgress(v9, v10, a3, a4, v14);

  return v12;
}

void __105__PLModelMigrationActionBackground_cancellableDiscreteProgressWithTotalUnitCount_pendingParentUnitCount___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLMigrationGetLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    if (v3)
    {
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
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *buf = 0u;
      v15 = 0u;
      v6 = PLMigrationGetLog();
      os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      v7 = *(a1 + 32);
      v12 = 138543362;
      v13 = v7;
      LODWORD(v11) = 12;
      v8 = _os_log_send_and_compose_impl();

      [v3 logWithMessage:v8 fromCodeLocation:"PLModelMigrationAction.m" type:{380, 16, &v12, v11}];
      if (v8 != buf)
      {
        free(v8);
      }
    }

    else
    {
      v9 = PLMigrationGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        *buf = 138543362;
        *&buf[4] = v10;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "%{public}@ was cancelled", buf, 0xCu);
      }
    }
  }
}

- (id)resumeMarker
{
  v3 = [(PLModelMigrationActionBackground *)self appPrivateData];
  v4 = [v3 valueForKeyPath:self->_resumeMarkerKeyPath];

  return v4;
}

- (void)setResumeMarkerValue:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLModelMigrationActionBackground *)self appPrivateData];
  resumeMarkerKeyPath = self->_resumeMarkerKeyPath;
  v17 = 0;
  v7 = [v5 setValue:v4 forKeyPath:resumeMarkerKeyPath error:&v17];

  v8 = v17;
  if ((v7 & 1) == 0)
  {
    v9 = PLMigrationGetLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = [(PLModelMigrationActionBackground *)self logger];

      if (v11)
      {
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
        v27 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        *buf = 0u;
        v12 = PLMigrationGetLog();
        os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
        v18 = 138412290;
        v19 = v8;
        LODWORD(v16) = 12;
        v13 = _os_log_send_and_compose_impl();

        v14 = [(PLModelMigrationActionBackground *)self logger:&v18];
        [v14 logWithMessage:v13 fromCodeLocation:"PLModelMigrationAction.m" type:{369, 16}];

        if (v13 != buf)
        {
          free(v13);
        }
      }

      else
      {
        v15 = PLMigrationGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v8;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to save resume marker app private data: %@", buf, 0xCu);
        }
      }
    }
  }
}

- (PLModelMigrationActionBackground)initWithMigrationContext:(id)a3 logger:(id)a4 progress:(id)a5 continuationHandler:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_8:
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PLModelMigrationAction.m" lineNumber:327 description:{@"Invalid parameter not satisfying: %@", @"progress"}];

    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"PLModelMigrationAction.m" lineNumber:326 description:{@"Invalid parameter not satisfying: %@", @"migrationContext"}];

  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v15)
  {
    goto LABEL_4;
  }

LABEL_9:
  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"PLModelMigrationAction.m" lineNumber:328 description:{@"Invalid parameter not satisfying: %@", @"continuationHandler"}];

LABEL_4:
  v34.receiver = self;
  v34.super_class = PLModelMigrationActionBackground;
  v16 = [(PLModelMigrationActionBackground *)&v34 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_logger, a4);
    objc_storeStrong(&v17->_progress, a5);
    v18 = _Block_copy(v15);
    continuationHandler = v17->_continuationHandler;
    v17->_continuationHandler = v18;

    v20 = objc_opt_class();
    v21 = [v20 _resumeMakerKeyPathForActionClass:objc_opt_class()];
    resumeMarkerKeyPath = v17->_resumeMarkerKeyPath;
    v17->_resumeMarkerKeyPath = v21;

    v23 = objc_initWeak(&location, v17);
    v24 = objc_alloc(MEMORY[0x1E69BF270]);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __97__PLModelMigrationActionBackground_initWithMigrationContext_logger_progress_continuationHandler___block_invoke;
    v31[3] = &unk_1E7576828;
    objc_copyWeak(&v32, &location);
    v25 = [v24 initWithBlock:v31];
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
    lazyAppPrivateData = v17->_lazyAppPrivateData;
    v17->_lazyAppPrivateData = v25;

    objc_storeStrong(&v17->_migrationContext, a3);
    [(PLModelMigrationActionBackground *)v17 setup];
  }

  return v17;
}

id __97__PLModelMigrationActionBackground_initWithMigrationContext_logger_progress_continuationHandler___block_invoke(uint64_t a1)
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

+ (id)shortenedMigrationActionClassName
{
  v2 = objc_opt_class();
  if ([v2 isSubclassOfClass:objc_opt_class()])
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 componentsSeparatedByString:@"_"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 count];
  v7 = [v5 count];
  if (v6 < 3)
  {
    if (v7)
    {
      v9 = [v5 lastObject];
    }

    else
    {
      v9 = @"unknown";
    }
  }

  else
  {
    v8 = [v5 subarrayWithRange:{1, v7 - 1}];
    v9 = [v8 componentsJoinedByString:@"_"];
  }

  return v9;
}

+ (id)actionDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = PLStringShortener(v4, [@"PLModelMigrationAction_" length]);
  v6 = [v2 stringWithFormat:@"%@", v5];

  return v6;
}

+ (BOOL)resetResumeMarkerForActionClass:(Class)a3 pathManager:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 _resumeMakerKeyPathForActionClass:a3];
  v10 = MEMORY[0x1E69BF188];
  v11 = [v8 libraryURL];

  v12 = [v10 appPrivateDataForLibraryURL:v11];

  v18 = 0;
  v13 = [v12 setValue:0 forKeyPath:v9 error:&v18];
  v14 = v18;
  v15 = v14;
  if ((v13 & 1) == 0 && a5)
  {
    v16 = v14;
    *a5 = v15;
  }

  return v13;
}

+ (id)_resumeMakerKeyPathForActionClass:(Class)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() shortenedMigrationActionClassName];
  v5 = [v3 stringWithFormat:@"%@.ResumeMarker.%@", @"MigrationAction", v4];

  return v5;
}

@end