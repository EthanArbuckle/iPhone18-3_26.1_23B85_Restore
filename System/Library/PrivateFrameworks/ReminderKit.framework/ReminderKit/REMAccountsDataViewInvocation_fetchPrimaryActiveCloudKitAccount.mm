@interface REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount
- (BOOL)isEqual:(id)equal;
- (REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount)initWithCoder:(id)coder;
- (REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount)initWithFetchREMObjectIDOnly:(BOOL)only;
- (id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount

- (REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount)initWithFetchREMObjectIDOnly:(BOOL)only
{
  v5.receiver = self;
  v5.super_class = REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount;
  result = [(REMStoreInvocationValueStorage *)&v5 init];
  if (result)
  {
    result->_fetchREMObjectIDOnly = only;
  }

  return result;
}

- (REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"fetchREMObjectIDOnly"];

  return [(REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount *)self initWithFetchREMObjectIDOnly:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount fetchREMObjectIDOnly](self forKey:{"fetchREMObjectIDOnly"), @"fetchREMObjectIDOnly"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fetchREMObjectIDOnly = [(REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount *)self fetchREMObjectIDOnly];
    v6 = fetchREMObjectIDOnly ^ [equalCopy fetchREMObjectIDOnly] ^ 1;
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
  name = [(REMStoreInvocation *)&v9 name];
  fetchREMObjectIDOnly = [(REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount *)self fetchREMObjectIDOnly];
  v6 = &stru_1F0D67F00;
  if (fetchREMObjectIDOnly)
  {
    v6 = @"(fetchREMObjectIDOnly)";
  }

  v7 = [v3 stringWithFormat:@"%@%@", name, v6];

  return v7;
}

@end