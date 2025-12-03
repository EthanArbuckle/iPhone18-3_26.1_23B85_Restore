@interface RBAssertionStateResolver
- (id)assertionDescriptorsWithFlattenedAttributes:(BOOL)attributes;
- (id)resolveForAssertions:(id)assertions;
@end

@implementation RBAssertionStateResolver

- (id)resolveForAssertions:(id)assertions
{
  assertionsCopy = assertions;
  v5 = [[RBAssertionResolutionContext alloc] initWithAssertions:assertionsCopy];

  [(RBAssertionResolutionContext *)v5 setAssertionCollection:?];
  [(RBAssertionResolutionContext *)v5 setProcessIndex:?];
  [(RBAssertionResolutionContext *)v5 setStateMap:?];
  [(RBAssertionResolutionContext *)v5 setDomainAttributeManager:?];
  [(RBAssertionResolutionContext *)v5 setBundlePropertiesManager:?];
  [(RBAssertionResolutionContext *)v5 setEntitlementManager:?];
  [(RBAssertionResolutionContext *)v5 setSavedEndowments:?];
  [(RBAssertionResolutionContext *)v5 setSystemState:?];
  [(RBAssertionResolutionContext *)v5 resolve];

  return v5;
}

void __72__RBAssertionStateResolver_assertionDescriptorsWithFlattenedAttributes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isActive])
  {
    v4 = [v3 target];
    v5 = [v3 attributes];
    if (*(a1 + 48) == 1)
    {
      v11 = [MEMORY[0x277CBEB18] array];
      v12 = [(RBAssertionResolutionContext *)*(a1 + 32) _createContextForAssertion:v3];
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __72__RBAssertionStateResolver_assertionDescriptorsWithFlattenedAttributes___block_invoke_2;
      v19 = &unk_279B33950;
      v13 = v11;
      v20 = v13;
      v21 = v12;
      v14 = v12;
      [v5 enumerateObjectsUsingBlock:&v16];
      v15 = v13;

      v5 = v15;
    }

    v6 = MEMORY[0x277D46DC8];
    v7 = [v3 identifier];
    v8 = [v4 createRBSTarget];
    v9 = [v3 explanation];
    v10 = [v6 descriptorWithIdentifier:v7 target:v8 explanation:v9 attributes:v5];

    [*(a1 + 40) addObject:v10];
  }
}

void __72__RBAssertionStateResolver_assertionDescriptorsWithFlattenedAttributes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 effectiveAttributesWithContext:*(a1 + 40)];
  v3 = [v4 allObjects];
  [v2 addObjectsFromArray:v3];
}

- (id)assertionDescriptorsWithFlattenedAttributes:(BOOL)attributes
{
  v5 = [[RBAssertionResolutionContext alloc] initWithAssertions:?];
  [(RBAssertionResolutionContext *)v5 setAssertionCollection:?];
  [(RBAssertionResolutionContext *)v5 setProcessIndex:?];
  [(RBAssertionResolutionContext *)v5 setStateMap:?];
  [(RBAssertionResolutionContext *)v5 setDomainAttributeManager:?];
  [(RBAssertionResolutionContext *)v5 setBundlePropertiesManager:?];
  [(RBAssertionResolutionContext *)v5 setEntitlementManager:?];
  [(RBAssertionResolutionContext *)v5 setSavedEndowments:?];
  v6 = [MEMORY[0x277CBEB58] set];
  assertionCollection = self->_assertionCollection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__RBAssertionStateResolver_assertionDescriptorsWithFlattenedAttributes___block_invoke;
  v13[3] = &unk_279B33E60;
  attributesCopy = attributes;
  v14 = v5;
  v8 = v6;
  v15 = v8;
  v9 = v5;
  [(RBAssertionCollection *)assertionCollection enumerateAssertionsWithBlock:v13];
  v10 = v15;
  v11 = v8;

  return v8;
}

@end