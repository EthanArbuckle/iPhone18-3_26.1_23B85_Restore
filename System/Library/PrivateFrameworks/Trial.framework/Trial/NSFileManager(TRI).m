@interface NSFileManager(TRI)
+ (id)triArbitraryFileInDirWithPath:()TRI;
+ (uint64_t)triHasFileProtection:()TRI;
+ (uint64_t)triIdempotentCreateDirectoryOrFaultWithPath:()TRI;
+ (uint64_t)triRemoveFileProtectionIfPresentForPath:()TRI;
- (__CFString)triPath:()TRI relativeToParentPath:;
- (id)triCreateDirectoryForPath:()TRI isDirectory:error:;
- (uint64_t)triRemoveItemAtPath:()TRI error:;
- (uint64_t)triSafeCopyItemAtPath:()TRI toPath:error:;
@end

@implementation NSFileManager(TRI)

- (uint64_t)triSafeCopyItemAtPath:()TRI toPath:error:
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 length] && objc_msgSend(v9, "length"))
  {
    v10 = [a1 copyItemAtPath:v8 toPath:v9 error:a5];
    v11 = v10;
    if (a5 && v10)
    {
      *a5 = 0;
      v11 = 1;
    }
  }

  else
  {
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:-22 userInfo:0];
    }

    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "attempted to copy with invalid paths src:%@ dst:%@", &v15, 0x16u);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (__CFString)triPath:()TRI relativeToParentPath:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 stringByStandardizingPath];
  v7 = [v5 stringByStandardizingPath];

  if (([v6 hasPrefix:v7] & 1) == 0)
  {
    v8 = [v6 triStringByResolvingSymlinksInPath];

    v9 = [v7 triStringByResolvingSymlinksInPath];

    v7 = v9;
    v6 = v8;
  }

  if ([v6 hasPrefix:v7])
  {
    v10 = [v6 pathComponents];
    v11 = [v7 pathComponents];
    v12 = [v10 count];
    if (v12 == [v11 count])
    {
      v13 = @".";
    }

    else
    {
      v15 = [v10 subarrayWithRange:{objc_msgSend(v11, "count"), objc_msgSend(v10, "count") - objc_msgSend(v11, "count")}];
      v13 = [MEMORY[0x277CCACA8] pathWithComponents:v15];
    }
  }

  else
  {
    v14 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_error_impl(&dword_22EA6B000, v14, OS_LOG_TYPE_ERROR, "expected path to be a prefix of parent path: path=%@, parent=%@", &v18, 0x16u);
    }

    v13 = v6;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)triCreateDirectoryForPath:()TRI isDirectory:error:
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v8 stringByDeletingLastPathComponent];
  }

  v11 = v10;
  v22 = 0;
  if (([a1 fileExistsAtPath:v10 isDirectory:&v22] & 1) == 0)
  {
    v21 = 0;
    v13 = [a1 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v21];
    v14 = v21;
    v15 = v14;
    if ((v13 & 1) == 0)
    {
      v17 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v24 = v11;
        v25 = 2112;
        v26 = v9;
        v27 = 2112;
        v28 = v15;
        _os_log_error_impl(&dword_22EA6B000, v17, OS_LOG_TYPE_ERROR, "could not create directory %@ for path %@ -- %@", buf, 0x20u);
      }

      if (a5)
      {
        v18 = v15;
        *a5 = v15;
      }

      goto LABEL_17;
    }

LABEL_11:
    v16 = v11;
    goto LABEL_18;
  }

  if (v22)
  {
    goto LABEL_11;
  }

  v12 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v24 = v11;
    v25 = 2112;
    v26 = v9;
    _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "could not create directory %@ for path %@ -- file exists", buf, 0x16u);
  }

LABEL_17:
  v16 = 0;
