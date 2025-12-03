@interface PLModelMigrationActionBackground
+ (BOOL)resetResumeMarkerForActionClass:(Class)class pathManager:(id)manager error:(id *)error;
+ (id)_resumeMakerKeyPathForActionClass:(Class)class;
+ (id)actionDescription;
+ (id)shortenedMigrationActionClassName;
- (BOOL)isCancelled;
- (BOOL)isCancelledWithResumeMarker:(id)marker error:(id *)error;
- (NSString)description;
- (PLModelMigrationActionBackground)initWithMigrationContext:(id)context logger:(id)logger progress:(id)progress continuationHandler:(id)handler;
- (id)cancellableDiscreteProgressWithTotalUnitCount:(int64_t)count pendingParentUnitCount:(int64_t)unitCount;
- (id)databaseContext;
- (id)resumeMarker;
- (int64_t)saveWithManagedObjectContext:(id)context error:(id *)error;
- (void)finalizeProgress;
- (void)setResumeMarkerValue:(id)value;
@end

@implementation PLModelMigrationActionBackground

- (id)databaseContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    databaseContext = [(PLModelMigrationContext *)self->_migrationContext databaseContext];
  }

  else
  {
    databaseContext = 0;
  }

  return databaseContext;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = PLModelMigrationActionBackground;
  v3 = [(PLModelMigrationActionBackground *)&v10 description];
  actionName = [(PLModelMigrationActionBackground *)self actionName];
  actionDescription = [objc_opt_class() actionDescription];
  progress = [(PLModelMigrationActionBackground *)self progress];
  localizedDescription = [progress localizedDescription];
  v8 = [v3 stringByAppendingFormat:@": [%@] description: %@, progress: %@", actionName, actionDescription, localizedDescription];

  return v8;
}

- (BOOL)isCancelledWithResumeMarker:(id)marker error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  markerCopy = marker;
  isCancelled = [(PLModelMigrationActionBackground *)self isCancelled];
  if (isCancelled)
  {
    if (error)
    {
      v8 = MEMORY[0x1E696ABC0];
      v9 = *MEMORY[0x1E69BFF48];
      v15 = *MEMORY[0x1E696A588];
      v16[0] = @"Migration was cancelled";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *error = [v8 errorWithDomain:v9 code:46014 userInfo:v10];
    }

    if (markerCopy)
    {
      absoluteString = markerCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = absoluteString;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          uRIRepresentation = [v12 URIRepresentation];
          absoluteString = [uRIRepresentation absoluteString];
        }

        else
        {
          absoluteString = 0;
        }
      }

      [(PLModelMigrationActionBackground *)self setResumeMarkerValue:absoluteString];
    }
  }

  return isCancelled;
}

- (BOOL)isCancelled
{
  continuationHandler = [(PLModelMigrationActionBackground *)self continuationHandler];

  if (continuationHandler)
  {
    continuationHandler2 = [(PLModelMigrationActionBackground *)self continuationHandler];
    v5 = continuationHandler2[2]();

    if ((v5 & 1) == 0)
    {
      progress = [(PLModelMigrationActionBackground *)self progress];
      [progress cancel];
    }
  }

  progress2 = [(PLModelMigrationActionBackground *)self progress];
  isCancelled = [progress2 isCancelled];

  return isCancelled;
}

- (int64_t)saveWithManagedObjectContext:(id)context error:(id *)error
{
  if ([context save:error])
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
  progress = [(PLModelMigrationActionBackground *)self progress];
  totalUnitCount = [progress totalUnitCount];
  progress2 = [(PLModelMigrationActionBackground *)self progress];
  [progress2 setCompletedUnitCount:totalUnitCount];
}

- (id)cancellableDiscreteProgressWithTotalUnitCount:(int64_t)count pendingParentUnitCount:(int64_t)unitCount
{
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  progress = [(PLModelMigrationActionBackground *)self progress];
  logger = [(PLModelMigrationActionBackground *)self logger];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __105__PLModelMigrationActionBackground_cancellableDiscreteProgressWithTotalUnitCount_pendingParentUnitCount___block_invoke;
  v14[3] = &unk_1E7573650;
  v15 = v8;
  v11 = v8;
  v12 = PLCancellableDiscreteProgress(progress, logger, count, unitCount, v14);

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
  appPrivateData = [(PLModelMigrationActionBackground *)self appPrivateData];
  v4 = [appPrivateData valueForKeyPath:self->_resumeMarkerKeyPath];

  return v4;
}

- (void)setResumeMarkerValue:(id)value
{
  v52 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  appPrivateData = [(PLModelMigrationActionBackground *)self appPrivateData];
  resumeMarkerKeyPath = self->_resumeMarkerKeyPath;
  v17 = 0;
  v7 = [appPrivateData setValue:valueCopy forKeyPath:resumeMarkerKeyPath error:&v17];

  v8 = v17;
  if ((v7 & 1) == 0)
  {
    v9 = PLMigrationGetLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      logger = [(PLModelMigrationActionBackground *)self logger];

      if (logger)
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

- (PLModelMigrationActionBackground)initWithMigrationContext:(id)context logger:(id)logger progress:(id)progress continuationHandler:(id)handler
{
  contextCopy = context;
  loggerCopy = logger;
  progressCopy = progress;
  handlerCopy = handler;
  if (contextCopy)
  {
    if (progressCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationAction.m" lineNumber:327 description:{@"Invalid parameter not satisfying: %@", @"progress"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigrationAction.m" lineNumber:326 description:{@"Invalid parameter not satisfying: %@", @"migrationContext"}];

  if (!progressCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLModelMigrationAction.m" lineNumber:328 description:{@"Invalid parameter not satisfying: %@", @"continuationHandler"}];

LABEL_4:
  v34.receiver = self;
  v34.super_class = PLModelMigrationActionBackground;
  v16 = [(PLModelMigrationActionBackground *)&v34 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_logger, logger);
    objc_storeStrong(&v17->_progress, progress);
    v18 = _Block_copy(handlerCopy);
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

    objc_storeStrong(&v17->_migrationContext, context);
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
      lastObject = [v5 lastObject];
    }

    else
    {
      lastObject = @"unknown";
    }
  }

  else
  {
    v8 = [v5 subarrayWithRange:{1, v7 - 1}];
    lastObject = [v8 componentsJoinedByString:@"_"];
  }

  return lastObject;
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

+ (BOOL)resetResumeMarkerForActionClass:(Class)class pathManager:(id)manager error:(id *)error
{
  managerCopy = manager;
  v9 = [self _resumeMakerKeyPathForActionClass:class];
  v10 = MEMORY[0x1E69BF188];
  libraryURL = [managerCopy libraryURL];

  v12 = [v10 appPrivateDataForLibraryURL:libraryURL];

  v18 = 0;
  v13 = [v12 setValue:0 forKeyPath:v9 error:&v18];
  v14 = v18;
  v15 = v14;
  if ((v13 & 1) == 0 && error)
  {
    v16 = v14;
    *error = v15;
  }

  return v13;
}

+ (id)_resumeMakerKeyPathForActionClass:(Class)class
{
  v3 = MEMORY[0x1E696AEC0];
  shortenedMigrationActionClassName = [objc_opt_class() shortenedMigrationActionClassName];
  v5 = [v3 stringWithFormat:@"%@.ResumeMarker.%@", @"MigrationAction", shortenedMigrationActionClassName];

  return v5;
}

@end