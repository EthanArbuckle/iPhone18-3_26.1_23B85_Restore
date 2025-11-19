@interface SVXServiceCommandHandlerRegistryProvider
- (id)createWithHandlers:(id)a3;
@end

@implementation SVXServiceCommandHandlerRegistryProvider

- (id)createWithHandlers:(id)a3
{
  v3 = a3;
  v4 = [[SVXServiceCommandHandlerRegistry alloc] initWithHandlers:v3];

  return v4;
}

@end