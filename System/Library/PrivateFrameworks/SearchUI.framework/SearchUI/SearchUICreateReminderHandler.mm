@interface SearchUICreateReminderHandler
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUICreateReminderHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  reminder = [command reminder];
  if (reminder)
  {
    v6 = objc_opt_new();
    v7 = [MEMORY[0x1E6966AD8] reminderWithEventStore:v6];
    title = [reminder title];
    [v7 setTitle:title];

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    dueDate = [reminder dueDate];
    v12 = [currentCalendar componentsInTimeZone:defaultTimeZone fromDate:dueDate];
    [v7 setDueDateComponents:v12];

    notes = [reminder notes];
    [v7 setNotes:notes];

    defaultCalendarForNewReminders = [v6 defaultCalendarForNewReminders];
    [v7 setCalendar:defaultCalendarForNewReminders];

    defaultTimeZone2 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    [v7 setTimeZone:defaultTimeZone2];

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
      calendarItemIdentifier = [v7 calendarItemIdentifier];
      v21 = [v19 stringWithFormat:@"x-apple-reminderkit://REMCDReminder/%@", calendarItemIdentifier];
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