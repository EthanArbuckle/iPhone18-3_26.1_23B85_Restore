@interface SVXServiceCommandHandlerRegistryProvider
- (id)createWithHandlers:(id)handlers;
@end

@implementation SVXServiceCommandHandlerRegistryProvider

- (id)createWithHandlers:(id)handlers
{
  handlersCopy = handlers;
  v4 = [[SVXServiceCommandHandlerRegistry alloc] initWithHandlers:handlersCopy];

  return v4;
}

@end