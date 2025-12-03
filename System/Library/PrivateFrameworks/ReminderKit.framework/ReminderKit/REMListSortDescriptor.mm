@interface REMListSortDescriptor
- (BOOL)isEqual:(id)equal;
- (REMListSortDescriptor)initWithCoder:(id)coder;
- (REMListSortDescriptor)initWithType:(int64_t)type ascending:(BOOL)ascending;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMListSortDescriptor

- (REMListSortDescriptor)initWithType:(int64_t)type ascending:(BOOL)ascending
{
  v7.receiver = self;
  v7.super_class = REMListSortDescriptor;
  result = [(REMListSortDescriptor *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_ascending = ascending;
  }

  return result;
}

- (REMListSortDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  if (v5 >= 2)
  {
    v6 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(REMListSortDescriptor *)v5 initWithCoder:v6];
    }

    v5 = 0;
  }

  v7 = -[REMListSortDescriptor initWithType:ascending:](self, "initWithType:ascending:", v5, [coderCopy decodeBoolForKey:@"ascending"]);

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[REMListSortDescriptor type](self forKey:{"type"), @"type"}];
  [coderCopy encodeBool:-[REMListSortDescriptor ascending](self forKey:{"ascending"), @"ascending"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = [(REMListSortDescriptor *)v6 type], v7 == [(REMListSortDescriptor *)self type]))
    {
      ascending = [(REMListSortDescriptor *)v6 ascending];
      v9 = ascending ^ [(REMListSortDescriptor *)self ascending]^ 1;
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
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMListSortDescriptorType %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end