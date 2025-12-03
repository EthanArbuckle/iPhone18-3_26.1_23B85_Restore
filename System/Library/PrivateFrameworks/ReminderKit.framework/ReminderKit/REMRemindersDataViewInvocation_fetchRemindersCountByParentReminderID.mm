@interface REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID
- (BOOL)isEqual:(id)equal;
- (REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID)initWithCoder:(id)coder;
- (REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID)initWithParentReminderID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID

- (REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID)initWithParentReminderID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentReminderID, d);
  }

  return v7;
}

- (REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentReminderID"];

  if (v5)
  {
    self = [(REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID *)self initWithParentReminderID:v5];
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
  parentReminderID = [(REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID *)self parentReminderID];
  [coderCopy encodeObject:parentReminderID forKey:@"parentReminderID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    parentReminderID = [(REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID *)self parentReminderID];
    parentReminderID2 = [equalCopy parentReminderID];
    if (parentReminderID == parentReminderID2)
    {
      v9 = 1;
    }

    else
    {
      parentReminderID3 = [(REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID *)self parentReminderID];
      parentReminderID4 = [equalCopy parentReminderID];
      v9 = [parentReminderID3 isEqual:parentReminderID4];
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
  parentReminderID = [(REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID *)self parentReminderID];
  v3 = [parentReminderID hash];

  return v3;
}

@end