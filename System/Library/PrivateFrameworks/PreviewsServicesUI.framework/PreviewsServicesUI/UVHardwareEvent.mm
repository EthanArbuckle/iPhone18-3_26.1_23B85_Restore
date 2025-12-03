@interface UVHardwareEvent
- (UVHardwareEvent)initWithData:(id)data error:(id *)error;
@end

@implementation UVHardwareEvent

- (UVHardwareEvent)initWithData:(id)data error:(id *)error
{
  v5.receiver = self;
  v5.super_class = UVHardwareEvent;
  return [(UVHardwareEvent *)&v5 init:data];
}

@end