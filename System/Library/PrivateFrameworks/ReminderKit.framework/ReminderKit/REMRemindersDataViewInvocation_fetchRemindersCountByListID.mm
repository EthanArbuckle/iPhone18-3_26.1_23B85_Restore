@interface REMRemindersDataViewInvocation_fetchRemindersCountByListID
- (BOOL)isEqual:(id)equal;
- (REMRemindersDataViewInvocation_fetchRemindersCountByListID)initWithCoder:(id)coder;
- (REMRemindersDataViewInvocation_fetchRemindersCountByListID)initWithListID:(id)d includingCompleted:(BOOL)completed;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMRemindersDataViewInvocation_fetchRemindersCountByListID

- (REMRemindersDataViewInvocation_fetchRemindersCountByListID)initWithListID:(id)d includingCompleted:(BOOL)completed
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = REMRemindersDataViewInvocation_fetchRemindersCountByListID;
  v8 = [(REMStoreInvocationValueStorage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_listID, d);
    v9->_includingCompleted = completed;
  }

  return v9;
}

- (REMRemindersDataViewInvocation_fetchRemindersCountByListID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listID"];
  v6 = [coderCopy decodeBoolForKey:@"includingCompleted"];

  if (v5)
  {
    self = [(REMRemindersDataViewInvocation_fetchRemindersCountByListID *)self initWithListID:v5 includingCompleted:v6];
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
  listID = [(REMRemindersDataViewInvocation_fetchRemindersCountByListID *)self listID];
  [coderCopy encodeObject:listID forKey:@"listID"];

  [coderCopy encodeBool:-[REMRemindersDataViewInvocation_fetchRemindersCountByListID includingCompleted](self forKey:{"includingCompleted"), @"includingCompleted"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  listID = [(REMRemindersDataViewInvocation_fetchRemindersCountByListID *)self listID];
  listID2 = [equalCopy listID];
  v7 = listID2;
  if (listID == listID2)
  {

    goto LABEL_6;
  }

  listID3 = [(REMRemindersDataViewInvocation_fetchRemindersCountByListID *)self listID];
  listID4 = [equalCopy listID];
  v10 = [listID3 isEqual:listID4];

  if (v10)
  {
LABEL_6:
    includingCompleted = [(REMRemindersDataViewInvocation_fetchRemindersCountByListID *)self includingCompleted];
    v11 = includingCompleted ^ [equalCopy includingCompleted] ^ 1;
    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v11) = 0;
LABEL_7:

  return v11;
}

- (unint64_t)hash
{
  listID = [(REMRemindersDataViewInvocation_fetchRemindersCountByListID *)self listID];
  v4 = [listID hash];
  v5 = v4 + [(REMRemindersDataViewInvocation_fetchRemindersCountByListID *)self includingCompleted];

  return v5;
}

@end