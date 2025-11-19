@interface RBSEndowmentGrant(RBProcessState)
- (uint64_t)isValidForContext:()RBProcessState withError:;
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSEndowmentGrant(RBProcessState)

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v25[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 targetIsSystem])
  {
    if (!a4)
    {
      v13 = 0;
      goto LABEL_9;
    }

    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D47050];
    v9 = *MEMORY[0x277CCA470];
    v25[0] = @"endowment grants cannot target the system";
    v10 = *MEMORY[0x277D47048];
    v24[0] = v9;
    v24[1] = v10;
    v11 = [a1 description];
    v25[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    [v7 errorWithDomain:v8 code:2 userInfo:v12];
    *a4 = v13 = 0;
  }

  else
  {
    v11 = [v6 originatorEntitlements];
    v14 = [v11 rb_hasEntitlementDomain:16];
    v13 = v14;
    if (!a4 || (v14 & 1) != 0)
    {
      goto LABEL_8;
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D47050];
    v17 = *MEMORY[0x277CCA470];
    v23[0] = @"Required client entitlement is missing";
    v18 = *MEMORY[0x277D47048];
    v22[0] = v17;
    v22[1] = v18;
    v12 = [a1 description];
    v23[1] = v12;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    *a4 = [v15 errorWithDomain:v16 code:2 userInfo:v19];
  }

LABEL_8:
LABEL_9:

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v8 = MEMORY[0x277D46E90];
  v9 = a5;
  v10 = a3;
  v11 = [v8 alloc];
  v12 = [a1 endowmentNamespace];
  v13 = [v9 target];
  v14 = [v13 environment];
  v15 = [a1 encodedEndowment];
  v16 = [v9 assertionID];

  v17 = [v11 _initWithNamespace:v12 environment:v14 encodedEndowment:v15 originatingIdentifier:v16 attributePath:a4];
  [v10 addInheritance:v17];
}

@end