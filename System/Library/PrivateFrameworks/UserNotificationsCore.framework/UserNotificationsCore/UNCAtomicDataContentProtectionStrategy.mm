@interface UNCAtomicDataContentProtectionStrategy
- (BOOL)dataIsAvailableAtPath:(id)path;
- (BOOL)removeItemAtPath:(id)path error:(id *)error;
- (BOOL)writeData:(id)data atPath:(id)path error:(id *)error;
- (UNCAtomicDataContentProtectionStrategy)initWithFileProtectionType:(id)type excludeFromBackup:(BOOL)backup;
- (unint64_t)_dataWritingOptionForFileProtectionType:(id)type;
- (void)migrateDataAtPath:(id)path toPath:(id)toPath;
@end

@implementation UNCAtomicDataContentProtectionStrategy

- (UNCAtomicDataContentProtectionStrategy)initWithFileProtectionType:(id)type excludeFromBackup:(BOOL)backup
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = UNCAtomicDataContentProtectionStrategy;
  v7 = [(UNCAtomicDataContentProtectionStrategy *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_excludeFromBackup = backup;
    v7->_dataWritingFileProtection = [(UNCAtomicDataContentProtectionStrategy *)v7 _dataWritingOptionForFileProtectionType:typeCopy];
  }

  return v8;
}

- (BOOL)dataIsAvailableAtPath:(id)path
{
  v3 = MEMORY[0x1E696AC08];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager fileExistsAtPath:pathCopy];

  return v6;
}

- (BOOL)writeData:(id)data atPath:(id)path error:(id *)error
{
  pathCopy = path;
  v9 = [data writeToFile:pathCopy options:self->_dataWritingFileProtection | 1 error:error];
  if (v9 && self->_excludeFromBackup)
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
    v11 = *MEMORY[0x1E695DB80];
    v16 = 0;
    v12 = [v10 setResourceValue:MEMORY[0x1E695E118] forKey:v11 error:&v16];
    v13 = v16;
    if ((v12 & 1) == 0)
    {
      v14 = *MEMORY[0x1E6983368];
      if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
      {
        [UNCAtomicDataContentProtectionStrategy writeData:pathCopy atPath:v13 error:v14];
      }
    }
  }

  return v9;
}

- (BOOL)removeItemAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:pathCopy] && (objc_msgSend(defaultManager, "removeItemAtPath:error:", pathCopy, error) & 1) == 0)
  {
    v8 = *MEMORY[0x1E6983368];
    if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
    {
      [(UNCAtomicDataContentProtectionStrategy *)pathCopy removeItemAtPath:error error:v8];
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)migrateDataAtPath:(id)path toPath:(id)toPath
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  toPathCopy = toPath;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  [defaultManager moveItemAtPath:pathCopy toPath:toPathCopy error:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = *MEMORY[0x1E6983380];
    if (os_log_type_enabled(*MEMORY[0x1E6983380], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v13 = pathCopy;
      v14 = 2114;
      v15 = toPathCopy;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&dword_1DA7A9000, v9, OS_LOG_TYPE_ERROR, "Migrating repository from: %{public}@ to: %{public}@ failed %{public}@", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_dataWritingOptionForFileProtectionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x1E696A378]])
  {
    v4 = 0x20000000;
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E696A388]])
  {
    v4 = 0x40000000;
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E696A380]])
  {
    v4 = 805306368;
  }

  else
  {
    v4 = 0x10000000;
  }

  return v4;
}

- (void)writeData:(uint64_t)a1 atPath:(uint64_t)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, a2, a3, "Could not set 'exclude from backup' key on %{public}@; error: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)removeItemAtPath:(NSObject *)a3 error:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = *a2;
  OUTLINED_FUNCTION_1_0(&dword_1DA7A9000, a2, a3, "Could not delete %{public}@: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end