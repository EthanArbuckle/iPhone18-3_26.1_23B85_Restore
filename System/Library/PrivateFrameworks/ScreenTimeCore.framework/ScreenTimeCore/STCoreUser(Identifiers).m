@interface STCoreUser(Identifiers)
@end

@implementation STCoreUser(Identifiers)

- (void)validateForUpdate:()Identifiers .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)validateForUpdate:()Identifiers .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 localUserDeviceState];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_1(&dword_1B831F000, v2, v3, "%{public}s Validate for update on CoreUser failed for %{public}s user, with error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:()Identifiers .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:()Identifiers .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 localUserDeviceState];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_1(&dword_1B831F000, v2, v3, "%{public}s Validate for Insert on CoreUser failed for %{public}s user with error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)validateForDelete:()Identifiers .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)validateForDelete:()Identifiers .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 localUserDeviceState];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_1(&dword_1B831F000, v2, v3, "%{public}s Validate for Delete on CoreUser failed for %{public}s user failed with error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end