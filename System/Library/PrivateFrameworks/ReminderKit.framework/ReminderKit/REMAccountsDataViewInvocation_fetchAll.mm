@interface REMAccountsDataViewInvocation_fetchAll
- (BOOL)isEqual:(id)equal;
- (REMAccountsDataViewInvocation_fetchAll)initWithCoder:(id)coder;
- (REMAccountsDataViewInvocation_fetchAll)initWithPurpose:(int64_t)purpose;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAccountsDataViewInvocation_fetchAll

- (REMAccountsDataViewInvocation_fetchAll)initWithPurpose:(int64_t)purpose
{
  v5.receiver = self;
  v5.super_class = REMAccountsDataViewInvocation_fetchAll;
  result = [(REMStoreInvocationValueStorage *)&v5 init];
  if (result)
  {
    result->_purpose = purpose;
  }

  return result;
}

- (REMAccountsDataViewInvocation_fetchAll)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"purpose"];
  if (v4 >= 3)
  {
    v5 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(REMAccountsDataViewInvocation_fetchAll *)v4 initWithCoder:v5];
    }

    v4 = 0;
  }

  return [(REMAccountsDataViewInvocation_fetchAll *)self initWithPurpose:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[REMAccountsDataViewInvocation_fetchAll purpose](self forKey:{"purpose"), @"purpose"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    purpose = [(REMAccountsDataViewInvocation_fetchAll *)self purpose];
    v6 = purpose == [equalCopy purpose];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  return v4;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMAccountsDataViewInvocation_fetchAll_purpose %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end