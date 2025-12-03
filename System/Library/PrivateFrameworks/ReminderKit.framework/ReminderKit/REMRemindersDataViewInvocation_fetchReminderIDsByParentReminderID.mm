@interface REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID
- (BOOL)isEqual:(id)equal;
- (REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID)initWithCoder:(id)coder;
- (REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID)initWithParentReminderID:(id)d includeIncomplete:(BOOL)incomplete includeCompleted:(BOOL)completed isUnsupported:(BOOL)unsupported;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID

- (REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID)initWithParentReminderID:(id)d includeIncomplete:(BOOL)incomplete includeCompleted:(BOOL)completed isUnsupported:(BOOL)unsupported
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID;
  v12 = [(REMStoreInvocationValueStorage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parentReminderID, d);
    v13->_includeIncomplete = incomplete;
    v13->_includeCompleted = completed;
    v13->_isUnsupported = unsupported;
  }

  return v13;
}

- (REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentReminderID"];
  v6 = [coderCopy decodeBoolForKey:@"includeIncomplete"];
  v7 = [coderCopy decodeBoolForKey:@"includeCompleted"];
  v8 = [coderCopy decodeBoolForKey:@"isUnsupported"];

  if (v5)
  {
    self = [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self initWithParentReminderID:v5 includeIncomplete:v6 includeCompleted:v7 isUnsupported:v8];
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
  parentReminderID = [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self parentReminderID];
  [coderCopy encodeObject:parentReminderID forKey:@"parentReminderID"];

  [coderCopy encodeBool:-[REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID includeIncomplete](self forKey:{"includeIncomplete"), @"includeIncomplete"}];
  [coderCopy encodeBool:-[REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID includeCompleted](self forKey:{"includeCompleted"), @"includeCompleted"}];
  [coderCopy encodeBool:-[REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID isUnsupported](self forKey:{"isUnsupported"), @"isUnsupported"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  parentReminderID = [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self parentReminderID];
  parentReminderID2 = [equalCopy parentReminderID];
  v7 = parentReminderID2;
  if (parentReminderID == parentReminderID2)
  {
  }

  else
  {
    parentReminderID3 = [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self parentReminderID];
    parentReminderID4 = [equalCopy parentReminderID];
    v10 = [parentReminderID3 isEqual:parentReminderID4];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  includeIncomplete = [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self includeIncomplete];
  if (includeIncomplete == [equalCopy includeIncomplete])
  {
    includeCompleted = [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self includeCompleted];
    if (includeCompleted == [equalCopy includeCompleted])
    {
      isUnsupported = [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self isUnsupported];
      v13 = isUnsupported ^ [equalCopy isUnsupported] ^ 1;
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
  parentReminderID = [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self parentReminderID];
  v4 = [parentReminderID hash];
  v5 = v4 + [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self includeIncomplete];
  v6 = v5 + [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self includeCompleted];
  v7 = v6 + [(REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID *)self isUnsupported];

  return v7;
}

@end