@interface OS_launch_service
- (void)dealloc;
@end

@implementation OS_launch_service

- (void)dealloc
{
  sub_1000028D0(self);
  sub_10001BB44(self);
  v3.receiver = self;
  v3.super_class = OS_launch_service;
  [(OS_launch_service *)&v3 dealloc];
}

@end