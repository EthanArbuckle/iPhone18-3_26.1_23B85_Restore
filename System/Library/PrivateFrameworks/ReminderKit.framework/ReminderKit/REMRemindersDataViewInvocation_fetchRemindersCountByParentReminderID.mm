@interface REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID
- (BOOL)isEqual:(id)a3;
- (REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID)initWithCoder:(id)a3;
- (REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID)initWithParentReminderID:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID

- (REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID)initWithParentReminderID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentReminderID, a3);
  }

  return v7;
}

- (REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentReminderID"];

  if (v5)
  {
    self = [(REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID *)self initWithParentReminderID:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID *)self parentReminderID];
  [v4 encodeObject:v5 forKey:@"parentReminderID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID *)self parentReminderID];
    v6 = [v4 parentReminderID];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID *)self parentReminderID];
      v8 = [v4 parentReminderID];
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
  v2 = [(REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID *)self parentReminderID];
  v3 = [v2 hash];

  return v3;
}

@end