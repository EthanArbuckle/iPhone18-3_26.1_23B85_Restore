@interface VUIPreference
+ (BOOL)ignoreHTTPCache;
+ (void)setupJSCoreConsoleLogging;
@end

@implementation VUIPreference

+ (void)setupJSCoreConsoleLogging
{
  if (setupJSCoreConsoleLogging_onceToken != -1)
  {
    +[VUIPreference setupJSCoreConsoleLogging];
  }
}

uint64_t __42__VUIPreference_setupJSCoreConsoleLogging__block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"LogJSConsole", @"com.apple.ITMLKit", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    return JSRemoteInspectorSetLogToSystemConsole();
  }

  return result;
}

+ (BOOL)ignoreHTTPCache
{
  if (ignoreHTTPCache_onceToken != -1)
  {
    +[VUIPreference ignoreHTTPCache];
  }

  return ignoreHTTPCache_sIgnoreHTTPCache;
}

void __32__VUIPreference_ignoreHTTPCache__block_invoke()
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"IgnoreHTTPCache", @"com.apple.ITMLKit", 0);
  ignoreHTTPCache_sIgnoreHTTPCache = AppBooleanValue != 0;
  if (!AppBooleanValue)
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    ignoreHTTPCache_sIgnoreHTTPCache = [v1 BOOLForKey:@"IgnoreLocalHTTPCache"];

    if ((ignoreHTTPCache_sIgnoreHTTPCache & 1) == 0)
    {
      v2 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
      v3 = SecTaskCopyValueForEntitlement(v2, @"get-task-allow", 0);
      CFRelease(v2);
      if (objc_opt_respondsToSelector())
      {
        v4 = [v3 BOOLValue];
      }

      else
      {
        v4 = 0;
      }

      ignoreHTTPCache_sIgnoreHTTPCache = v4;
    }
  }

  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __32__VUIPreference_ignoreHTTPCache__block_invoke_cold_1(v5);
  }
}

void __32__VUIPreference_ignoreHTTPCache__block_invoke_cold_1(os_log_t log)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = ignoreHTTPCache_sIgnoreHTTPCache;
  _os_log_error_impl(&dword_1E323F000, log, OS_LOG_TYPE_ERROR, "Setting [%d] for Ignore HTTP Cache", v1, 8u);
}

@end