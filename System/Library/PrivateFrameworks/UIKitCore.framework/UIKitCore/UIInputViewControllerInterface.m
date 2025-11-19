@interface UIInputViewControllerInterface
- (UIInputViewControllerInterface)init;
- (void)dealloc;
- (void)setForwardingInterface:(id)a3;
- (void)syncToKeyboardState:(id)a3 completionHandler:(id)a4;
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

- (void)setForwardingInterface:(id)a3
{
  v4 = a3;
  [(_UIIVCInterface *)self->_forwardingInterface setResponseDelegate:0];
  forwardingInterface = self->_forwardingInterface;
  self->_forwardingInterface = v4;
  v6 = v4;

  v7 = [(UIInputViewControllerInterface *)self responseDelegate];
  [(_UIIVCInterface *)self->_forwardingInterface setResponseDelegate:v7];

  v8 = [(UIInputViewControllerInterface *)self _cachedState];

  if (v8)
  {
    v9 = [(UIInputViewControllerInterface *)self forwardingInterface];
    v10 = [(UIInputViewControllerInterface *)self _cachedState];
    [v9 _handleInputViewControllerState:v10];

    [(UIInputViewControllerInterface *)self _setCachedState:0];
  }
}

- (void)syncToKeyboardState:(id)a3 completionHandler:(id)a4
{
  v9 = a4;
  v6 = [_UIInputViewControllerState stateForKeyboardState:a3];
  v7 = [(UIInputViewControllerInterface *)self forwardingInterface];

  if (v7)
  {
    v8 = [(UIInputViewControllerInterface *)self forwardingInterface];
    [v8 _handleInputViewControllerState:v6];
  }

  else
  {
    [(UIInputViewControllerInterface *)self _setCachedState:v6];
    [(UIInputViewControllerInterface *)self _handleInputViewControllerState:v6];
  }

  if (v9)
  {
    v9[2](v9, 0);
  }
}

@end