@interface WBSScopeExitHandler
- (void)dealloc;
@end

@implementation WBSScopeExitHandler

- (void)dealloc
{
  handler = self->_handler;
  if (handler)
  {
    handler[2](handler, a2);
  }

  v4.receiver = self;
  v4.super_class = WBSScopeExitHandler;
  [(WBSScopeExitHandler *)&v4 dealloc];
}

@end