@interface REMReminderHashtagContext
- (NSSet)hashtags;
- (REMReminder)reminder;
- (REMReminderHashtagContext)initWithReminder:(id)reminder;
@end

@implementation REMReminderHashtagContext

- (REMReminderHashtagContext)initWithReminder:(id)reminder
{
  reminderCopy = reminder;
  v8.receiver = self;
  v8.super_class = REMReminderHashtagContext;
  v5 = [(REMReminderHashtagContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_reminder, reminderCopy);
  }

  return v6;
}

- (NSSet)hashtags
{
  reminder = [(REMReminderHashtagContext *)self reminder];
  hashtags = [reminder hashtags];

  if (hashtags)
  {
    reminder2 = [(REMReminderHashtagContext *)self reminder];
    hashtags2 = [reminder2 hashtags];
  }

  else
  {
    hashtags2 = [MEMORY[0x1E695DFD8] set];
  }

  return hashtags2;
}

- (REMReminder)reminder
{
  WeakRetained = objc_loadWeakRetained(&self->_reminder);

  return WeakRetained;
}

@end