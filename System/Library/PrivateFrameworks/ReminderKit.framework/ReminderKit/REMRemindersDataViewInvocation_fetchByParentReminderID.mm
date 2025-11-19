@interface REMRemindersDataViewInvocation_fetchByParentReminderID
- (BOOL)isEqual:(id)a3;
- (REMRemindersDataViewInvocation_fetchByParentReminderID)initWithCoder:(id)a3;
- (REMRemindersDataViewInvocation_fetchByParentReminderID)initWithParentReminderID:(id)a3 accountID:(id)a4 subtaskFetchOption:(int64_t)a5 reminderFetchOptions:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMRemindersDataViewInvocation_fetchByParentReminderID

- (REMRemindersDataViewInvocation_fetchByParentReminderID)initWithParentReminderID:(id)a3 accountID:(id)a4 subtaskFetchOption:(int64_t)a5 reminderFetchOptions:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = REMRemindersDataViewInvocation_fetchByParentReminderID;
  v14 = [(REMStoreInvocationValueStorage *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_parentReminderID, a3);
    objc_storeStrong(&v15->_accountID, a4);
    v15->_subtaskFetchOption = a5;
    objc_storeStrong(&v15->_reminderFetchOptions, a6);
  }

  return v15;
}

- (REMRemindersDataViewInvocation_fetchByParentReminderID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentReminderID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v7 = [v4 decodeIntegerForKey:@"subtaskFetchOption"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reminderFetchOptions"];

  if (v5)
  {
    self = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self initWithParentReminderID:v5 accountID:v6 subtaskFetchOption:v7 reminderFetchOptions:v8];
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
  v5 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self parentReminderID];
  [v4 encodeObject:v5 forKey:@"parentReminderID"];

  v6 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self accountID];
  [v4 encodeObject:v6 forKey:@"accountID"];

  [v4 encodeInteger:-[REMRemindersDataViewInvocation_fetchByParentReminderID subtaskFetchOption](self forKey:{"subtaskFetchOption"), @"subtaskFetchOption"}];
  v7 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self reminderFetchOptions];
  [v4 encodeObject:v7 forKey:@"reminderFetchOptions"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self parentReminderID];
  v6 = [v4 parentReminderID];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self parentReminderID];
    v9 = [v4 parentReminderID];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_13;
    }
  }

  v11 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self accountID];
  v12 = [v4 accountID];
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self accountID];
    v15 = [v4 accountID];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_13;
    }
  }

  v17 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self subtaskFetchOption];
  if (v17 != [v4 subtaskFetchOption])
  {
LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  v18 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self reminderFetchOptions];
  v19 = [v4 reminderFetchOptions];
  if (v18 == v19)
  {
    v22 = 1;
  }

  else
  {
    v20 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self reminderFetchOptions];
    v21 = [v4 reminderFetchOptions];
    v22 = [v20 isEqual:v21];
  }

LABEL_14:
  return v22 & 1;
}

- (unint64_t)hash
{
  v3 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self parentReminderID];
  v4 = [v3 hash];
  v5 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self accountID];
  v6 = [v5 hash] ^ v4;
  v7 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self reminderFetchOptions];
  v8 = [v7 hash];
  v9 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self subtaskFetchOption]+ v8;

  return v6 ^ v9;
}

@end