@interface STBlueprint(Restrictions)
@end

@implementation STBlueprint(Restrictions)

+ (void)disableRestrictionsBlueprintForUser:()Restrictions error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "failed to disable restrictions blueprint: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)disableRestrictionsBlueprintForUser:()Restrictions error:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to fetch existing restrictions blueprint: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)permitWebFilterURL:()Restrictions pageTitle:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "permitWebFilterURL: called but the web filter is not active: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)permitWebFilterURL:()Restrictions pageTitle:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Unknown web filter state: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)saveRestrictionsBlueprintWithValuesForPresetRestrictions:()Restrictions forUser:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1B831F000, a2, OS_LOG_TYPE_DEBUG, "Saving restrictions blueprint from presets to organization: %@", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)saveRestrictionsBlueprintWithValuesForPresetRestrictions:()Restrictions forUser:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1B831F000, v0, OS_LOG_TYPE_FAULT, "failed to serialize restrictions during save: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)saveRestrictionsBlueprintWithValuesForPresetRestrictions:()Restrictions forUser:error:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "failed to save restrictions blueprint: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end