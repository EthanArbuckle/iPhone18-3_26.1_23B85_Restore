@interface REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs
- (BOOL)isEqual:(id)equal;
- (REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs)initWithCoder:(id)coder;
- (REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs)initWithFetchOption:(int64_t)option;
- (id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs

- (REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs)initWithFetchOption:(int64_t)option
{
  v5.receiver = self;
  v5.super_class = REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs;
  result = [(REMStoreInvocationValueStorage *)&v5 init];
  if (result)
  {
    result->_fetchOption = option;
  }

  return result;
}

- (REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"fetchOption"];

  return [(REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs *)self initWithFetchOption:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs fetchOption](self forKey:{"fetchOption"), @"fetchOption"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fetchOption = [(REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs *)self fetchOption];
    v6 = fetchOption == [equalCopy fetchOption];
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
  name = [(REMStoreInvocation *)&v8 name];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs fetchOption](self, "fetchOption")}];
  v6 = [v3 stringWithFormat:@"%@(fetchOption=%@)", name, v5];

  return v6;
}

@end