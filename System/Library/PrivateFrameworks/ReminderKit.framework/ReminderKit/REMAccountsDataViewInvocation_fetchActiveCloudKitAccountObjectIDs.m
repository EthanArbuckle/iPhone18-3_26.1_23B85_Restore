@interface REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs
- (BOOL)isEqual:(id)a3;
- (REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs)initWithCoder:(id)a3;
- (REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs)initWithFetchOption:(int64_t)a3;
- (id)name;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs

- (REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs)initWithFetchOption:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs;
  result = [(REMStoreInvocationValueStorage *)&v5 init];
  if (result)
  {
    result->_fetchOption = a3;
  }

  return result;
}

- (REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"fetchOption"];

  return [(REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs *)self initWithFetchOption:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs fetchOption](self forKey:{"fetchOption"), @"fetchOption"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs *)self fetchOption];
    v6 = v5 == [v4 fetchOption];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)name
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs;
  v4 = [(REMStoreInvocation *)&v8 name];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs fetchOption](self, "fetchOption")}];
  v6 = [v3 stringWithFormat:@"%@(fetchOption=%@)", v4, v5];

  return v6;
}

@end