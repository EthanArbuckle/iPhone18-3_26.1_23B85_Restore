@interface SVXVirtualDeviceFactory
- (id)createWithInstanceContext:(id)context;
@end

@implementation SVXVirtualDeviceFactory

- (id)createWithInstanceContext:(id)context
{
  contextCopy = context;
  v4 = [[SVXVirtualDevice alloc] initWithInstanceContext:contextCopy];

  return v4;
}

@end