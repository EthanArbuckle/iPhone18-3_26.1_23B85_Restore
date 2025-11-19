@interface RBSPrewarmAttribute(RBProcessState)
- (uint64_t)allowedWithAttribute:()RBProcessState error:;
- (uint64_t)isValidForContext:()RBProcessState withError:;
- (void)applyToSystemState:()RBProcessState attributePath:context:;
@end

@implementation RBSPrewarmAttribute(RBProcessState)

- (void)applyToSystemState:()RBProcessState attributePath:context:
{
  v4 = a3;
  v5 = [a1 identity];
  [a1 interval];
  [v4 prewarmIdentity:v5 withInterval:?];
}

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v25[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 target];
  v8 = [v7 isSystem];

  if (v8)
  {
    v9 = [v6 originatorEntitlements];
    if ([v6 ignoreRestrictions] & 1) != 0 || (objc_msgSend(v9, "rb_hasEntitlement:", @"com.apple.runningboard.launchprocess"))
    {
      a4 = 1;
LABEL_8:

      goto LABEL_9;
    }

    if (!a4)
    {
      goto LABEL_8;
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277D47050];
    v19 = *MEMORY[0x277CCA470];
    v23[0] = @"Required client entitlement is missing for attribute";
    v20 = *MEMORY[0x277D47048];
    v22[0] = v19;
    v22[1] = v20;
    v14 = [a1 description];
    v23[1] = v14;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    *a4 = [v17 errorWithDomain:v18 code:2 userInfo:v21];

LABEL_7:
    a4 = 0;
    goto LABEL_8;
  }

  if (a4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47050];
    v12 = *MEMORY[0x277CCA470];
    v25[0] = @"Prewarm attribute must target system";
    v13 = *MEMORY[0x277D47048];
    v24[0] = v12;
    v24[1] = v13;
    v9 = [a1 description];
    v25[1] = v9;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    *a4 = [v10 errorWithDomain:v11 code:2 userInfo:v14];
    goto LABEL_7;
  }

LABEL_9:

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
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attribute conflict: attribute %@ conflicts with attribute %@", a1, v6];
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