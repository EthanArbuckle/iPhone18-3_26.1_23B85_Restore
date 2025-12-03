@interface SBSAContainerStaticTouchAction
- (BOOL)isEqual:(id)equal;
- (SBSAContainerStaticTouchAction)initWithAssociatedInterfaceElementIdentifier:(id)identifier reasons:(id)reasons;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAContainerStaticTouchAction

- (SBSAContainerStaticTouchAction)initWithAssociatedInterfaceElementIdentifier:(id)identifier reasons:(id)reasons
{
  identifierCopy = identifier;
  reasonsCopy = reasons;
  v14.receiver = self;
  v14.super_class = SBSAContainerStaticTouchAction;
  v8 = [(SBSAContainerStaticTouchAction *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    associatedInterfaceElementIdentifier = v8->_associatedInterfaceElementIdentifier;
    v8->_associatedInterfaceElementIdentifier = v9;

    v11 = [reasonsCopy copy];
    reasons = v8->_reasons;
    v8->_reasons = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  associatedInterfaceElementIdentifier = self->_associatedInterfaceElementIdentifier;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__SBSAContainerStaticTouchAction_isEqual___block_invoke;
  v19[3] = &unk_2783ACDB8;
  v7 = equalCopy;
  v20 = v7;
  v8 = [v5 appendObject:associatedInterfaceElementIdentifier counterpart:v19];
  reasons = self->_reasons;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __42__SBSAContainerStaticTouchAction_isEqual___block_invoke_2;
  v17 = &unk_2783ACDB8;
  v18 = v7;
  v10 = v7;
  v11 = [v8 appendObject:reasons counterpart:&v14];
  v12 = [v11 isEqual];

  return v12;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_associatedInterfaceElementIdentifier];
  v5 = [v4 appendObject:self->_reasons];
  v6 = [v5 hash];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  reasons = self->_reasons;
  associatedInterfaceElementIdentifier = self->_associatedInterfaceElementIdentifier;

  return [v4 initWithAssociatedInterfaceElementIdentifier:associatedInterfaceElementIdentifier reasons:reasons];
}

@end