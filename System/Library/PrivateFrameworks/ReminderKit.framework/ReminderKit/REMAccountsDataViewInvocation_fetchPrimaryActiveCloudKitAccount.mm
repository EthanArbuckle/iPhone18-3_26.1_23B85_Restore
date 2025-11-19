@interface REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount
- (BOOL)isEqual:(id)a3;
- (REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount)initWithCoder:(id)a3;
- (REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount)initWithFetchREMObjectIDOnly:(BOOL)a3;
- (id)name;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount

- (REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount)initWithFetchREMObjectIDOnly:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount;
  result = [(REMStoreInvocationValueStorage *)&v5 init];
  if (result)
  {
    result->_fetchREMObjectIDOnly = a3;
  }

  return result;
}

- (REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"fetchREMObjectIDOnly"];

  return [(REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount *)self initWithFetchREMObjectIDOnly:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount fetchREMObjectIDOnly](self forKey:{"fetchREMObjectIDOnly"), @"fetchREMObjectIDOnly"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount *)self fetchREMObjectIDOnly];
    v6 = v5 ^ [v4 fetchREMObjectIDOnly] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)name
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount;
  v4 = [(REMStoreInvocation *)&v9 name];
  v5 = [(REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount *)self fetchREMObjectIDOnly];
  v6 = &stru_1F0D67F00;
  if (v5)
  {
    v6 = @"(fetchREMObjectIDOnly)";
  }

  v7 = [v3 stringWithFormat:@"%@%@", v4, v6];

  return v7;
}

@end