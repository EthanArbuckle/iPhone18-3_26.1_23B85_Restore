@interface NSXPCConnection(StatusKitAgent)
- (id)sk_stringArrayValueForEntitlement:()StatusKitAgent;
- (id)sk_stringValueForEntitlement:()StatusKitAgent;
- (uint64_t)sk_BOOLeanValueForEntitlement:()StatusKitAgent;
@end

@implementation NSXPCConnection(StatusKitAgent)

- (id)sk_stringArrayValueForEntitlement:()StatusKitAgent
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = [a1 valueForEntitlement:?];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v1;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObject:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  v9 = [v2 copy];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (uint64_t)sk_BOOLeanValueForEntitlement:()StatusKitAgent
{
  v1 = [a1 valueForEntitlement:?];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)sk_stringValueForEntitlement:()StatusKitAgent
{
  v1 = [a1 valueForEntitlement:?];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end