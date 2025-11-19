@interface NSDictionary(TPSCoreAdditions)
- (double)TPSSafeDoubleForKey:()TPSCoreAdditions;
- (float)TPSSafeFloatForKey:()TPSCoreAdditions;
- (id)TPSSafeArrayForKey:()TPSCoreAdditions;
- (id)TPSSafeDictionaryForKey:()TPSCoreAdditions;
- (id)TPSSafeNumberForKey:()TPSCoreAdditions;
- (id)TPSSafeObjectForKey:()TPSCoreAdditions;
- (id)TPSSafeStringForKey:()TPSCoreAdditions;
- (uint64_t)TPSSafeBoolForKey:()TPSCoreAdditions;
- (uint64_t)TPSSafeIntForKey:()TPSCoreAdditions;
- (uint64_t)TPSSafeIntegerForKey:()TPSCoreAdditions;
- (uint64_t)TPSSafeUIntegerForKey:()TPSCoreAdditions;
@end

@implementation NSDictionary(TPSCoreAdditions)

- (id)TPSSafeObjectForKey:()TPSCoreAdditions
{
  v1 = [a1 objectForKeyedSubscript:?];
  if (v1 == *MEMORY[0x1E695E738])
  {

    v1 = 0;
  }

  return v1;
}

- (id)TPSSafeDictionaryForKey:()TPSCoreAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 objectForKeyedSubscript:v4];
  v6 = objc_opt_class();
  if (v5)
  {
    v7 = v6;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = +[TPSLogger default];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 138413058;
        v13 = v5;
        v14 = 2112;
        v15 = objc_opt_class();
        v16 = 2112;
        v17 = v7;
        v18 = 2112;
        v19 = v4;
        v9 = v15;
        _os_log_impl(&dword_1C00A7000, v8, OS_LOG_TYPE_INFO, "Unexpected value: %@ with class %@. Expected type: %@ for key %@", &v12, 0x2Au);
      }

      v5 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)TPSSafeArrayForKey:()TPSCoreAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 objectForKeyedSubscript:v4];
  v6 = objc_opt_class();
  if (v5)
  {
    v7 = v6;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = +[TPSLogger default];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 138413058;
        v13 = v5;
        v14 = 2112;
        v15 = objc_opt_class();
        v16 = 2112;
        v17 = v7;
        v18 = 2112;
        v19 = v4;
        v9 = v15;
        _os_log_impl(&dword_1C00A7000, v8, OS_LOG_TYPE_INFO, "Unexpected value: %@ with class %@. Expected type: %@ for key %@", &v12, 0x2Au);
      }

      v5 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)TPSSafeStringForKey:()TPSCoreAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 objectForKeyedSubscript:v4];
  v6 = objc_opt_class();
  if (v5)
  {
    v7 = v6;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = +[TPSLogger default];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 138413058;
        v13 = v5;
        v14 = 2112;
        v15 = objc_opt_class();
        v16 = 2112;
        v17 = v7;
        v18 = 2112;
        v19 = v4;
        v9 = v15;
        _os_log_impl(&dword_1C00A7000, v8, OS_LOG_TYPE_INFO, "Unexpected value: %@ with class %@. Expected type: %@ for key %@", &v12, 0x2Au);
      }

      v5 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)TPSSafeNumberForKey:()TPSCoreAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 objectForKeyedSubscript:v4];
  v6 = objc_opt_class();
  if (v5)
  {
    v7 = v6;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = +[TPSLogger default];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 138413058;
        v13 = v5;
        v14 = 2112;
        v15 = objc_opt_class();
        v16 = 2112;
        v17 = v7;
        v18 = 2112;
        v19 = v4;
        v9 = v15;
        _os_log_impl(&dword_1C00A7000, v8, OS_LOG_TYPE_INFO, "Unexpected value: %@ with class %@. Expected type: %@ for key %@", &v12, 0x2Au);
      }

      v5 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (uint64_t)TPSSafeIntegerForKey:()TPSCoreAdditions
{
  v1 = [a1 TPSSafeObjectForKey:?];
  v2 = [v1 integerValue];

  return v2;
}

- (uint64_t)TPSSafeUIntegerForKey:()TPSCoreAdditions
{
  v1 = [a1 TPSSafeObjectForKey:?];
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

- (uint64_t)TPSSafeIntForKey:()TPSCoreAdditions
{
  v1 = [a1 TPSSafeObjectForKey:?];
  v2 = [v1 intValue];

  return v2;
}

- (double)TPSSafeDoubleForKey:()TPSCoreAdditions
{
  v1 = [a1 TPSSafeObjectForKey:?];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (float)TPSSafeFloatForKey:()TPSCoreAdditions
{
  v1 = [a1 TPSSafeObjectForKey:?];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (uint64_t)TPSSafeBoolForKey:()TPSCoreAdditions
{
  v1 = [a1 TPSSafeObjectForKey:?];
  v2 = [v1 BOOLValue];

  return v2;
}

@end