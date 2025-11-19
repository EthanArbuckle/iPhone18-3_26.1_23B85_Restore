@interface TRIFileLock
+ ($A5A652246548B43F8BC05201A1C72A70)acquireLockOnPath:(id)a3 fileLockMode:(id)a4 blocking:(BOOL)a5 andRunBlock:(id)a6;
+ (int)_lockingFlagsFromFileLockMode:(id)a3;
@end

@implementation TRIFileLock

+ ($A5A652246548B43F8BC05201A1C72A70)acquireLockOnPath:(id)a3 fileLockMode:(id)a4 blocking:(BOOL)a5 andRunBlock:(id)a6
{
  v7 = a5;
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v13 = [v10 stringByAppendingString:@".lock"];
  v14 = [a1 _lockingFlagsFromFileLockMode:a4.var0];
  if (v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 | 4;
  }

  if (a4.var0 == 1)
  {
    v17 = MEMORY[0x277CCAA00];
    v18 = [v13 stringByDeletingLastPathComponent];
    LODWORD(v17) = [v17 triIdempotentCreateDirectoryOrFaultWithPath:v18];

    if (!v17)
    {
      goto LABEL_18;
    }

    v16 = open([v13 fileSystemRepresentation], v15 | 0x200, 432);
  }

  else
  {
    if (a4.var0)
    {
LABEL_11:
      if (*__error() == 2)
      {
        v21.var0 = 1;
        goto LABEL_19;
      }

      if (*__error() == 35)
      {
        v21.var0 = 2;
        goto LABEL_19;
      }

      v22 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v25 = __error();
        v26 = strerror(*v25);
        v27 = *__error();
        *buf = 138412802;
        v29 = v10;
        v30 = 2080;
        v31 = v26;
        v32 = 1024;
        v33 = v27;
        _os_log_error_impl(&dword_22EA6B000, v22, OS_LOG_TYPE_ERROR, "Failed to open lock on path %@: %s (%d)", buf, 0x1Cu);
      }

LABEL_18:
      v21.var0 = 3;
      goto LABEL_19;
    }

    v16 = open([v13 fileSystemRepresentation], v15);
  }

  v19 = v16;
  if (v16 < 0)
  {
    goto LABEL_11;
  }

  v20 = objc_autoreleasePoolPush();
  *buf = v19;
  v11[2](v11, buf);
  objc_autoreleasePoolPop(v20);
  close(v19);
  v21.var0 = 0;
LABEL_19:

  objc_autoreleasePoolPop(v12);
  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (int)_lockingFlagsFromFileLockMode:(id)a3
{
  if (a3.var0)
  {
    return 32;
  }

  else
  {
    return 16;
  }
}

@end