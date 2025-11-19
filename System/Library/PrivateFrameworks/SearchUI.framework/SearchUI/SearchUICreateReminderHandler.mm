@interface SearchUICreateReminderHandler
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUICreateReminderHandler

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v5 = [a3 reminder];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [MEMORY[0x1E6966AD8] reminderWithEventStore:v6];
    v8 = [v5 title];
    [v7 setTitle:v8];

    v9 = [MEMORY[0x1E695DEE8] currentCalendar];
    v10 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v11 = [v5 dueDate];
    v12 = [v9 componentsInTimeZone:v10 fromDate:v11];
    [v7 setDueDateComponents:v12];

    v13 = [v5 notes];
    [v7 setNotes:v13];

    v14 = [v6 defaultCalendarForNewReminders];
    [v7 setCalendar:v14];

    v15 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    [v7 setTimeZone:v15];

    v23 = 0;
    [v6 saveReminder:v7 commit:1 error:&v23];
    v16 = v23;
    if (v16)
    {
      v17 = SearchUITapLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [SearchUICreateReminderHandler performCommand:v16 triggerEvent:v17 environment:?];
      }
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x1E695DFF8]);
      v19 = MEMORY[0x1E696AEC0];
      v20 = [v7 calendarItemIdentifier];
      v21 = [v19 stringWithFormat:@"x-apple-reminderkit://REMCDReminder/%@", v20];
      v17 = [v18 initWithString:v21];

      v22 = [MEMORY[0x1E69CA320] punchoutWithURL:v17];
      [SearchUIUtilities openPunchout:v22];
    }
  }

  else
  {
    v6 = SearchUITapLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SearchUICreateReminderHandler performCommand:v6 triggerEvent:? environment:?];
    }
  }
}

- (void)performCommand:(void *)a1 triggerEvent:(NSObject *)a2 environment:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "Error while creating new calendar event: %@", &v4, 0xCu);
}

@end