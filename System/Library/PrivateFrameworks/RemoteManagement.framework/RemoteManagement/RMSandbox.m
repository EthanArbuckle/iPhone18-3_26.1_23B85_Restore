@interface RMSandbox
+ (BOOL)configureSandbox;
+ (id)tokenForURL:(id)a3;
+ (int64_t)consumeToken:(id)a3;
+ (void)configureSandbox;
@end

@implementation RMSandbox

+ (BOOL)configureSandbox
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 UTF8String];

  if (v4)
  {
    if (_set_user_dir_suffix())
    {
      return 1;
    }

    v6 = +[RMLog sandbox];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      +[(RMSandbox *)v6];
    }
  }

  else
  {
    v6 = +[RMLog sandbox];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      +[(RMSandbox *)v6];
    }
  }

  return 0;
}

+ (id)tokenForURL:(id)a3
{
  [a3 fileSystemRepresentation];
  v3 = sandbox_extension_issue_file();
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
    free(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)consumeToken:(id)a3
{
  v3 = [a3 UTF8String];

  return MEMORY[0x1EEE74400](v3);
}

+ (void)configureSandbox
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_fault_impl(&dword_1E1168000, a1, OS_LOG_TYPE_FAULT, "Failed to initialize sandbox: %{darwin.errno}d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

@end