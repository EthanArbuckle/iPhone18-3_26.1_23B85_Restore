@interface REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID
- (BOOL)isEqual:(id)a3;
- (REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID)initWithCoder:(id)a3;
- (REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID)initWithParentReminderID:(id)a3 includingConcealed:(BOOL)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID

- (REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID)initWithParentReminderID:(id)a3 includingConcealed:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID;
  v8 = [(REMStoreInvocationValueStorage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parentReminderID, a3);
    v9->_includingConcealed = a4;
  }

  return v9;
}

- (REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentReminderID"];
  v6 = [v4 decodeBoolForKey:@"includingConcealed"];

  if (v5)
  {
    self = [(REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID *)self initWithParentReminderID:v5 includingConcealed:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID *)self parentReminderID];
  [v5 encodeObject:v4 forKey:@"parentReminderID"];

  [v5 encodeBool:-[REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID includingConcealed](self forKey:{"includingConcealed"), @"includingConcealed"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [(REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID *)self parentReminderID];
  v6 = [v4 parentReminderID];
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_6;
  }

  v8 = [(REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID *)self parentReminderID];
  v9 = [v4 parentReminderID];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
LABEL_6:
    v12 = [(REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID *)self includingConcealed];
    v11 = v12 ^ [v4 includingConcealed] ^ 1;
    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v11) = 0;
LABEL_7:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID *)self parentReminderID];
  v4 = [v3 hash];
  v5 = v4 + [(REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID *)self includingConcealed];

  return v5;
}

@end