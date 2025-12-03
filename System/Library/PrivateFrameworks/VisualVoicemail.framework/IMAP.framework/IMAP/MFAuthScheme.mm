@interface MFAuthScheme
+ (id)authSchemesForAccount:(id)account connection:(id)connection;
+ (void)initialize;
+ (void)registerSchemeClass:(Class)class;
- (id)authenticatorForAccount:(id)account connection:(id)connection;
@end

@implementation MFAuthScheme

+ (void)initialize
{
  if (!_schemesByName)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
    v4 = _schemesByName;
    _schemesByName = v3;

    for (i = 0; i != 32; i += 8)
    {
      v6 = NSClassFromString(&(*(&initialize_schemes + i))->isa);
      if (v6)
      {
        [self registerSchemeClass:v6];
      }
    }
  }
}

+ (void)registerSchemeClass:(Class)class
{
  if (class)
  {
    v4 = [objc_allocWithZone(class) init];
    name = [v4 name];
    if (name)
    {
      [_schemesByName setObject:v4 forKey:name];
    }
  }
}

+ (id)authSchemesForAccount:(id)account connection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  connectionCopy = connection;
  authenticationMechanisms = [connectionCopy authenticationMechanisms];
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(authenticationMechanisms, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = authenticationMechanisms;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([@"PLAIN" isEqualToString:v13])
        {

          v13 = &stru_288159858;
        }

        v14 = [MFAuthScheme schemeWithName:v13];
        if (v14 && [v14 canAuthenticateAccountClass:objc_opt_class() connection:connectionCopy] && objc_msgSend(v17, "indexOfObject:", v14) == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v17 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)authenticatorForAccount:(id)account connection:(id)connection
{
  accountCopy = account;
  connectionCopy = connection;
  authenticatorClass = [(MFAuthScheme *)self authenticatorClass];
  if (authenticatorClass)
  {
    v9 = [[authenticatorClass alloc] initWithAuthScheme:self account:accountCopy connection:connectionCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end