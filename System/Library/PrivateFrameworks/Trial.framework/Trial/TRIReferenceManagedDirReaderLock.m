@interface TRIReferenceManagedDirReaderLock
- (TRIReferenceManagedDirReaderLock)initWithDir:(id)a3;
- (void)dealloc;
@end

@implementation TRIReferenceManagedDirReaderLock

void __42__TRIReferenceManagedDirReaderLock_unlock__block_invoke(uint64_t a1, int *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2[2];
  if ((v2 & 0x80000000) == 0)
  {
    v4 = a2;
    if (flock(v2, 8))
    {
      v5 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = __error();
        v8 = strerror(*v7);
        v9 = *__error();
        v10 = 136315394;
        v11 = v8;
        v12 = 1024;
        v13 = v9;
        _os_log_error_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_ERROR, "Unable to unlock managed-directory: %s (%d)", &v10, 0x12u);
      }
    }

    close(a2[2]);
    a2[2] = -1;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(TRIReferenceManagedDirReaderLock *)self unlock];
  v3.receiver = self;
  v3.super_class = TRIReferenceManagedDirReaderLock;
  [(TRIReferenceManagedDirReaderLock *)&v3 dealloc];
}

- (TRIReferenceManagedDirReaderLock)initWithDir:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDirReaderLock.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"dir"}];
  }

  v28.receiver = self;
  v28.super_class = TRIReferenceManagedDirReaderLock;
  v7 = [(TRIReferenceManagedDirReaderLock *)&v28 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v7->_dir, a3);
  v9 = open([(NSString *)v8->_dir fileSystemRepresentation], 0x100000);
  if (v9 < 0)
  {
    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      dir = v8->_dir;
      v24 = __error();
      v25 = strerror(*v24);
      v26 = *__error();
      *buf = 138412802;
      v30 = dir;
      v31 = 2080;
      v32 = v25;
      v33 = 1024;
      v34 = v26;
      _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "Unable to open managed-directory %@ to acquire lock: %s (%d)", buf, 0x1Cu);
    }

    goto LABEL_12;
  }

  v10 = v9;
  if (!flock(v9, 5))
  {
    v14 = objc_opt_new();
    v14[2] = v10;
    v15 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v14];
    lock = v8->_lock;
    v8->_lock = v15;

LABEL_14:
    v13 = v8;
    goto LABEL_15;
  }

  v11 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v19 = v8->_dir;
    v20 = __error();
    v21 = strerror(*v20);
    v22 = *__error();
    *buf = 138412802;
    v30 = v19;
    v31 = 2080;
    v32 = v21;
    v33 = 1024;
    v34 = v22;
    _os_log_error_impl(&dword_22EA6B000, v11, OS_LOG_TYPE_ERROR, "Unable to acquire shared lock on managed-directory %@: %s (%d). Please check for sandboxing errors if you see this repeatedly.", buf, 0x1Cu);
  }

  close(v10);
LABEL_12:
  v13 = 0;
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

@end