@interface RWIProtocolInspector
- (BOOL)connected;
- (RWIProtocolInspector)initWithController:(AugmentableInspectorController *)controller;
- (id).cxx_construct;
- (void)dealloc;
- (void)inspectorControllerDestroyed;
@end

@implementation RWIProtocolInspector

- (RWIProtocolInspector)initWithController:(AugmentableInspectorController *)controller
{
  v6.receiver = self;
  v6.super_class = RWIProtocolInspector;
  v4 = [(RWIProtocolInspector *)&v6 init];
  if (v4)
  {
    v4->_inspectorController = controller;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  inspectorController = self->_inspectorController;
  if (inspectorController)
  {
    (*(inspectorController->var0 + 3))(inspectorController, 0);
  }

  v4.receiver = self;
  v4.super_class = RWIProtocolInspector;
  [(RWIProtocolInspector *)&v4 dealloc];
}

- (BOOL)connected
{
  inspectorController = self->_inspectorController;
  if (inspectorController)
  {
    LOBYTE(inspectorController) = *((*(inspectorController->var0 + 4))(inspectorController, a2) + 20) != 0;
  }

  return inspectorController;
}

- (void)inspectorControllerDestroyed
{
  self->_inspectorController = 0;
  ptr = self->_inspectorControllerClient.__ptr_;
  self->_inspectorControllerClient.__ptr_ = 0;
  if (ptr)
  {
    JUMPOUT(0x2743DB740);
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end