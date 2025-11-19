@interface RBAssertionDescriptorValidator
+ (BOOL)checkConflictingAttributes:(id)a3 error:(id *)a4;
- (BOOL)isAssertionValidForContext:(id)a3 error:(id *)a4;
- (id)_errorWithDescription:(uint64_t)a1;
- (id)_flattenedAttributesFromAttribute:(void *)a3 context:;
- (id)_flattenedAttributesFromContext:(void *)a1;
@end

@implementation RBAssertionDescriptorValidator

+ (BOOL)checkConflictingAttributes:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = v5;
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if (v10 != *(*(&v19 + 1) + 8 * j) && (![v10 allowedWithAttribute:? error:?] || !objc_msgSend(v10, "hasMandatoryAttributes:error:", v11, a4)))
              {

                v16 = 0;
                goto LABEL_21;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v16 = 1;
    }

    while (v7);
  }

  else
  {
    v16 = 1;
  }

LABEL_21:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)isAssertionValidForContext:(id)a3 error:(id *)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    [RBAssertionDescriptorValidator isAssertionValidForContext:error:];
  }

  v8 = [v7 assertionDescriptor];
  v9 = [v7 originatorEntitlements];
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [RBAssertionDescriptorValidator isAssertionValidForContext:error:];
    if (v10)
    {
      goto LABEL_5;
    }
  }

  [RBAssertionDescriptorValidator isAssertionValidForContext:error:];
LABEL_5:
  v11 = [v7 bundlePropertiesManager];

  if (!v11)
  {
    [RBAssertionDescriptorValidator isAssertionValidForContext:error:];
  }

  v12 = [v7 domainAttributeManager];

  if (!v12)
  {
    [RBAssertionDescriptorValidator isAssertionValidForContext:error:];
  }

  v13 = [v7 entitlementManager];

  if (!v13)
  {
    [RBAssertionDescriptorValidator isAssertionValidForContext:error:];
  }

  [v7 setAssertionDescriptionValidator:self];
  v14 = [v8 attributes];
  if ([v14 count])
  {
    v44 = self;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v16)
    {
      v17 = v16;
      v47 = v8;
      obj = v15;
      v43 = a2;
      v45 = v14;
      v46 = a4;
      v18 = v7;
      v19 = 0;
      v20 = *v51;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v51 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v50 + 1) + 8 * i);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v49 = 0;
          v24 = [v22 isValidForContext:v18 withError:&v49];
          v25 = v49;
          v26 = v25;
          if ((v24 & 1) == 0)
          {
            if (!v25)
            {
              [(RBAssertionDescriptorValidator *)v43 isAssertionValidForContext:v44 error:v22];
            }

            v7 = v18;
            v8 = v47;
            if (v46)
            {
              v27 = v26;
              *v46 = v26;
            }

            LOBYTE(a4) = 0;
            v14 = v45;
            goto LABEL_43;
          }

          v19 |= isKindOfClass;
        }

        v17 = [obj countByEnumeratingWithState:&v50 objects:v54 count:{16, v43}];
        if (v17)
        {
          continue;
        }

        break;
      }

      v7 = v18;
      v8 = v47;
      v14 = v45;
      a4 = v46;
      if (v19)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    v30 = [v8 target];
    v31 = [v30 processIdentity];
    if (v31)
    {
      v32 = v31;
      v33 = [v7 acquisitionContext];
      if (([v33 allowAbstractTarget] & 1) == 0)
      {
        v34 = v14;
        v35 = [v8 target];
        v36 = [v35 processIdentity];
        if (!v36 && ([v10 rb_hasEntitlementDomain:2] & 1) == 0 && (objc_msgSend(v10, "rb_hasEntitlementDomain:", 4) & 1) == 0)
        {
          v37 = [v10 rb_hasEntitlement:@"com.apple.runningboard.targetidentities"];

          v14 = v34;
          if ((v37 & 1) == 0)
          {
            if (a4)
            {
              v28 = @"Client is not entitled to use identities as assertion targets";
              v29 = v44;
              goto LABEL_38;
            }

            goto LABEL_43;
          }

LABEL_42:
          v40 = [(RBAssertionDescriptorValidator *)v44 _flattenedAttributesFromContext:v7];
          LOBYTE(a4) = [RBAssertionDescriptorValidator checkConflictingAttributes:v40 error:a4];

          goto LABEL_43;
        }

        v14 = v34;
      }
    }

    goto LABEL_42;
  }

  if (a4)
  {
    v28 = @"Cannot acquire an assertion with no attributes";
    v29 = self;
LABEL_38:
    v38 = [(RBAssertionDescriptorValidator *)v29 _errorWithDescription:v28];
    v39 = a4;
    LOBYTE(a4) = 0;
    *v39 = v38;
  }

LABEL_43:

  v41 = *MEMORY[0x277D85DE8];
  return a4;
}

- (id)_errorWithDescription:(uint64_t)a1
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = MEMORY[0x277CCA9B8];
    v3 = *MEMORY[0x277D47050];
    v10 = *MEMORY[0x277CCA470];
    v11[0] = a2;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a2;
    v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v2 errorWithDomain:v3 code:2 userInfo:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_flattenedAttributesFromContext:(void *)a1
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 assertionDescriptor];
    v6 = [MEMORY[0x277CBEB58] set];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v5 attributes];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(RBAssertionDescriptorValidator *)a1 _flattenedAttributesFromAttribute:v4 context:?];
          [v6 unionSet:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_flattenedAttributesFromAttribute:(void *)a3 context:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v17 = v5;
  if (a1)
  {
    v8 = [v6 domainAttributeManager];
    a1 = [MEMORY[0x277CBEB58] set];
    v9 = [MEMORY[0x277CBEB58] set];
    [v9 addObject:v5];
    while ([v9 count])
    {
      v10 = [v9 anyObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        v12 = [v11 domain];
        v13 = [v11 name];

        v14 = [v8 attributesForDomain:v12 andName:v13 context:v7 withError:0];

        [v9 addObjectsFromArray:v14];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [a1 addObject:v10];
          goto LABEL_9;
        }

        v14 = v10;
        v15 = [v14 attributes];
        [v9 addObjectsFromArray:v15];

        [a1 addObject:v14];
      }

LABEL_9:
      [v9 removeObject:v10];
    }
  }

  return a1;
}

- (void)isAssertionValidForContext:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"context" object:? file:? lineNumber:? description:?];
}

- (void)isAssertionValidForContext:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"assertionDescriptor" object:? file:? lineNumber:? description:?];
}

- (void)isAssertionValidForContext:error:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"originatorEntitlements" object:? file:? lineNumber:? description:?];
}

- (void)isAssertionValidForContext:error:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"[context bundlePropertiesManager]" object:? file:? lineNumber:? description:?];
}

- (void)isAssertionValidForContext:error:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"[context domainAttributeManager]" object:? file:? lineNumber:? description:?];
}

- (void)isAssertionValidForContext:error:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"[context entitlementManager]" object:? file:? lineNumber:? description:?];
}

- (void)isAssertionValidForContext:(uint64_t)a3 error:.cold.7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"RBAssertionDescriptorValidator.m" lineNumber:86 description:{@"attribute failed to return error for validation: %@", a3}];
}

@end