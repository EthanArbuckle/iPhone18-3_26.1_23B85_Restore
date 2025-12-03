@interface UIInputViewControllerInterface
- (UIInputViewControllerInterface)init;
- (void)dealloc;
- (void)setForwardingInterface:(id)interface;
- (void)syncToKeyboardState:(id)state completionHandler:(id)handler;
@end

@implementation UIInputViewControllerInterface

- (UIInputViewControllerInterface)init
{
  v5.receiver = self;
  v5.super_class = UIInputViewControllerInterface;
  v2 = [(UIInputViewControllerInterface *)&v5 init];
  if (v2)
  {
    v3 = sharedInputManagerMux_0();
    [v3 addClient:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = sharedInputManagerMux_0();
  [v3 removeClient:self];

  v4.receiver = self;
  v4.super_class = UIInputViewControllerInterface;
  [(UIInputViewControllerInterface *)&v4 dealloc];
}

- (void)setForwardingInterface:(id)interface
{
  interfaceCopy = interface;
  [(_UIIVCInterface *)self->_forwardingInterface setResponseDelegate:0];
  forwardingInterface = self->_forwardingInterface;
  self->_forwardingInterface = interfaceCopy;
  v6 = interfaceCopy;

  responseDelegate = [(UIInputViewControllerInterface *)self responseDelegate];
  [(_UIIVCInterface *)self->_forwardingInterface setResponseDelegate:responseDelegate];

  _cachedState = [(UIInputViewControllerInterface *)self _cachedState];

  if (_cachedState)
  {
    forwardingInterface = [(UIInputViewControllerInterface *)self forwardingInterface];
    _cachedState2 = [(UIInputViewControllerInterface *)self _cachedState];
    [forwardingInterface _handleInputViewControllerState:_cachedState2];

    [(UIInputViewControllerInterface *)self _setCachedState:0];
  }
}

- (void)syncToKeyboardState:(id)state completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [_UIInputViewControllerState stateForKeyboardState:state];
  forwardingInterface = [(UIInputViewControllerInterface *)self forwardingInterface];

  if (forwardingInterface)
  {
    forwardingInterface2 = [(UIInputViewControllerInterface *)self forwardingInterface];
    [forwardingInterface2 _handleInputViewControllerState:v6];
  }

  else
  {
    [(UIInputViewControllerInterface *)self _setCachedState:v6];
    [(UIInputViewControllerInterface *)self _handleInputViewControllerState:v6];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

@end