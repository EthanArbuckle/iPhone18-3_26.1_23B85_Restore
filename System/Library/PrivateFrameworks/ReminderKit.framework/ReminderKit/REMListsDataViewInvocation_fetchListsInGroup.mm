@interface REMListsDataViewInvocation_fetchListsInGroup
- (BOOL)isEqual:(id)equal;
- (REMListsDataViewInvocation_fetchListsInGroup)initWithCoder:(id)coder;
- (REMListsDataViewInvocation_fetchListsInGroup)initWithParentGroupObjectID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMListsDataViewInvocation_fetchListsInGroup

- (REMListsDataViewInvocation_fetchListsInGroup)initWithParentGroupObjectID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = REMListsDataViewInvocation_fetchListsInGroup;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupObjectID, d);
  }

  return v7;
}

- (REMListsDataViewInvocation_fetchListsInGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupObjectID"];

  if (v5)
  {
    self = [(REMListsDataViewInvocation_fetchListsInGroup *)self initWithParentGroupObjectID:v5];
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
  groupObjectID = [(REMListsDataViewInvocation_fetchListsInGroup *)self groupObjectID];
  [coderCopy encodeObject:groupObjectID forKey:@"groupObjectID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    groupObjectID = [(REMListsDataViewInvocation_fetchListsInGroup *)self groupObjectID];
    groupObjectID2 = [equalCopy groupObjectID];
    if (groupObjectID == groupObjectID2)
    {
      v9 = 1;
    }

    else
    {
      groupObjectID3 = [(REMListsDataViewInvocation_fetchListsInGroup *)self groupObjectID];
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
  groupObjectID = [(REMListsDataViewInvocation_fetchListsInGroup *)self groupObjectID];
  v3 = [groupObjectID hash];

  return v3;
}

@end