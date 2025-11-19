@interface RBSSavedEndowmentGrant(RBProcessState)
- (BOOL)isValidForContext:()RBProcessState withError:;
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSSavedEndowmentGrant(RBProcessState)

- (BOOL)isValidForContext:()RBProcessState withError:
{
  v38[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![v6 targetIsSystem])
  {
    v13 = [v6 originatorEntitlements];
    if ([v6 ignoreRestrictions] & 1) != 0 || (-[NSObject rb_hasEntitlementDomain:](v13, "rb_hasEntitlementDomain:", 16))
    {
      v15 = [v6 savedEndowments];
      v16 = [a1 key];
      v17 = [v15 objectForKey:v16];
      v14 = v17 != 0;

      if (!a4 || v17)
      {
        goto LABEL_18;
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D47050];
      v20 = *MEMORY[0x277CCA470];
      v34[0] = @"Can't find saved endowment for key";
      v21 = *MEMORY[0x277D47048];
      v33[0] = v20;
      v33[1] = v21;
      v22 = [a1 description];
      v34[1] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
      *a4 = [v18 errorWithDomain:v19 code:2 userInfo:v23];

      v24 = rbs_general_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(RBSSavedEndowmentGrant(RBProcessState) *)v15 isValidForContext:a1 withError:v24];
      }
    }

    else
    {
      if (!a4)
      {
LABEL_5:
        v14 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v25 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277D47050];
      v27 = *MEMORY[0x277CCA470];
      v36[0] = @"Required client entitlement is missing";
      v28 = *MEMORY[0x277D47048];
      v35[0] = v27;
      v35[1] = v28;
      v29 = [a1 description];
      v36[1] = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
      *a4 = [v25 errorWithDomain:v26 code:3 userInfo:v30];

      v15 = rbs_general_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [RBSSavedEndowmentGrant(RBProcessState) isValidForContext:v13 withError:v15];
      }
    }

    v14 = 0;
LABEL_18:

    goto LABEL_19;
  }

  if (a4)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D47050];
    v9 = *MEMORY[0x277CCA470];
    v38[0] = @"endowment grants cannot target the system";
    v10 = *MEMORY[0x277D47048];
    v37[0] = v9;
    v37[1] = v10;
    v11 = [a1 description];
    v38[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    *a4 = [v7 errorWithDomain:v8 code:2 userInfo:v12];

    v13 = rbs_general_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [RBSSavedEndowmentGrant(RBProcessState) isValidForContext:v6 withError:v13];
    }

    goto LABEL_5;
  }

  v14 = 0;
LABEL_20:

  v31 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v9 savedEndowments];
  v11 = [a1 key];
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    v22 = v8;
    v13 = objc_alloc(MEMORY[0x277D46E90]);
    v14 = [a1 endowmentNamespace];
    v15 = [v9 target];
    v16 = [v15 environment];
    v17 = RBSEndowmentEncode();
    v18 = [v9 assertionID];
    v19 = [v13 _initWithNamespace:v14 environment:v16 encodedEndowment:v17 originatingIdentifier:v18 attributePath:a4];

    v20 = rbs_general_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v19;
      _os_log_impl(&dword_262485000, v20, OS_LOG_TYPE_DEFAULT, "Saved endowment grant adding inheritance %{public}@", buf, 0xCu);
    }

    v8 = v22;
    [v22 addInheritance:v19];
  }

  else
  {
    v19 = rbs_general_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [RBSSavedEndowmentGrant(RBProcessState) applyToProcessState:a1 attributePath:v19 context:?];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)isValidForContext:()RBProcessState withError:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Required client entitlement is missing: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)isValidForContext:()RBProcessState withError:.cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 description];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_262485000, a3, OS_LOG_TYPE_ERROR, "Can't find saved endowment:%{public}@ for %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)isValidForContext:()RBProcessState withError:.cold.3(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 targetIdentifier];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "endowment grants cannot target the system: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)applyToProcessState:()RBProcessState attributePath:context:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Attempting to apply saved endowment grant with no corresponding saved endowment %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end