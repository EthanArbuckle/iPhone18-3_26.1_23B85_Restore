@interface REMAccountTemplatesContext
- (REMAccountTemplatesContext)initWithAccount:(id)account;
- (id)fetchTemplatesWithError:(id *)error;
@end

@implementation REMAccountTemplatesContext

- (REMAccountTemplatesContext)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = REMAccountTemplatesContext;
  v6 = [(REMAccountTemplatesContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)fetchTemplatesWithError:(id *)error
{
  v5 = [REMTemplatesDataView alloc];
  account = [(REMAccountTemplatesContext *)self account];
  store = [account store];
  v8 = [(REMTemplatesDataView *)v5 initWithStore:store];

  account2 = [(REMAccountTemplatesContext *)self account];
  v10 = [(REMTemplatesDataView *)v8 fetchTemplatesInAccount:account2 error:error];

  return v10;
}

@end