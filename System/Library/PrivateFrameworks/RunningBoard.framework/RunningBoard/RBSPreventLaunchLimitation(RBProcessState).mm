@interface RBSPreventLaunchLimitation(RBProcessState)
- (uint64_t)allowedWithAttribute:()RBProcessState error:;
- (uint64_t)isValidForContext:()RBProcessState withError:;
- (void)applyToSystemState:()RBProcessState attributePath:context:;
@end

@implementation RBSPreventLaunchLimitation(RBProcessState)

- (void)applyToSystemState:()RBProcessState attributePath:context:
{
  v8 = a3;
  predicate = [self predicate];

  if (predicate)
  {
    predicate2 = [self predicate];
    [v8 addPreventLaunchPredicate:predicate2];

    allow = [self allow];

    if (allow)
    {
      allow2 = [self allow];
      [v8 addAllowLaunchPredicate:allow2];
    }
  }
}

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v25[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  target = [v6 target];
  isSystem = [target isSystem];

  if (isSystem)
  {
    originatorEntitlements = [v6 originatorEntitlements];
    if ([v6 ignoreRestrictions] & 1) != 0 || (objc_msgSend(originatorEntitlements, "rb_hasEntitlement:", @"com.apple.runningboard.primitiveattribute") & 1) != 0 || (objc_msgSend(originatorEntitlements, "rb_hasEntitlementDomain:", 2) & 1) != 0 || (objc_msgSend(originatorEntitlements, "rb_hasEntitlementDomain:", 4))
    {
      a4 = 1;
LABEL_10:

      goto LABEL_11;
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277D47050];
    v19 = *MEMORY[0x277CCA470];
    v23[0] = @"Required client entitlement is missing for attribute";
    v20 = *MEMORY[0x277D47048];
    v22[0] = v19;
    v22[1] = v20;
    v14 = [self description];
    v23[1] = v14;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    *a4 = [v17 errorWithDomain:v18 code:2 userInfo:v21];

LABEL_9:
    a4 = 0;
    goto LABEL_10;
  }

  if (a4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47050];
    v12 = *MEMORY[0x277CCA470];
    v25[0] = @"Prevent launch limitations must target system";
    v13 = *MEMORY[0x277D47048];
    v24[0] = v12;
    v24[1] = v13;
    originatorEntitlements = [self description];
    v25[1] = originatorEntitlements;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    *a4 = [v10 errorWithDomain:v11 code:2 userInfo:v14];
    goto LABEL_9;
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return a4;
}

- (uint64_t)allowedWithAttribute:()RBProcessState error:
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a4 = 1;
  }

  else if (a4)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attribute conflict: attribute %@ conflicts with attribute %@", self, v6];
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47050];
    v13 = *MEMORY[0x277CCA470];
    v14[0] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a4 = [v10 errorWithDomain:v11 code:2 userInfo:v12];

    a4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return a4;
}

@end