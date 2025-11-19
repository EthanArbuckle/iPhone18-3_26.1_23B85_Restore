@interface SBSiriHardwareButtonEventsOnlyButtonInteraction
+ (id)hardwareButtonInteractionForHomeButtonForwardingToInteraction:(id)a3;
- (BOOL)consumeSinglePressUp;
- (SBSiriHardwareButtonInteraction)parentSiriInteraction;
@end

@implementation SBSiriHardwareButtonEventsOnlyButtonInteraction

+ (id)hardwareButtonInteractionForHomeButtonForwardingToInteraction:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SBSiriHardwareButtonEventsOnlyButtonInteraction);
  [(SBSiriHardwareButtonEventsOnlyButtonInteraction *)v4 setSiriButtonIdentifier:1];
  [(SBSiriHardwareButtonEventsOnlyButtonInteraction *)v4 setParentSiriInteraction:v3];

  return v4;
}

- (BOOL)consumeSinglePressUp
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSiriInteraction);
  v3 = [WeakRetained consumeSinglePressUp];

  return v3;
}

- (SBSiriHardwareButtonInteraction)parentSiriInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSiriInteraction);

  return WeakRetained;
}

@end