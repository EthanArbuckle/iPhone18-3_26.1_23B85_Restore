@interface SBSAInterfaceElementPropertyIdentity
- (BOOL)isEqual:(id)equal;
- (SBSAInterfaceElementPropertyIdentity)initWithAssociatedInterfaceElementIdentifier:(id)identifier andProperty:(id)property;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAInterfaceElementPropertyIdentity

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_associatedInterfaceElementIdentifier];
  v5 = [v4 appendString:self->_interfaceElementProperty];
  v6 = [v5 hash];

  return v6;
}

- (SBSAInterfaceElementPropertyIdentity)initWithAssociatedInterfaceElementIdentifier:(id)identifier andProperty:(id)property
{
  identifierCopy = identifier;
  propertyCopy = property;
  v9 = propertyCopy;
  if (!identifierCopy || ![propertyCopy length])
  {
    [SBSAInterfaceElementPropertyIdentity initWithAssociatedInterfaceElementIdentifier:a2 andProperty:self];
  }

  v16.receiver = self;
  v16.super_class = SBSAInterfaceElementPropertyIdentity;
  v10 = [(SBSAInterfaceElementPropertyIdentity *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    associatedInterfaceElementIdentifier = v10->_associatedInterfaceElementIdentifier;
    v10->_associatedInterfaceElementIdentifier = v11;

    v13 = [v9 copy];
    interfaceElementProperty = v10->_interfaceElementProperty;
    v10->_interfaceElementProperty = v13;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  associatedInterfaceElementIdentifier = self->_associatedInterfaceElementIdentifier;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__SBSAInterfaceElementPropertyIdentity_isEqual___block_invoke;
  v19[3] = &unk_2783ACDB8;
  v7 = equalCopy;
  v20 = v7;
  v8 = [v5 appendObject:associatedInterfaceElementIdentifier counterpart:v19];
  interfaceElementProperty = self->_interfaceElementProperty;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __48__SBSAInterfaceElementPropertyIdentity_isEqual___block_invoke_2;
  v17 = &unk_2783B1D60;
  v18 = v7;
  v10 = v7;
  v11 = [v8 appendString:interfaceElementProperty counterpart:&v14];
  v12 = [v11 isEqual];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  associatedInterfaceElementIdentifier = self->_associatedInterfaceElementIdentifier;
  interfaceElementProperty = self->_interfaceElementProperty;

  return [v4 initWithAssociatedInterfaceElementIdentifier:associatedInterfaceElementIdentifier andProperty:interfaceElementProperty];
}

- (void)initWithAssociatedInterfaceElementIdentifier:(uint64_t)a1 andProperty:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSAViewDescription.m" lineNumber:245 description:{@"Invalid parameter not satisfying: %@", @"(associatedInterfaceElementIdentifier != nil) && ([property length] > 0)"}];
}

@end