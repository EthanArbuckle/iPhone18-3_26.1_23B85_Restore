@interface REMSaveRequest(Importing)
@end

@implementation REMSaveRequest(Importing)

- (void)importRemindersFromICSData:()Importing insertIntoListChangeItem:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Failed to parse data to ICS document {error: %@}.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_populateReminderChangeItem:()Importing withICSTodoItem:icsCalendar:isNew:withOptions:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 url];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_addAlarmsToReminderChangeItem:()Importing withICSAlarm:icsCalendar:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [a2 objectID];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_19A0DB000, a3, OS_LOG_TYPE_DEBUG, "Import ICS alarm and triggers to reminder {alarmUID: %@, reminderID: %@}.", v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_addAlarmsToReminderChangeItem:()Importing withICSAlarm:icsCalendar:.cold.2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 objectID];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_addAlarmsToReminderChangeItem:()Importing withICSAlarm:icsCalendar:.cold.3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 objectID];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end