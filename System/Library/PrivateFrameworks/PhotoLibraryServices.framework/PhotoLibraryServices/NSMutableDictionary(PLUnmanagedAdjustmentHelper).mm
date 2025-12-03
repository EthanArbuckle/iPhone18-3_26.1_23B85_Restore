@interface NSMutableDictionary(PLUnmanagedAdjustmentHelper)
- (void)pl_applyOrientation:()PLUnmanagedAdjustmentHelper toNormalizedPointWithXKey:yKey:;
- (void)pl_enforceCorrectValuesForMinKey:()PLUnmanagedAdjustmentHelper maxKey:;
@end

@implementation NSMutableDictionary(PLUnmanagedAdjustmentHelper)

- (void)pl_enforceCorrectValuesForMinKey:()PLUnmanagedAdjustmentHelper maxKey:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [self objectForKeyedSubscript:v6];
  v9 = [self objectForKeyedSubscript:v7];
  v10 = v9;
  if (v8 && v9)
  {
    [v8 doubleValue];
    v12 = v11;
    [v10 doubleValue];
    if (v13 < v12)
    {
      [self setObject:v10 forKeyedSubscript:v6];
      [self setObject:v8 forKeyedSubscript:v7];
    }
  }

  else
  {
    v14 = PLMigrationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Could not find matching min and max keys: %@, %@", &v15, 0x16u);
    }
  }
}

- (void)pl_applyOrientation:()PLUnmanagedAdjustmentHelper toNormalizedPointWithXKey:yKey:
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [self objectForKeyedSubscript:v8];
  v11 = [self objectForKeyedSubscript:v9];
  v12 = v11;
  if (v10 && v11)
  {
    [v10 doubleValue];
    v14 = v13;
    [v12 doubleValue];
    v16 = PLOrientationTransformImagePoint(a3, 1.0, 1.0, v14, v15);
    v18 = v17;
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
    [self setObject:v19 forKeyedSubscript:v8];

    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
    [self setObject:v20 forKeyedSubscript:v9];
  }

  else
  {
    v21 = PLMigrationGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Could not find matching x and y keys: %@, %@", &v22, 0x16u);
    }
  }
}

@end