@interface SBRotationDodgingModifier
- (SBRotationDodgingModifier)initWithIdentifier:(id)identifier fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation;
- (id)handleRotationEvent:(id)event;
@end

@implementation SBRotationDodgingModifier

- (SBRotationDodgingModifier)initWithIdentifier:(id)identifier fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SBRotationDodgingModifier;
  v10 = [(SBChainableModifier *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, identifier);
    v11->_fromOrientation = orientation;
    v11->_toOrientation = toOrientation;
  }

  return v11;
}

- (id)handleRotationEvent:(id)event
{
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = SBRotationDodgingModifier;
  v5 = [(SBDodgingModifier *)&v12 handleRotationEvent:eventCopy];
  identifier = [eventCopy identifier];
  v7 = [identifier isEqual:self->_identifier];

  if (v7)
  {
    phase = [eventCopy phase];
    self->_phase = phase;
    if (phase == 2)
    {
      [(SBChainableModifier *)self setState:1];
    }

    else if (phase == 1)
    {
      v9 = [[SBInvalidationDodgingModifierEventResponse alloc] initWithOptions:3];
      v10 = [(SBChainableModifierEventResponse *)SBDodgingModifierEventResponse responseByAppendingResponse:v9 toResponse:v5];

      v5 = v10;
    }
  }

  return v5;
}

@end