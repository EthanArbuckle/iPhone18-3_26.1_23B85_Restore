@interface REMListsDataViewInvocation_fetchListsInGroup
- (BOOL)isEqual:(id)a3;
- (REMListsDataViewInvocation_fetchListsInGroup)initWithCoder:(id)a3;
- (REMListsDataViewInvocation_fetchListsInGroup)initWithParentGroupObjectID:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMListsDataViewInvocation_fetchListsInGroup

- (REMListsDataViewInvocation_fetchListsInGroup)initWithParentGroupObjectID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMListsDataViewInvocation_fetchListsInGroup;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupObjectID, a3);
  }

  return v7;
}

- (REMListsDataViewInvocation_fetchListsInGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupObjectID"];

  if (v5)
  {
    self = [(REMListsDataViewInvocation_fetchListsInGroup *)self initWithParentGroupObjectID:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMListsDataViewInvocation_fetchListsInGroup *)self groupObjectID];
  [v4 encodeObject:v5 forKey:@"groupObjectID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMListsDataViewInvocation_fetchListsInGroup *)self groupObjectID];
    v6 = [v4 groupObjectID];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMListsDataViewInvocation_fetchListsInGroup *)self groupObjectID];
      v8 = [v4 groupObjectID];
      v9 = [v7 isEqual:v8];
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
  v2 = [(REMListsDataViewInvocation_fetchListsInGroup *)self groupObjectID];
  v3 = [v2 hash];

  return v3;
}

@end