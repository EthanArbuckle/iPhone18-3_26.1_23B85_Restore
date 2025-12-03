@interface BKHIDMousePointerEventProcessor
- (BKHIDMousePointerEventProcessor)init;
- (BKMousePointerController)mousePointerController;
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
@end

@implementation BKHIDMousePointerEventProcessor

- (BKMousePointerController)mousePointerController
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_mousePointerController;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  result = self->_mousePointerController;
  if (result)
  {
    return [result processEvent:event sender:sender dispatcher:dispatcher];
  }

  return result;
}

- (BKHIDMousePointerEventProcessor)init
{
  v10.receiver = self;
  v10.super_class = BKHIDMousePointerEventProcessor;
  v2 = [(BKHIDMousePointerEventProcessor *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(BKMousePointerServiceServer);
    mousePointerServiceServer = v3->_mousePointerServiceServer;
    v3->_mousePointerServiceServer = v4;

    v6 = +[BKMousePointerController standardConfiguration];
    [v6 setServiceServer:v3->_mousePointerServiceServer];
    v7 = [[BKMousePointerController alloc] initWithConfiguration:v6];
    mousePointerController = v3->_mousePointerController;
    v3->_mousePointerController = v7;

    [(BKMousePointerServiceServer *)v3->_mousePointerServiceServer activateWithMousePointerController:v3->_mousePointerController];
  }

  return v3;
}

@end