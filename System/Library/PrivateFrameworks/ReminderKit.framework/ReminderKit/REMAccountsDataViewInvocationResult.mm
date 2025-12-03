@interface REMAccountsDataViewInvocationResult
- (BOOL)isEqual:(id)equal;
- (REMAccountsDataViewInvocationResult)initWithCoder:(id)coder;
- (REMAccountsDataViewInvocationResult)initWithStorages:(id)storages;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAccountsDataViewInvocationResult

- (REMAccountsDataViewInvocationResult)initWithStorages:(id)storages
{
  storagesCopy = storages;
  v9.receiver = self;
  v9.super_class = REMAccountsDataViewInvocationResult;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStorages, storages);
  }

  return v7;
}

- (REMAccountsDataViewInvocationResult)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"accountStorages"];

  if (v8)
  {
    self = [(REMAccountsDataViewInvocationResult *)self initWithStorages:v8];
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
  accountStorages = [(REMAccountsDataViewInvocationResult *)self accountStorages];
  [coderCopy encodeObject:accountStorages forKey:@"accountStorages"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accountStorages = [(REMAccountsDataViewInvocationResult *)self accountStorages];
    accountStorages2 = [equalCopy accountStorages];
    if (accountStorages == accountStorages2)
    {
      v9 = 1;
    }

    else
    {
      accountStorages3 = [(REMAccountsDataViewInvocationResult *)self accountStorages];
      accountStorages4 = [equalCopy accountStorages];
      v9 = [accountStorages3 isEqual:accountStorages4];
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
  accountStorages = [(REMAccountsDataViewInvocationResult *)self accountStorages];
  v3 = [accountStorages hash];

  return v3;
}

@end