@interface UNCFileHandleContentProtectionStrategy
- (BOOL)dataIsAvailableAtPath:(id)path;
- (BOOL)removeAllDataAtPath:(id)path error:(id *)error;
- (BOOL)removeItemAtPath:(id)path error:(id *)error;
- (BOOL)writeData:(id)data atPath:(id)path error:(id *)error;
- (UNCFileHandleContentProtectionStrategy)initWithFileProtectionType:(id)type excludeFromBackup:(BOOL)backup;
- (id)_fileHandleForCreatingStoreAtPath:(id)path protectionType:(id)type;
- (id)allDataAtPath:(id)path;
- (id)dataAtPath:(id)path;
- (void)_excludeItemFromBackupAtPath:(id)path;
- (void)migrateDataAtPath:(id)path toPath:(id)toPath;
@end

@implementation UNCFileHandleContentProtectionStrategy

- (UNCFileHandleContentProtectionStrategy)initWithFileProtectionType:(id)type excludeFromBackup:(BOOL)backup
{
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = UNCFileHandleContentProtectionStrategy;
  v8 = [(UNCFileHandleContentProtectionStrategy *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_excludeFromBackup = backup;
    objc_storeStrong(&v8->_fileProtectionType, type);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    keyedFileHandles = v9->_keyedFileHandles;
    v9->_keyedFileHandles = v10;
  }

  return v9;
}

- (id)allDataAtPath:(id)path
{
  v41 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(UNCFileHandleContentProtectionStrategy *)self dataAtPath:pathCopy];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  stringByDeletingPathExtension = [pathCopy stringByDeletingPathExtension];
  stringByDeletingLastPathComponent = [stringByDeletingPathExtension stringByDeletingLastPathComponent];
  v9 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"staging"];

  if ([defaultManager fileExistsAtPath:v9])
  {
    v27 = defaultManager;
    v28 = v5;
    v35 = 0;
    v26 = v9;
    v10 = [defaultManager unc_contentsSortedByLastModificationDateOfDirectoryAtPath:v9 error:&v35];
    v25 = v35;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        v15 = 0;
        do
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * v15);
          v17 = [(NSMutableDictionary *)self->_keyedFileHandles objectForKey:pathCopy, v25];
          path = [v17 path];
          v19 = [v16 isEqualToString:path];

          if ((v19 & 1) == 0)
          {
            v30 = 0;
            v20 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v16 options:0 error:&v30];
            v21 = v30;
            if (v20)
            {
              [v29 addObject:v20];
            }

            else
            {
              v22 = *MEMORY[0x1E6983368];
              if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v37 = pathCopy;
                v38 = 2114;
                v39 = v21;
                _os_log_error_impl(&dword_1DA7A9000, v22, OS_LOG_TYPE_ERROR, "Could not access data at %{public}@: %{public}@", buf, 0x16u);
              }
            }
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v13);
    }

    defaultManager = v27;
    v5 = v28;
    v9 = v26;
  }

  if (v5)
  {
    [v29 addObject:v5];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v29;
}

- (BOOL)removeAllDataAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  if ([(UNCFileHandleContentProtectionStrategy *)self removeItemAtPath:pathCopy error:error])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    stringByDeletingPathExtension = [pathCopy stringByDeletingPathExtension];
    stringByDeletingLastPathComponent = [stringByDeletingPathExtension stringByDeletingLastPathComponent];
    v10 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"staging"];

    if ([defaultManager fileExistsAtPath:v10] && (objc_msgSend(defaultManager, "removeItemAtPath:error:", v10, error) & 1) == 0)
    {
      if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
      {
        [UNCFileHandleContentProtectionStrategy removeAllDataAtPath:pathCopy error:error];
      }

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)dataIsAvailableAtPath:(id)path
{
  v3 = [(NSMutableDictionary *)self->_keyedFileHandles objectForKey:path];
  v4 = v3 != 0;

  return v4;
}

