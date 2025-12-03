@interface RBDomainRestriction
+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error;
- (BOOL)allowsContext:(id)context withError:(id *)error;
- (id)_init;
- (id)allEntitlements;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation RBDomainRestriction

+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error
{
  v32[13] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [dictionaryCopy objectForKey:@"Class"];
    if (v6)
    {
      v31[0] = @"OriginatorEntitlement";
      v32[0] = objc_opt_class();
      v31[1] = @"OriginatorExtensionPoint";
      v32[1] = objc_opt_class();
      v31[2] = @"OriginatorProperty";
      v32[2] = objc_opt_class();
      v31[3] = @"TargetEntitlement";
      v32[3] = objc_opt_class();
      v31[4] = @"TargetExtensionPoint";
      v32[4] = objc_opt_class();
      v31[5] = @"CompoundAny";
      v32[5] = objc_opt_class();
      v31[6] = @"CompoundAll";
      v32[6] = objc_opt_class();
      v31[7] = @"CompoundNone";
      v32[7] = objc_opt_class();
      v31[8] = @"TargetProperty";
      v32[8] = objc_opt_class();
      v31[9] = @"TargetsSelf";
      v32[9] = objc_opt_class();
      v31[10] = @"TargetsHosted";
      v32[10] = objc_opt_class();
      v31[11] = @"LessThanCondition";
      v32[11] = objc_opt_class();
      v31[12] = @"TargetClientRestriction";
      v32[12] = objc_opt_class();
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:13];
      v8 = [v7 objectForKey:v6];
      if (v8)
      {
        v9 = [v8 domainRestrictionForDictionary:dictionaryCopy withError:error];
      }

      else
      {
        if (error)
        {
          v18 = MEMORY[0x277CCA9B8];
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"RBDomainRestriction invalid class name: %@", v6, *MEMORY[0x277CCA470]];
          v26 = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          v21 = [v18 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:3 userInfo:v20];

          v22 = v21;
          *error = v21;
        }

        v9 = 0;
      }
    }

    else
    {
      if (!error)
      {
        v9 = 0;
        goto LABEL_14;
      }

      v14 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA470];
      dictionaryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"RBDomainRestriction doesn't specify class: %@", dictionaryCopy];
      v28 = dictionaryCopy;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v7 = [v14 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v16];

      v17 = v7;
      v9 = 0;
      *error = v7;
    }
  }

  else
  {
    if (!error)
    {
      v9 = 0;
      goto LABEL_15;
    }

    v10 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA470];
    dictionaryCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"RBDomainRestriction malformed: %@", dictionaryCopy];
    v30 = dictionaryCopy2;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v6 = [v10 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:3 userInfo:v12];

    v13 = v6;
    v9 = 0;
    *error = v6;
  }

LABEL_14:

LABEL_15:
  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = RBDomainRestriction;
  return [(RBDomainRestriction *)&v3 init];
}

- (id)description
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [objc_opt_class() description];
  v4 = [v2 initWithFormat:@"<%@>", v3];

  return v4;
}

- (id)dictionaryRepresentation
{
  OUTLINED_FUNCTION_0_0();
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_2_8(v2);
  return 0;
}

- (BOOL)allowsContext:(id)context withError:(id *)error
{
  OUTLINED_FUNCTION_0_0();
  v4 = objc_opt_class();
  OUTLINED_FUNCTION_2_8(v4);
  return 0;
}

- (id)allEntitlements
{
  OUTLINED_FUNCTION_0_0();
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_2_8(v2);
  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  OUTLINED_FUNCTION_0_0();
  v3 = objc_opt_class();
  OUTLINED_FUNCTION_2_8(v3);
  return 0;
}

@end