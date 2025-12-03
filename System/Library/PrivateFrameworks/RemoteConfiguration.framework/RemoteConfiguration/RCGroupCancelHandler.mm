@interface RCGroupCancelHandler
+ (id)groupCancelHandlerWithCancelHandlers:(id)handlers;
- (RCGroupCancelHandler)initWithCancelHandlers:(id)handlers;
- (void)cancel;
@end

@implementation RCGroupCancelHandler

+ (id)groupCancelHandlerWithCancelHandlers:(id)handlers
{
  handlersCopy = handlers;
  v5 = [[self alloc] initWithCancelHandlers:handlersCopy];

  return v5;
}

- (RCGroupCancelHandler)initWithCancelHandlers:(id)handlers
{
  handlersCopy = handlers;
  v9.receiver = self;
  v9.super_class = RCGroupCancelHandler;
  v5 = [(RCGroupCancelHandler *)&v9 init];
  if (v5)
  {
    v6 = [handlersCopy copy];
    cancelHandlers = v5->_cancelHandlers;
    v5->_cancelHandlers = v6;
  }

  return v5;
}

- (void)cancel
{
  cancelHandlers = [(RCGroupCancelHandler *)self cancelHandlers];
  [cancelHandlers makeObjectsPerformSelector:sel_cancel];
}

@end