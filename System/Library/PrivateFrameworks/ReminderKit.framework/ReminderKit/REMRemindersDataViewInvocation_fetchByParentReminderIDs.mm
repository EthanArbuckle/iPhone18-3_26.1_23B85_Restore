@interface REMRemindersDataViewInvocation_fetchByParentReminderIDs
- (BOOL)isEqual:(id)a3;
- (REMRemindersDataViewInvocation_fetchByParentReminderIDs)initWithCoder:(id)a3;
- (REMRemindersDataViewInvocation_fetchByParentReminderIDs)initWithParentReminderIDs:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMRemindersDataViewInvocation_fetchByParentReminderIDs

- (REMRemindersDataViewInvocation_fetchByParentReminderIDs)initWithParentReminderIDs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMRemindersDataViewInvocation_fetchByParentReminderIDs;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentReminderIDs, a3);
  }

  return v7;
}

- (REMRemindersDataViewInvocation_fetchByParentReminderIDs)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"parentReminderIDs"];

  if (v8)
  {
    self = [(REMRemindersDataViewInvocation_fetchByParentReminderIDs *)self initWithParentReminderIDs:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMRemindersDataViewInvocation_fetchByParentReminderIDs *)self parentReminderIDs];
  [v4 encodeObject:v5 forKey:@"parentReminderIDs"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMRemindersDataViewInvocation_fetchByParentReminderIDs *)self parentReminderIDs];
    v6 = [v4 parentReminderIDs];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMRemindersDataViewInvocation_fetchByParentReminderIDs *)self parentReminderIDs];
      v8 = [v4 parentReminderIDs];
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMRemindersDataViewInvocation_fetchByParentReminderIDs *)self parentReminderIDs];
  v3 = [v2 hash];

  return v3;
}

@end