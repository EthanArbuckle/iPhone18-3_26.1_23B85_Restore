@interface PPSStorage
- (PPSStorage)init;
- (void)setupMetadataStorage;
- (void)setupStorageForEntryKey:(id)key;
- (void)startStorage;
@end

@implementation PPSStorage

- (PPSStorage)init
{
  v3.receiver = self;
  v3.super_class = PPSStorage;
  return [(PPSStorage *)&v3 init];
}

- (void)setupMetadataStorage
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1D8611000, MEMORY[0x1E69E9C10], a3, "[%s] overriden by subclasses", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)startStorage
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1D8611000, MEMORY[0x1E69E9C10], a3, "[%s] overriden by subclasses", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setupStorageForEntryKey:(id)key
{
  v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    [(PPSStorage *)v3 setupStorageForEntryKey:v4, v5, v6, v7, v8, v9, v10];
  }
}

- (void)setupStorageForEntryKey:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1D8611000, MEMORY[0x1E69E9C10], a3, "[%s] overriden by subclasses", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end