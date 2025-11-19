@interface SUCoreConfig
- (BOOL)getBoolConfigForKey:(id)a3 defaultValue:(BOOL)a4;
- (SUCoreConfig)initWithProjectName:(id)a3;
- (SUCoreConfig)initWithProjectName:(id)a3 defaultsPath:(id)a4;
- (id)description;
- (id)getConfig;
- (id)getNumberConfigForKey:(id)a3;
- (id)getStringConfigForKey:(id)a3;
- (id)stateSafeGetConfig;
- (void)clearConfig;
- (void)setConfig:(id)a3 forKey:(id)a4;
- (void)stateSafeSetConfig:(id)a3 forKey:(id)a4;
@end

@implementation SUCoreConfig

- (SUCoreConfig)initWithProjectName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isEqualToString:@"SoftwareUpdateCore"] & 1) == 0)
  {
    v6 = [@"/var/mobile/Library/Preferences/com.apple.SoftwareUpdateCore" stringByAppendingFormat:@".%@", v5];
  }

  else
  {
    v6 = @"/var/mobile/Library/Preferences/com.apple.SoftwareUpdateCore";
  }

  v7 = [(__CFString *)v6 stringByAppendingPathExtension:@"plist"];

  v8 = [(SUCoreConfig *)self initWithProjectName:v5 defaultsPath:v7];
  return v8;
}

- (SUCoreConfig)initWithProjectName:(id)a3 defaultsPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = +[SUCoreLog sharedLogger];
    v16 = [v15 oslog];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConfig initWithProjectName:defaultsPath:];
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = +[SUCoreLog sharedLogger];
    v16 = [v17 oslog];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConfig initWithProjectName:defaultsPath:];
    }

LABEL_10:

    v14 = 0;
    goto LABEL_11;
  }

  v19.receiver = self;
  v19.super_class = SUCoreConfig;
  v9 = [(SUCoreConfig *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_projectName, a3);
    objc_storeStrong(&v10->_defaultsPath, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.SoftwareUpdateCore.SUCoreConfigAccessQueue", v11);
    accessQueue = v10->_accessQueue;
    v10->_accessQueue = v12;
  }

  self = v10;
  v14 = self;
LABEL_11:

  return v14;
}

- (void)stateSafeSetConfig:(id)a3 forKey:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SUCoreConfig *)self accessQueue];
  dispatch_assert_queue_V2(v8);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = [(SUCoreConfig *)self stateSafeGetConfig];
      v10 = [v9 mutableCopy];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v14 = v12;

      if (v6)
      {
        [v14 setSafeObject:v6 forKey:v7];
      }

      else
      {
        [v14 removeObjectForKey:v7];
      }

      v15 = [(SUCoreConfig *)self defaultsPath];

      if (v15)
      {
        v16 = MEMORY[0x1E695DFF8];
        v17 = [(SUCoreConfig *)self defaultsPath];
        v18 = [v16 fileURLWithPath:v17];
        v27 = 0;
        v19 = [v14 writeToURL:v18 error:&v27];
        v20 = v27;

        v21 = +[SUCoreLog sharedLogger];
        v22 = [v21 oslog];

        if (v19)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [(SUCoreConfig *)self defaultsPath];
            *buf = 138543618;
            v29 = v23;
            v30 = 2114;
            v31 = v14;
            _os_log_impl(&dword_1E0F71000, v22, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Successfully updated config at path '%{public}@': %{public}@", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [SUCoreConfig stateSafeSetConfig:forKey:];
        }
      }

      else
      {
        v24 = +[SUCoreLog sharedLogger];
        v20 = [v24 oslog];

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [SUCoreConfig stateSafeSetConfig:v20 forKey:?];
        }
      }
    }

    else
    {
      v26 = +[SUCoreLog sharedLogger];
      v14 = [v26 oslog];

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SUCoreConfig stateSafeSetConfig:forKey:];
      }
    }
  }

  else
  {
    v13 = +[SUCoreLog sharedLogger];
    v14 = [v13 oslog];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConfig stateSafeSetConfig:forKey:];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)stateSafeGetConfig
{
  v3 = [(SUCoreConfig *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = MEMORY[0x1E695DF20];
  v5 = [(SUCoreConfig *)self defaultsPath];
  v6 = [v4 dictionaryWithContentsOfFile:v5];

  return v6;
}

- (void)setConfig:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUCoreConfig *)self accessQueue];
  dispatch_assert_queue_not_V2(v8);

  v9 = [(SUCoreConfig *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SUCoreConfig_setConfig_forKey___block_invoke;
  block[3] = &unk_1E86FC460;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v9, block);
}

