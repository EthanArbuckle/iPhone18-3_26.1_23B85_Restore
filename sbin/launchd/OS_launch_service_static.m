@interface OS_launch_service_static
- (void)dealloc;
@end

@implementation OS_launch_service_static

- (void)dealloc
{
  sub_10001F9E4(self);
  sub_10001BB44(self);
  v3.receiver = self;
  v3.super_class = OS_launch_service_static;
  [(OS_launch_service_static *)&v3 dealloc];
}

@end