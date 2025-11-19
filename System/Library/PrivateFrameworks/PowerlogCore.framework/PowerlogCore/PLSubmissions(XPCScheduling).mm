@interface PLSubmissions(XPCScheduling)
@end

@implementation PLSubmissions(XPCScheduling)

- (void)submitRecord:()XPCScheduling withActivity:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Failed to create CloudKit asset for %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)removeFileAtURL:()XPCScheduling .cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1D8611000, v0, v1, "Failed to remove file at %@, error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end