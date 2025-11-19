@interface STBlueprint(Downtime)
- (void)_updateActiveOverrideAfterScheduleChange;
@end

@implementation STBlueprint(Downtime)

- (void)_updateActiveOverrideAfterScheduleChange
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to modify active override on downtime blueprint: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_downtimeForUser:()Downtime inContext:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "There should never be more than one downtime blueprint: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_downtimeForUser:()Downtime inContext:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to fetch existing downtime blueprint: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_userForUserID:()Downtime inContext:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Could not find user for ID: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)saveDowntimeForUser:()Downtime startTime:endTime:scheduleByWeekdayIndex:enabled:behaviorType:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to save downtime blueprint: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)saveDowntimeForUser:()Downtime startTime:endTime:scheduleByWeekdayIndex:enabled:behaviorType:error:.cold.2(char a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = @"Enable";
  if ((a1 & 1) == 0)
  {
    v3 = @"Disable";
  }

  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_fault_impl(&dword_1B831F000, log, OS_LOG_TYPE_FAULT, "Failed to apply schedule state change: %@ - %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

+ (void)_updatedDowntimeForUser:()Downtime startTime:endTime:scheduleByWeekdayIndex:enabled:behaviorType:error:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, a1, a3, "%{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_updatedDowntimeForUser:()Downtime startTime:endTime:scheduleByWeekdayIndex:enabled:behaviorType:error:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "User has no managing organization: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_declarationForDowntime:()Downtime user:configuration:behaviorType:context:error:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, MEMORY[0x1E69E9C10], v0, "failed to deserialize downtime configuration: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_updateConfiguration:()Downtime withDeclaration:context:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Failed to serialize downtime configuration: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_applyScheduleStateChange:()Downtime atDate:inCalendar:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to save downtime schedule state change: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_applyScheduleStateChange:()Downtime atDate:inCalendar:error:.cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, a2, a3, "Cannot apply schedule state change: %@ without schedule", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end