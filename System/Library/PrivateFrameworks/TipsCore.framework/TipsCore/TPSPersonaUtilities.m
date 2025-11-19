@interface TPSPersonaUtilities
+ (void)_adoptPersonaForContainerLookupIfNeeded;
@end

@implementation TPSPersonaUtilities

+ (void)_adoptPersonaForContainerLookupIfNeeded
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_ERROR, "Failed adopting persona with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end