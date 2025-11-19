@interface _UIPhysicalButtonProxyInteractionBSActionDriver
- (_UIPhysicalButtonProxyInteractionBSActionDriver)init;
- (_UIPhysicalButtonProxyInteractionBSActionDriver)initWithReceiver:(id)a3;
- (void)_handleBSAction:(id)a3;
@end

@implementation _UIPhysicalButtonProxyInteractionBSActionDriver

- (_UIPhysicalButtonProxyInteractionBSActionDriver)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonProxyInteractionBSActionDriver.m" lineNumber:28 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonProxyInteractionBSActionDriver init]", objc_opt_class()}];

  return 0;
}

- (_UIPhysicalButtonProxyInteractionBSActionDriver)initWithReceiver:(id)a3
{
  v8.receiver = self;
  v8.super_class = _UIPhysicalButtonProxyInteractionBSActionDriver;
  v5 = [(_UIPhysicalButtonProxyInteractionBSActionDriver *)&v8 init];
  if (v5)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:v5 file:@"_UIPhysicalButtonProxyInteractionBSActionDriver.m" lineNumber:38 description:{@"Attempting to initialize %@ with a non-conforming receiver: %@", objc_opt_class(), a3}];
    }

    objc_storeWeak(&v5->_proxyReceiver, a3);
  }

  return v5;
}

- (void)_handleBSAction:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyReceiver);
  [WeakRetained _proxyDriver:self didReceiveBSAction:a3];
}

@end