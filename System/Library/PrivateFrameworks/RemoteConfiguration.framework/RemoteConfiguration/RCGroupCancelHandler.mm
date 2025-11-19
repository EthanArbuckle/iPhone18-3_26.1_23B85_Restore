@interface RCGroupCancelHandler
+ (id)groupCancelHandlerWithCancelHandlers:(id)a3;
- (RCGroupCancelHandler)initWithCancelHandlers:(id)a3;
- (void)cancel;
@end

@implementation RCGroupCancelHandler

+ (id)groupCancelHandlerWithCancelHandlers:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCancelHandlers:v4];

  return v5;
}

- (RCGroupCancelHandler)initWithCancelHandlers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RCGroupCancelHandler;
  v5 = [(RCGroupCancelHandler *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    cancelHandlers = v5->_cancelHandlers;
    v5->_cancelHandlers = v6;
  }

  return v5;
}

- (void)cancel
{
  v2 = [(RCGroupCancelHandler *)self cancelHandlers];
  [v2 makeObjectsPerformSelector:sel_cancel];
}

@end