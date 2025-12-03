@interface RBAssertionDescriptorValidator
+ (BOOL)checkConflictingAttributes:(id)attributes error:(id *)error;
- (BOOL)isAssertionValidForContext:(id)context error:(id *)error;
- (id)_errorWithDescription:(uint64_t)description;
- (id)_flattenedAttributesFromAttribute:(void *)attribute context:;
- (id)_flattenedAttributesFromContext:(void *)context;
@end

@implementation RBAssertionDescriptorValidator

+ (BOOL)checkConflictingAttributes:(id)attributes error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  attributesCopy = attributes;
  v6 = [attributesCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(attributesCopy);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = attributesCopy;
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

              if (v10 != *(*(&v19 + 1) + 8 * j) && (![v10 allowedWithAttribute:? error:?] || !objc_msgSend(v10, "hasMandatoryAttributes:error:", v11, error)))
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

- (BOOL)isAssertionValidForContext:(id)context error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (!contextCopy)
  {
    [RBAssertionDescriptorValidator isAssertionValidForContext:error:];
  }

  assertionDescriptor = [contextCopy assertionDescriptor];
  originatorEntitlements = [contextCopy originatorEntitlements];
  v10 = originatorEntitlements;
  if (assertionDescriptor)
  {
    if (originatorEntitlements)
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
  bundlePropertiesManager = [contextCopy bundlePropertiesManager];

  if (!bundlePropertiesManager)
  {
    [RBAssertionDescriptorValidator isAssertionValidForContext:error:];
  }

  domainAttributeManager = [contextCopy domainAttributeManager];

  if (!domainAttributeManager)
  {
    [RBAssertionDescriptorValidator isAssertionValidForContext:error:];
  }

  entitlementManager = [contextCopy entitlementManager];

  if (!entitlementManager)
  {
    [RBAssertionDescriptorValidator isAssertionValidForContext:error:];
  }

  [contextCopy setAssertionDescriptionValidator:self];
  attributes = [assertionDescriptor attributes];
  if ([attributes count])
  {
    selfCopy = self;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v15 = attributes;
    v16 = [v15 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v16)
    {
      v17 = v16;
      v47 = assertionDescriptor;
      obj = v15;
      v43 = a2;
      v45 = attributes;
      errorCopy = error;
      v18 = contextCopy;
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
              [(RBAssertionDescriptorValidator *)v43 isAssertionValidForContext:selfCopy error:v22];
            }

            contextCopy = v18;
            assertionDescriptor = v47;
            if (errorCopy)
            {
              v27 = v26;
              *errorCopy = v26;
            }

            LOBYTE(error) = 0;
            attributes = v45;
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

      contextCopy = v18;
      assertionDescriptor = v47;
      attributes = v45;
      error = errorCopy;
      if (v19)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    target = [assertionDescriptor target];
    processIdentity = [target processIdentity];
    if (processIdentity)
    {
      v32 = processIdentity;
      acquisitionContext = [contextCopy acquisitionContext];
      if (([acquisitionContext allowAbstractTarget] & 1) == 0)
      {
        v34 = attributes;
        target2 = [assertionDescriptor target];
        processIdentity2 = [target2 processIdentity];
        if (!processIdentity2 && ([v10 rb_hasEntitlementDomain:2] & 1) == 0 && (objc_msgSend(v10, "rb_hasEntitlementDomain:", 4) & 1) == 0)
        {
          v37 = [v10 rb_hasEntitlement:@"com.apple.runningboard.targetidentities"];

          attributes = v34;
          if ((v37 & 1) == 0)
          {
            if (error)
            {
              v28 = @"Client is not entitled to use identities as assertion targets";
              selfCopy2 = selfCopy;
              goto LABEL_38;
            }

            goto LABEL_43;
          }

LABEL_42:
          v40 = [(RBAssertionDescriptorValidator *)selfCopy _flattenedAttributesFromContext:contextCopy];
          LOBYTE(error) = [RBAssertionDescriptorValidator checkConflictingAttributes:v40 error:error];

          goto LABEL_43;
        }

        attributes = v34;
      }
    }

    goto LABEL_42;
  }

  if (error)
  {
    v28 = @"Cannot acquire an assertion with no attributes";
    selfCopy2 = self;
LABEL_38:
    v38 = [(RBAssertionDescriptorValidator *)selfCopy2 _errorWithDescription:v28];
    errorCopy2 = error;
    LOBYTE(error) = 0;
    *errorCopy2 = v38;
  }

LABEL_43:

  v41 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)_errorWithDescription:(uint64_t)description
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (description)
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

- (id)_flattenedAttributesFromContext:(void *)context
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (context)
  {
    assertionDescriptor = [v3 assertionDescriptor];
    v6 = [MEMORY[0x277CBEB58] set];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    attributes = [assertionDescriptor attributes];
    v8 = [attributes countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(attributes);
          }

          v12 = [(RBAssertionDescriptorValidator *)context _flattenedAttributesFromAttribute:v4 context:?];
          [v6 unionSet:v12];
        }

        v9 = [attributes countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)_flattenedAttributesFromAttribute:(void *)attribute context:
{
  v5 = a2;
  attributeCopy = attribute;
  v7 = attributeCopy;
  v17 = v5;
  if (self)
  {
    domainAttributeManager = [attributeCopy domainAttributeManager];
    self = [MEMORY[0x277CBEB58] set];
    v9 = [MEMORY[0x277CBEB58] set];
    [v9 addObject:v5];
    while ([v9 count])
    {
      anyObject = [v9 anyObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = anyObject;
        domain = [v11 domain];
        name = [v11 name];

        v14 = [domainAttributeManager attributesForDomain:domain andName:name context:v7 withError:0];

        [v9 addObjectsFromArray:v14];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [self addObject:anyObject];
          goto LABEL_9;
        }

        v14 = anyObject;
        attributes = [v14 attributes];
        [v9 addObjectsFromArray:attributes];

        [self addObject:v14];
      }

LABEL_9:
      [v9 removeObject:anyObject];
    }
  }

  return self;
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