@interface REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID
- (BOOL)isEqual:(id)equal;
- (REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID)initWithCoder:(id)coder;
- (REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID)initWithParentReminderID:(id)d includingConcealed:(BOOL)concealed;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID

- (REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID)initWithParentReminderID:(id)d includingConcealed:(BOOL)concealed
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID;
  v8 = [(REMStoreInvocationValueStorage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parentReminderID, d);
    v9->_includingConcealed = concealed;
  }

  return v9;
}

- (REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentReminderID"];
  v6 = [coderCopy decodeBoolForKey:@"includingConcealed"];

  if (v5)
  {
    self = [(REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID *)self initWithParentReminderID:v5 includingConcealed:v6];
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
  parentReminderID = [(REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID *)self parentReminderID];
  [coderCopy encodeObject:parentReminderID forKey:@"parentReminderID"];

  [coderCopy encodeBool:-[REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID includingConcealed](self forKey:{"includingConcealed"), @"includingConcealed"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  parentReminderID = [(REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID *)self parentReminderID];
  parentReminderID2 = [equalCopy parentReminderID];
  v7 = parentReminderID2;
  if (parentReminderID == parentReminderID2)
  {

    goto LABEL_6;
  }

  parentReminderID3 = [(REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID *)self parentReminderID];
  parentReminderID4 = [equalCopy parentReminderID];
  v10 = [parentReminderID3 isEqual:parentReminderID4];

  if (v10)
  {
LABEL_6:
    includingConcealed = [(REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID *)self includingConcealed];
    v11 = includingConcealed ^ [equalCopy includingConcealed] ^ 1;
    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v11) = 0;
LABEL_7:

  return v11;
}

- (unint64_t)hash
{
  parentReminderID = [(REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID *)self parentReminderID];
  v4 = [parentReminderID hash];
  v5 = v4 + [(REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID *)self includingConcealed];

  return v5;
}

@end