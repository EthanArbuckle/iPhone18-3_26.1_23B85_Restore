@interface PPSClientDonation
+ (BOOL)isRegisteredSubsystem:(const char *)a3 category:(const char *)a4;
+ (PPSTelemetryIdentifier)createIdentifierForSubsystem:(const char *)a3 category:(const char *)a4;
+ (void)sendEventWithIdentifier:(const PPSTelemetryIdentifier *)a3 payload:(__CFDictionary *)a4;
@end

@implementation PPSClientDonation

+ (PPSTelemetryIdentifier)createIdentifierForSubsystem:(const char *)a3 category:(const char *)a4
{
  if (![PPSClientDonation isRegisteredSubsystem:"isRegisteredSubsystem:category:" category:?])
  {
    return 0;
  }

  v4 = malloc_type_malloc(0x400uLL, 0x1000040D7EB2065uLL);
  if (!v4)
  {
    v6 = logHandle_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PPSClientDonation createIdentifierForSubsystem:v6 category:?];
    }

    return 0;
  }

  v5 = v4;
  __strlcpy_chk();
  __strlcpy_chk();
  return v5;
}

+ (void)sendEventWithIdentifier:(const PPSTelemetryIdentifier *)a3 payload:(__CFDictionary *)a4
{
  if (a3 && a4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s::%s", a3, a3->var1];
    PLLogRegisteredEvent(110, v6, a4);
  }

  else
  {
    v5 = logHandle_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PPSClientDonation sendEventWithIdentifier:a4 payload:v5];
    }
  }
}

+ (BOOL)isRegisteredSubsystem:(const char *)a3 category:(const char *)a4
{
  if (a3 && a4 && *a3 && *a4)
  {
    v6 = objc_opt_new();
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
    v9 = [v6 permissionsForSubsystem:v7 category:v8];

    if ((v9 & 1) == 0)
    {
      v10 = logHandle_0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[PPSClientDonation isRegisteredSubsystem:category:];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[PPSClientDonation isRegisteredSubsystem:category:];
    }

    return 0;
  }

  return v9;
}

+ (void)createIdentifierForSubsystem:(os_log_t)log category:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "+[PPSClientDonation createIdentifierForSubsystem:category:]";
  _os_log_error_impl(&dword_1BACB7000, log, OS_LOG_TYPE_ERROR, "(%s) Failed to malloc identifier", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)sendEventWithIdentifier:(uint64_t)a1 payload:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "+[PPSClientDonation sendEventWithIdentifier:payload:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1BACB7000, a2, OS_LOG_TYPE_ERROR, "(%s) Invalid inputs: payload=%@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)isRegisteredSubsystem:category:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_1BACB7000, v0, OS_LOG_TYPE_ERROR, "(%s) Permission denied: %s / %s", v2, 0x20u);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)isRegisteredSubsystem:category:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315650;
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "(%s) Invalid inputs: %s / %s", v1, 0x20u);
  v0 = *MEMORY[0x1E69E9840];
}

@end