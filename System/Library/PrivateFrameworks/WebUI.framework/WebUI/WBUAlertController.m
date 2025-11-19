@interface WBUAlertController
- (void)dealloc;
@end

@implementation WBUAlertController

- (void)dealloc
{
  deallocationHandler = self->_deallocationHandler;
  if (deallocationHandler)
  {
    deallocationHandler[2](deallocationHandler, a2);
  }

  v4.receiver = self;
  v4.super_class = WBUAlertController;
  [(WBUAlertController *)&v4 dealloc];
}

@end