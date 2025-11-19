@interface SBSAContainerResizeAction
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SBSAContainerResizeAction)initWithResult:(int64_t)a3 associatedInterfaceElementIdentifier:(id)a4 reasons:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SBSAContainerResizeAction

- (SBSAContainerResizeAction)initWithResult:(int64_t)a3 associatedInterfaceElementIdentifier:(id)a4 reasons:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = SBSAContainerResizeAction;
  v10 = [(SBSAContainerResizeAction *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_resizeActionResult = a3;
    v12 = [v8 copy];
    associatedInterfaceElementIdentifier = v11->_associatedInterfaceElementIdentifier;
    v11->_associatedInterfaceElementIdentifier = v12;

    v14 = [v9 copy];
    reasons = v11->_reasons;
    v11->_reasons = v14;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  resizeActionResult = self->_resizeActionResult;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __37__SBSAContainerResizeAction_isEqual___block_invoke;
  v21[3] = &unk_2783ACDE0;
  v7 = v4;
  v22 = v7;
  v8 = [v5 appendInteger:resizeActionResult counterpart:v21];
  associatedInterfaceElementIdentifier = self->_associatedInterfaceElementIdentifier;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __37__SBSAContainerResizeAction_isEqual___block_invoke_2;
  v19[3] = &unk_2783ACDB8;
  v10 = v7;
  v20 = v10;
  v11 = [v8 appendObject:associatedInterfaceElementIdentifier counterpart:v19];
  reasons = self->_reasons;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __37__SBSAContainerResizeAction_isEqual___block_invoke_3;
  v17[3] = &unk_2783ACDB8;
  v18 = v10;
  v13 = v10;
  v14 = [v11 appendObject:reasons counterpart:v17];
  v15 = [v14 isEqual];

  return v15;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInteger:self->_resizeActionResult];
  v5 = [v4 appendObject:self->_associatedInterfaceElementIdentifier];
  v6 = [v5 appendObject:self->_reasons];
  v7 = [v6 hash];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = self->_resizeActionResult + 1;
  if (v5 > 2)
  {
    v6 = @"[invalid]";
  }

  else
  {
    v6 = off_2783B1118[v5];
  }

  return [v3 stringWithFormat:@"<%@: %p; resizeActionResult: %@; associatedInterfaceElementIdentifier: %@; reasons: %@>", v4, self, v6, self->_associatedInterfaceElementIdentifier, self->_reasons];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  resizeActionResult = self->_resizeActionResult;
  associatedInterfaceElementIdentifier = self->_associatedInterfaceElementIdentifier;
  reasons = self->_reasons;

  return [v4 initWithResult:resizeActionResult associatedInterfaceElementIdentifier:associatedInterfaceElementIdentifier reasons:reasons];
}

@end