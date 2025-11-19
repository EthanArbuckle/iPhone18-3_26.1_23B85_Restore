@interface SBSAContainerStaticTouchAction
- (BOOL)isEqual:(id)a3;
- (SBSAContainerStaticTouchAction)initWithAssociatedInterfaceElementIdentifier:(id)a3 reasons:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SBSAContainerStaticTouchAction

- (SBSAContainerStaticTouchAction)initWithAssociatedInterfaceElementIdentifier:(id)a3 reasons:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBSAContainerStaticTouchAction;
  v8 = [(SBSAContainerStaticTouchAction *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    associatedInterfaceElementIdentifier = v8->_associatedInterfaceElementIdentifier;
    v8->_associatedInterfaceElementIdentifier = v9;

    v11 = [v7 copy];
    reasons = v8->_reasons;
    v8->_reasons = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  associatedInterfaceElementIdentifier = self->_associatedInterfaceElementIdentifier;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__SBSAContainerStaticTouchAction_isEqual___block_invoke;
  v19[3] = &unk_2783ACDB8;
  v7 = v4;
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
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_associatedInterfaceElementIdentifier];
  v5 = [v4 appendObject:self->_reasons];
  v6 = [v5 hash];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  reasons = self->_reasons;
  associatedInterfaceElementIdentifier = self->_associatedInterfaceElementIdentifier;

  return [v4 initWithAssociatedInterfaceElementIdentifier:associatedInterfaceElementIdentifier reasons:reasons];
}

@end