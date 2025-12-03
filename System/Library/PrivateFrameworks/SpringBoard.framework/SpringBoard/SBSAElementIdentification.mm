@interface SBSAElementIdentification
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SBSAElementIdentification)initWithClientIdentifier:(id)identifier elementIdentifier:(id)elementIdentifier;
- (SBSAElementIdentification)initWithElementIdentification:(id)identification;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAElementIdentification

- (SBSAElementIdentification)initWithClientIdentifier:(id)identifier elementIdentifier:(id)elementIdentifier
{
  identifierCopy = identifier;
  elementIdentifierCopy = elementIdentifier;
  v14.receiver = self;
  v14.super_class = SBSAElementIdentification;
  v8 = [(SBSAElementIdentification *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    clientIdentifier = v8->_clientIdentifier;
    v8->_clientIdentifier = v9;

    v11 = [elementIdentifierCopy copy];
    elementIdentifier = v8->_elementIdentifier;
    v8->_elementIdentifier = v11;
  }

  return v8;
}

- (SBSAElementIdentification)initWithElementIdentification:(id)identification
{
  identificationCopy = identification;
  clientIdentifier = [identificationCopy clientIdentifier];
  elementIdentifier = [identificationCopy elementIdentifier];

  v7 = [(SBSAElementIdentification *)self initWithClientIdentifier:clientIdentifier elementIdentifier:elementIdentifier];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  clientIdentifier = self->_clientIdentifier;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __37__SBSAElementIdentification_isEqual___block_invoke;
  v19[3] = &unk_2783B1D60;
  v7 = equalCopy;
  v20 = v7;
  v8 = [v5 appendString:clientIdentifier counterpart:v19];
  elementIdentifier = self->_elementIdentifier;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __37__SBSAElementIdentification_isEqual___block_invoke_2;
  v17 = &unk_2783B1D60;
  v18 = v7;
  v10 = v7;
  v11 = [v8 appendString:elementIdentifier counterpart:&v14];
  v12 = [v11 isEqual];

  return v12;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendString:self->_clientIdentifier];
  v5 = [v4 appendString:self->_elementIdentifier];
  v6 = [v5 hash];

  return v6;
}

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<%@: %p; clientIdentifier: %@; elementIdentifier: %@>", objc_opt_class(), self, self->_clientIdentifier, self->_elementIdentifier];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  clientIdentifier = self->_clientIdentifier;
  elementIdentifier = self->_elementIdentifier;

  return [v4 initWithClientIdentifier:clientIdentifier elementIdentifier:elementIdentifier];
}

@end