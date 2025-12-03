@interface RBSDomainAttribute(RBProcessState)
- (id)effectiveAttributesWithContext:()RBProcessState;
- (uint64_t)isValidForContext:()RBProcessState withError:;
- (void)applyToAcquisitionContext:()RBProcessState;
- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:;
- (void)applyToAssertionTransientState:()RBProcessState attributePath:context:;
- (void)applyToProcessState:()RBProcessState attributePath:context:;
- (void)applyToSystemState:()RBProcessState attributePath:context:;
@end

@implementation RBSDomainAttribute(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v8 = a3;
  v9 = a5;
  v22 = 0;
  if ([(RBSDomainAttribute *)self _contextContainsRequiredEndowment:v9 requiresEndowment:&v22])
  {
    if (v22)
    {
      [v9 pushActiveDueToInheritedEndowment];
    }

    domainAttributeManager = [v9 domainAttributeManager];
    domain = [self domain];
    name = [self name];
    v13 = [domainAttributeManager attributesForDomain:domain andName:name context:v9 withError:0];

    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __80__RBSDomainAttribute_RBProcessState__applyToProcessState_attributePath_context___block_invoke;
    v18 = &unk_279B33EF0;
    v19 = v8;
    v21 = a4;
    v14 = v9;
    v20 = v14;
    [v13 enumerateObjectsUsingBlock:&v15];
    if (v22)
    {
      [v14 popActiveDueToInheritedEndowment];
    }
  }
}

- (void)applyToAcquisitionContext:()RBProcessState
{
  v4 = a3;
  daemonContext = [v4 daemonContext];
  domainAttributeManager = [daemonContext domainAttributeManager];
  domain = [self domain];
  name = [self name];
  v9 = [domainAttributeManager attributesForDomain:domain andName:name context:0 withError:0];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__RBSDomainAttribute_RBProcessState__applyToAcquisitionContext___block_invoke;
  v11[3] = &unk_279B33F18;
  v12 = v4;
  v10 = v4;
  [v9 enumerateObjectsUsingBlock:v11];
}

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v35[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 ignoreRestrictions])
  {
LABEL_2:
    [v6 pushIgnoreRestrictions];
    domainAttributeManager = [v6 domainAttributeManager];
    domain = [self domain];
    name = [self name];
    v32 = 0;
    v10 = [domainAttributeManager attributesForDomain:domain andName:name context:v6 withError:&v32];
    v11 = v32;

    if (v11)
    {
      if (a4)
      {
        v12 = v11;
        v13 = 0;
        *a4 = v11;
      }

      else
      {
LABEL_18:
        v13 = 0;
      }
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = v10;
      v22 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v29;
        while (2)
        {
          v25 = 0;
          do
          {
            if (*v29 != v24)
            {
              objc_enumerationMutation(v10);
            }

            if (![*(*(&v28 + 1) + 8 * v25) isValidForContext:v6 withError:{a4, v28}])
            {

              goto LABEL_18;
            }

            ++v25;
          }

          while (v23 != v25);
          v23 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      [v6 popIgnoreRestrictions];
      v13 = 1;
    }

    goto LABEL_19;
  }

  domainAttributeManager2 = [v6 domainAttributeManager];
  domain2 = [self domain];
  name2 = [self name];
  v17 = [domainAttributeManager2 areTargetPropertiesValidForContext:v6 forAttributeWithDomain:domain2 andName:name2];

  if (v17)
  {
    if ([(RBSDomainAttribute *)self _areOriginatorEntitlementsValidForContext:v6 withError:a4]&& [(RBSDomainAttribute *)self _areTargetEntitlementsValidForContext:v6 withError:a4]&& [(RBSDomainAttribute *)self _areAdditionalRestrictionsValidForContext:v6 withError:a4]&& [(RBSDomainAttribute *)self _doesRestrictionAllowForContext:v6 withError:a4])
    {
      goto LABEL_2;
    }

LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  if (!a4)
  {
    goto LABEL_21;
  }

  v18 = MEMORY[0x277CCA9B8];
  v19 = *MEMORY[0x277D47050];
  v20 = *MEMORY[0x277CCA470];
  v35[0] = @"Target for domain attribute is missing a required plist property";
  v21 = *MEMORY[0x277D47048];
  v34[0] = v20;
  v34[1] = v21;
  v11 = [self description];
  v35[1] = v11;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  [v18 errorWithDomain:v19 code:2 userInfo:v10];
  *a4 = v13 = 0;
LABEL_19:

LABEL_22:
  v26 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)applyToAssertionTransientState:()RBProcessState attributePath:context:
{
  v10 = a3;
  v11 = a5;
  v20 = 0;
  if ([(RBSDomainAttribute *)self _contextContainsRequiredEndowment:v11 requiresEndowment:&v20])
  {
    if (v20)
    {
      [v11 pushActiveDueToInheritedEndowment];
    }

    domainAttributeManager = [v11 domainAttributeManager];
    [self domain];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_7_1() name];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_1_22();
    OUTLINED_FUNCTION_2_12();
    v14 = [v13 attributesForDomain:? andName:? context:? withError:?];

    OUTLINED_FUNCTION_0_2();
    v16[1] = 3221225472;
    v16[2] = __91__RBSDomainAttribute_RBProcessState__applyToAssertionTransientState_attributePath_context___block_invoke;
    v16[3] = &unk_279B33EF0;
    v17 = v10;
    v19 = a4;
    v15 = v11;
    v18 = v15;
    [v14 enumerateObjectsUsingBlock:v16];
    if (v20)
    {
      [v15 popActiveDueToInheritedEndowment];
    }
  }
}

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:
{
  v8 = a3;
  v9 = a5;
  [v8 setHasDomainAttribute:1];
  sourceEnvironment = [self sourceEnvironment];
  if (sourceEnvironment)
  {
    sourceEnvironments = [v8 sourceEnvironments];
    [sourceEnvironments addObject:sourceEnvironment];
  }

  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  domain = [self domain];
  name = [self name];
  v15 = [v12 initWithFormat:@"%@:%@", domain, name];

  domainAttributes = [v8 domainAttributes];

  if (domainAttributes)
  {
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    domainAttributes2 = [v8 domainAttributes];
    v19 = [v17 initWithFormat:@"%@, %@", domainAttributes2, v15];
    [v8 setDomainAttributes:v19];
  }

  else
  {
    [v8 setDomainAttributes:v15];
  }

  v31 = 0;
  if ([(RBSDomainAttribute *)self _contextContainsRequiredEndowment:v9 requiresEndowment:&v31])
  {
    OUTLINED_FUNCTION_3_6();
    if (v20)
    {
      [v9 pushActiveDueToInheritedEndowment];
    }

    domainAttributeManager = [v9 domainAttributeManager];
    domain2 = [self domain];
    name2 = [self name];
    OUTLINED_FUNCTION_2_12();
    v25 = [v24 attributesForDomain:? andName:? context:? withError:?];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __93__RBSDomainAttribute_RBProcessState__applyToAssertionIntransientState_attributePath_context___block_invoke;
    v27[3] = &unk_279B33EF0;
    v28 = v8;
    v30 = a4;
    v26 = v9;
    v29 = v26;
    [v25 enumerateObjectsUsingBlock:v27];
    OUTLINED_FUNCTION_3_6();
    if (v20)
    {
      [v26 popActiveDueToInheritedEndowment];
    }
  }
}

