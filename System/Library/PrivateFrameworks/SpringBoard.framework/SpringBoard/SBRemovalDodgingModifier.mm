@interface SBRemovalDodgingModifier
- (SBRemovalDodgingModifier)initWithIdentifier:(id)a3;
- (id)handleAnimationCompletionEvent:(id)a3;
- (id)handleRemovalEvent:(id)a3;
- (id)modelForInvalidatedModel:(id)a3;
@end

@implementation SBRemovalDodgingModifier

- (SBRemovalDodgingModifier)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBRemovalDodgingModifier;
  v6 = [(SBChainableModifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

- (id)modelForInvalidatedModel:(id)a3
{
  v4 = a3;
  v5 = [v4 identifiers];
  v6 = [v5 containsObject:self->_identifier];

  if (v6)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__SBRemovalDodgingModifier_modelForInvalidatedModel___block_invoke;
    v12[3] = &unk_2783AD6B0;
    v12[4] = self;
    v7 = [v4 modelByModifyingModelWithBlock:v12];

    v11.receiver = self;
    v11.super_class = SBRemovalDodgingModifier;
    v8 = [(SBRemovalDodgingModifier *)&v11 modelForInvalidatedModel:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBRemovalDodgingModifier;
    v8 = [(SBRemovalDodgingModifier *)&v10 modelForInvalidatedModel:v4];
  }

  return v8;
}

- (id)handleRemovalEvent:(id)a3
{
  v13.receiver = self;
  v13.super_class = SBRemovalDodgingModifier;
  v4 = a3;
  v5 = [(SBDodgingModifier *)&v13 handleRemovalEvent:v4];
  v6 = [v4 identifier];

  if ([(SBInvalidationDodgingModifierEventResponse *)v6 isEqual:self->_identifier])
  {
    completionIdentifier = self->_completionIdentifier;

    if (completionIdentifier)
    {
      goto LABEL_5;
    }

    v6 = [[SBInvalidationDodgingModifierEventResponse alloc] initWithOptions:3];
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = self->_completionIdentifier;
    self->_completionIdentifier = v8;

    v10 = [(NSUUID *)self->_completionIdentifier UUIDString];
    [(SBInvalidationDodgingModifierEventResponse *)v6 setCompletionIdentifier:v10];

    v11 = [(SBChainableModifierEventResponse *)SBDodgingModifierEventResponse responseByAppendingResponse:v6 toResponse:v5];

    v5 = v11;
  }

LABEL_5:

  return v5;
}

- (id)handleAnimationCompletionEvent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBRemovalDodgingModifier;
  v5 = [(SBDodgingModifier *)&v10 handleAnimationCompletionEvent:v4];
  if (self->_completionIdentifier)
  {
    v6 = [v4 identifier];
    v7 = [(NSUUID *)self->_completionIdentifier UUIDString];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      [(SBChainableModifier *)self setState:1];
    }
  }

  return v5;
}

@end