LABEL_18:

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (uint64_t)triRemoveItemAtPath:()TRI error:
{
  v34[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"NSFileManager+TRI.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v32 = 0;
  if (![a1 fileExistsAtPath:v7 isDirectory:&v32])
  {
    v15 = 1;
    goto LABEL_19;
  }

  if (v32 != 1)
  {
LABEL_18:
    v15 = [a1 removeItemAtPath:v7 error:a4];
    goto LABEL_19;
  }

  memset(&v31, 0, sizeof(v31));
  if (!stat([v7 fileSystemRepresentation], &v31))
  {
    chmod([v7 fileSystemRepresentation], v31.st_mode & 0x16F | 0x90);
    v16 = [a1 enumeratorAtPath:v7];
    v17 = objc_autoreleasePoolPush();
    v18 = [v16 nextObject];
    if (v18)
    {
      v19 = v18;
      v20 = *MEMORY[0x277CCA1E0];
      v21 = *MEMORY[0x277CCA1E8];
      v30 = *MEMORY[0x277CCA180];
      do
      {
        v22 = [v16 fileAttributes];
        v23 = [v22 objectForKeyedSubscript:v20];

        if (v23 == v21)
        {
          v24 = [v16 fileAttributes];
          v25 = [v24 objectForKeyedSubscript:v30];

          if (v25)
          {
            v26 = [v7 stringByAppendingPathComponent:v19];
            chmod([v26 fileSystemRepresentation], objc_msgSend(v25, "unsignedShortValue") | 0x90);
          }
        }

        objc_autoreleasePoolPop(v17);
        v17 = objc_autoreleasePoolPush();
        v19 = [v16 nextObject];
      }

      while (v19);
    }

    objc_autoreleasePoolPop(v17);

    goto LABEL_18;
  }

  if (a4)
  {
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = *MEMORY[0x277CCA5B8];
    v10 = *__error();
    v33 = *MEMORY[0x277CCA450];
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = __error();
    v13 = [v11 initWithFormat:@"Could not stat %@: %s", v7, strerror(*v12)];
    v34[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    *a4 = [v8 initWithDomain:v9 code:v10 userInfo:v14];
  }

  v15 = 0;
LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (uint64_t)triHasFileProtection:()TRI
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = open([v3 fileSystemRepresentation], 0);
  if (v4 < 0)
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = __error();
      v12 = strerror(*v11);
      v13 = *__error();
      v17 = 138543874;
      v18 = v3;
      v19 = 2080;
      v20 = v12;
      v21 = 1024;
      v22 = v13;
      v10 = "Unable to open %{public}@ to get file protection: %s (%d)";
      goto LABEL_8;
    }

LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v5 = v4;
  v6 = fcntl(v4, 63);
  close(v5);
  v7 = *__error();
  v8 = TRILogCategory_Server();
  v9 = v8;
  if (v6 == 4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v17 = 138543362;
      v18 = v3;
      _os_log_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_INFO, "File %{public}@ has no file protection already", &v17, 0xCu);
    }

    goto LABEL_11;
  }

  if (v6 == -1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543874;
      v18 = v3;
      v19 = 2080;
      v20 = strerror(v7);
      v21 = 1024;
      v22 = v7;
      v10 = "Failed to get protection class for file %{public}@: %s (%d)";
LABEL_8:
      _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, v10, &v17, 0x1Cu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v14 = 1;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v17 = 138543618;
    v18 = v3;
    v19 = 1024;
    LODWORD(v20) = v6;
    _os_log_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_INFO, "File %{public}@ has file protection class %d", &v17, 0x12u);
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (uint64_t)triRemoveFileProtectionIfPresentForPath:()TRI
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([a1 triHasFileProtection:v4])
  {
    v5 = open([v4 fileSystemRepresentation], 2);
    if (v5 < 0)
    {
      if (*__error() != 21 || (v5 = open([v4 fileSystemRepresentation], 0), v5 < 0))
      {
        v10 = TRILogCategory_Server();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = __error();
          v12 = strerror(*v11);
          v13 = *__error();
          *buf = 138543874;
          v18 = v4;
          v19 = 2080;
          v20 = v12;
          v21 = 1024;
          v22 = v13;
          v14 = "Unable to open %{public}@ to set file protection: %s (%d)";
LABEL_13:
          _os_log_error_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_ERROR, v14, buf, 0x1Cu);
          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    v6 = v5;
    v7 = fcntl(v5, 64, 4);
    v8 = *__error();
    close(v6);
    if (v7 == -1)
    {
      v10 = TRILogCategory_Server();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v18 = v4;
        v19 = 2080;
        v20 = strerror(v8);
        v21 = 1024;
        v22 = v8;
        v14 = "Unable to disable file protection on %{public}@: %s (%d)";
        goto LABEL_13;
      }

LABEL_10:

      v9 = 0;
      goto LABEL_11;
    }
  }

  v9 = 1;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (uint64_t)triIdempotentCreateDirectoryOrFaultWithPath:()TRI
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v11 = 0;
  v6 = [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v11];

  v7 = v11;
  if ((v6 & 1) == 0)
  {
    v8 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_error_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_ERROR, "Failed to create directory: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)triArbitraryFileInDirWithPath:()TRI
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 enumeratorAtPath:v3];

  v6 = objc_autoreleasePoolPush();
  v7 = [v5 nextObject];
  if (v7)
  {
    v8 = v7;
    v9 = *MEMORY[0x277CCA1F0];
    while (1)
    {
      v10 = [v5 fileAttributes];
      v11 = [v10 fileType];

      if (v11 == v9)
      {
        break;
      }

      objc_autoreleasePoolPop(v6);
      v6 = objc_autoreleasePoolPush();
      v8 = [v5 nextObject];
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v12 = [v3 stringByAppendingPathComponent:v8];
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  objc_autoreleasePoolPop(v6);

  return v12;
}

@end