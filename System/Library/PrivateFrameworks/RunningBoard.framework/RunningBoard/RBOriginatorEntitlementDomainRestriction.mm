@interface RBOriginatorEntitlementDomainRestriction
+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error;
- (BOOL)allowsContext:(id)context withError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)_initWithEntitlement:(id)entitlement;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation RBOriginatorEntitlementDomainRestriction

- (id)_initWithEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v10.receiver = self;
  v10.super_class = RBOriginatorEntitlementDomainRestriction;
  _init = [(RBDomainRestriction *)&v10 _init];
  if (_init)
  {
    v6 = [entitlementCopy copy];
    v7 = _init[1];
    _init[1] = v6;

    v8 = _init;
  }

  return _init;
}

+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKey:@"Entitlement"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    error = [[RBOriginatorEntitlementDomainRestriction alloc] _initWithEntitlement:v6];
  }

  else if (error)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RBOriginatorEntitlementDomainRestriction doesn't specify entitlement: %@", dictionaryCopy, *MEMORY[0x277CCA470]];
    v15[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v7 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v9];

    v11 = v10;
    *error = v10;

    error = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)dictionaryRepresentation
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"Class";
  v6[1] = @"Entitlement";
  entitlement = self->_entitlement;
  v7[0] = @"OriginatorEntitlement";
  v7[1] = entitlement;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)allowsContext:(id)context withError:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  originatorEntitlements = [context originatorEntitlements];
  v7 = [originatorEntitlements rb_hasEntitlement:self->_entitlement];

  if (error && (v7 & 1) == 0)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47098];
    entitlement = self->_entitlement;
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"originator doesn't have entitlement %@", entitlement, *MEMORY[0x277CCA470]];
    v16[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v8 errorWithDomain:v9 code:1 userInfo:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  entitlement = self->_entitlement;
  v8 = equalCopy->_entitlement;
  if (entitlement == v8)
  {
LABEL_10:
    v6 = 1;
    goto LABEL_11;
  }

  if (entitlement)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v6 = [(NSString *)entitlement isEqual:?];
    goto LABEL_11;
  }

LABEL_3:
  v6 = 0;
LABEL_11:

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| %@>", v4, self->_entitlement];

  return v5;
}

@end