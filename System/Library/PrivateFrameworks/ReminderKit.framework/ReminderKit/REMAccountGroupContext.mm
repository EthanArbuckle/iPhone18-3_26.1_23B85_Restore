@interface REMAccountGroupContext
- (REMAccountGroupContext)initWithAccount:(id)account;
- (id)fetchGroupsWithError:(id *)error;
@end

@implementation REMAccountGroupContext

- (REMAccountGroupContext)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = REMAccountGroupContext;
  v6 = [(REMAccountGroupContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)fetchGroupsWithError:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  account = [(REMAccountGroupContext *)self account];
  v5 = [account fetchListsWithError:error];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 isGroup])
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

@end