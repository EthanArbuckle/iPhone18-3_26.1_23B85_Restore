@interface RBOriginatorExtensionPointRestriction
+ (id)domainRestrictionForDictionary:(id)a3 withError:(id *)a4;
- (BOOL)allowsContext:(id)a3 withError:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)_initWithExtensionPoint:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation RBOriginatorExtensionPointRestriction

- (id)_initWithExtensionPoint:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RBOriginatorExtensionPointRestriction;
  v5 = [(RBDomainRestriction *)&v10 _init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = v5[1];
    v5[1] = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)domainRestrictionForDictionary:(id)a3 withError:(id *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKey:@"ExtensionPoint"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    a4 = [[RBOriginatorExtensionPointRestriction alloc] _initWithExtensionPoint:v6];
  }

  else if (a4)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RBOriginatorExtensionPointRestriction doesn't specify extensionPoint: %@", v5, *MEMORY[0x277CCA470]];
    v15[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v7 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v9];

    v11 = v10;
    *a4 = v10;

    a4 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return a4;
}

- (id)dictionaryRepresentation
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"Class";
  v6[1] = @"ExtensionPoint";
  extensionPoint = self->_extensionPoint;
  v7[0] = @"OriginatorExtensionPoint";
  v7[1] = extensionPoint;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)allowsContext:(id)a3 withError:(id *)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = [a3 originatorProcess];
  v7 = [v6 identity];
  v8 = [v7 isExtension];

  if ((v8 & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D47098];
    v24 = *MEMORY[0x277CCA470];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"originator isn't extension"];
    v25[0] = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = v25;
    v17 = &v24;
LABEL_8:
    v19 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    *a4 = [v12 errorWithDomain:v13 code:1 userInfo:v19];

    LOBYTE(a4) = 0;
    goto LABEL_9;
  }

  extensionPoint = self->_extensionPoint;
  v10 = [v6 bundleProperties];
  v11 = [v10 extensionPointIdentifier];
  LOBYTE(extensionPoint) = [(NSString *)extensionPoint isEqualToString:v11];

  if ((extensionPoint & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D47098];
    v18 = self->_extensionPoint;
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"originator doesn't have extensionPoint %@", v18, *MEMORY[0x277CCA470]];
    v23 = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v23;
    v17 = &v22;
    goto LABEL_8;
  }

  LOBYTE(a4) = 1;
LABEL_9:

  v20 = *MEMORY[0x277D85DE8];
  return a4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  extensionPoint = self->_extensionPoint;
  v8 = v4->_extensionPoint;
  if (extensionPoint == v8)
  {
LABEL_10:
    v6 = 1;
    goto LABEL_11;
  }

  if (extensionPoint)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v6 = [(NSString *)extensionPoint isEqual:?];
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
  v5 = [v3 initWithFormat:@"<%@| %@>", v4, self->_extensionPoint];

  return v5;
}

@end