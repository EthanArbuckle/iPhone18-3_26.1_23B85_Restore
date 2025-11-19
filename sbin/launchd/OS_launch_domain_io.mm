@interface OS_launch_domain_io
- (void)dealloc;
@end

@implementation OS_launch_domain_io

- (void)dealloc
{
  sub_100017FC4(self);
  sub_10001BB44(self);
  v3.receiver = self;
  v3.super_class = OS_launch_domain_io;
  [(OS_launch_domain_io *)&v3 dealloc];
}

@end