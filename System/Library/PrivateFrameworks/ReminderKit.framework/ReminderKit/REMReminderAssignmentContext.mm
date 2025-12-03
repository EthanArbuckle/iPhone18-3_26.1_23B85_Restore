@interface REMReminderAssignmentContext
- (NSSet)assignments;
- (REMAssignment)currentAssignment;
- (REMReminder)reminder;
- (REMReminderAssignmentContext)initWithReminder:(id)reminder;
@end

@implementation REMReminderAssignmentContext

- (REMReminderAssignmentContext)initWithReminder:(id)reminder
{
  reminderCopy = reminder;
  v8.receiver = self;
  v8.super_class = REMReminderAssignmentContext;
  v5 = [(REMReminderAssignmentContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_reminder, reminderCopy);
  }

  return v6;
}

- (REMAssignment)currentAssignment
{
  reminder = [(REMReminderAssignmentContext *)self reminder];
  storage = [reminder storage];
  currentAssignment = [storage currentAssignment];

  return currentAssignment;
}

- (NSSet)assignments
{
  reminder = [(REMReminderAssignmentContext *)self reminder];
  assignments = [reminder assignments];

  if (assignments)
  {
    reminder2 = [(REMReminderAssignmentContext *)self reminder];
    assignments2 = [reminder2 assignments];
  }

  else
  {
    assignments2 = [MEMORY[0x1E695DFD8] set];
  }

  return assignments2;
}

- (REMReminder)reminder
{
  WeakRetained = objc_loadWeakRetained(&self->_reminder);

  return WeakRetained;
}

@end