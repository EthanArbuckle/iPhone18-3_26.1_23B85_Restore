@interface REMExporting(ICSExport)
@end

@implementation REMExporting(ICSExport)

+ (void)_icsCalendarItemsFromReminders:()ICSExport exportingOption:.cold.1()
{
  OUTLINED_FUNCTION_0_12();
  v1 = [v0 description];
  OUTLINED_FUNCTION_4_4(v1, 5.7779e-34);
  OUTLINED_FUNCTION_2_1(&dword_19A0DB000, v2, v3, "Couldn't create ICSComponents for reminder %@");
}

+ (void)icsTodoFromReminder:()ICSExport exportingOption:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Failed to parse reminder.importedICSData to an ICS document {error: %@}.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)icsTodoFromReminder:()ICSExport exportingOption:.cold.2(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 timeZone];
  v5 = [a1 objectID];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Failed to obtain an NSTimeZone from reminder.timeZone when exporting due date components to ICS {timeZoneString: %@, reminderID: %@}.", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_updateICSComponentWithReminder:()ICSExport icsCalendarItem:.cold.2()
{
  OUTLINED_FUNCTION_0_12();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_4_4(v3, 5.7779e-34);
  _os_log_fault_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_FAULT, "Unexpected type of REMAlarmTrigger (%@), unable to export to ICSAlarm.", v1, 0xCu);
}

+ (void)_updateICSComponentWithReminder:()ICSExport icsCalendarItem:.cold.3(uint8_t *a1, _BYTE *a2)
{
  v4 = +[REMLogStore read];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *a1 = 0;
    *a2 = 0;
    _os_log_fault_impl(&dword_19A0DB000, v4, OS_LOG_TYPE_FAULT, "rem_log_fault_if (REMIsInvalidICSAlarmDateComponents(remAlarmDateTrigger.dateComponents)) -- ReminderKit does not create nor import invalid alarm trigger date in alarms.", a1, 2u);
  }
}

+ (void)_updateICSComponentWithReminder:()ICSExport icsCalendarItem:.cold.4()
{
  OUTLINED_FUNCTION_0_12();
  v1 = [v0 objectID];
  OUTLINED_FUNCTION_4_4(v1, 5.7779e-34);
  OUTLINED_FUNCTION_2_1(&dword_19A0DB000, v2, v3, "AlarmUID was not set, generating one when exporting to ICS {remObjectID: %@}.");
}

+ (void)_updateICSComponentWithReminder:()ICSExport icsCalendarItem:.cold.5(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_19A0DB000, log, OS_LOG_TYPE_ERROR, "UpdateICSStructuredLocationFromREMStructuredLocation dropping mapkit handle because it exceeds the max length restriction on many servers.", buf, 2u);
}

+ (void)_updateICSComponentWithReminder:()ICSExport icsCalendarItem:.cold.6()
{
  OUTLINED_FUNCTION_0_12();
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:v0];
  OUTLINED_FUNCTION_4_4(v1, 5.7779e-34);
  OUTLINED_FUNCTION_2_1(&dword_19A0DB000, v2, v3, "Encountered an unknown calendar frequency: %@");
}

+ (void)_updateICSComponentWithReminder:()ICSExport icsCalendarItem:.cold.7()
{
  OUTLINED_FUNCTION_0_12();
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:v0];
  OUTLINED_FUNCTION_4_4(v1, 5.7779e-34);
  OUTLINED_FUNCTION_2_1(&dword_19A0DB000, v2, v3, "Encountered an unknown REMWeekday: %@");
}

@end