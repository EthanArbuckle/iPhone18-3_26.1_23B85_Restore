@interface UIInputViewControllerInterfaceClient
- (id)responseDelegate;
- (void)_handleInputViewControllerState:(id)a3;
- (void)dealloc;
- (void)setForwardingInterface:(id)a3;
@end

@implementation UIInputViewControllerInterfaceClient

- (id)responseDelegate
{
  v2 = [(UIInputViewControllerInterfaceClient *)self _auxiliaryConnection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)_handleInputViewControllerState:(id)a3
{
  v4 = a3;
  v5 = [(UIInputViewControllerInterfaceClient *)self forwardingInterface];
  [v5 _handleInputViewControllerState:v4];
}

- (void)setForwardingInterface:(id)a3
{
  v4 = a3;
  [(_UIIVCInterface *)self->_forwardingInterface setResponseDelegate:0];
  forwardingInterface = self->_forwardingInterface;
  self->_forwardingInterface = v4;
  v6 = v4;

  v7 = [(UIInputViewControllerInterfaceClient *)self responseDelegate];
  [(_UIIVCInterface *)self->_forwardingInterface setResponseDelegate:v7];
}

- (void)dealloc
{
  [(_UIIVCInterface *)self->_forwardingInterface setResponseDelegate:0];
  v3.receiver = self;
  v3.super_class = UIInputViewControllerInterfaceClient;
  [(UIInputViewControllerInterfaceClient *)&v3 dealloc];
}

@end