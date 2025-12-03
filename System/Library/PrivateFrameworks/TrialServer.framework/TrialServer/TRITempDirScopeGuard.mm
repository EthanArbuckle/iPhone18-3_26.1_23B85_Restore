@interface TRITempDirScopeGuard
+ (BOOL)ifUnreferencedCleanupPath:(id)path;
+ (id)refCountsLock;
- (BOOL)dispose;
- (TRITempDirScopeGuard)initWithPath:(id)path;
- (void)dealloc;
@end

@implementation TRITempDirScopeGuard

+ (id)refCountsLock
{
  if (qword_281597890 != -1)
  {
    dispatch_once(&qword_281597890, &__block_literal_global_48);
  }

  v3 = _MergedGlobals_41;

  return v3;
}

void __37__TRITempDirScopeGuard_refCountsLock__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277D425F8]);
  v2 = objc_opt_new();
  v3 = [v1 initWithGuardedData:v2];
  v4 = _MergedGlobals_41;
  _MergedGlobals_41 = v3;

  objc_autoreleasePoolPop(v0);
}

- (TRITempDirScopeGuard)initWithPath:(id)path
{
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = TRITempDirScopeGuard;
  v6 = [(TRITempDirScopeGuard *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, path);
    refCountsLock = [objc_opt_class() refCountsLock];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __37__TRITempDirScopeGuard_initWithPath___block_invoke;
    v12[3] = &unk_279DE5668;
    v13 = pathCopy;
    v15 = &v16;
    v9 = v7;
    v14 = v9;
    [refCountsLock runWithLockAcquired:v12];
    if ((v17[3] & 1) == 0)
    {
      v9->_isDisposed = 1;

      _Block_object_dispose(&v16, 8);
      v10 = 0;
      goto LABEL_6;
    }

    _Block_object_dispose(&v16, 8);
  }

  v10 = v7;
LABEL_6:

  return v10;
}

void __37__TRITempDirScopeGuard_initWithPath___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:*(a1 + 32)] & 1) == 0)
  {
LABEL_12:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_13;
  }

  bzero(v26, 0x400uLL);
  *__error() = 0;
  v4 = realpath_DARWIN_EXTSN([*(a1 + 32) fileSystemRepresentation], v26);
  if (!v4)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = __error();
      v18 = strerror(*v17);
      v19 = *__error();
      v20 = 138543874;
      v21 = v16;
      v22 = 2080;
      v23 = v18;
      v24 = 1024;
      v25 = v19;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Unable to canonicalize %{public}@: %s (%d)", &v20, 0x1Cu);
    }

    goto LABEL_12;
  }

  v5 = v4;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v4];
  if (!v6)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = v5;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Canonicalized path is not Unicode: %s", &v20, 0xCu);
    }

    goto LABEL_12;
  }

  v7 = *(a1 + 40);
  v8 = *(v7 + 24);
  *(v7 + 24) = v6;

  v9 = [*(a1 + 40) canonicalPath];
  v10 = [v3 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "intValue") + 1}];
    v12 = [*(a1 + 40) canonicalPath];
    [v3 setObject:v11 forKeyedSubscript:v12];
  }

  else
  {
    v11 = [*(a1 + 40) canonicalPath];
    [v3 setObject:&unk_287FC4E10 forKeyedSubscript:v11];
  }

LABEL_13:
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)dispose
{
  refCountsLock = [objc_opt_class() refCountsLock];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__TRITempDirScopeGuard_dispose__block_invoke;
  v6[3] = &unk_279DE5690;
  v6[5] = &v7;
  v6[6] = a2;
  v6[4] = self;
  [refCountsLock runWithLockAcquired:v6];
  LOBYTE(a2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return a2;
}

void __31__TRITempDirScopeGuard_dispose__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if ((v4[8] & 1) == 0)
  {
    v5 = [v4 canonicalPath];
    v6 = [v3 objectForKeyedSubscript:v5];

    if (!v6)
    {
      v19 = [MEMORY[0x277CCA890] currentHandler];
      [v19 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRITempDirScopeGuard.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"prevRefCountBoxed != nil"}];
    }

    v7 = [v6 intValue];
    if (v7 > 1)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInt:(v7 - 1)];
      v16 = [*(a1 + 32) canonicalPath];
      [v3 setObject:v14 forKeyedSubscript:v16];
    }

    else
    {
      v8 = TRILogCategory_Server();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [*(a1 + 32) path];
        *buf = 138543362;
        v22 = v9;
        _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_INFO, "TRITempDirScopeGuard cleaning up: %{public}@", buf, 0xCu);
      }

      v10 = [*(a1 + 32) canonicalPath];
      [v3 setObject:0 forKeyedSubscript:v10];

      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = [*(a1 + 32) path];
      v20 = 0;
      v13 = [v11 triForceRemoveItemAtPath:v12 error:&v20];
      v14 = v20;

      if ((v13 & 1) == 0)
      {
        v15 = TRILogCategory_Server();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v18 = [*(a1 + 32) path];
          *buf = 138543618;
          v22 = v18;
          v23 = 2114;
          v24 = v14;
          _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "TRITempDirScopeGuard failed to clean up %{public}@: %{public}@", buf, 0x16u);
        }

        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }

    *(*(a1 + 32) + 8) = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(TRITempDirScopeGuard *)self dispose];
  v3.receiver = self;
  v3.super_class = TRITempDirScopeGuard;
  [(TRITempDirScopeGuard *)&v3 dealloc];
}

+ (BOOL)ifUnreferencedCleanupPath:(id)path
{
  pathCopy = path;
  v4 = [[TRITempDirScopeGuard alloc] initWithPath:pathCopy];

  if (v4)
  {
    dispose = [(TRITempDirScopeGuard *)v4 dispose];
  }

  else
  {
    dispose = 0;
  }

  return dispose;
}

@end