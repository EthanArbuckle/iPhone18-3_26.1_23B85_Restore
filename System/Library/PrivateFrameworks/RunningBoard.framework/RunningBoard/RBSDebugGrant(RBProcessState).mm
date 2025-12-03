@interface RBSDebugGrant(RBProcessState)
- (uint64_t)isValidForContext:()RBProcessState withError:;
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSDebugGrant(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v3 = a3;
  [v3 setIsBeingDebugged:1];
  [v3 setPreventSuspend:1];
  if ([v3 role] <= 3)
  {
    [v3 setRole:4];
  }
}

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v25[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![v6 targetIsSystem])
  {
    if ([v6 ignoreRestrictions] & 1) != 0 || (objc_msgSend(v6, "originatorEntitlements"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "rb_hasEntitlementDomain:", 8), v16, (v17))
    {
      a4 = 1;
      goto LABEL_8;
    }

    if (!a4)
    {
      goto LABEL_8;
    }

    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D47050];
    v20 = *MEMORY[0x277CCA470];
    v23[0] = @"Required client entitlement is missing";
    v21 = *MEMORY[0x277D47048];
    v22[0] = v20;
    v22[1] = v21;
    v11 = [self description];
    v23[1] = v11;
    v12 = MEMORY[0x277CBEAC0];
    v13 = v23;
    v14 = v22;
    goto LABEL_4;
  }

  if (a4)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D47050];
    v9 = *MEMORY[0x277CCA470];
    v25[0] = @"Attribute is not applicable to system target";
    v10 = *MEMORY[0x277D47048];
    v24[0] = v9;
    v24[1] = v10;
    v11 = [self description];
    v25[1] = v11;
    v12 = MEMORY[0x277CBEAC0];
    v13 = v25;
    v14 = v24;
LABEL_4:
    v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:2];
    *a4 = [v7 errorWithDomain:v8 code:2 userInfo:v15];

    a4 = 0;
  }

LABEL_8:

  v18 = *MEMORY[0x277D85DE8];
  return a4;
}

@end