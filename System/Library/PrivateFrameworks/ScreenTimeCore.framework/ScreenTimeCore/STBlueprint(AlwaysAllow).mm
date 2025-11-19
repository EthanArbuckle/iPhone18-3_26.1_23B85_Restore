@interface STBlueprint(AlwaysAllow)
@end

@implementation STBlueprint(AlwaysAllow)

+ (void)saveAlwaysAllowListForUser:()AlwaysAllow withBundleIDs:overwriteExistingList:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "More than one always allow blueprint with the same identifier found in the database: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)saveAlwaysAllowListForUser:()AlwaysAllow withBundleIDs:overwriteExistingList:error:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to save always allow list: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)saveAlwaysAllowListForUser:()AlwaysAllow withBundleIDs:overwriteExistingList:error:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to fetch existing usage limit blueprints: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)saveAlwaysAllowListForUser:()AlwaysAllow withBundleIDs:overwriteExistingList:error:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Failed to serialize always allow list data: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)saveAlwaysAllowListForUser:()AlwaysAllow withBundleIDs:overwriteExistingList:error:.cold.6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to fetch existing always allow blueprint: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)saveAlwaysAllowListForUser:()AlwaysAllow withBundleIDs:overwriteExistingList:error:.cold.7()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "User has no managing organization: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)alwaysAllowBundleIdentifiersForUser:()AlwaysAllow error:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to deserialize always allow declaration: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)alwaysAllowBundleIdentifiersForUser:()AlwaysAllow error:.cold.4(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 appleID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_2(&dword_1B831F000, v2, v3, "Always allow list does not have a configuration for user: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)alwaysAllowBundleIdentifiersForUser:()AlwaysAllow error:.cold.5(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 appleID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_2(&dword_1B831F000, v2, v3, "User does not have an always allow list: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)alwaysAllowBundleIdentifiersForUser:()AlwaysAllow error:.cold.7()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "User has no managing organization: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end