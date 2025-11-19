@interface PCSAnalytics
+ (id)databasePath;
+ (id)logger;
- (id)dateOfLastSuccessForEvent:(id)a3;
- (void)logRecoverableError:(id)a3 forEvent:(id)a4 withAttributes:(id)a5;
- (void)logSuccessForEvent:(id)a3;
- (void)logUnrecoverableError:(id)a3 forEvent:(id)a4 withAttributes:(id)a5;
- (void)noteEvent:(id)a3;
@end

@implementation PCSAnalytics

+ (id)databasePath
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  if ([v2 count])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [v2 objectAtIndexedSubscript:0];
    v5 = [v3 stringWithFormat:@"%@/com.apple.ProtectedCloudStorage", v4];

    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = 0;
    v7 = [v6 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v13];
    v8 = v13;

    if (v7)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PCSAnalytics.db"];
      v10 = [v5 stringByAppendingPathComponent:v9];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v8;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to create ApplicationSupport directory: %@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to get ApplicationSupport directory", buf, 2u);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)logger
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___PCSAnalytics;
  v2 = objc_msgSendSuper2(&v4, sel_logger);

  return v2;
}

- (void)logSuccessForEvent:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"%@", v5];
  [(SFAnalytics *)self logSuccessForEventNamed:v6];

  v8 = [MEMORY[0x1E695DF00] date];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"last_success_%@", v5];

  [(SFAnalytics *)self setDateProperty:v8 forKey:v7];
}

- (void)logRecoverableError:(id)a3 forEvent:(id)a4 withAttributes:(id)a5
{
  v20[3] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    v20[0] = MEMORY[0x1E695E118];
    v19[0] = @"recoverableError";
    v19[1] = @"errorDomain";
    v10 = a3;
    v11 = [v10 domain];
    v20[1] = v11;
    v19[2] = @"errorCode";
    v12 = MEMORY[0x1E696AD98];
    v13 = [v10 code];

    v14 = [v12 numberWithInteger:v13];
    v20[2] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

    if (v9)
    {
      v16 = [v9 mutableCopy];
      [v16 setValuesForKeysWithDictionary:v15];

      v15 = v16;
    }

    v18.receiver = self;
    v18.super_class = PCSAnalytics;
    [(SFAnalytics *)&v18 logSoftFailureForEventNamed:v8 withAttributes:v15];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)logUnrecoverableError:(id)a3 forEvent:(id)a4 withAttributes:(id)a5
{
  v19[3] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    v19[0] = MEMORY[0x1E695E110];
    v18[0] = @"recoverableError";
    v18[1] = @"errorDomain";
    v10 = a3;
    v11 = [v10 domain];
    v19[1] = v11;
    v18[2] = @"errorCode";
    v12 = MEMORY[0x1E696AD98];
    v13 = [v10 code];

    v14 = [v12 numberWithInteger:v13];
    v19[2] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

    if (v9)
    {
      v16 = [v9 mutableCopy];
      [v16 setValuesForKeysWithDictionary:v15];

      v15 = v16;
    }

    [(SFAnalytics *)self logHardFailureForEventNamed:v8 withAttributes:v15];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)noteEvent:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", a3];
  [(SFAnalytics *)self noteEventNamed:v4];
}

- (id)dateOfLastSuccessForEvent:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"last_success_%@", a3];
  v5 = [(SFAnalytics *)self datePropertyForKey:v4];

  return v5;
}

@end