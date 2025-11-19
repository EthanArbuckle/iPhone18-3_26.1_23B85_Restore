@interface REMListsDataViewInvocation_userActivityFetchByExternalIdentifier
- (BOOL)isEqual:(id)a3;
- (REMListsDataViewInvocation_userActivityFetchByExternalIdentifier)initWithCoder:(id)a3;
- (REMListsDataViewInvocation_userActivityFetchByExternalIdentifier)initWithExternalIdentifier:(id)a3 accountObjectID:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMListsDataViewInvocation_userActivityFetchByExternalIdentifier

- (REMListsDataViewInvocation_userActivityFetchByExternalIdentifier)initWithExternalIdentifier:(id)a3 accountObjectID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMListsDataViewInvocation_userActivityFetchByExternalIdentifier;
  v9 = [(REMStoreInvocationValueStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_externalIdentifier, a3);
    objc_storeStrong(&v10->_accountObjectID, a4);
  }

  return v10;
}

- (REMListsDataViewInvocation_userActivityFetchByExternalIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountObjectID"];

  if (v5)
  {
    self = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self initWithExternalIdentifier:v5 accountObjectID:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self externalIdentifier];
  [v4 encodeObject:v5 forKey:@"externalIdentifier"];

  v6 = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self accountObjectID];
  [v4 encodeObject:v6 forKey:@"accountObjectID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self externalIdentifier];
  v6 = [v4 externalIdentifier];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self externalIdentifier];
    v9 = [v4 externalIdentifier];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  v12 = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self accountObjectID];
  v13 = [v4 accountObjectID];
  if (v12 == v13)
  {
    v11 = 1;
  }

  else
  {
    v14 = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self accountObjectID];
    v15 = [v4 accountObjectID];
    v11 = [v14 isEqual:v15];
  }

LABEL_10:
  return v11 & 1;
}

- (unint64_t)hash
{
  v3 = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self accountObjectID];
  v4 = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self externalIdentifier];
  v5 = [v4 hash];
  if (v3)
  {
    v6 = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self accountObjectID];
    v5 ^= [v6 hash];
  }

  return v5;
}

@end