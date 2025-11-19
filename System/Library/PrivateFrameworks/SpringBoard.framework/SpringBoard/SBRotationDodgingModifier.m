@interface SBRotationDodgingModifier
- (SBRotationDodgingModifier)initWithIdentifier:(id)a3 fromOrientation:(int64_t)a4 toOrientation:(int64_t)a5;
- (id)handleRotationEvent:(id)a3;
@end

@implementation SBRotationDodgingModifier

- (SBRotationDodgingModifier)initWithIdentifier:(id)a3 fromOrientation:(int64_t)a4 toOrientation:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = SBRotationDodgingModifier;
  v10 = [(SBChainableModifier *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, a3);
    v11->_fromOrientation = a4;
    v11->_toOrientation = a5;
  }

  return v11;
}

- (id)handleRotationEvent:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBRotationDodgingModifier;
  v5 = [(SBDodgingModifier *)&v12 handleRotationEvent:v4];
  v6 = [v4 identifier];
  v7 = [v6 isEqual:self->_identifier];

  if (v7)
  {
    v8 = [v4 phase];
    self->_phase = v8;
    if (v8 == 2)
    {
      [(SBChainableModifier *)self setState:1];
    }

    else if (v8 == 1)
    {
      v9 = [[SBInvalidationDodgingModifierEventResponse alloc] initWithOptions:3];
      v10 = [(SBChainableModifierEventResponse *)SBDodgingModifierEventResponse responseByAppendingResponse:v9 toResponse:v5];

      v5 = v10;
    }
  }

  return v5;
}

@end