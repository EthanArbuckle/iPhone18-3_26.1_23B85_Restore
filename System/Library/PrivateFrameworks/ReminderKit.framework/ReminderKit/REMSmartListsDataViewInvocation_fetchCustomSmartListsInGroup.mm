@interface REMSmartListsDataViewInvocation_fetchCustomSmartListsInGroup
- (BOOL)isEqual:(id)equal;
- (REMSmartListsDataViewInvocation_fetchCustomSmartListsInGroup)initWithCoder:(id)coder;
- (REMSmartListsDataViewInvocation_fetchCustomSmartListsInGroup)initWithParentGroupObjectID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMSmartListsDataViewInvocation_fetchCustomSmartListsInGroup

- (REMSmartListsDataViewInvocation_fetchCustomSmartListsInGroup)initWithParentGroupObjectID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = REMSmartListsDataViewInvocation_fetchCustomSmartListsInGroup;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupObjectID, d);
  }

  return v7;
}

- (REMSmartListsDataViewInvocation_fetchCustomSmartListsInGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupObjectID"];

  if (v5)
  {
    self = [(REMSmartListsDataViewInvocation_fetchCustomSmartListsInGroup *)self initWithParentGroupObjectID:v5];
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
  groupObjectID = [(REMSmartListsDataViewInvocation_fetchCustomSmartListsInGroup *)self groupObjectID];
  [coderCopy encodeObject:groupObjectID forKey:@"groupObjectID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    groupObjectID = [(REMSmartListsDataViewInvocation_fetchCustomSmartListsInGroup *)self groupObjectID];
    groupObjectID2 = [equalCopy groupObjectID];
    if (groupObjectID == groupObjectID2)
    {
      v9 = 1;
    }

    else
    {
      groupObjectID3 = [(REMSmartListsDataViewInvocation_fetchCustomSmartListsInGroup *)self groupObjectID];
      groupObjectID4 = [equalCopy groupObjectID];
      v9 = [groupObjectID3 isEqual:groupObjectID4];
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
  groupObjectID = [(REMSmartListsDataViewInvocation_fetchCustomSmartListsInGroup *)self groupObjectID];
  v3 = [groupObjectID hash];

  return v3;
}

@end