- (id)dataAtPath:(id)path
{
  v3 = [(NSMutableDictionary *)self->_keyedFileHandles objectForKey:path];
  fileHandle = [v3 fileHandle];

  [fileHandle seekToFileOffset:0];
  availableData = [fileHandle availableData];
  if ([availableData length])
  {
    v6 = availableData;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (BOOL)writeData:(id)data atPath:(id)path error:(id *)error
{
  dataCopy = data;
  pathCopy = path;
  v9 = [(NSMutableDictionary *)self->_keyedFileHandles objectForKey:pathCopy];
  if (!v9)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    stringByDeletingPathExtension = [pathCopy stringByDeletingPathExtension];
    stringByDeletingLastPathComponent = [stringByDeletingPathExtension stringByDeletingLastPathComponent];
    fileHandle = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"staging"];

    if (([defaultManager fileExistsAtPath:fileHandle] & 1) == 0)
    {
      v24 = 0;
      [defaultManager createDirectoryAtPath:fileHandle withIntermediateDirectories:1 attributes:0 error:&v24];
      v14 = v24;
      if (v14 && os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
      {
        [UNCFileHandleContentProtectionStrategy writeData:atPath:error:];
      }
    }

    if (self->_excludeFromBackup)
    {
      [(UNCFileHandleContentProtectionStrategy *)self _excludeItemFromBackupAtPath:fileHandle];
    }

    lastPathComponent = [pathCopy lastPathComponent];
    stringByDeletingPathExtension2 = [lastPathComponent stringByDeletingPathExtension];
    v17 = [stringByDeletingPathExtension2 stringByAppendingString:@"XXXXXX"];
    v18 = [fileHandle stringByAppendingPathComponent:v17];

    v19 = [(UNCFileHandleContentProtectionStrategy *)self _fileHandleForCreatingStoreAtPath:v18 protectionType:self->_fileProtectionType];
    if (!v19)
    {

      v22 = 0;
      v9 = defaultManager;
      goto LABEL_14;
    }

    v9 = v19;
    [(NSMutableDictionary *)self->_keyedFileHandles setObject:v19 forKey:pathCopy];
    if (self->_excludeFromBackup)
    {
      path = [v9 path];
      [(UNCFileHandleContentProtectionStrategy *)self _excludeItemFromBackupAtPath:path];
    }
  }

  fileHandle = [v9 fileHandle];
  [fileHandle truncateFileAtOffset:0];
  [fileHandle writeData:dataCopy];
  fileHandle2 = [v9 fileHandle];
  [fileHandle2 synchronizeFile];

  v22 = 1;
LABEL_14:

  return v22;
}

- (BOOL)removeItemAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [(NSMutableDictionary *)self->_keyedFileHandles objectForKey:pathCopy];
  if (v8)
  {
    [(NSMutableDictionary *)self->_keyedFileHandles removeObjectForKey:pathCopy];
    fileHandle = [v8 fileHandle];
    [fileHandle synchronizeFile];

    fileHandle2 = [v8 fileHandle];
    [fileHandle2 closeFile];

    path = [v8 path];

    if ([defaultManager fileExistsAtPath:path] && (objc_msgSend(defaultManager, "removeItemAtPath:error:", path, error) & 1) == 0)
    {
      if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
      {
        [UNCFileHandleContentProtectionStrategy removeAllDataAtPath:path error:error];
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    if ([defaultManager fileExistsAtPath:pathCopy] && (objc_msgSend(defaultManager, "removeItemAtPath:error:", pathCopy, error) & 1) == 0)
    {
      if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
      {
        [UNCFileHandleContentProtectionStrategy removeAllDataAtPath:pathCopy error:error];
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    path = pathCopy;
  }

  return v12;
}

- (void)migrateDataAtPath:(id)path toPath:(id)toPath
{
  v22 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  toPathCopy = toPath;
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:pathCopy];
  v15 = 0;
  [(UNCFileHandleContentProtectionStrategy *)self writeData:v8 atPath:toPathCopy error:&v15];
  v9 = v15;
  if (v9)
  {
    v10 = v9;
    v11 = *MEMORY[0x1E6983380];
    if (os_log_type_enabled(*MEMORY[0x1E6983380], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v17 = pathCopy;
      v18 = 2114;
      v19 = toPathCopy;
      v20 = 2114;
      v21 = v10;
      _os_log_error_impl(&dword_1DA7A9000, v11, OS_LOG_TYPE_ERROR, "Migrating repository from: %{public}@ to: %{public}@ failed %{public}@", buf, 0x20u);
    }

LABEL_7:

    goto LABEL_8;
  }

  v14 = 0;
  [(UNCFileHandleContentProtectionStrategy *)self removeItemAtPath:pathCopy error:&v14];
  v12 = v14;
  if (v12)
  {
    v10 = v12;
    if (os_log_type_enabled(*MEMORY[0x1E6983380], OS_LOG_TYPE_ERROR))
    {
      [UNCFileHandleContentProtectionStrategy migrateDataAtPath:toPath:];
    }

    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_fileHandleForCreatingStoreAtPath:(id)path protectionType:(id)type
{
  pathCopy = path;
  typeCopy = type;
  if ([typeCopy isEqual:*MEMORY[0x1E696A378]])
  {
    v7 = 1;
  }

  else if ([typeCopy isEqual:*MEMORY[0x1E696A380]])
  {
    v7 = 2;
  }

  else if ([typeCopy isEqual:*MEMORY[0x1E696A388]])
  {
    v7 = 3;
  }

  else
  {
    if (![typeCopy isEqual:*MEMORY[0x1E696A3A8]])
    {
      goto LABEL_14;
    }

    v7 = 4;
  }

  v8 = [pathCopy lengthOfBytesUsingEncoding:4];
  v9 = malloc_type_malloc(v8 + 1, 0x983BEACDuLL);
  if ([pathCopy getCString:v9 maxLength:v8 + 1 encoding:4])
  {
    v10 = mkstemp_dprotected_np(v9, v7, 0);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v10];
      if (v11)
      {
        v12 = objc_alloc_init(UNSFileHandleWrapper);
        [(UNSFileHandleWrapper *)v12 setFileHandle:v11];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
        [(UNSFileHandleWrapper *)v12 setPath:v13];
      }

      else
      {
        v12 = 0;
      }

      free(v9);

      goto LABEL_17;
    }
  }

  free(v9);
LABEL_14:
  v12 = 0;
LABEL_17:

  return v12;
}

- (void)_excludeItemFromBackupAtPath:(id)path
{
  pathCopy = path;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
  v5 = *MEMORY[0x1E695DB80];
  v8 = 0;
  v6 = [v4 setResourceValue:MEMORY[0x1E695E118] forKey:v5 error:&v8];
  v7 = v8;
  if ((v6 & 1) == 0 && os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
  {
    [UNCFileHandleContentProtectionStrategy _excludeItemFromBackupAtPath:];
  }
}

- (void)removeAllDataAtPath:(uint64_t)a1 error:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, v3, v4, "Could not delete %{public}@: %{public}@");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)writeData:atPath:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, v0, v1, "Could not create directory at %{public}@; error: %{public}@ for protection");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)writeData:(void *)a1 atPath:(uint64_t)a2 error:(uint64_t)a3 .cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = objc_begin_catch(a1);
  v5 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
  {
    v7 = 138543618;
    v8 = a3;
    v9 = 2114;
    v10 = v4;
    _os_log_error_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_ERROR, "Exception caught data at %{public}@; exception: %{public}@", &v7, 0x16u);
  }

  objc_end_catch();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)migrateDataAtPath:toPath:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, v0, v1, "Removing migrated repository from: %{public}@ failed %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_excludeItemFromBackupAtPath:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, v0, v1, "Could not set 'exclude from backup' key on %{public}@; error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end