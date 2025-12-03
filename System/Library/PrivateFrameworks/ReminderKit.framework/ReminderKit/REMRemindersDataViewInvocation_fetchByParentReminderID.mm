@interface REMRemindersDataViewInvocation_fetchByParentReminderID
- (BOOL)isEqual:(id)equal;
- (REMRemindersDataViewInvocation_fetchByParentReminderID)initWithCoder:(id)coder;
- (REMRemindersDataViewInvocation_fetchByParentReminderID)initWithParentReminderID:(id)d accountID:(id)iD subtaskFetchOption:(int64_t)option reminderFetchOptions:(id)options;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMRemindersDataViewInvocation_fetchByParentReminderID

- (REMRemindersDataViewInvocation_fetchByParentReminderID)initWithParentReminderID:(id)d accountID:(id)iD subtaskFetchOption:(int64_t)option reminderFetchOptions:(id)options
{
  dCopy = d;
  iDCopy = iD;
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = REMRemindersDataViewInvocation_fetchByParentReminderID;
  v14 = [(REMStoreInvocationValueStorage *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_parentReminderID, d);
    objc_storeStrong(&v15->_accountID, iD);
    v15->_subtaskFetchOption = option;
    objc_storeStrong(&v15->_reminderFetchOptions, options);
  }

  return v15;
}

- (REMRemindersDataViewInvocation_fetchByParentReminderID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentReminderID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v7 = [coderCopy decodeIntegerForKey:@"subtaskFetchOption"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reminderFetchOptions"];

  if (v5)
  {
    self = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self initWithParentReminderID:v5 accountID:v6 subtaskFetchOption:v7 reminderFetchOptions:v8];
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
  parentReminderID = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self parentReminderID];
  [coderCopy encodeObject:parentReminderID forKey:@"parentReminderID"];

  accountID = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  [coderCopy encodeInteger:-[REMRemindersDataViewInvocation_fetchByParentReminderID subtaskFetchOption](self forKey:{"subtaskFetchOption"), @"subtaskFetchOption"}];
  reminderFetchOptions = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self reminderFetchOptions];
  [coderCopy encodeObject:reminderFetchOptions forKey:@"reminderFetchOptions"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  parentReminderID = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self parentReminderID];
  parentReminderID2 = [equalCopy parentReminderID];
  v7 = parentReminderID2;
  if (parentReminderID == parentReminderID2)
  {
  }

  else
  {
    parentReminderID3 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self parentReminderID];
    parentReminderID4 = [equalCopy parentReminderID];
    v10 = [parentReminderID3 isEqual:parentReminderID4];

    if (!v10)
    {
      goto LABEL_13;
    }
  }

  accountID = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self accountID];
  accountID2 = [equalCopy accountID];
  v13 = accountID2;
  if (accountID == accountID2)
  {
  }

  else
  {
    accountID3 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self accountID];
    accountID4 = [equalCopy accountID];
    v16 = [accountID3 isEqual:accountID4];

    if (!v16)
    {
      goto LABEL_13;
    }
  }

  subtaskFetchOption = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self subtaskFetchOption];
  if (subtaskFetchOption != [equalCopy subtaskFetchOption])
  {
LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  reminderFetchOptions = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self reminderFetchOptions];
  reminderFetchOptions2 = [equalCopy reminderFetchOptions];
  if (reminderFetchOptions == reminderFetchOptions2)
  {
    v22 = 1;
  }

  else
  {
    reminderFetchOptions3 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self reminderFetchOptions];
    reminderFetchOptions4 = [equalCopy reminderFetchOptions];
    v22 = [reminderFetchOptions3 isEqual:reminderFetchOptions4];
  }

LABEL_14:
  return v22 & 1;
}

- (unint64_t)hash
{
  parentReminderID = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self parentReminderID];
  v4 = [parentReminderID hash];
  accountID = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self accountID];
  v6 = [accountID hash] ^ v4;
  reminderFetchOptions = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self reminderFetchOptions];
  v8 = [reminderFetchOptions hash];
  v9 = [(REMRemindersDataViewInvocation_fetchByParentReminderID *)self subtaskFetchOption]+ v8;

  return v6 ^ v9;
}

@end