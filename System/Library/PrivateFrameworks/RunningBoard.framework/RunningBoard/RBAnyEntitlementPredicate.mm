@interface RBAnyEntitlementPredicate
- (BOOL)matchesEntitlements:(id)entitlements;
- (RBAnyEntitlementPredicate)initWithArray:(id)array forDomain:(id)domain attribute:(id)attribute errors:(id)errors;
- (id)allEntitlements;
- (id)description;
- (unint64_t)count;
@end

@implementation RBAnyEntitlementPredicate

- (RBAnyEntitlementPredicate)initWithArray:(id)array forDomain:(id)domain attribute:(id)attribute errors:(id)errors
{
  domainCopy = domain;
  attributeCopy = attribute;
  errorsCopy = errors;
  v13 = MEMORY[0x277CBEB18];
  arrayCopy = array;
  array = [v13 array];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __70__RBAnyEntitlementPredicate_initWithArray_forDomain_attribute_errors___block_invoke;
  v26 = &unk_279B337E8;
  v27 = array;
  v28 = domainCopy;
  v29 = attributeCopy;
  v30 = errorsCopy;
  v16 = errorsCopy;
  v17 = attributeCopy;
  v18 = domainCopy;
  v19 = array;
  [arrayCopy enumerateObjectsUsingBlock:&v23];

  v20 = [MEMORY[0x277CBEA60] arrayWithArray:{v19, v23, v24, v25, v26}];
  predicate = self->_predicate;
  self->_predicate = v20;

  return self;
}

void __70__RBAnyEntitlementPredicate_initWithArray_forDomain_attribute_errors___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = RBAllEntitlementPredicate;
LABEL_5:
    v5 = *(a1 + 32);
    v6 = [(__objc2_class *)v4 predicateForObject:v3 forDomain:*(a1 + 40) attribute:*(a1 + 48) errors:*(a1 + 56)];
    [v5 addObject:v6];

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = RBAnyEntitlementPredicate;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }

  else
  {
    v8 = rbs_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __70__RBAnyEntitlementPredicate_initWithArray_forDomain_attribute_errors___block_invoke_cold_1(a1);
    }

    if (*(a1 + 56))
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains entitlement value of wrong type: %@", *(a1 + 40), *(a1 + 48), v3, *MEMORY[0x277CCA470]];
      v14[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v12 = [v9 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v11];

      [*(a1 + 56) addObject:v12];
    }
  }

LABEL_6:

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)matchesEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  predicate = self->_predicate;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__RBAnyEntitlementPredicate_matchesEntitlements___block_invoke;
  v8[3] = &unk_279B33810;
  v6 = entitlementsCopy;
  v9 = v6;
  v10 = &v11;
  [(NSArray *)predicate enumerateObjectsUsingBlock:v8];
  LOBYTE(predicate) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return predicate;
}

void __49__RBAnyEntitlementPredicate_matchesEntitlements___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (![*(a1 + 32) rb_hasEntitlement:v6])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ([v6 matchesEntitlements:*(a1 + 32)])
  {
LABEL_5:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

LABEL_6:
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  predicate = self->_predicate;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__RBAnyEntitlementPredicate_count__block_invoke;
  v5[3] = &unk_279B33838;
  v5[4] = &v6;
  [(NSArray *)predicate enumerateObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __34__RBAnyEntitlementPredicate_count__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v4 count];
  }

  else
  {
    v3 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) += v3;
}

- (id)allEntitlements
{
  v3 = objc_opt_new();
  predicate = self->_predicate;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__RBAnyEntitlementPredicate_allEntitlements__block_invoke;
  v8[3] = &unk_279B33860;
  v9 = v3;
  v5 = v3;
  [(NSArray *)predicate enumerateObjectsUsingBlock:v8];
  v6 = [MEMORY[0x277CBEB98] setWithSet:v5];

  return v6;
}

void __44__RBAnyEntitlementPredicate_allEntitlements__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (isKindOfClass)
  {
    v5 = [v6 allEntitlements];
    [v4 unionSet:v5];
  }

  else
  {
    [v4 addObject:v6];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(NSArray *)self->_predicate componentsJoinedByString:@" || "];
  v5 = [v3 initWithFormat:@"(%@)", v4];

  return v5;
}

void __70__RBAnyEntitlementPredicate_initWithArray_forDomain_attribute_errors___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_13(&dword_262485000, v3, v4, "Domain %{public}@ attribute %{public}@ contains entitlement value of wrong type: %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

@end