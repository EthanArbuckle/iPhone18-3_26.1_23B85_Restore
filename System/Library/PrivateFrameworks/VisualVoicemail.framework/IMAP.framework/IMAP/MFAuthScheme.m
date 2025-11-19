@interface MFAuthScheme
+ (id)authSchemesForAccount:(id)a3 connection:(id)a4;
+ (void)initialize;
+ (void)registerSchemeClass:(Class)a3;
- (id)authenticatorForAccount:(id)a3 connection:(id)a4;
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
        [a1 registerSchemeClass:v6];
      }
    }
  }
}

+ (void)registerSchemeClass:(Class)a3
{
  if (a3)
  {
    v4 = [objc_allocWithZone(a3) init];
    v3 = [v4 name];
    if (v3)
    {
      [_schemesByName setObject:v4 forKey:v3];
    }
  }
}

+ (id)authSchemesForAccount:(id)a3 connection:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 authenticationMechanisms];
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
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
        if (v14 && [v14 canAuthenticateAccountClass:objc_opt_class() connection:v6] && objc_msgSend(v17, "indexOfObject:", v14) == 0x7FFFFFFFFFFFFFFFLL)
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

- (id)authenticatorForAccount:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFAuthScheme *)self authenticatorClass];
  if (v8)
  {
    v9 = [[v8 alloc] initWithAuthScheme:self account:v6 connection:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end