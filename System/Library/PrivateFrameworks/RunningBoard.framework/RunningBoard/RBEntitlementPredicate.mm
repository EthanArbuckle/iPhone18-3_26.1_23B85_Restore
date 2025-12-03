@interface RBEntitlementPredicate
+ (id)predicateForObject:(id)object forDomain:(id)domain attribute:(id)attribute errors:(id)errors;
- (BOOL)matchesEntitlements:(id)entitlements;
- (id)allEntitlements;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RBEntitlementPredicate

+ (id)predicateForObject:(id)object forDomain:(id)domain attribute:(id)attribute errors:(id)errors
{
  v22[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  domainCopy = domain;
  attributeCopy = attribute;
  errorsCopy = errors;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RBAllEntitlementPredicate alloc] initWithDictionary:objectCopy forDomain:domainCopy attribute:attributeCopy errors:errorsCopy];
LABEL_6:
      v14 = v13;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RBAnyEntitlementPredicate alloc] initWithArray:objectCopy forDomain:domainCopy attribute:attributeCopy errors:errorsCopy];
      goto LABEL_6;
    }

    if (errorsCopy)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains bundle properties of wrong type: %@", domainCopy, attributeCopy, objectCopy, *MEMORY[0x277CCA470]];
      v22[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v18 = [v15 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v17];

      [errorsCopy addObject:v18];
    }
  }

  v14 = 0;
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)matchesEntitlements:(id)entitlements
{
  v3 = objc_opt_class();
  OUTLINED_FUNCTION_2_8(v3);
  return 0;
}

- (id)allEntitlements
{
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_2_8(v2);
  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();
  OUTLINED_FUNCTION_2_8(v3);
  return 0;
}

@end