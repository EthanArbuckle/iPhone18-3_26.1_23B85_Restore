@interface RBSInvalidateUnderConditionAttribute(RBProcessState)
- (uint64_t)isValidForContext:()RBProcessState withError:;
- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:;
@end

@implementation RBSInvalidateUnderConditionAttribute(RBProcessState)

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:
{
  v7 = a3;
  v8 = a5;
  if (_os_feature_enabled_impl())
  {
    if ([v8 isActiveDueToInheritedEndowment])
    {
      v9 = rbs_assertion_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [RBSInvalidateUnderConditionAttribute(RBProcessState) applyToAssertionIntransientState:v8 attributePath:v9 context:?];
      }
    }

    else
    {
      v10 = [v7 invalidatesOnConditions];
      if (!v10)
      {
        v10 = [MEMORY[0x277CBEB38] dictionary];
        [v7 setInvalidatesOnConditions:v10];
      }

      v11 = [a1 condition];
      v12 = [v10 objectForKey:v11];

      if (!v12 || (v13 = [a1 minValue], v13 < objc_msgSend(v12, "integerValue")))
      {
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "minValue")}];
        v15 = [a1 condition];
        [v10 setValue:v14 forKey:v15];
      }
    }
  }
}

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 ignoreRestrictions] & 1) != 0 || (objc_msgSend(v6, "originatorEntitlements"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "rb_hasEntitlement:", @"com.apple.runningboard.primitiveattribute"), v7, (v8))
  {
    a4 = 1;
  }

  else if (a4)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D47050];
    v13 = *MEMORY[0x277CCA470];
    v18[0] = @"Required client entitlement is missing";
    v14 = *MEMORY[0x277D47048];
    v17[0] = v13;
    v17[1] = v14;
    v15 = [a1 description];
    v18[1] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    *a4 = [v11 errorWithDomain:v12 code:2 userInfo:v16];

    a4 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return a4;
}

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 assertion];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Not applying RBSMimicTaskSuspensionAttribute as it is not permitted as the subattribute of a hereditary grant for assertion %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end