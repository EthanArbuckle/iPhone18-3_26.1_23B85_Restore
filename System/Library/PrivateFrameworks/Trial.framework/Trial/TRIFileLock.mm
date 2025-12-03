@interface TRIFileLock
+ ($A5A652246548B43F8BC05201A1C72A70)acquireLockOnPath:(id)path fileLockMode:(id)mode blocking:(BOOL)blocking andRunBlock:(id)block;
+ (int)_lockingFlagsFromFileLockMode:(id)mode;
@end

@implementation TRIFileLock

+ ($A5A652246548B43F8BC05201A1C72A70)acquireLockOnPath:(id)path fileLockMode:(id)mode blocking:(BOOL)blocking andRunBlock:(id)block
{
  blockingCopy = blocking;
  v34 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  blockCopy = block;
  v12 = objc_autoreleasePoolPush();
  v13 = [pathCopy stringByAppendingString:@".lock"];
  v14 = [self _lockingFlagsFromFileLockMode:mode.var0];
  if (blockingCopy)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 | 4;
  }

  if (mode.var0 == 1)
  {
    v17 = MEMORY[0x277CCAA00];
    stringByDeletingLastPathComponent = [v13 stringByDeletingLastPathComponent];
    LODWORD(v17) = [v17 triIdempotentCreateDirectoryOrFaultWithPath:stringByDeletingLastPathComponent];

    if (!v17)
    {
      goto LABEL_18;
    }

    v16 = open([v13 fileSystemRepresentation], v15 | 0x200, 432);
  }

  else
  {
    if (mode.var0)
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
        v29 = pathCopy;
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
  blockCopy[2](blockCopy, buf);
  objc_autoreleasePoolPop(v20);
  close(v19);
  v21.var0 = 0;
LABEL_19:

  objc_autoreleasePoolPop(v12);
  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (int)_lockingFlagsFromFileLockMode:(id)mode
{
  if (mode.var0)
  {
    return 32;
  }

  else
  {
    return 16;
  }
}

@end