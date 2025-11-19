@interface REMSmartListsDataViewInvocation_fetchCustomSmartListsInAccount
- (BOOL)isEqual:(id)a3;
- (REMSmartListsDataViewInvocation_fetchCustomSmartListsInAccount)initWithCoder:(id)a3;
- (REMSmartListsDataViewInvocation_fetchCustomSmartListsInAccount)initWithParentAccountObjectID:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMSmartListsDataViewInvocation_fetchCustomSmartListsInAccount

- (REMSmartListsDataViewInvocation_fetchCustomSmartListsInAccount)initWithParentAccountObjectID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMSmartListsDataViewInvocation_fetchCustomSmartListsInAccount;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountObjectID, a3);
  }

  return v7;
}

- (REMSmartListsDataViewInvocation_fetchCustomSmartListsInAccount)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountObjectID"];

  if (v5)
  {
    self = [(REMSmartListsDataViewInvocation_fetchCustomSmartListsInAccount *)self initWithParentAccountObjectID:v5];
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
  v5 = [(REMSmartListsDataViewInvocation_fetchCustomSmartListsInAccount *)self accountObjectID];
  [v4 encodeObject:v5 forKey:@"accountObjectID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMSmartListsDataViewInvocation_fetchCustomSmartListsInAccount *)self accountObjectID];
    v6 = [v4 accountObjectID];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMSmartListsDataViewInvocation_fetchCustomSmartListsInAccount *)self accountObjectID];
      v8 = [v4 accountObjectID];
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
  v2 = [(REMSmartListsDataViewInvocation_fetchCustomSmartListsInAccount *)self accountObjectID];
  v3 = [v2 hash];

  return v3;
}

@end