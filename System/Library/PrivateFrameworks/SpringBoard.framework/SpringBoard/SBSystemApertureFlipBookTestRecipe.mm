@interface SBSystemApertureFlipBookTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBSystemApertureFlipBookTestRecipe

- (void)handleVolumeIncrease
{
  v2 = [SBApp systemApertureControllerForMainDisplay];
  [v2 initiatePrototypeFlipBookElementRecording];
}

- (void)handleVolumeDecrease
{
  elementAssertion = self->_elementAssertion;
  prototypeElement = self->_prototypeElement;
  if (!elementAssertion)
  {
    if (prototypeElement)
    {
      return;
    }

    v9 = [[SBPrototypeFlipBookElementViewProvider alloc] initForCapture:0];
    v10 = self->_prototypeElement;
    self->_prototypeElement = v9;

    v13 = [SBApp systemApertureControllerForMainDisplay];
    v11 = [v13 registerElement:self->_prototypeElement];
    v12 = self->_elementAssertion;
    self->_elementAssertion = v11;

    v8 = v13;
    goto LABEL_14;
  }

  if (!prototypeElement)
  {
    return;
  }

  v5 = [(SBPrototypeFlipBookElementViewProvider *)prototypeElement isOnLastState];
  v6 = self->_prototypeElement;
  if (v5)
  {
    if (v6)
    {
      self->_prototypeElement = 0;
    }

    v7 = self->_elementAssertion;
    if (v7)
    {
      [(SAInvalidatable *)v7 invalidateWithReason:@"end of the line"];
      v8 = self->_elementAssertion;
      self->_elementAssertion = 0;
LABEL_14:
    }
  }

  else
  {

    [(SBPrototypeFlipBookElementViewProvider *)v6 transitionToNextState];
  }
}

@end