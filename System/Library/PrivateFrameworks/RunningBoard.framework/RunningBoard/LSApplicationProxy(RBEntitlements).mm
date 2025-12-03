@interface LSApplicationProxy(RBEntitlements)
- (uint64_t)rb_hasEntitlement:()RBEntitlements;
- (uint64_t)rb_hasEntitlementDomain:()RBEntitlements;
@end

@implementation LSApplicationProxy(RBEntitlements)

- (uint64_t)rb_hasEntitlement:()RBEntitlements
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v4 setWithObject:v5];
  v7 = [self entitlementValuesForKeys:v6];

  v8 = [v7 BOOLForKey:v5];
  return v8;
}

- (uint64_t)rb_hasEntitlementDomain:()RBEntitlements
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [RBEntitlements _entitlementsForOptions:a3];
  if ([v4 count])
  {
    v5 = [self entitlementValuesForKeys:v4];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if ([v5 BOOLForKey:{*(*(&v12 + 1) + 8 * i), v12}])
          {
            v7 = 1;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

@end