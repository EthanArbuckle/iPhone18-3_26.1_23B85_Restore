@interface REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList
- (BOOL)isEqual:(id)equal;
- (REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList)initWithCoder:(id)coder;
- (REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList)initWithListID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList

- (REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList)initWithListID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listID, d);
  }

  return v7;
}

- (REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listID"];

  v6 = [(REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList *)self initWithListID:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  listID = [(REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList *)self listID];
  [coderCopy encodeObject:listID forKey:@"listID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    listID = [(REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList *)self listID];
    listID2 = [equalCopy listID];
    if (listID == listID2)
    {
      v9 = 1;
    }

    else
    {
      listID3 = [(REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList *)self listID];
      listID4 = [equalCopy listID];
      v9 = [listID3 isEqual:listID4];
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
  listID = [(REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList *)self listID];
  v3 = [listID hash];

  return v3;
}

@end