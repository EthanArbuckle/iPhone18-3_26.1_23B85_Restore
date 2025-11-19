@interface PRUISPosterRenderingViewController(Deprecated)
@end

@implementation PRUISPosterRenderingViewController(Deprecated)

- (void)_cachedImageForRequest:()Deprecated .cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_1CAE63000, v0, OS_LOG_TYPE_ERROR, "Error fetching latest snapshot bundle: %{public}@", v1, 0xCu);
}

@end