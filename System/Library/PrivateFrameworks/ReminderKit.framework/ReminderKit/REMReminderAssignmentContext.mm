@interface REMReminderAssignmentContext
- (NSSet)assignments;
- (REMAssignment)currentAssignment;
- (REMReminder)reminder;
- (REMReminderAssignmentContext)initWithReminder:(id)a3;
@end

@implementation REMReminderAssignmentContext

- (REMReminderAssignmentContext)initWithReminder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = REMReminderAssignmentContext;
  v5 = [(REMReminderAssignmentContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_reminder, v4);
  }

  return v6;
}

- (REMAssignment)currentAssignment
{
  v2 = [(REMReminderAssignmentContext *)self reminder];
  v3 = [v2 storage];
  v4 = [v3 currentAssignment];

  return v4;
}

- (NSSet)assignments
{
  v3 = [(REMReminderAssignmentContext *)self reminder];
  v4 = [v3 assignments];

  if (v4)
  {
    v5 = [(REMReminderAssignmentContext *)self reminder];
    v6 = [v5 assignments];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] set];
  }

  return v6;
}

- (REMReminder)reminder
{
  WeakRetained = objc_loadWeakRetained(&self->_reminder);

  return WeakRetained;
}

@end