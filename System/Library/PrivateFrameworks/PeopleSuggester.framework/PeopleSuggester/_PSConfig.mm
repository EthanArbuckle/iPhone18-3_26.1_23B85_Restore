@interface _PSConfig
+ (id)_loadPlistNamed:(int)named abortOnFailure:;
+ (id)contactEmbeddingConfig;
+ (id)defaultConfig;
+ (id)messagesPinningConfig;
+ (id)vocab;
+ (uint64_t)_configs;
@end

@implementation _PSConfig

+ (id)defaultConfig
{
  +[_PSConfig _configs];
  v2 = _configs_configs;

  return v2;
}

+ (uint64_t)_configs
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21___PSConfig__configs__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (_configs_onceToken != -1)
  {
    dispatch_once(&_configs_onceToken, block);
  }

  return &_configs_configs;
}

+ (id)_loadPlistNamed:(int)named abortOnFailure:
{
  v4 = a2;
  objc_opt_self();
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 URLForResource:v4 withExtension:@"plist"];
  path = [v7 path];

  memset(&v15, 0, sizeof(v15));
  if (stat([path fileSystemRepresentation], &v15))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [_PSConfig _loadPlistNamed:v4 abortOnFailure:?];
    }

    if (!_PASEvaluateLogFaultAndProbCrashCriteria() && !named)
    {
LABEL_6:
      v9 = 0;
      goto LABEL_7;
    }

LABEL_24:
    abort();
  }

  if (v15.st_size < 4096 || ([MEMORY[0x1E69C5D48] dictionaryWithPath:path error:0], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:path];
    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        [_PSConfig _loadPlistNamed:v4 abortOnFailure:?];
      }

      if (!_PASEvaluateLogFaultAndProbCrashCriteria() && !named)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

    v12 = v11;
    v14 = 0;
    v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v11 error:&v14];
    v13 = v14;
    if (!v9)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        [_PSConfig _loadPlistNamed:v4 abortOnFailure:v13];
      }

      if (_PASEvaluateLogFaultAndProbCrashCriteria() || named)
      {
        goto LABEL_24;
      }

      v9 = 0;
    }
  }

LABEL_7:

  objc_autoreleasePoolPop(v5);

  return v9;
}

+ (id)messagesPinningConfig
{
  +[_PSConfig _configs];
  v2 = qword_1ED8BBB08;

  return v2;
}

+ (id)contactEmbeddingConfig
{
  +[_PSConfig _configs];
  v2 = qword_1ED8BBB10;

  return v2;
}

+ (id)vocab
{
  +[_PSConfig _configs];
  v2 = qword_1ED8BBB18;

  return v2;
}

+ (void)_loadPlistNamed:(uint64_t)a1 abortOnFailure:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1B5ED1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to stat plist named %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)_loadPlistNamed:(uint64_t)a1 abortOnFailure:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_fault_impl(&dword_1B5ED1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to decode plist named %{public}@: %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_loadPlistNamed:(uint64_t)a1 abortOnFailure:.cold.3(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1B5ED1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unable to generate URL path for plist %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end