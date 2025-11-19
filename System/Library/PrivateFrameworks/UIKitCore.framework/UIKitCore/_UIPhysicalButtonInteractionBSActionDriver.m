@interface _UIPhysicalButtonInteractionBSActionDriver
- (_UIPhysicalButtonInteractionBSActionDriver)init;
- (_UIPhysicalButtonInteractionBSActionDriver)initWithReceiver:(id)a3;
- (void)_handleBSAction:(id)a3;
@end

@implementation _UIPhysicalButtonInteractionBSActionDriver

- (_UIPhysicalButtonInteractionBSActionDriver)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteractionBSActionDriver.m" lineNumber:28 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonInteractionBSActionDriver init]", objc_opt_class()}];

  return 0;
}

- (_UIPhysicalButtonInteractionBSActionDriver)initWithReceiver:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIPhysicalButtonInteractionBSActionDriver;
  v4 = [(_UIPhysicalButtonInteractionBSActionDriver *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_receiver, a3);
  }

  return v5;
}

- (void)_handleBSAction:(id)a3
{
  v5 = [_UIPhysicalButtonAction _actionFromPhysicalButtonBSAction:a3 andDriver:[(_UIPhysicalButtonInteractionBSActionDriver *)self _driverType]];
  WeakRetained = objc_loadWeakRetained(&self->_receiver);
  [WeakRetained _driver:self didCreateProposedAction:v5];
}

@end