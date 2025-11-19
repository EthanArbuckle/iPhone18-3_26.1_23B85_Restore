@interface RBSDomainAttribute
- (uint64_t)_areAdditionalRestrictionsValidForContext:(void *)a3 withError:;
- (uint64_t)_areOriginatorEntitlementsValidForContext:(void *)a3 withError:;
- (uint64_t)_areTargetEntitlementsValidForContext:(void *)a3 withError:;
- (uint64_t)_contextContainsRequiredEndowment:(BOOL *)a3 requiresEndowment:;
- (uint64_t)_doesRestrictionAllowForContext:(uint64_t)a3 withError:;
@end

@implementation RBSDomainAttribute

void __80__RBSDomainAttribute_RBProcessState__applyToProcessState_attributePath_context___block_invoke(void *a1, void *a2, char a3)
{
  v5 = a1[4];
  v6 = a1[6];
  v7 = a2;
  [v7 applyToProcessState:v5 attributePath:RBSAttributePathIncrement(v6 context:{a3), a1[5]}];
}

void __91__RBSDomainAttribute_RBProcessState__applyToAssertionTransientState_attributePath_context___block_invoke(void *a1, void *a2, char a3)
{
  v5 = a1[4];
  v6 = a1[6];
  v7 = a2;
  [v7 applyToAssertionTransientState:v5 attributePath:RBSAttributePathIncrement(v6 context:{a3), a1[5]}];
}

void __93__RBSDomainAttribute_RBProcessState__applyToAssertionIntransientState_attributePath_context___block_invoke(void *a1, void *a2, char a3)
{
  v5 = a1[4];
  v6 = a1[6];
  v7 = a2;
  [v7 applyToAssertionIntransientState:v5 attributePath:RBSAttributePathIncrement(v6 context:{a3), a1[5]}];
}

void __69__RBSDomainAttribute_RBProcessState__effectiveAttributesWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 effectiveAttributesWithContext:*(a1 + 40)];
  [v2 unionSet:v3];
}

