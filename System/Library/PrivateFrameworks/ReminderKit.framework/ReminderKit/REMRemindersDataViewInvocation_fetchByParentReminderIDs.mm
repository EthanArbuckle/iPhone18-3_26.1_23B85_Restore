@interface REMRemindersDataViewInvocation_fetchByParentReminderIDs
- (BOOL)isEqual:(id)equal;
- (REMRemindersDataViewInvocation_fetchByParentReminderIDs)initWithCoder:(id)coder;
- (REMRemindersDataViewInvocation_fetchByParentReminderIDs)initWithParentReminderIDs:(id)ds;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMRemindersDataViewInvocation_fetchByParentReminderIDs

- (REMRemindersDataViewInvocation_fetchByParentReminderIDs)initWithParentReminderIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = REMRemindersDataViewInvocation_fetchByParentReminderIDs;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentReminderIDs, ds);
  }

  return v7;
}

- (REMRemindersDataViewInvocation_fetchByParentReminderIDs)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"parentReminderIDs"];

  if (v8)
  {
    self = [(REMRemindersDataViewInvocation_fetchByParentReminderIDs *)self initWithParentReminderIDs:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  parentReminderIDs = [(REMRemindersDataViewInvocation_fetchByParentReminderIDs *)self parentReminderIDs];
  [coderCopy encodeObject:parentReminderIDs forKey:@"parentReminderIDs"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    parentReminderIDs = [(REMRemindersDataViewInvocation_fetchByParentReminderIDs *)self parentReminderIDs];
    parentReminderIDs2 = [equalCopy parentReminderIDs];
    if (parentReminderIDs == parentReminderIDs2)
    {
      v9 = 1;
    }

    else
    {
      parentReminderIDs3 = [(REMRemindersDataViewInvocation_fetchByParentReminderIDs *)self parentReminderIDs];
      parentReminderIDs4 = [equalCopy parentReminderIDs];
      v9 = [parentReminderIDs3 isEqual:parentReminderIDs4];
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
  parentReminderIDs = [(REMRemindersDataViewInvocation_fetchByParentReminderIDs *)self parentReminderIDs];
  v3 = [parentReminderIDs hash];

  return v3;
}

@end