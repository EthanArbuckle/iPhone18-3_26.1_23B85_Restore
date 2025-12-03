@interface REMAccountSortDescriptor
- (REMAccountSortDescriptor)initWithCoder:(id)coder;
- (REMAccountSortDescriptor)initWithType:(int64_t)type ascending:(BOOL)ascending;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAccountSortDescriptor

- (REMAccountSortDescriptor)initWithType:(int64_t)type ascending:(BOOL)ascending
{
  v7.receiver = self;
  v7.super_class = REMAccountSortDescriptor;
  result = [(REMAccountSortDescriptor *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_ascending = ascending;
  }

  return result;
}

- (REMAccountSortDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  if (v5)
  {
    v6 = v5;
    v7 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(REMAccountSortDescriptor *)v6 initWithCoder:v7];
    }
  }

  v8 = -[REMAccountSortDescriptor initWithType:ascending:](self, "initWithType:ascending:", 0, [coderCopy decodeBoolForKey:@"ascending"]);

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[REMAccountSortDescriptor type](self forKey:{"type"), @"type"}];
  [coderCopy encodeBool:-[REMAccountSortDescriptor ascending](self forKey:{"ascending"), @"ascending"}];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMAccountSortDescriptorType %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end