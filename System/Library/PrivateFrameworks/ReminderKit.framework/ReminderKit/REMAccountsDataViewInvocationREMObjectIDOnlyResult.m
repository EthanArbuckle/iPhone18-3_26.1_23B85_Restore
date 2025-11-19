@interface REMAccountsDataViewInvocationREMObjectIDOnlyResult
- (BOOL)isEqual:(id)a3;
- (REMAccountsDataViewInvocationREMObjectIDOnlyResult)initWithAccountIDs:(id)a3;
- (REMAccountsDataViewInvocationREMObjectIDOnlyResult)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMAccountsDataViewInvocationREMObjectIDOnlyResult

- (REMAccountsDataViewInvocationREMObjectIDOnlyResult)initWithAccountIDs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMAccountsDataViewInvocationREMObjectIDOnlyResult;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountIDs, a3);
  }

  return v7;
}

- (REMAccountsDataViewInvocationREMObjectIDOnlyResult)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"accountIDs"];

  if (v8)
  {
    self = [(REMAccountsDataViewInvocationREMObjectIDOnlyResult *)self initWithAccountIDs:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMAccountsDataViewInvocationREMObjectIDOnlyResult *)self accountIDs];
  [v4 encodeObject:v5 forKey:@"accountIDs"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMAccountsDataViewInvocationREMObjectIDOnlyResult *)self accountIDs];
    v6 = [v4 accountIDs];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMAccountsDataViewInvocationREMObjectIDOnlyResult *)self accountIDs];
      v8 = [v4 accountIDs];
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
  v2 = [(REMAccountsDataViewInvocationREMObjectIDOnlyResult *)self accountIDs];
  v3 = [v2 hash];

  return v3;
}

@end