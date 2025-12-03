@interface PLLibraryServicesOperation
+ (id)operationWithName:(id)name libraryServicesManager:(id)manager requiredState:(int64_t)state parentProgress:(id)progress executionBlock:(id)block;
- (NSString)statusDescription;
- (PLLibraryServicesOperation)initWithLogPrefix:(id)prefix;
- (id)debugDescription;
- (void)_runOperationBlock:(id)block;
- (void)setExecutionBlockFromOperationBlock:(id)block;
@end

@implementation PLLibraryServicesOperation

- (NSString)statusDescription
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(PLLibraryServicesOperation *)self name];
  progress = [(PLLibraryServicesOperation *)self progress];
  [progress fractionCompleted];
  v7 = v6;
  progressPercentOfTotal = [(PLLibraryServicesOperation *)self progressPercentOfTotal];
  [(PLLibraryServicesOperation *)self requiredState];
  v9 = PLStringFromLibraryServicesState();
  [(PLLibraryServicesOperation *)self qualityOfService];
  v10 = PLStringFromQualityOfService();
  v11 = [v3 stringWithFormat:@"'%@' (progress=%1.1f units=%ld req=%@ qos=%@)", name, v7, progressPercentOfTotal, v9, v10];

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = PLLibraryServicesOperation;
  v4 = [(PLLibraryServicesOperation *)&v10 description];
  progressPercentOfTotal = [(PLLibraryServicesOperation *)self progressPercentOfTotal];
  [(PLLibraryServicesOperation *)self requiredState];
  v6 = PLStringFromLibraryServicesState();
  [(PLLibraryServicesOperation *)self qualityOfService];
  v7 = PLStringFromQualityOfService();
  v8 = [v3 stringWithFormat:@"%@ progressUnits=%ld req=%@ qos=%@", v4, progressPercentOfTotal, v6, v7];

  return v8;
}

- (void)_runOperationBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  shouldSuppressLogging = [objc_opt_class() shouldSuppressLogging];
  [(PLLibraryServicesOperation *)self progress];
  *&v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v8 = v7;
  if ((shouldSuppressLogging & 1) == 0)
  {
    v9 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      logPrefix = [(PLLibraryServicesOperation *)self logPrefix];
      qos_class_self();
      PLStringFromQoSClass();
      v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v25 = 138543874;
      v26 = logPrefix;
      v27 = 2114;
      selfCopy2 = self;
      v29 = 2114;
      v30 = v11;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting operation %{public}@ with QoS %{public}@", &v25, 0x20u);
    }
  }

  [(PLLibraryServicesOperation *)v6 becomeCurrentWithPendingUnitCount:[(PLLibraryServicesOperation *)v6 totalUnitCount]];
  v12 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    logPrefix2 = [(PLLibraryServicesOperation *)self logPrefix];
    [(PLLibraryServicesOperation *)v6 localizedAdditionalDescription];
    v14 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v25 = 138543874;
    v26 = logPrefix2;
    v27 = 2048;
    selfCopy2 = v6;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: progress becoming current: %p %@", &v25, 0x20u);
  }

  blockCopy[2](blockCopy);
  if (*&v6 != 0.0)
  {
    currentProgress = [MEMORY[0x1E696AE38] currentProgress];

    if (currentProgress == v6)
    {
      [(PLLibraryServicesOperation *)v6 resignCurrent];
      v16 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        logPrefix3 = [(PLLibraryServicesOperation *)self logPrefix];
        [(PLLibraryServicesOperation *)v6 localizedAdditionalDescription];
        *&v18 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v25 = 138543874;
        v26 = logPrefix3;
        v27 = 2048;
        selfCopy2 = v6;
        v29 = 2112;
        v30 = *&v18;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: progress resigned current: %p %@", &v25, 0x20u);
        goto LABEL_13;
      }
    }

    else
    {
      v16 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        logPrefix3 = [(PLLibraryServicesOperation *)self logPrefix];
        [(PLLibraryServicesOperation *)self name];
        *&v18 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        currentProgress2 = [MEMORY[0x1E696AE38] currentProgress];
        v25 = 138544130;
        v26 = logPrefix3;
        v27 = 2114;
        selfCopy2 = v18;
        v29 = 2048;
        v30 = *&v6;
        v31 = 2048;
        v32 = currentProgress2;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_FAULT, "%{public}@: ERROR: LSM operation %{public}@ progress %p is no longer current %p", &v25, 0x2Au);

