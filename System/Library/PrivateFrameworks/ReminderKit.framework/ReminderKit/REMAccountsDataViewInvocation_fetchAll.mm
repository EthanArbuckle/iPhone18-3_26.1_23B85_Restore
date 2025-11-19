@interface REMAccountsDataViewInvocation_fetchAll
- (BOOL)isEqual:(id)a3;
- (REMAccountsDataViewInvocation_fetchAll)initWithCoder:(id)a3;
- (REMAccountsDataViewInvocation_fetchAll)initWithPurpose:(int64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMAccountsDataViewInvocation_fetchAll

- (REMAccountsDataViewInvocation_fetchAll)initWithPurpose:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = REMAccountsDataViewInvocation_fetchAll;
  result = [(REMStoreInvocationValueStorage *)&v5 init];
  if (result)
  {
    result->_purpose = a3;
  }

  return result;
}

- (REMAccountsDataViewInvocation_fetchAll)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"purpose"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[REMAccountsDataViewInvocation_fetchAll purpose](self forKey:{"purpose"), @"purpose"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMAccountsDataViewInvocation_fetchAll *)self purpose];
    v6 = v5 == [v4 purpose];
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