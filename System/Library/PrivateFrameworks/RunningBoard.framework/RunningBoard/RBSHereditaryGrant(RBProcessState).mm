@interface RBSHereditaryGrant(RBProcessState)
- (id)effectiveAttributesWithContext:()RBProcessState;
- (uint64_t)isValidForContext:()RBProcessState withError:;
- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:;
- (void)applyToAssertionTransientState:()RBProcessState attributePath:context:;
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSHereditaryGrant(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v8 = a3;
  v9 = a5;
  [v9 pushActiveDueToInheritedEndowment];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __80__RBSHereditaryGrant_RBProcessState__applyToProcessState_attributePath_context___block_invoke;
  v15 = &unk_279B33928;
  v16 = a1;
  v17 = v9;
  v18 = v8;
  v19 = a4;
  v10 = v8;
  v11 = v9;
  [(RBSHereditaryGrant *)a1 _withEndowmentFromContext:v11 block:&v12];
  [v11 popActiveDueToInheritedEndowment];
}

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v45[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 targetIsSystem])
  {
    if (a4)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277D47050];
      v9 = *MEMORY[0x277CCA470];
      v45[0] = @"Hereditary grants may not target the system";
      v10 = *MEMORY[0x277D47048];
      v44[0] = v9;
      v44[1] = v10;
      v11 = [a1 description];
      v45[1] = v11;
      v12 = MEMORY[0x277CBEAC0];
      v13 = v45;
      v14 = v44;
LABEL_18:
      v20 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:2];
      [v7 errorWithDomain:v8 code:2 userInfo:v20];
      *a4 = v25 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v15 = [v6 target];
    v16 = [v15 environment];

    if (v16)
    {
      v11 = [v6 originatorEntitlements];
      v17 = [a1 encodedEndowment];
      if (v17 && (v18 = v17, v19 = [v11 rb_hasEntitlementDomain:16], v18, (v19 & 1) == 0))
      {
        if (!a4)
        {
          v25 = 0;
          goto LABEL_25;
        }

        v28 = MEMORY[0x277CCA9B8];
        v29 = *MEMORY[0x277D47050];
        v30 = *MEMORY[0x277CCA470];
        v41[0] = @"Required client entitlement is missing";
        v31 = *MEMORY[0x277D47048];
        v40[0] = v30;
        v40[1] = v31;
        v20 = [a1 description];
        v41[1] = v20;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
        *a4 = [v28 errorWithDomain:v29 code:2 userInfo:v32];
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v20 = [a1 attributes];
        v21 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (!v21)
        {
          v25 = 1;
          goto LABEL_24;
        }

        v22 = v21;
        v23 = *v36;
LABEL_9:
        v24 = 0;
        while (1)
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(v20);
          }

          if (![*(*(&v35 + 1) + 8 * v24) isValidForContext:v6 withError:a4])
          {
            break;
          }

          if (v22 == ++v24)
          {
            v22 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
            v25 = 1;
            if (v22)
            {
              goto LABEL_9;
            }

            goto LABEL_24;
          }
        }
      }

      v25 = 0;
LABEL_24:

LABEL_25:
      goto LABEL_26;
    }

    if (a4)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277D47050];
      v26 = *MEMORY[0x277CCA470];
      v43[0] = @"Hereditary grants must specify a target environment";
      v27 = *MEMORY[0x277D47048];
      v42[0] = v26;
      v42[1] = v27;
      v11 = [a1 description];
      v43[1] = v11;
      v12 = MEMORY[0x277CBEAC0];
      v13 = v43;
      v14 = v42;
      goto LABEL_18;
    }
  }

  v25 = 0;
LABEL_26:

  v33 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)applyToAssertionTransientState:()RBProcessState attributePath:context:
{
  v8 = a3;
  v9 = a5;
  [v9 pushActiveDueToInheritedEndowment];
  OUTLINED_FUNCTION_0_2();
  v12[1] = 3221225472;
  v12[2] = __91__RBSHereditaryGrant_RBProcessState__applyToAssertionTransientState_attributePath_context___block_invoke;
  v12[3] = &unk_279B33928;
  v12[4] = a1;
  v13 = v8;
  v14 = v9;
  v15 = a4;
  v10 = v9;
  v11 = v8;
  [(RBSHereditaryGrant *)a1 _withEndowmentFromContext:v10 block:v12];
  [v10 popActiveDueToInheritedEndowment];
}

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:
{
  v8 = a3;
  v9 = a5;
  [v9 pushActiveDueToInheritedEndowment];
  [v8 setHasHereditaryGrant:1];
  v10 = [a1 sourceEnvironment];
  if (v10)
  {
    v11 = [v8 sourceEnvironments];
    [v11 addObject:v10];
  }

  OUTLINED_FUNCTION_0_2();
  v14[1] = 3221225472;
  v14[2] = __93__RBSHereditaryGrant_RBProcessState__applyToAssertionIntransientState_attributePath_context___block_invoke;
  v14[3] = &unk_279B33928;
  v14[4] = a1;
  v15 = v8;
  v16 = v9;
  v17 = a4;
  v12 = v9;
  v13 = v8;
  [(RBSHereditaryGrant *)a1 _withEndowmentFromContext:v12 block:v14];
  [v12 popActiveDueToInheritedEndowment];
}

- (id)effectiveAttributesWithContext:()RBProcessState
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  [v4 pushActiveDueToInheritedEndowment];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__RBSHereditaryGrant_RBProcessState__effectiveAttributesWithContext___block_invoke;
  v11[3] = &unk_279B33978;
  v11[4] = a1;
  v6 = v5;
  v12 = v6;
  v13 = v4;
  v7 = v4;
  [(RBSHereditaryGrant *)a1 _withEndowmentFromContext:v7 block:v11];
  [v6 addObject:a1];
  [v7 popActiveDueToInheritedEndowment];
  v8 = v13;
  v9 = v6;

  return v6;
}

@end