LABEL_13:
      }
    }
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  if ((shouldSuppressLogging & 1) == 0)
  {
    v21 = v20;
    v22 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      logPrefix4 = [(PLLibraryServicesOperation *)self logPrefix];
      qos_class_self();
      v24 = PLStringFromQoSClass();
      v25 = 138544130;
      v26 = logPrefix4;
      v27 = 2114;
      selfCopy2 = self;
      v29 = 2048;
      v30 = v21 - v8;
      v31 = 2114;
      v32 = v24;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Completed operation %{public}@ in %f seconds with QoS %{public}@", &v25, 0x2Au);
    }
  }
}

- (void)setExecutionBlockFromOperationBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PLLibraryServicesOperation_setExecutionBlockFromOperationBlock___block_invoke;
  v6[3] = &unk_1E7576850;
  objc_copyWeak(&v8, &location);
  v5 = blockCopy;
  v7 = v5;
  [(NSBlockOperation *)self addExecutionBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __66__PLLibraryServicesOperation_setExecutionBlockFromOperationBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _runOperationBlock:*(a1 + 32)];
}

- (PLLibraryServicesOperation)initWithLogPrefix:(id)prefix
{
  prefixCopy = prefix;
  v9.receiver = self;
  v9.super_class = PLLibraryServicesOperation;
  v5 = [(NSBlockOperation *)&v9 init];
  if (v5)
  {
    v6 = [prefixCopy copy];
    logPrefix = v5->_logPrefix;
    v5->_logPrefix = v6;
  }

  return v5;
}

+ (id)operationWithName:(id)name libraryServicesManager:(id)manager requiredState:(int64_t)state parentProgress:(id)progress executionBlock:(id)block
{
  v35 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  managerCopy = manager;
  progressCopy = progress;
  blockCopy = block;
  v15 = [PLLibraryServicesOperation alloc];
  logPrefix = [managerCopy logPrefix];
  v17 = [(PLLibraryServicesOperation *)v15 initWithLogPrefix:logPrefix];

  [(PLLibraryServicesOperation *)v17 setName:nameCopy];
  [(PLLibraryServicesOperation *)v17 setRequiredState:state];
  v18 = PLProgressPercentForOperationName();
  [(PLLibraryServicesOperation *)v17 setProgressPercentOfTotal:v18];
  v19 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
  [(PLLibraryServicesOperation *)v17 setProgress:v19];

  progress = [(PLLibraryServicesOperation *)v17 progress];
  [progressCopy addChild:progress withPendingUnitCount:v18];

  v21 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    progress2 = [(PLLibraryServicesOperation *)v17 progress];
    *buf = 138412546;
    v32 = nameCopy;
    v33 = 2048;
    v34 = progress2;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "operation %@ progress: %p", buf, 0x16u);
  }

  objc_initWeak(buf, managerCopy);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__PLLibraryServicesOperation_operationWithName_libraryServicesManager_requiredState_parentProgress_executionBlock___block_invoke;
  aBlock[3] = &unk_1E7575F78;
  objc_copyWeak(&v30, buf);
  v23 = blockCopy;
  v29 = v23;
  v24 = nameCopy;
  v28 = v24;
  v25 = _Block_copy(aBlock);
  [(PLLibraryServicesOperation *)v17 setExecutionBlockFromOperationBlock:v25];

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);

  return v17;
}

void __115__PLLibraryServicesOperation_operationWithName_libraryServicesManager_requiredState_parentProgress_executionBlock___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "LSM is nil, not executing operation %@", &v5, 0xCu);
    }
  }
}

@end