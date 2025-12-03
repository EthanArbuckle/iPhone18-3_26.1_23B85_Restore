@interface NSError(REMChangeError)
+ (__CFString)_defaultDescriptionForREMChangeErrorCode:()REMChangeError;
+ (id)errorWithREMChangeErrorCode:()REMChangeError;
+ (id)errorWithREMChangeErrorCode:()REMChangeError debugDescription:;
+ (id)errorWithREMChangeErrorCode:()REMChangeError description:underlyingError:;
+ (id)errorWithREMChangeErrorCode:()REMChangeError underlyingError:;
@end

@implementation NSError(REMChangeError)

+ (__CFString)_defaultDescriptionForREMChangeErrorCode:()REMChangeError
{
  if (a3 < 0xC)
  {
    return off_1E7507980[a3 & 0xF];
  }

  v4 = +[REMLog changeTracking];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [NSError(REMChangeError) _defaultDescriptionForREMChangeErrorCode:v4];
  }

  return 0;
}

+ (id)errorWithREMChangeErrorCode:()REMChangeError
{
  v5 = [self _defaultDescriptionForREMChangeErrorCode:?];
  v6 = [self errorWithREMChangeErrorCode:a3 description:v5 underlyingError:0];

  return v6;
}

+ (id)errorWithREMChangeErrorCode:()REMChangeError debugDescription:
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = [self _defaultDescriptionForREMChangeErrorCode:a3];
  v9 = v8;
  v10 = &stru_1F0D67F00;
  if (v7)
  {
    v10 = v7;
  }

  v11 = [v6 stringWithFormat:@"%@ {%@}", v8, v10];

  v12 = [self errorWithREMChangeErrorCode:a3 description:v11 underlyingError:0];

  return v12;
}

+ (id)errorWithREMChangeErrorCode:()REMChangeError underlyingError:
{
  v6 = a4;
  v7 = [self _defaultDescriptionForREMChangeErrorCode:a3];
  v8 = [self errorWithREMChangeErrorCode:a3 description:v7 underlyingError:v6];

  return v8;
}

+ (id)errorWithREMChangeErrorCode:()REMChangeError description:underlyingError:
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if (v7 | v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    v10 = v9;
    if (v7)
    {
      [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    if (v8)
    {
      [v10 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    v11 = [v10 copy];
  }

  else
  {
    v11 = 0;
  }

  v12 = os_log_create("com.apple.reminderkit", "default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v17 = 138412802;
    v18 = v16;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_debug_impl(&dword_19A0DB000, v12, OS_LOG_TYPE_DEBUG, "ERROR: REMChangeError occurred - code=%@, desc=%@, nserror=%@", &v17, 0x20u);
  }

  v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.ReminderKit.REMChangeErrorDomain" code:a3 userInfo:v11];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end