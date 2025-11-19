@interface RBSConditionAttribute(RBProcessState)
- (uint64_t)isValidForContext:()RBProcessState withError:;
- (void)applyToSystemState:()RBProcessState attributePath:context:;
@end

@implementation RBSConditionAttribute(RBProcessState)

- (void)applyToSystemState:()RBProcessState attributePath:context:
{
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [a1 condition];
    [v5 upgradeCondition:v4 toValue:{objc_msgSend(a1, "value")}];
  }
}

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v27[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (([v6 targetIsSystem] & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_8;
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D47050];
    v11 = *MEMORY[0x277CCA470];
    v27[0] = @"Attribute is not current supported for process target";
    v12 = *MEMORY[0x277D47048];
    v26[0] = v11;
    v26[1] = v12;
    v13 = [a1 description];
    v27[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v15 = v9;
    v16 = v10;
    v17 = 2;
LABEL_7:
    *a4 = [v15 errorWithDomain:v16 code:v17 userInfo:v14];

    a4 = 0;
    goto LABEL_8;
  }

  if (([v6 ignoreRestrictions] & 1) == 0)
  {
    v7 = [v6 originatorEntitlements];
    v8 = [v7 rb_hasEntitlement:@"com.apple.runningboard.primitiveattribute"];

    if ((v8 & 1) == 0)
    {
      if (!a4)
      {
        goto LABEL_8;
      }

      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277D47050];
      v22 = *MEMORY[0x277CCA470];
      v25[0] = @"Required client entitlement is missing";
      v23 = *MEMORY[0x277D47048];
      v24[0] = v22;
      v24[1] = v23;
      v13 = [a1 description];
      v25[1] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v15 = v20;
      v16 = v21;
      v17 = 3;
      goto LABEL_7;
    }
  }

  a4 = 1;
LABEL_8:

  v18 = *MEMORY[0x277D85DE8];
  return a4;
}

@end