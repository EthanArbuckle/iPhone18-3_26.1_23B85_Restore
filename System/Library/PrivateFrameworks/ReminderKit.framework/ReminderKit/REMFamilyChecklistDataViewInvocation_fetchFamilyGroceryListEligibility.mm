@interface REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility
- (BOOL)isEqual:(id)equal;
- (REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility)initWithCoder:(id)coder;
- (REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility)initWithLocaleIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility

- (REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localeIdentifier, identifier);
  }

  return v7;
}

- (REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];

  if (v5)
  {
    self = [(REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility *)self initWithLocaleIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  localeIdentifier = [(REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility *)self localeIdentifier];
  [coderCopy encodeObject:localeIdentifier forKey:@"localeIdentifier"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localeIdentifier = [(REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility *)self localeIdentifier];
    localeIdentifier2 = [equalCopy localeIdentifier];
    if (localeIdentifier == localeIdentifier2)
    {
      v9 = 1;
    }

    else
    {
      localeIdentifier3 = [(REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility *)self localeIdentifier];
      localeIdentifier4 = [equalCopy localeIdentifier];
      v9 = [localeIdentifier3 isEqual:localeIdentifier4];
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