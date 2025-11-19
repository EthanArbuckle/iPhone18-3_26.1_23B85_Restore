@interface OS_launch_service_stub
- (void)dealloc;
@end

@implementation OS_launch_service_stub

- (void)dealloc
{
  sub_10004A928(self);
  sub_10001BB44(self);
  v3.receiver = self;
  v3.super_class = OS_launch_service_stub;
  [(OS_launch_service_stub *)&v3 dealloc];
}

@end