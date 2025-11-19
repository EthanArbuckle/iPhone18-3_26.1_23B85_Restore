@interface UNCAtomicDataContentProtectionStrategy
- (BOOL)dataIsAvailableAtPath:(id)a3;
- (BOOL)removeItemAtPath:(id)a3 error:(id *)a4;
- (BOOL)writeData:(id)a3 atPath:(id)a4 error:(id *)a5;
- (UNCAtomicDataContentProtectionStrategy)initWithFileProtectionType:(id)a3 excludeFromBackup:(BOOL)a4;
- (unint64_t)_dataWritingOptionForFileProtectionType:(id)a3;
- (void)migrateDataAtPath:(id)a3 toPath:(id)a4;
@end

@implementation UNCAtomicDataContentProtectionStrategy

- (UNCAtomicDataContentProtectionStrategy)initWithFileProtectionType:(id)a3 excludeFromBackup:(BOOL)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = UNCAtomicDataContentProtectionStrategy;
  v7 = [(UNCAtomicDataContentProtectionStrategy *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_excludeFromBackup = a4;
    v7->_dataWritingFileProtection = [(UNCAtomicDataContentProtectionStrategy *)v7 _dataWritingOptionForFileProtectionType:v6];
  }

  return v8;
}

- (BOOL)dataIsAvailableAtPath:(id)a3
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  return v6;
}

- (BOOL)writeData:(id)a3 atPath:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 writeToFile:v8 options:self->_dataWritingFileProtection | 1 error:a5];
  if (v9 && self->_excludeFromBackup)
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
    v11 = *MEMORY[0x1E695DB80];
    v16 = 0;
    v12 = [v10 setResourceValue:MEMORY[0x1E695E118] forKey:v11 error:&v16];
    v13 = v16;
    if ((v12 & 1) == 0)
    {
      v14 = *MEMORY[0x1E6983368];
      if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
      {
        [UNCAtomicDataContentProtectionStrategy writeData:v8 atPath:v13 error:v14];
      }
    }
  }

  return v9;
}

- (BOOL)removeItemAtPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v6 fileExistsAtPath:v5] && (objc_msgSend(v6, "removeItemAtPath:error:", v5, a4) & 1) == 0)
  {
    v8 = *MEMORY[0x1E6983368];
    if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
    {
      [(UNCAtomicDataContentProtectionStrategy *)v5 removeItemAtPath:a4 error:v8];
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)migrateDataAtPath:(id)a3 toPath:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  [v7 moveItemAtPath:v5 toPath:v6 error:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = *MEMORY[0x1E6983380];
    if (os_log_type_enabled(*MEMORY[0x1E6983380], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&dword_1DA7A9000, v9, OS_LOG_TYPE_ERROR, "Migrating repository from: %{public}@ to: %{public}@ failed %{public}@", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_dataWritingOptionForFileProtectionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E696A378]])
  {
    v4 = 0x20000000;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E696A388]])
  {
    v4 = 0x40000000;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E696A380]])
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