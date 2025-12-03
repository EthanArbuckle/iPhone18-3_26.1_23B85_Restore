@interface _UIPhysicalButtonProxyInteraction
- (_UIPhysicalButtonProxyInteraction)init;
- (id)_driverClasses;
- (id)initWithConfigurations:(void *)configurations proxyDelegate:;
- (void)_driver:(id)_driver didCreateProposedAction:(id)action;
- (void)_proxyDriver:(id)driver didReceiveBSAction:(id)action;
@end

@implementation _UIPhysicalButtonProxyInteraction

- (_UIPhysicalButtonProxyInteraction)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonProxyInteraction.m" lineNumber:67 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonProxyInteraction init]", objc_opt_class()}];

  return 0;
}

- (id)initWithConfigurations:(void *)configurations proxyDelegate:
{
  if (!self)
  {
    return 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_initWithConfigurations_proxyDelegate_ object:self file:@"_UIPhysicalButtonProxyInteraction.m" lineNumber:75 description:{@"Attempting to initialize %@ with a non-conforming delegate: %@", objc_opt_class(), configurations}];
  }

  v10.receiver = self;
  v10.super_class = _UIPhysicalButtonProxyInteraction;
  v6 = objc_msgSendSuper2(&v10, sel_initWithConfigurations_delegate_, a2, configurations);
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(v6 + 11, configurations);
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

- (void)_driver:(id)_driver didCreateProposedAction:(id)action
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonProxyInteraction.m" lineNumber:98 description:{@"Unexpected request for a proxy interaction to handle a proposed action: self: %@; driver: %@; proposedAction: %@", self, _driver, action}];
}

- (void)_proxyDriver:(id)driver didReceiveBSAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyDelegate);
  [WeakRetained _physicalButtonProxyInteraction:self didReceiveBSAction:action];
}

@end