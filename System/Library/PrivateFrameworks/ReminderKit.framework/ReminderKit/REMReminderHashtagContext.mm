@interface REMReminderHashtagContext
- (NSSet)hashtags;
- (REMReminder)reminder;
- (REMReminderHashtagContext)initWithReminder:(id)a3;
@end

@implementation REMReminderHashtagContext

- (REMReminderHashtagContext)initWithReminder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = REMReminderHashtagContext;
  v5 = [(REMReminderHashtagContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_reminder, v4);
  }

  return v6;
}

- (NSSet)hashtags
{
  v3 = [(REMReminderHashtagContext *)self reminder];
  v4 = [v3 hashtags];

  if (v4)
  {
    v5 = [(REMReminderHashtagContext *)self reminder];
    v6 = [v5 hashtags];
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