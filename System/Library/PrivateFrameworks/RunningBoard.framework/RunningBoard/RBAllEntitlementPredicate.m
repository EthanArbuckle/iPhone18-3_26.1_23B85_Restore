@interface RBAllEntitlementPredicate
- (BOOL)matchesEntitlements:(id)a3;
- (RBAllEntitlementPredicate)initWithDictionary:(id)a3 forDomain:(id)a4 attribute:(id)a5 errors:(id)a6;
- (id)allEntitlements;
- (id)description;
- (unint64_t)count;
@end

@implementation RBAllEntitlementPredicate

- (RBAllEntitlementPredicate)initWithDictionary:(id)a3 forDomain:(id)a4 attribute:(id)a5 errors:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x277CBEB38];
  v14 = a3;
  v15 = [v13 dictionary];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __75__RBAllEntitlementPredicate_initWithDictionary_forDomain_attribute_errors___block_invoke;
  v26 = &unk_279B33888;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v30 = v15;
  v16 = v15;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  [v14 enumerateKeysAndObjectsUsingBlock:&v23];

  v20 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:{v16, v23, v24, v25, v26}];
  predicate = self->_predicate;
  self->_predicate = v20;

  return self;
}

void __75__RBAllEntitlementPredicate_initWithDictionary_forDomain_attribute_errors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = RBAllEntitlementPredicate;
LABEL_11:
      v16 = *(a1 + 56);
      v17 = [(__objc2_class *)v7 predicateForObject:v5 forDomain:*(a1 + 32) attribute:*(a1 + 40) errors:*(a1 + 48)];
      [v16 setObject:v6 forKey:v17];

      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = RBAnyEntitlementPredicate;
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 56) setObject:v6 forKey:v5];
      goto LABEL_12;
    }

    v19 = rbs_general_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __75__RBAllEntitlementPredicate_initWithDictionary_forDomain_attribute_errors___block_invoke_cold_2(a1);
    }

    if (*(a1 + 48))
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains entitlement name of wrong type: %@", *(a1 + 32), *(a1 + 40), v5, *MEMORY[0x277CCA470]];
      v21 = v10;
      v11 = MEMORY[0x277CBEAC0];
      v12 = &v21;
      v13 = &v20;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = rbs_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __75__RBAllEntitlementPredicate_initWithDictionary_forDomain_attribute_errors___block_invoke_cold_1(a1);
    }

    if (*(a1 + 48))
    {
      v9 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA470];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains entitlement value of wrong type: %@", *(a1 + 32), *(a1 + 40), v6];
      v23[0] = v10;
      v11 = MEMORY[0x277CBEAC0];
      v12 = v23;
      v13 = &v22;
LABEL_8:
      v14 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
      v15 = [v9 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v14];

      [*(a1 + 48) addObject:v15];
    }
  }

LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)matchesEntitlements:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  predicate = self->_predicate;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__RBAllEntitlementPredicate_matchesEntitlements___block_invoke;
  v8[3] = &unk_279B338B0;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [(NSDictionary *)predicate enumerateKeysAndObjectsUsingBlock:v8];
  LOBYTE(predicate) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return predicate;
}

void __49__RBAllEntitlementPredicate_matchesEntitlements___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([*(a1 + 32) rb_hasEntitlement:v6])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (([v6 matchesEntitlements:*(a1 + 32)] & 1) == 0)
  {
LABEL_5:
    *(*(*(a1 + 40) + 8) + 24) = 0;
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
  v5[2] = __34__RBAllEntitlementPredicate_count__block_invoke;
  v5[3] = &unk_279B338D8;
  v5[4] = &v6;
  [(NSDictionary *)predicate enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __34__RBAllEntitlementPredicate_count__block_invoke(uint64_t a1, void *a2)
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
  v8[2] = __44__RBAllEntitlementPredicate_allEntitlements__block_invoke;
  v8[3] = &unk_279B33900;
  v9 = v3;
  v5 = v3;
  [(NSDictionary *)predicate enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [MEMORY[0x277CBEB98] setWithSet:v5];

  return v6;
}

void __44__RBAllEntitlementPredicate_allEntitlements__block_invoke(uint64_t a1, void *a2)
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
  v4 = [(NSDictionary *)self->_predicate allKeys];
  v5 = [v4 componentsJoinedByString:@" && "];
  v6 = [v3 initWithFormat:@"(%@)", v5];

  return v6;
}

void __75__RBAllEntitlementPredicate_initWithDictionary_forDomain_attribute_errors___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_13(&dword_262485000, v3, v4, "Domain %{public}@ attribute %{public}@ contains entitlement value of wrong type: %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

void __75__RBAllEntitlementPredicate_initWithDictionary_forDomain_attribute_errors___block_invoke_cold_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_13(&dword_262485000, v3, v4, "Domain %{public}@ attribute %{public}@ contains entitlement name of wrong type: %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

@end