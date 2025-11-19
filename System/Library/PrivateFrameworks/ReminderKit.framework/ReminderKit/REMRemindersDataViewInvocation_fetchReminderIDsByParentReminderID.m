@interface REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID
- (BOOL)isEqual:(id)a3;
- (REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID)initWithCoder:(id)a3;
- (REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID)initWithParentReminderID:(id)a3 includeIncomplete:(BOOL)a4 includeCompleted:(BOOL)a5 isUnsupported:(BOOL)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID

- (REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID)initWithParentReminderID:(id)a3 includeIncomplete:(BOOL)a4 includeCompleted:(BOOL)a5 isUnsupported:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID;
  v12 = [(REMStoreInvocationValueStorage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parentReminderID, a3);
    v13->_includeIncomplete = a4;
    v13->_includeCompleted = a5;
    v13->_isUnsupported = a6;
  }

  return v13;
}

- (REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentReminderID"];
  v6 = [v4 decodeBoolForKey:@"includeIncomplete"];
  v7 = [v4 decodeBoolForKey:@"includeCompleted"];
  v8 = [v4 decodeBoolForKey:@"isUnsupported"];

  if (v5)
  {
    self = [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self initWithParentReminderID:v5 includeIncomplete:v6 includeCompleted:v7 isUnsupported:v8];
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
  v5 = a3;
  v4 = [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self parentReminderID];
  [v5 encodeObject:v4 forKey:@"parentReminderID"];

  [v5 encodeBool:-[REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID includeIncomplete](self forKey:{"includeIncomplete"), @"includeIncomplete"}];
  [v5 encodeBool:-[REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID includeCompleted](self forKey:{"includeCompleted"), @"includeCompleted"}];
  [v5 encodeBool:-[REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID isUnsupported](self forKey:{"isUnsupported"), @"isUnsupported"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self parentReminderID];
  v6 = [v4 parentReminderID];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self parentReminderID];
    v9 = [v4 parentReminderID];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v11 = [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self includeIncomplete];
  if (v11 == [v4 includeIncomplete])
  {
    v12 = [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self includeCompleted];
    if (v12 == [v4 includeCompleted])
    {
      v15 = [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self isUnsupported];
      v13 = v15 ^ [v4 isUnsupported] ^ 1;
      goto LABEL_9;
    }
  }

LABEL_8:
  LOBYTE(v13) = 0;
LABEL_9:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self parentReminderID];
  v4 = [v3 hash];
  v5 = v4 + [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self includeIncomplete];
  v6 = v5 + [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self includeCompleted];
  v7 = v6 + [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self isUnsupported];

  return v7;
}

@end