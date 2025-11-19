@interface REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult
- (BOOL)isEqual:(id)a3;
- (REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult)initWithCoder:(id)a3;
- (REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult)initWithFamilyGroceryListEligibility:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult

- (REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult)initWithFamilyGroceryListEligibility:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_familyGroceryListEligibility, a3);
  }

  return v7;
}

- (REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"familyGroceryListEligibility"];

  v6 = [(REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult *)self initWithFamilyGroceryListEligibility:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult *)self familyGroceryListEligibility];
  [v4 encodeObject:v5 forKey:@"familyGroceryListEligibility"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult *)self familyGroceryListEligibility];
    v6 = [v4 familyGroceryListEligibility];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult *)self familyGroceryListEligibility];
      v8 = [v4 familyGroceryListEligibility];
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult *)self familyGroceryListEligibility];
  v3 = [v2 hash];

  return v3;
}

@end