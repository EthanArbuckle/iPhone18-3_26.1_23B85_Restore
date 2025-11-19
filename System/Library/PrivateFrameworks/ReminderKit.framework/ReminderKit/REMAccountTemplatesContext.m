@interface REMAccountTemplatesContext
- (REMAccountTemplatesContext)initWithAccount:(id)a3;
- (id)fetchTemplatesWithError:(id *)a3;
@end

@implementation REMAccountTemplatesContext

- (REMAccountTemplatesContext)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMAccountTemplatesContext;
  v6 = [(REMAccountTemplatesContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (id)fetchTemplatesWithError:(id *)a3
{
  v5 = [REMTemplatesDataView alloc];
  v6 = [(REMAccountTemplatesContext *)self account];
  v7 = [v6 store];
  v8 = [(REMTemplatesDataView *)v5 initWithStore:v7];

  v9 = [(REMAccountTemplatesContext *)self account];
  v10 = [(REMTemplatesDataView *)v8 fetchTemplatesInAccount:v9 error:a3];

  return v10;
}

@end