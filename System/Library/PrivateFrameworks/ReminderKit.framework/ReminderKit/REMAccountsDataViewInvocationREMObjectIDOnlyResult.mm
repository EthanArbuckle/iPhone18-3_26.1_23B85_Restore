@interface REMAccountsDataViewInvocationREMObjectIDOnlyResult
- (BOOL)isEqual:(id)equal;
- (REMAccountsDataViewInvocationREMObjectIDOnlyResult)initWithAccountIDs:(id)ds;
- (REMAccountsDataViewInvocationREMObjectIDOnlyResult)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAccountsDataViewInvocationREMObjectIDOnlyResult

- (REMAccountsDataViewInvocationREMObjectIDOnlyResult)initWithAccountIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = REMAccountsDataViewInvocationREMObjectIDOnlyResult;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountIDs, ds);
  }

  return v7;
}

- (REMAccountsDataViewInvocationREMObjectIDOnlyResult)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"accountIDs"];

  if (v8)
  {
    self = [(REMAccountsDataViewInvocationREMObjectIDOnlyResult *)self initWithAccountIDs:v8];
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
  accountIDs = [(REMAccountsDataViewInvocationREMObjectIDOnlyResult *)self accountIDs];
  [coderCopy encodeObject:accountIDs forKey:@"accountIDs"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accountIDs = [(REMAccountsDataViewInvocationREMObjectIDOnlyResult *)self accountIDs];
    accountIDs2 = [equalCopy accountIDs];
    if (accountIDs == accountIDs2)
    {
      v9 = 1;
    }

    else
    {
      accountIDs3 = [(REMAccountsDataViewInvocationREMObjectIDOnlyResult *)self accountIDs];
      accountIDs4 = [equalCopy accountIDs];
      v9 = [accountIDs3 isEqual:accountIDs4];
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
  accountIDs = [(REMAccountsDataViewInvocationREMObjectIDOnlyResult *)self accountIDs];
  v3 = [accountIDs hash];

  return v3;
}

@end