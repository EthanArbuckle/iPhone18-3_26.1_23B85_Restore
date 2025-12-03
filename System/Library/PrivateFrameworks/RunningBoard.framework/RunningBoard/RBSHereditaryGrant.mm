@interface RBSHereditaryGrant
- (void)_withEndowmentFromContext:(void *)context block:;
@end

@implementation RBSHereditaryGrant

void __80__RBSHereditaryGrant_RBProcessState__applyToProcessState_attributePath_context___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D46E90]);
    v5 = [*(a1 + 32) endowmentNamespace];
    v6 = [*(a1 + 40) target];
    v7 = [v6 environment];
    v8 = [*(a1 + 40) assertionID];
    v9 = [v4 _initWithNamespace:v5 environment:v7 encodedEndowment:v3 originatingIdentifier:v8 attributePath:*(a1 + 56)];

    v18 = v9;
    [*(a1 + 48) addInheritance:v9];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [*(a1 + 32) attributes];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v20;
      do
      {
        v15 = 0;
        v16 = v13;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v13 = v16 + 1;
          [*(*(&v19 + 1) + 8 * v15++) applyToProcessState:*(a1 + 48) attributePath:RBSAttributePathIncrement(*(a1 + 56) context:{v16++), *(a1 + 40)}];
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __91__RBSHereditaryGrant_RBProcessState__applyToAssertionTransientState_attributePath_context___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [*(a1 + 32) attributes];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v12;
      do
      {
        v8 = 0;
        v9 = v6;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v6 = v9 + 1;
          [*(*(&v11 + 1) + 8 * v8++) applyToAssertionTransientState:*(a1 + 40) attributePath:RBSAttributePathIncrement(*(a1 + 56) context:{v9++), *(a1 + 48)}];
        }

        while (v5 != v8);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __93__RBSHereditaryGrant_RBProcessState__applyToAssertionIntransientState_attributePath_context___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [*(a1 + 32) attributes];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v12;
      do
      {
        v8 = 0;
        v9 = v6;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v6 = v9 + 1;
          [*(*(&v11 + 1) + 8 * v8++) applyToAssertionIntransientState:*(a1 + 40) attributePath:RBSAttributePathIncrement(*(a1 + 56) context:{v9++), *(a1 + 48)}];
        }

        while (v5 != v8);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __69__RBSHereditaryGrant_RBProcessState__effectiveAttributesWithContext___block_invoke(id *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [a1[4] attributes];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __69__RBSHereditaryGrant_RBProcessState__effectiveAttributesWithContext___block_invoke_2;
    v4[3] = &unk_279B33950;
    v5 = a1[5];
    v6 = a1[6];
    [v3 enumerateObjectsUsingBlock:v4];
  }
}

void __69__RBSHereditaryGrant_RBProcessState__effectiveAttributesWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 effectiveAttributesWithContext:*(a1 + 40)];
  [v2 unionSet:v3];
}

- (void)_withEndowmentFromContext:(void *)context block:
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  contextCopy = context;
  if (self)
  {
    v7 = objc_autoreleasePoolPush();
    encodedEndowment = [self encodedEndowment];
    assertionID = [v5 assertionID];
    if (!encodedEndowment)
    {
      endowmentNamespace = [self endowmentNamespace];
      availableInheritances = [v5 availableInheritances];
      allNamespaces = [availableInheritances allNamespaces];
      v13 = [allNamespaces containsObject:endowmentNamespace];

      if (v13)
      {
        sourceEnvironment = [self sourceEnvironment];
        v15 = [availableInheritances inheritancesForEnvironment:sourceEnvironment];

        encodedEndowment = OUTLINED_FUNCTION_1_14(v16, v17, v18, v19);
        if (encodedEndowment)
        {
          v31 = availableInheritances;
          v32 = v7;
          v33 = v5;
          v20 = MEMORY[0];
          while (2)
          {
            for (i = 0; i != encodedEndowment; i = i + 1)
            {
              if (MEMORY[0] != v20)
              {
                objc_enumerationMutation(v15);
              }

              v22 = *(8 * i);
              endowmentNamespace2 = [v22 endowmentNamespace];
              v24 = [endowmentNamespace2 isEqual:endowmentNamespace];

              if (v24)
              {
                encodedEndowment = [v22 encodedEndowment];
                originatingIdentifier = [v22 originatingIdentifier];

                assertionID = originatingIdentifier;
                goto LABEL_15;
              }
            }

            encodedEndowment = OUTLINED_FUNCTION_1_14(v25, v26, v27, v28);
            if (encodedEndowment)
            {
              continue;
            }

            break;
          }

LABEL_15:
          v7 = v32;
          v5 = v33;
          availableInheritances = v31;
        }
      }

      else
      {
        encodedEndowment = 0;
      }
    }

    contextCopy[2](contextCopy, encodedEndowment, assertionID);

    objc_autoreleasePoolPop(v7);
  }

  v30 = *MEMORY[0x277D85DE8];
}

@end