- (void)applyToSystemState:()RBProcessState attributePath:context:
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v28 = 0;
  if ([(RBSDomainAttribute *)self _contextContainsRequiredEndowment:v10 requiresEndowment:&v28])
  {
    OUTLINED_FUNCTION_3_6();
    if (v11)
    {
      [v10 pushActiveDueToInheritedEndowment];
    }

    domainAttributeManager = [v10 domainAttributeManager];
    [self domain];
    objc_claimAutoreleasedReturnValue();
    name = [OUTLINED_FUNCTION_7_1() name];
    OUTLINED_FUNCTION_2_12();
    v15 = [v14 attributesForDomain:? andName:? context:? withError:?];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v25;
      do
      {
        v21 = 0;
        v22 = v19;
        do
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v19 = v22 + 1;
          [*(*(&v24 + 1) + 8 * v21++) applyToSystemState:v9 attributePath:RBSAttributePathIncrement(a4 context:{v22++), v10, v24}];
        }

        while (v18 != v21);
        v18 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v18);
    }

    OUTLINED_FUNCTION_3_6();
    if (v11)
    {
      [v10 popActiveDueToInheritedEndowment];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)effectiveAttributesWithContext:()RBProcessState
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEB58] set];
  if ([(RBSDomainAttribute *)self _contextContainsRequiredEndowment:v5 requiresEndowment:0])
  {
    domainAttributeManager = [v5 domainAttributeManager];
    domain = [self domain];
    [self name];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_1_22();
    OUTLINED_FUNCTION_2_12();
    v10 = [v9 attributesForDomain:? andName:? context:? withError:?];

    OUTLINED_FUNCTION_0_2();
    v12[1] = 3221225472;
    v12[2] = __69__RBSDomainAttribute_RBProcessState__effectiveAttributesWithContext___block_invoke;
    v12[3] = &unk_279B33950;
    v13 = v6;
    v14 = v5;
    [v10 enumerateObjectsUsingBlock:v12];
  }

  [v6 addObject:self];

  return v6;
}

@end