- (uint64_t)_contextContainsRequiredEndowment:(BOOL *)a3 requiresEndowment:
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (!a1)
  {
    v17 = 0;
    goto LABEL_21;
  }

  v9 = [v7 domainAttributeManager];
  [a1 domain];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5_5() name];
  objc_claimAutoreleasedReturnValue();
  v10 = [OUTLINED_FUNCTION_4_8() endowmentNamespaceForDomain:? andName:?];

  if (v10)
  {
    v11 = [v8 availableInheritances];
    v12 = [v11 allNamespaces];
    v13 = [v12 containsObject:v10];

    if (v13)
    {
      [v8 availableInheritances];
      objc_claimAutoreleasedReturnValue();
      v14 = [OUTLINED_FUNCTION_5_5() sourceEnvironment];
      v15 = [v12 inheritancesForEnvironment:v14];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v17)
      {
        v18 = *v25;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = [*(*(&v24 + 1) + 8 * i) endowmentNamespace];
            v21 = [v10 isEqual:v20];

            if (v21)
            {
              v17 = 1;
              goto LABEL_17;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }

    else
    {
      v17 = 0;
    }

    if (!a3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = 1;
    if (!a3)
    {
      goto LABEL_20;
    }
  }

  *a3 = v10 != 0;
LABEL_20:

LABEL_21:
  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (uint64_t)_areOriginatorEntitlementsValidForContext:(void *)a3 withError:
{
  v43[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (!a1)
  {
    v31 = 0;
    goto LABEL_18;
  }

  v9 = [v7 domainAttributeManager];
  [a1 domain];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5_5() name];
  objc_claimAutoreleasedReturnValue();
  v10 = [OUTLINED_FUNCTION_4_8() endowmentNamespaceForDomain:? andName:?];

  v11 = [a1 sourceEnvironment];
  v12 = v11;
  if (v10)
  {

    if (!v12)
    {
      if (a3)
      {
        v13 = MEMORY[0x277CCA9B8];
        v14 = *MEMORY[0x277D47050];
        v15 = *MEMORY[0x277CCA470];
        v43[0] = @"Domain attribute requires a source environment";
        v16 = *MEMORY[0x277D47048];
        v42[0] = v15;
        v42[1] = v16;
        v17 = [a1 description];
        v43[1] = v17;
        v42[2] = *MEMORY[0x277D47058];
        v18 = [a1 fullyQualifiedName];
        v43[2] = v18;
        v19 = MEMORY[0x277CBEAC0];
        v20 = v43;
        v21 = v42;
LABEL_9:
        v24 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:3];
        v25 = v13;
        v26 = v14;
        v27 = 2;
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  else
  {

    if (v12)
    {
      if (a3)
      {
        v13 = MEMORY[0x277CCA9B8];
        v14 = *MEMORY[0x277D47050];
        v22 = *MEMORY[0x277CCA470];
        v41[0] = @"Domain attribute specifies a source environment when none is required";
        v23 = *MEMORY[0x277D47048];
        v40[0] = v22;
        v40[1] = v23;
        v17 = [a1 description];
        v41[1] = v17;
        v40[2] = *MEMORY[0x277D47058];
        v18 = [a1 fullyQualifiedName];
        v41[2] = v18;
        v19 = MEMORY[0x277CBEAC0];
        v20 = v41;
        v21 = v40;
        goto LABEL_9;
      }

LABEL_19:
      v31 = 0;
      goto LABEL_17;
    }
  }

  [v8 domainAttributeManager];
  objc_claimAutoreleasedReturnValue();
  v28 = [OUTLINED_FUNCTION_5_5() domain];
  v29 = [a1 name];
  v17 = [v3 originatorEntitlementsForDomain:v28 andName:v29];

  if (!v17)
  {
    v31 = 1;
    goto LABEL_16;
  }

  v30 = [v8 originatorEntitlements];
  v31 = [v17 matchesEntitlements:v30];

  if (!a3 || (v31 & 1) != 0)
  {
    goto LABEL_16;
  }

  v32 = MEMORY[0x277CCA9B8];
  v33 = *MEMORY[0x277D47050];
  v34 = *MEMORY[0x277CCA470];
  v39[0] = @"Required client entitlement is missing";
  v35 = *MEMORY[0x277D47048];
  v38[0] = v34;
  v38[1] = v35;
  v18 = [a1 description];
  v39[1] = v18;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v25 = v32;
  v26 = v33;
  v27 = 3;
LABEL_14:
  *a3 = [v25 errorWithDomain:v26 code:v27 userInfo:v24];

  v31 = 0;
LABEL_16:

LABEL_17:
LABEL_18:

  v36 = *MEMORY[0x277D85DE8];
  return v31;
}

- (uint64_t)_areTargetEntitlementsValidForContext:(void *)a3 withError:
{
  v20[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    v9 = [v7 domainAttributeManager];
    [a1 domain];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_7_1() name];
    objc_claimAutoreleasedReturnValue();
    v10 = [OUTLINED_FUNCTION_1_22() targetEntitlementsForDomain:? andName:?];

    if (v10)
    {
      v11 = [v8 targetEntitlements];
      v12 = [v10 matchesEntitlements:v11];

      if (a3 && (v12 & 1) == 0)
      {
        v13 = *MEMORY[0x277D47050];
        v14 = *MEMORY[0x277CCA470];
        v20[0] = @"Target is not running or required target entitlement is missing";
        v15 = *MEMORY[0x277D47048];
        v19[0] = v14;
        v19[1] = v15;
        v16 = [a1 description];
        v20[1] = v16;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
        objc_claimAutoreleasedReturnValue();
        *a3 = [OUTLINED_FUNCTION_1_22() errorWithDomain:? code:? userInfo:?];

        v12 = 0;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (uint64_t)_areAdditionalRestrictionsValidForContext:(void *)a3 withError:
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 domainAttributeManager];
    v8 = [a1 domain];
    v9 = [a1 name];
    v10 = [v7 additionalRestrictionsForDomain:v8 andName:v9];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v12)
    {
      v13 = v12;
      v43 = a1;
      v44 = a3;
      v14 = *v46;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v46 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v45 + 1) + 8 * i);
          if ([v16 isEqualToString:{@"TargetsSelf", v43}])
          {
            v17 = [v6 targetIdentity];
            v18 = [v6 originatorProcess];
            v19 = [v18 identity];
            v20 = [v17 isEqual:v19];

            if ((v20 & 1) == 0)
            {
              v29 = v44;
              if (v44)
              {
                v25 = v11;
                v30 = MEMORY[0x277CCA9B8];
                v31 = *MEMORY[0x277D47050];
                v32 = *MEMORY[0x277CCA470];
                v52[0] = @"This domain attribute can only target self";
                v33 = *MEMORY[0x277D47048];
                v51[0] = v32;
                v51[1] = v33;
                v34 = [v43 description];
                v52[1] = v34;
                v35 = MEMORY[0x277CBEAC0];
                v36 = v52;
                v37 = v51;
LABEL_20:
                v40 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:2];
                *v29 = [v30 errorWithDomain:v31 code:3 userInfo:v40];

                v28 = 0;
                v11 = v25;
                goto LABEL_22;
              }

LABEL_21:
              v28 = 0;
              goto LABEL_22;
            }
          }

          else if ([v16 isEqualToString:@"TargetsHosted"])
          {
            v21 = [v6 targetIdentity];
            v22 = [v21 hostIdentifier];
            v23 = [v22 pid];
            v24 = [v6 originatorProcess];
            v25 = v11;
            v26 = [v24 rbs_pid];

            v27 = v23 == v26;
            v11 = v25;
            if (!v27)
            {
              v29 = v44;
              if (v44)
              {
                v30 = MEMORY[0x277CCA9B8];
                v31 = *MEMORY[0x277D47050];
                v38 = *MEMORY[0x277CCA470];
                v50[0] = @"This domain attribute can only target processes hosted by the originator";
                v39 = *MEMORY[0x277D47048];
                v49[0] = v38;
                v49[1] = v39;
                v34 = [v43 description];
                v50[1] = v34;
                v35 = MEMORY[0x277CBEAC0];
                v36 = v50;
                v37 = v49;
                goto LABEL_20;
              }

              goto LABEL_21;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v28 = 1;
LABEL_22:
  }

  else
  {
    v28 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v28;
}

- (uint64_t)_doesRestrictionAllowForContext:(uint64_t)a3 withError:
{
  v6 = a2;
  v7 = v6;
  if (a1)
  {
    v8 = [v6 domainAttributeManager];
    v9 = [a1 domain];
    [a1 name];
    objc_claimAutoreleasedReturnValue();
    v10 = [OUTLINED_FUNCTION_7_1() restrictionsForDomain:v9 andName:v3];

    if (v10)
    {
      v11 = [v10 allowsContext:v7 withError:a3];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end