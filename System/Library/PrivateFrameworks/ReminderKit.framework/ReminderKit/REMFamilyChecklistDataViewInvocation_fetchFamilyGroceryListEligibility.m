@interface REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility
- (BOOL)isEqual:(id)a3;
- (REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility)initWithCoder:(id)a3;
- (REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility)initWithLocaleIdentifier:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility

- (REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility)initWithLocaleIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localeIdentifier, a3);
  }

  return v7;
}

- (REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];

  if (v5)
  {
    self = [(REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility *)self initWithLocaleIdentifier:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility *)self localeIdentifier];
  [v4 encodeObject:v5 forKey:@"localeIdentifier"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility *)self localeIdentifier];
    v6 = [v4 localeIdentifier];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility *)self localeIdentifier];
      v8 = [v4 localeIdentifier];
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
  v3.receiver = self;
  v3.super_class = REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility;
  return [(REMStoreInvocationValueStorage *)&v3 hash];
}

@end