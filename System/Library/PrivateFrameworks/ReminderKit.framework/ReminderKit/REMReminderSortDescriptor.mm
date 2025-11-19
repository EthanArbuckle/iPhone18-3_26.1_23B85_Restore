@interface REMReminderSortDescriptor
- (BOOL)isEqual:(id)a3;
- (REMReminderSortDescriptor)initWithCoder:(id)a3;
- (REMReminderSortDescriptor)initWithType:(int64_t)a3 ascending:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMReminderSortDescriptor

- (REMReminderSortDescriptor)initWithType:(int64_t)a3 ascending:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = REMReminderSortDescriptor;
  result = [(REMReminderSortDescriptor *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_ascending = a4;
  }

  return result;
}

- (REMReminderSortDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  if (v5 >= 5)
  {
    v6 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(REMReminderSortDescriptor *)v5 initWithCoder:v6];
    }

    v5 = 1;
  }

  v7 = -[REMReminderSortDescriptor initWithType:ascending:](self, "initWithType:ascending:", v5, [v4 decodeBoolForKey:@"ascending"]);

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[REMReminderSortDescriptor type](self forKey:{"type"), @"type"}];
  [v4 encodeBool:-[REMReminderSortDescriptor ascending](self forKey:{"ascending"), @"ascending"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = [(REMReminderSortDescriptor *)self type], v7 == [(REMReminderSortDescriptor *)v6 type]))
    {
      v8 = [(REMReminderSortDescriptor *)self ascending];
      v9 = v8 ^ [(REMReminderSortDescriptor *)v6 ascending]^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMReminderSortDescriptorType %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end