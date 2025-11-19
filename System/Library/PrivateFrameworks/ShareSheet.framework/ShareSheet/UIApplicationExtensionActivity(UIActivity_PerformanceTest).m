@interface UIApplicationExtensionActivity(UIActivity_PerformanceTest)
@end

@implementation UIApplicationExtensionActivity(UIActivity_PerformanceTest)

+ (void)_applicationExtensionActivitiesForItems:()UIActivity_PerformanceTest .cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_18B359000, v0, OS_LOG_TYPE_ERROR, "Cannot find application extensions: %{public}@", v1, 0xCu);
}

@end