@interface SBSiriHardwareButtonEventsOnlyButtonInteraction
+ (id)hardwareButtonInteractionForHomeButtonForwardingToInteraction:(id)interaction;
- (BOOL)consumeSinglePressUp;
- (SBSiriHardwareButtonInteraction)parentSiriInteraction;
@end

@implementation SBSiriHardwareButtonEventsOnlyButtonInteraction

+ (id)hardwareButtonInteractionForHomeButtonForwardingToInteraction:(id)interaction
{
  interactionCopy = interaction;
  v4 = objc_alloc_init(SBSiriHardwareButtonEventsOnlyButtonInteraction);
  [(SBSiriHardwareButtonEventsOnlyButtonInteraction *)v4 setSiriButtonIdentifier:1];
  [(SBSiriHardwareButtonEventsOnlyButtonInteraction *)v4 setParentSiriInteraction:interactionCopy];

  return v4;
}

- (BOOL)consumeSinglePressUp
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSiriInteraction);
  consumeSinglePressUp = [WeakRetained consumeSinglePressUp];

  return consumeSinglePressUp;
}

- (SBSiriHardwareButtonInteraction)parentSiriInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSiriInteraction);

  return WeakRetained;
}

@end