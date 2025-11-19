@interface UVHardwareEvent
- (UVHardwareEvent)initWithData:(id)a3 error:(id *)a4;
@end

@implementation UVHardwareEvent

- (UVHardwareEvent)initWithData:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = UVHardwareEvent;
  return [(UVHardwareEvent *)&v5 init:a3];
}

@end