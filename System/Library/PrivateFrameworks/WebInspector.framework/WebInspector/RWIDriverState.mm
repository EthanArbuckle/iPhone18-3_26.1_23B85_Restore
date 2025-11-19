@interface RWIDriverState
+ (BOOL)isValidPayload:(id)a3;
+ (id)active;
+ (id)decodeFromPayload:(id)a3;
+ (id)inactive;
- (RWIDriverState)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeToPayload:(id)a3;
@end

@implementation RWIDriverState

- (RWIDriverState)init
{
  v6.receiver = self;
  v6.super_class = RWIDriverState;
  v2 = [(RWIDriverState *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)active
{
  v2 = objc_alloc_init(RWIDriverState);
  [(RWIDriverState *)v2 setActive:1];

  return v2;
}

+ (id)inactive
{
  v2 = objc_alloc_init(RWIDriverState);
  [(RWIDriverState *)v2 setActive:0];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setActive:{-[RWIDriverState isActive](self, "isActive")}];
  v5 = [(RWIDriverState *)self sessionIdentifiers];
  v6 = [v5 copy];
  [v4 setSessionIdentifiers:v6];

  return v4;
}

+ (BOOL)isValidPayload:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"WIRDriverIsActiveKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (v5, v4, [v3 objectForKeyedSubscript:@"WIRDriverSessionListKey"], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v5 = objc_claimAutoreleasedReturnValue(), (objc_opt_isKindOfClass()))
  {

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v3 objectForKeyedSubscript:{@"WIRDriverIdentifierKey", 0}];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v15 = objc_opt_class();
            logUnexpectedType(v15, v12);

            v13 = 0;
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_14:
  }

  else
  {
    v14 = objc_opt_class();
    logUnexpectedType(v14, v5);

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)decodeFromPayload:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"WIRDriverIsActiveKey"];
  v5 = [v4 BOOLValue];

  v6 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v3 objectForKeyedSubscript:{@"WIRDriverSessionListKey", 0}];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v15 = objc_opt_class();
          logUnexpectedType(v15, v13);

          v14 = 0;
          goto LABEL_11;
        }

        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = objc_opt_new();
  [v14 setActive:v5];
  [v14 setSessionIdentifiers:v6];
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)encodeToPayload:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[RWIDriverState isActive](self, "isActive")}];
  [v5 setObject:v6 forKeyedSubscript:@"WIRDriverIsActiveKey"];

  v8 = [(RWIDriverState *)self sessionIdentifiers];
  v7 = [v8 allObjects];
  [v5 setObject:v7 forKeyedSubscript:@"WIRDriverSessionListKey"];
}

@end