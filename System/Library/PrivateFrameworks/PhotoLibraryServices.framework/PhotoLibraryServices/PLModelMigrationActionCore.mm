@interface PLModelMigrationActionCore
+ (id)actionDescription;
+ (id)shortenedMigrationActionClassName;
- (BOOL)isCancelledWithError:(id *)a3;
- (NSString)actionName;
- (NSString)description;
- (PLModelMigrationActionCore)initWithMigrationContext:(id)a3 logger:(id)a4 progress:(id)a5;
- (id)cancellableDiscreteProgressWithTotalUnitCount:(int64_t)a3 pendingParentUnitCount:(int64_t)a4;
- (int64_t)saveWithManagedObjectContext:(id)a3 error:(id *)a4;
- (void)finalizeProgress;
@end

@implementation PLModelMigrationActionCore

- (NSString)actionName
{
  v2 = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = PLModelMigrationActionCore;
  v3 = [(PLModelMigrationActionCore *)&v10 description];
  v4 = [(PLModelMigrationActionCore *)self actionName];
  v5 = [objc_opt_class() actionDescription];
  v6 = [(PLModelMigrationActionCore *)self progress];
  v7 = [v6 localizedDescription];
  v8 = [v3 stringByAppendingFormat:@": [%@] description: %@, progress: %@", v4, v5, v7];

  return v8;
}

- (BOOL)isCancelledWithError:(id *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [(PLModelMigrationActionCore *)self progress];
  v5 = [v4 isCancelled];

  if (a3 && v5)
  {
    v6 = objc_opt_class();
    if ([v6 isSubclassOfClass:objc_opt_class()])
    {
      v7 = 46013;
    }

    else
    {
      v7 = 46008;
    }

    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E69BFF48];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"Migration was cancelled";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a3 = [v8 errorWithDomain:v9 code:v7 userInfo:v10];
  }

  return v5;
}

+ (id)shortenedMigrationActionClassName
{
  v2 = objc_opt_class();
  if ([v2 isSubclassOfClass:objc_opt_class()])
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 componentsSeparatedByString:@"_"];
    v6 = [v5 lastObject];
  }

  else
  {
    v6 = @"unknown";
  }

  return v6;
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
  v5 = [(PLModelMigrationActionCore *)self progress];
  v3 = [v5 totalUnitCount];
  v4 = [(PLModelMigrationActionCore *)self progress];
  [v4 setCompletedUnitCount:v3];
}

- (id)cancellableDiscreteProgressWithTotalUnitCount:(int64_t)a3 pendingParentUnitCount:(int64_t)a4
{
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [(PLModelMigrationActionCore *)self progress];
  v10 = [(PLModelMigrationActionCore *)self logger];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__PLModelMigrationActionCore_cancellableDiscreteProgressWithTotalUnitCount_pendingParentUnitCount___block_invoke;
  v14[3] = &unk_1E7573650;
  v15 = v8;
  v11 = v8;
  v12 = PLCancellableDiscreteProgress(v9, v10, a3, a4, v14);

  return v12;
}

void __99__PLModelMigrationActionCore_cancellableDiscreteProgressWithTotalUnitCount_pendingParentUnitCount___block_invoke(uint64_t a1, void *a2)
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

      [v3 logWithMessage:v8 fromCodeLocation:"PLModelMigrationAction.m" type:{211, 16, &v12, v11}];
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

- (PLModelMigrationActionCore)initWithMigrationContext:(id)a3 logger:(id)a4 progress:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PLModelMigrationAction.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"[migrationContext isKindOfClass:PLMigrationContext.class]"}];
  }

  v21.receiver = self;
  v21.super_class = PLModelMigrationActionCore;
  v13 = [(PLModelMigrationActionCore *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_migrationContext, a3);
    objc_storeStrong(&v14->_logger, a4);
    objc_storeStrong(&v14->_progress, a5);
    v15 = [v10 userInfo];
    migrationContextUserInfo = v14->_migrationContextUserInfo;
    v14->_migrationContextUserInfo = v15;

    v17 = [v10 analyticsEventManager];
    analyticsEventManager = v14->_analyticsEventManager;
    v14->_analyticsEventManager = v17;

    [(PLModelMigrationActionCore *)v14 setup];
  }

  return v14;
}

@end