@interface SUCoreCodeCoverage
+ (id)getCodeCoveragePathForName:(id)a3;
+ (void)_handleSignal:(int)a3 forName:(id)a4;
+ (void)dumpCodeCoverageForName:(id)a3;
+ (void)initializeForName:(id)a3;
+ (void)resetCodeCoverageForName:(id)a3;
@end

@implementation SUCoreCodeCoverage

+ (void)initializeForName:(id)a3
{
  v3 = +[SUCoreLog sharedLogger];
  v4 = [v3 oslog];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E0F71000, v4, OS_LOG_TYPE_DEFAULT, "[SUCoreCodeCoverage] Code coverage is disabled (SUCore not running in debug)", v5, 2u);
  }
}

+ (void)_handleSignal:(int)a3 forName:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = +[SUCoreLog sharedLogger];
  v7 = [v6 oslog];

  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a3 == 31)
  {
    if (v8)
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_1E0F71000, v7, OS_LOG_TYPE_DEFAULT, "[SUCoreCodeCoverage] Signal handler received SIGUSR2, resetting code coverage", v10, 2u);
    }

    [SUCoreCodeCoverage resetCodeCoverageForName:v5];
  }

  else if (a3 == 30)
  {
    if (v8)
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_1E0F71000, v7, OS_LOG_TYPE_DEFAULT, "[SUCoreCodeCoverage] Signal handler received SIGUSR1, dumping code coverage", v10, 2u);
    }

    [SUCoreCodeCoverage dumpCodeCoverageForName:v5];
  }

  else
  {
    if (v8)
    {
      v10[0] = 67109120;
      v10[1] = a3;
      _os_log_impl(&dword_1E0F71000, v7, OS_LOG_TYPE_DEFAULT, "[SUCoreCodeCoverage] Unhandled signal: %d (ignored)", v10, 8u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)getCodeCoveragePathForName:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v15 = 0;
    goto LABEL_11;
  }

  v3 = MEMORY[0x1E696AB78];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
  v6 = MEMORY[0x1E696AEC0];
  v7 = getpid();
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [v5 stringFromDate:v8];
  v10 = [v6 stringWithFormat:@"%@/%@.%d.%@.profraw", @"/tmp/ASUCodeCoverage", v4, v7, v9];

  v23 = *MEMORY[0x1E696A370];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:511];
  v24[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  v13 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v13 fileExistsAtPath:@"/tmp/ASUCodeCoverage"])
  {

    v14 = 0;
  }

  else
  {
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v22 = 0;
    v17 = [v16 createDirectoryAtPath:@"/tmp/ASUCodeCoverage" withIntermediateDirectories:0 attributes:v12 error:&v22];
    v14 = v22;

    if ((v17 & 1) == 0)
    {
      v18 = +[SUCoreLog sharedLogger];
      v19 = [v18 oslog];

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(SUCoreCodeCoverage *)v14 getCodeCoveragePathForName:v19];
      }

      v15 = 0;
      goto LABEL_10;
    }
  }

  v15 = v10;
LABEL_10:

LABEL_11:
  v20 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (void)dumpCodeCoverageForName:(id)a3
{
  v3 = +[SUCoreLog sharedLogger];
  v4 = [v3 oslog];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E0F71000, v4, OS_LOG_TYPE_DEFAULT, "[SUCoreCodeCoverage] Code coverage is disabled (SUCore not running in debug)", v5, 2u);
  }
}

+ (void)resetCodeCoverageForName:(id)a3
{
  v3 = +[SUCoreLog sharedLogger];
  v4 = [v3 oslog];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E0F71000, v4, OS_LOG_TYPE_DEFAULT, "[SUCoreCodeCoverage] Code coverage is disabled (SUCore not running in debug)", v5, 2u);
  }
}

+ (void)getCodeCoveragePathForName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1E0F71000, a2, OS_LOG_TYPE_ERROR, "[SUCoreCodeCoverage] Unable to create output directory: '%{public}@'", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end