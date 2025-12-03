@interface STStatusServerTransactionManager
- (STStatusServerTransactionManager)initWithServer:(id)server;
- (void)systemStatusServer:(id)server publishedDomainsDidChange:(id)change;
@end

@implementation STStatusServerTransactionManager

- (STStatusServerTransactionManager)initWithServer:(id)server
{
  serverCopy = server;
  v11.receiver = self;
  v11.super_class = STStatusServerTransactionManager;
  v6 = [(STStatusServerTransactionManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_server, server);
    [serverCopy setDelegate:v7];
    v8 = objc_alloc_init(BSMutableIntegerMap);
    transactionsByDomain = v7->_transactionsByDomain;
    v7->_transactionsByDomain = v8;
  }

  return v7;
}

- (void)systemStatusServer:(id)server publishedDomainsDidChange:(id)change
{
  changeCopy = change;
  if (self)
  {
    transactionsByDomain = self->_transactionsByDomain;
  }

  else
  {
    transactionsByDomain = 0;
  }

  v7 = transactionsByDomain;
  allKeys = [(BSMutableIntegerMap *)v7 allKeys];
  v9 = sub_100000D00(allKeys);

  v29 = changeCopy;
  v10 = sub_100000D00(changeCopy);
  v11 = [v9 mutableCopy];
  [v11 minusSet:v10];
  v27 = v10;
  v12 = [v10 mutableCopy];
  v28 = v9;
  [v12 minusSet:v9];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        -[BSMutableIntegerMap removeObjectForKey:](v7, "removeObjectForKey:", [*(*(&v34 + 1) + 8 * i) integerValue]);
      }

      v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v15);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v31;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v18);
        }

        integerValue = [*(*(&v30 + 1) + 8 * j) integerValue];
        v24 = STSystemStatusDescriptionForDomain();
        v25 = [NSString stringWithFormat:@"publishing %@ data", v24];

        [v25 UTF8String];
        v26 = os_transaction_create();
        [(BSMutableIntegerMap *)v7 setObject:v26 forKey:integerValue];
      }

      v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v20);
  }
}

@end