- (id)getConfig
{
  v3 = [(SUCoreConfig *)self accessQueue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  v4 = [(SUCoreConfig *)self accessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__SUCoreConfig_getConfig__block_invoke;
  v7[3] = &unk_1E86FC1A0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __25__SUCoreConfig_getConfig__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateSafeGetConfig];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)clearConfig
{
  v3 = [(SUCoreConfig *)self accessQueue];
  dispatch_assert_queue_not_V2(v3);

  v4 = [(SUCoreConfig *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SUCoreConfig_clearConfig__block_invoke;
  block[3] = &unk_1E86FC178;
  block[4] = self;
  dispatch_sync(v4, block);
}

void __27__SUCoreConfig_clearConfig__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = [v4 defaultsPath];
  v6 = [v2 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [*v3 defaultsPath];
    v16 = 0;
    [v7 removeItemAtPath:v8 error:&v16];
    v9 = v16;

    v10 = +[SUCoreLog sharedLogger];
    v11 = [v10 oslog];

    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __27__SUCoreConfig_clearConfig__block_invoke_cold_1(v3);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*v3 defaultsPath];
        *buf = 138543362;
        v18 = v14;
        _os_log_impl(&dword_1E0F71000, v11, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] ClearConfig: Successfully removed configuration at path: %{public}@", buf, 0xCu);
      }

      v9 = v11;
    }
  }

  else
  {
    v12 = +[SUCoreLog sharedLogger];
    v9 = [v12 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*v3 defaultsPath];
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_1E0F71000, v9, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] ClearConfig: Configuration file does not exist at path: %{public}@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)getBoolConfigForKey:(id)a3 defaultValue:(BOOL)a4
{
  v6 = a3;
  v7 = [(SUCoreConfig *)self accessQueue];
  dispatch_assert_queue_not_V2(v7);

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = a4;
  v8 = [(SUCoreConfig *)self accessQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__SUCoreConfig_getBoolConfigForKey_defaultValue___block_invoke;
  v11[3] = &unk_1E86FC630;
  v12 = v6;
  v13 = &v15;
  v11[4] = self;
  v14 = a4;
  v9 = v6;
  dispatch_sync(v8, v11);

  LOBYTE(self) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return self;
}

void __49__SUCoreConfig_getBoolConfigForKey_defaultValue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateSafeGetConfig];
  *(*(*(a1 + 48) + 8) + 24) = [v2 safeBooleanForKey:*(a1 + 40) defaultValue:*(a1 + 56)];
}

- (id)getStringConfigForKey:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreConfig *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  v6 = [(SUCoreConfig *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SUCoreConfig_getStringConfigForKey___block_invoke;
  block[3] = &unk_1E86FC658;
  v11 = v4;
  v12 = &v13;
  block[4] = self;
  v7 = v4;
  dispatch_sync(v6, block);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __38__SUCoreConfig_getStringConfigForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) stateSafeGetConfig];
  v2 = [v5 safeStringForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)getNumberConfigForKey:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreConfig *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  v6 = [(SUCoreConfig *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SUCoreConfig_getNumberConfigForKey___block_invoke;
  block[3] = &unk_1E86FC658;
  v11 = v4;
  v12 = &v13;
  block[4] = self;
  v7 = v4;
  dispatch_sync(v6, block);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __38__SUCoreConfig_getNumberConfigForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) stateSafeGetConfig];
  v2 = [v5 safeObjectForKey:*(a1 + 40) ofClass:objc_opt_class()];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SUCoreConfig *)self projectName];
  v5 = [(SUCoreConfig *)self defaultsPath];
  v6 = [v3 stringWithFormat:@"SUCoreConfig(%@%@)", v4, v5];;

  return v6;
}

- (void)initWithProjectName:defaultsPath:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)initWithProjectName:defaultsPath:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)stateSafeSetConfig:forKey:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)stateSafeSetConfig:forKey:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)stateSafeSetConfig:forKey:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1E0F71000, v0, OS_LOG_TYPE_ERROR, "[SUCoreConfig] Failed to write config to defaults path with error: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __27__SUCoreConfig_clearConfig__block_invoke_cold_1(id *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*a1 defaultsPath];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end