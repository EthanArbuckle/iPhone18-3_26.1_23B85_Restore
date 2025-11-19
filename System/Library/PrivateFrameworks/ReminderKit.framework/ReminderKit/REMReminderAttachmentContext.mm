@interface REMReminderAttachmentContext
- (NSArray)attachments;
- (NSArray)fileAttachments;
- (NSArray)imageAttachments;
- (NSArray)urlAttachments;
- (REMReminderAttachmentContext)initWithReminder:(id)a3;
- (id)attachmentsOfClass:(Class)a3;
@end

@implementation REMReminderAttachmentContext

- (REMReminderAttachmentContext)initWithReminder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMReminderAttachmentContext;
  v6 = [(REMReminderAttachmentContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminder, a3);
  }

  return v7;
}

- (id)attachmentsOfClass:(Class)a3
{
  v4 = [(REMReminderAttachmentContext *)self attachments];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__REMReminderAttachmentContext_attachmentsOfClass___block_invoke;
  v8[3] = &__block_descriptor_40_e26_B24__0__REMAttachment_8_16lu32l8;
  v8[4] = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:v8];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  return v6;
}

- (NSArray)fileAttachments
{
  v3 = objc_opt_class();

  return [(REMReminderAttachmentContext *)self attachmentsOfClass:v3];
}

- (NSArray)imageAttachments
{
  v3 = objc_opt_class();

  return [(REMReminderAttachmentContext *)self attachmentsOfClass:v3];
}

- (NSArray)urlAttachments
{
  v3 = objc_opt_class();

  return [(REMReminderAttachmentContext *)self attachmentsOfClass:v3];
}

- (NSArray)attachments
{
  v3 = [(REMReminderAttachmentContext *)self reminder];
  v4 = [v3 attachments];

  if (v4)
  {
    v5 = [(REMReminderAttachmentContext *)self reminder];
    v6 = [v5 attachments];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

@end