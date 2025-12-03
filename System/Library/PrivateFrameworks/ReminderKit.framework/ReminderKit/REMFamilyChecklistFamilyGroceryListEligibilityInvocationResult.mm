@interface REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult
- (BOOL)isEqual:(id)equal;
- (REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult)initWithCoder:(id)coder;
- (REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult)initWithFamilyGroceryListEligibility:(id)eligibility;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult

- (REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult)initWithFamilyGroceryListEligibility:(id)eligibility
{
  eligibilityCopy = eligibility;
  v9.receiver = self;
  v9.super_class = REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_familyGroceryListEligibility, eligibility);
  }

  return v7;
}

- (REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"familyGroceryListEligibility"];

  v6 = [(REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult *)self initWithFamilyGroceryListEligibility:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  familyGroceryListEligibility = [(REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult *)self familyGroceryListEligibility];
  [coderCopy encodeObject:familyGroceryListEligibility forKey:@"familyGroceryListEligibility"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    familyGroceryListEligibility = [(REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult *)self familyGroceryListEligibility];
    familyGroceryListEligibility2 = [equalCopy familyGroceryListEligibility];
    if (familyGroceryListEligibility == familyGroceryListEligibility2)
    {
      v9 = 1;
    }

    else
    {
      familyGroceryListEligibility3 = [(REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult *)self familyGroceryListEligibility];
      familyGroceryListEligibility4 = [equalCopy familyGroceryListEligibility];
      v9 = [familyGroceryListEligibility3 isEqual:familyGroceryListEligibility4];
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
  familyGroceryListEligibility = [(REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult *)self familyGroceryListEligibility];
  v3 = [familyGroceryListEligibility hash];

  return v3;
}

@end