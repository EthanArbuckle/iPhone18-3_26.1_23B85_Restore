@interface PCSAnalytics
+ (id)databasePath;
+ (id)logger;
- (id)dateOfLastSuccessForEvent:(id)event;
- (void)logRecoverableError:(id)error forEvent:(id)event withAttributes:(id)attributes;
- (void)logSuccessForEvent:(id)event;
- (void)logUnrecoverableError:(id)error forEvent:(id)event withAttributes:(id)attributes;
- (void)noteEvent:(id)event;
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

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v13 = 0;
    v7 = [defaultManager createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v13];
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
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___PCSAnalytics;
  v2 = objc_msgSendSuper2(&v4, sel_logger);

  return v2;
}

- (void)logSuccessForEvent:(id)event
{
  v4 = MEMORY[0x1E696AEC0];
  eventCopy = event;
  eventCopy = [v4 stringWithFormat:@"%@", eventCopy];
  [(SFAnalytics *)self logSuccessForEventNamed:eventCopy];

  date = [MEMORY[0x1E695DF00] date];
  eventCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"last_success_%@", eventCopy];

  [(SFAnalytics *)self setDateProperty:date forKey:eventCopy2];
}

- (void)logRecoverableError:(id)error forEvent:(id)event withAttributes:(id)attributes
{
  v20[3] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  attributesCopy = attributes;
  if (error)
  {
    v20[0] = MEMORY[0x1E695E118];
    v19[0] = @"recoverableError";
    v19[1] = @"errorDomain";
    errorCopy = error;
    domain = [errorCopy domain];
    v20[1] = domain;
    v19[2] = @"errorCode";
    v12 = MEMORY[0x1E696AD98];
    code = [errorCopy code];

    v14 = [v12 numberWithInteger:code];
    v20[2] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

    if (attributesCopy)
    {
      v16 = [attributesCopy mutableCopy];
      [v16 setValuesForKeysWithDictionary:v15];

      v15 = v16;
    }

    v18.receiver = self;
    v18.super_class = PCSAnalytics;
    [(SFAnalytics *)&v18 logSoftFailureForEventNamed:eventCopy withAttributes:v15];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)logUnrecoverableError:(id)error forEvent:(id)event withAttributes:(id)attributes
{
  v19[3] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  attributesCopy = attributes;
  if (error)
  {
    v19[0] = MEMORY[0x1E695E110];
    v18[0] = @"recoverableError";
    v18[1] = @"errorDomain";
    errorCopy = error;
    domain = [errorCopy domain];
    v19[1] = domain;
    v18[2] = @"errorCode";
    v12 = MEMORY[0x1E696AD98];
    code = [errorCopy code];

    v14 = [v12 numberWithInteger:code];
    v19[2] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

    if (attributesCopy)
    {
      v16 = [attributesCopy mutableCopy];
      [v16 setValuesForKeysWithDictionary:v15];

      v15 = v16;
    }

    [(SFAnalytics *)self logHardFailureForEventNamed:eventCopy withAttributes:v15];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)noteEvent:(id)event
{
  event = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", event];
  [(SFAnalytics *)self noteEventNamed:event];
}

- (id)dateOfLastSuccessForEvent:(id)event
{
  event = [MEMORY[0x1E696AEC0] stringWithFormat:@"last_success_%@", event];
  v5 = [(SFAnalytics *)self datePropertyForKey:event];

  return v5;
}

@end