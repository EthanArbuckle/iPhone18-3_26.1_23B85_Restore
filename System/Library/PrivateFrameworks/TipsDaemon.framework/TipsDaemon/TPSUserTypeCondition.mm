@interface TPSUserTypeCondition
- (TPSUserTypeCondition)init;
- (id)targetingValidations;
@end

@implementation TPSUserTypeCondition

- (TPSUserTypeCondition)init
{
  v5.receiver = self;
  v5.super_class = TPSUserTypeCondition;
  v2 = [(TPSUserTypeCondition *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TPSCondition *)v2 setType:2];
  }

  return v3;
}

- (id)targetingValidations
{
  v3 = MEMORY[0x277CBEB18];
  values = [(TPSCondition *)self values];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(values, "count")}];

  values2 = [(TPSCondition *)self values];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__TPSUserTypeCondition_targetingValidations__block_invoke;
  v9[3] = &unk_2789B0920;
  v7 = v5;
  v10 = v7;
  [values2 enumerateObjectsUsingBlock:v9];

  return v7;
}

void __44__TPSUserTypeCondition_targetingValidations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [TPSUserTypesValidation alloc];
  v5 = [v3 targetValues];
  v6 = [v3 excludeValues];

  v7 = [(TPSUserTypesValidation *)v4 initWithTargetUserTypes:v5 excludeUserTypes:v6];
  [*(a1 + 32) addObject:v7];
}

@end