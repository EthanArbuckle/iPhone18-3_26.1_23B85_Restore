@interface _UIPhysicalButtonProxyInteraction
- (_UIPhysicalButtonProxyInteraction)init;
- (id)_driverClasses;
- (id)initWithConfigurations:(void *)a3 proxyDelegate:;
- (void)_driver:(id)a3 didCreateProposedAction:(id)a4;
- (void)_proxyDriver:(id)a3 didReceiveBSAction:(id)a4;
@end

@implementation _UIPhysicalButtonProxyInteraction

- (_UIPhysicalButtonProxyInteraction)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonProxyInteraction.m" lineNumber:67 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonProxyInteraction init]", objc_opt_class()}];

  return 0;
}

- (id)initWithConfigurations:(void *)a3 proxyDelegate:
{
  if (!a1)
  {
    return 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:sel_initWithConfigurations_proxyDelegate_ object:a1 file:@"_UIPhysicalButtonProxyInteraction.m" lineNumber:75 description:{@"Attempting to initialize %@ with a non-conforming delegate: %@", objc_opt_class(), a3}];
  }

  v10.receiver = a1;
  v10.super_class = _UIPhysicalButtonProxyInteraction;
  v6 = objc_msgSendSuper2(&v10, sel_initWithConfigurations_delegate_, a2, a3);
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(v6 + 11, a3);
  }

  return v7;
}

- (id)_driverClasses
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)_driver:(id)a3 didCreateProposedAction:(id)a4
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonProxyInteraction.m" lineNumber:98 description:{@"Unexpected request for a proxy interaction to handle a proposed action: self: %@; driver: %@; proposedAction: %@", self, a3, a4}];
}

- (void)_proxyDriver:(id)a3 didReceiveBSAction:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyDelegate);
  [WeakRetained _physicalButtonProxyInteraction:self didReceiveBSAction:a4];
}

@end