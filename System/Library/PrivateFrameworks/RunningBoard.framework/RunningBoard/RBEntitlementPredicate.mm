@interface RBEntitlementPredicate
+ (id)predicateForObject:(id)a3 forDomain:(id)a4 attribute:(id)a5 errors:(id)a6;
- (BOOL)matchesEntitlements:(id)a3;
- (id)allEntitlements;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RBEntitlementPredicate

+ (id)predicateForObject:(id)a3 forDomain:(id)a4 attribute:(id)a5 errors:(id)a6
{
  v22[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RBAllEntitlementPredicate alloc] initWithDictionary:v9 forDomain:v10 attribute:v11 errors:v12];
LABEL_6:
      v14 = v13;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RBAnyEntitlementPredicate alloc] initWithArray:v9 forDomain:v10 attribute:v11 errors:v12];
      goto LABEL_6;
    }

    if (v12)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains bundle properties of wrong type: %@", v10, v11, v9, *MEMORY[0x277CCA470]];
      v22[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v18 = [v15 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v17];

      [v12 addObject:v18];
    }
  }

  v14 = 0;
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)matchesEntitlements:(id)a3
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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();
  OUTLINED_FUNCTION_2_8(v3);
  return 0;
}

@end