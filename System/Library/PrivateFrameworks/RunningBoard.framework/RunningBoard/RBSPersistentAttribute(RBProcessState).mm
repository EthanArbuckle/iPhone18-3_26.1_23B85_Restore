@interface RBSPersistentAttribute(RBProcessState)
- (uint64_t)isValidForContext:()RBProcessState withError:;
- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:;
@end

@implementation RBSPersistentAttribute(RBProcessState)

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v30[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 ignoreRestrictions] & 1) != 0 || (objc_msgSend(v6, "originatorEntitlements"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "rb_hasEntitlement:", @"com.apple.runningboard.primitiveattribute"), v7, (v8))
  {
    v9 = 1;
  }

  else
  {
    if (a4)
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = *MEMORY[0x277D47050];
      v12 = *MEMORY[0x277CCA470];
      v30[0] = @"Required client entitlement is missing";
      v13 = *MEMORY[0x277D47048];
      v29[0] = v12;
      v29[1] = v13;
      v14 = [self description];
      v30[1] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
      *a4 = [v10 errorWithDomain:v11 code:2 userInfo:v15];
    }

    v9 = 0;
  }

  assertionDescriptor = [v6 assertionDescriptor];
  target = [assertionDescriptor target];
  processIdentity = [target processIdentity];

  if (!processIdentity)
  {
    if (a4)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277D47050];
      v21 = *MEMORY[0x277CCA470];
      v28[0] = @"Persistent attributes must target a process identity";
      v22 = *MEMORY[0x277D47048];
      v27[0] = v21;
      v27[1] = v22;
      v23 = [self description];
      v28[1] = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
      *a4 = [v19 errorWithDomain:v20 code:2 userInfo:v24];
    }

    v9 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:
{
  v6 = a3;
  v7 = a5;
  if ([v7 isActiveDueToInheritedEndowment])
  {
    v8 = rbs_assertion_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [RBSPersistentAttribute(RBProcessState) applyToAssertionIntransientState:v7 attributePath:v8 context:?];
    }
  }

  else
  {
    [v6 setIsPersistent:1];
  }
}

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 assertion];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Not applying RBSPersistentAttribute as it is not permitted as the subattribute of a hereditary grant for assertion %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end