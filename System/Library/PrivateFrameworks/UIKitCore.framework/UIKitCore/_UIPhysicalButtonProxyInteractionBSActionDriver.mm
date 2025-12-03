@interface _UIPhysicalButtonProxyInteractionBSActionDriver
- (_UIPhysicalButtonProxyInteractionBSActionDriver)init;
- (_UIPhysicalButtonProxyInteractionBSActionDriver)initWithReceiver:(id)receiver;
- (void)_handleBSAction:(id)action;
@end

@implementation _UIPhysicalButtonProxyInteractionBSActionDriver

- (_UIPhysicalButtonProxyInteractionBSActionDriver)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonProxyInteractionBSActionDriver.m" lineNumber:28 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonProxyInteractionBSActionDriver init]", objc_opt_class()}];

  return 0;
}

- (_UIPhysicalButtonProxyInteractionBSActionDriver)initWithReceiver:(id)receiver
{
  v8.receiver = self;
  v8.super_class = _UIPhysicalButtonProxyInteractionBSActionDriver;
  v5 = [(_UIPhysicalButtonProxyInteractionBSActionDriver *)&v8 init];
  if (v5)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v5 file:@"_UIPhysicalButtonProxyInteractionBSActionDriver.m" lineNumber:38 description:{@"Attempting to initialize %@ with a non-conforming receiver: %@", objc_opt_class(), receiver}];
    }

    objc_storeWeak(&v5->_proxyReceiver, receiver);
  }

  return v5;
}

- (void)_handleBSAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyReceiver);
  [WeakRetained _proxyDriver:self didReceiveBSAction:action];
}

@end