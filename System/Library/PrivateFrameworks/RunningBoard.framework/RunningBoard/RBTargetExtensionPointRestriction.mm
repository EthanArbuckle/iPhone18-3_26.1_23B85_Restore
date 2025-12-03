@interface RBTargetExtensionPointRestriction
+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error;
- (BOOL)allowsContext:(id)context withError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)_initWithExtensionPoint:(id)point;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation RBTargetExtensionPointRestriction

- (id)_initWithExtensionPoint:(id)point
{
  pointCopy = point;
  v10.receiver = self;
  v10.super_class = RBTargetExtensionPointRestriction;
  _init = [(RBDomainRestriction *)&v10 _init];
  if (_init)
  {
    v6 = [pointCopy copy];
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
  v6 = [dictionaryCopy objectForKey:@"ExtensionPoint"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v6 length])
  {
    error = [[RBTargetExtensionPointRestriction alloc] _initWithExtensionPoint:v6];
  }

  else if (error)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RBTargetExtensionPointRestriction doesn't specify extensionPoint or doesn't have right class for extensionPoint: %@", dictionaryCopy, *MEMORY[0x277CCA470]];
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
  v6[1] = @"ExtensionPoint";
  extensionPoint = self->_extensionPoint;
  v7[0] = @"TargetExtensionPoint";
  v7[1] = extensionPoint;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)allowsContext:(id)context withError:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  targetProcess = [context targetProcess];
  identity = [targetProcess identity];
  isExtension = [identity isExtension];

  if ((isExtension & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D47098];
    v24 = *MEMORY[0x277CCA470];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"target isn't extension"];
    v25[0] = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = v25;
    v17 = &v24;
LABEL_8:
    v19 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    *error = [v12 errorWithDomain:v13 code:1 userInfo:v19];

    LOBYTE(error) = 0;
    goto LABEL_9;
  }

  extensionPoint = self->_extensionPoint;
  bundleProperties = [targetProcess bundleProperties];
  extensionPointIdentifier = [bundleProperties extensionPointIdentifier];
  LOBYTE(extensionPoint) = [(NSString *)extensionPoint isEqualToString:extensionPointIdentifier];

  if ((extensionPoint & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D47098];
    v18 = self->_extensionPoint;
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"target doesn't have extensionPoint %@", v18, *MEMORY[0x277CCA470]];
    v23 = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v23;
    v17 = &v22;
    goto LABEL_8;
  }

  LOBYTE(error) = 1;
LABEL_9:

  v20 = *MEMORY[0x277D85DE8];
  return error;
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

  extensionPoint = self->_extensionPoint;
  v8 = equalCopy->_extensionPoint;
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