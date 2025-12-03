@interface SBRemovalDodgingModifier
- (SBRemovalDodgingModifier)initWithIdentifier:(id)identifier;
- (id)handleAnimationCompletionEvent:(id)event;
- (id)handleRemovalEvent:(id)event;
- (id)modelForInvalidatedModel:(id)model;
@end

@implementation SBRemovalDodgingModifier

- (SBRemovalDodgingModifier)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SBRemovalDodgingModifier;
  v6 = [(SBChainableModifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (id)modelForInvalidatedModel:(id)model
{
  modelCopy = model;
  identifiers = [modelCopy identifiers];
  v6 = [identifiers containsObject:self->_identifier];

  if (v6)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__SBRemovalDodgingModifier_modelForInvalidatedModel___block_invoke;
    v12[3] = &unk_2783AD6B0;
    v12[4] = self;
    v7 = [modelCopy modelByModifyingModelWithBlock:v12];

    v11.receiver = self;
    v11.super_class = SBRemovalDodgingModifier;
    v8 = [(SBRemovalDodgingModifier *)&v11 modelForInvalidatedModel:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBRemovalDodgingModifier;
    v8 = [(SBRemovalDodgingModifier *)&v10 modelForInvalidatedModel:modelCopy];
  }

  return v8;
}

- (id)handleRemovalEvent:(id)event
{
  v13.receiver = self;
  v13.super_class = SBRemovalDodgingModifier;
  eventCopy = event;
  v5 = [(SBDodgingModifier *)&v13 handleRemovalEvent:eventCopy];
  identifier = [eventCopy identifier];

  if ([(SBInvalidationDodgingModifierEventResponse *)identifier isEqual:self->_identifier])
  {
    completionIdentifier = self->_completionIdentifier;

    if (completionIdentifier)
    {
      goto LABEL_5;
    }

    identifier = [[SBInvalidationDodgingModifierEventResponse alloc] initWithOptions:3];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v9 = self->_completionIdentifier;
    self->_completionIdentifier = uUID;

    uUIDString = [(NSUUID *)self->_completionIdentifier UUIDString];
    [(SBInvalidationDodgingModifierEventResponse *)identifier setCompletionIdentifier:uUIDString];

    v11 = [(SBChainableModifierEventResponse *)SBDodgingModifierEventResponse responseByAppendingResponse:identifier toResponse:v5];

    v5 = v11;
  }

LABEL_5:

  return v5;
}

- (id)handleAnimationCompletionEvent:(id)event
{
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = SBRemovalDodgingModifier;
  v5 = [(SBDodgingModifier *)&v10 handleAnimationCompletionEvent:eventCopy];
  if (self->_completionIdentifier)
  {
    identifier = [eventCopy identifier];
    uUIDString = [(NSUUID *)self->_completionIdentifier UUIDString];
    v8 = [identifier isEqualToString:uUIDString];

    if (v8)
    {
      [(SBChainableModifier *)self setState:1];
    }
  }

  return v5;
}

@end