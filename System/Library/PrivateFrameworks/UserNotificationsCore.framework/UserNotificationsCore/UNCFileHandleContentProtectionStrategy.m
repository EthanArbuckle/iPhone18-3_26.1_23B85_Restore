@interface UNCFileHandleContentProtectionStrategy
- (BOOL)dataIsAvailableAtPath:(id)a3;
- (BOOL)removeAllDataAtPath:(id)a3 error:(id *)a4;
- (BOOL)removeItemAtPath:(id)a3 error:(id *)a4;
- (BOOL)writeData:(id)a3 atPath:(id)a4 error:(id *)a5;
- (UNCFileHandleContentProtectionStrategy)initWithFileProtectionType:(id)a3 excludeFromBackup:(BOOL)a4;
- (id)_fileHandleForCreatingStoreAtPath:(id)a3 protectionType:(id)a4;
- (id)allDataAtPath:(id)a3;
- (id)dataAtPath:(id)a3;
- (void)_excludeItemFromBackupAtPath:(id)a3;
- (void)migrateDataAtPath:(id)a3 toPath:(id)a4;
@end

@implementation UNCFileHandleContentProtectionStrategy

- (UNCFileHandleContentProtectionStrategy)initWithFileProtectionType:(id)a3 excludeFromBackup:(BOOL)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = UNCFileHandleContentProtectionStrategy;
  v8 = [(UNCFileHandleContentProtectionStrategy *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_excludeFromBackup = a4;
    objc_storeStrong(&v8->_fileProtectionType, a3);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    keyedFileHandles = v9->_keyedFileHandles;
    v9->_keyedFileHandles = v10;
  }

  return v9;
}

- (id)allDataAtPath:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(UNCFileHandleContentProtectionStrategy *)self dataAtPath:v4];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v4 stringByDeletingPathExtension];
  v8 = [v7 stringByDeletingLastPathComponent];
  v9 = [v8 stringByAppendingPathComponent:@"staging"];

  if ([v6 fileExistsAtPath:v9])
  {
    v27 = v6;
    v28 = v5;
    v35 = 0;
    v26 = v9;
    v10 = [v6 unc_contentsSortedByLastModificationDateOfDirectoryAtPath:v9 error:&v35];
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
          v17 = [(NSMutableDictionary *)self->_keyedFileHandles objectForKey:v4, v25];
          v18 = [v17 path];
          v19 = [v16 isEqualToString:v18];

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
                v37 = v4;
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

    v6 = v27;
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

- (BOOL)removeAllDataAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(UNCFileHandleContentProtectionStrategy *)self removeItemAtPath:v6 error:a4])
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v6 stringByDeletingPathExtension];
    v9 = [v8 stringByDeletingLastPathComponent];
    v10 = [v9 stringByAppendingPathComponent:@"staging"];

    if ([v7 fileExistsAtPath:v10] && (objc_msgSend(v7, "removeItemAtPath:error:", v10, a4) & 1) == 0)
    {
      if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
      {
        [UNCFileHandleContentProtectionStrategy removeAllDataAtPath:v6 error:a4];
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

- (BOOL)dataIsAvailableAtPath:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_keyedFileHandles objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)dataAtPath:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_keyedFileHandles objectForKey:a3];
  v4 = [v3 fileHandle];

  [v4 seekToFileOffset:0];
  v5 = [v4 availableData];
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (BOOL)writeData:(id)a3 atPath:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(NSMutableDictionary *)self->_keyedFileHandles objectForKey:v8];
  if (!v9)
  {
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v8 stringByDeletingPathExtension];
    v12 = [v11 stringByDeletingLastPathComponent];
    v13 = [v12 stringByAppendingPathComponent:@"staging"];

    if (([v10 fileExistsAtPath:v13] & 1) == 0)
    {
      v24 = 0;
      [v10 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v24];
      v14 = v24;
      if (v14 && os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
      {
        [UNCFileHandleContentProtectionStrategy writeData:atPath:error:];
      }
    }

    if (self->_excludeFromBackup)
    {
      [(UNCFileHandleContentProtectionStrategy *)self _excludeItemFromBackupAtPath:v13];
    }

    v15 = [v8 lastPathComponent];
    v16 = [v15 stringByDeletingPathExtension];
    v17 = [v16 stringByAppendingString:@"XXXXXX"];
    v18 = [v13 stringByAppendingPathComponent:v17];

    v19 = [(UNCFileHandleContentProtectionStrategy *)self _fileHandleForCreatingStoreAtPath:v18 protectionType:self->_fileProtectionType];
    if (!v19)
    {

      v22 = 0;
      v9 = v10;
      goto LABEL_14;
    }

    v9 = v19;
    [(NSMutableDictionary *)self->_keyedFileHandles setObject:v19 forKey:v8];
    if (self->_excludeFromBackup)
    {
      v20 = [v9 path];
      [(UNCFileHandleContentProtectionStrategy *)self _excludeItemFromBackupAtPath:v20];
    }
  }

  v13 = [v9 fileHandle];
  [v13 truncateFileAtOffset:0];
  [v13 writeData:v7];
  v21 = [v9 fileHandle];
  [v21 synchronizeFile];

  v22 = 1;
