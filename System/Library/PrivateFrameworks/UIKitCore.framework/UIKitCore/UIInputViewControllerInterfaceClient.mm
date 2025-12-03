@interface UIInputViewControllerInterfaceClient
- (id)responseDelegate;
- (void)_handleInputViewControllerState:(id)state;
- (void)dealloc;
- (void)setForwardingInterface:(id)interface;
@end

@implementation UIInputViewControllerInterfaceClient

- (id)responseDelegate
{
  _auxiliaryConnection = [(UIInputViewControllerInterfaceClient *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)_handleInputViewControllerState:(id)state
{
  stateCopy = state;
  forwardingInterface = [(UIInputViewControllerInterfaceClient *)self forwardingInterface];
  [forwardingInterface _handleInputViewControllerState:stateCopy];
}

- (void)setForwardingInterface:(id)interface
{
  interfaceCopy = interface;
  [(_UIIVCInterface *)self->_forwardingInterface setResponseDelegate:0];
  forwardingInterface = self->_forwardingInterface;
  self->_forwardingInterface = interfaceCopy;
  v6 = interfaceCopy;

  responseDelegate = [(UIInputViewControllerInterfaceClient *)self responseDelegate];
  [(_UIIVCInterface *)self->_forwardingInterface setResponseDelegate:responseDelegate];
}

- (void)dealloc
{
  [(_UIIVCInterface *)self->_forwardingInterface setResponseDelegate:0];
  v3.receiver = self;
  v3.super_class = UIInputViewControllerInterfaceClient;
  [(UIInputViewControllerInterfaceClient *)&v3 dealloc];
}

@end