LABEL_14:

  return v22;
}

- (BOOL)removeItemAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [(NSMutableDictionary *)self->_keyedFileHandles objectForKey:v6];
  if (v8)
  {
    [(NSMutableDictionary *)self->_keyedFileHandles removeObjectForKey:v6];
    v9 = [v8 fileHandle];
    [v9 synchronizeFile];

    v10 = [v8 fileHandle];
    [v10 closeFile];

    v11 = [v8 path];

    if ([v7 fileExistsAtPath:v11] && (objc_msgSend(v7, "removeItemAtPath:error:", v11, a4) & 1) == 0)
    {
      if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
      {
        [UNCFileHandleContentProtectionStrategy removeAllDataAtPath:v11 error:a4];
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
    if ([v7 fileExistsAtPath:v6] && (objc_msgSend(v7, "removeItemAtPath:error:", v6, a4) & 1) == 0)
    {
      if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
      {
        [UNCFileHandleContentProtectionStrategy removeAllDataAtPath:v6 error:a4];
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    v11 = v6;
  }

  return v12;
}

- (void)migrateDataAtPath:(id)a3 toPath:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6];
  v15 = 0;
  [(UNCFileHandleContentProtectionStrategy *)self writeData:v8 atPath:v7 error:&v15];
  v9 = v15;
  if (v9)
  {
    v10 = v9;
    v11 = *MEMORY[0x1E6983380];
    if (os_log_type_enabled(*MEMORY[0x1E6983380], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v17 = v6;
      v18 = 2114;
      v19 = v7;
      v20 = 2114;
      v21 = v10;
      _os_log_error_impl(&dword_1DA7A9000, v11, OS_LOG_TYPE_ERROR, "Migrating repository from: %{public}@ to: %{public}@ failed %{public}@", buf, 0x20u);
    }

LABEL_7:

    goto LABEL_8;
  }

  v14 = 0;
  [(UNCFileHandleContentProtectionStrategy *)self removeItemAtPath:v6 error:&v14];
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

- (id)_fileHandleForCreatingStoreAtPath:(id)a3 protectionType:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isEqual:*MEMORY[0x1E696A378]])
  {
    v7 = 1;
  }

  else if ([v6 isEqual:*MEMORY[0x1E696A380]])
  {
    v7 = 2;
  }

  else if ([v6 isEqual:*MEMORY[0x1E696A388]])
  {
    v7 = 3;
  }

  else
  {
    if (![v6 isEqual:*MEMORY[0x1E696A3A8]])
    {
      goto LABEL_14;
    }

    v7 = 4;
  }

  v8 = [v5 lengthOfBytesUsingEncoding:4];
  v9 = malloc_type_malloc(v8 + 1, 0x983BEACDuLL);
  if ([v5 getCString:v9 maxLength:v8 + 1 encoding:4])
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

- (void)_excludeItemFromBackupAtPath:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
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