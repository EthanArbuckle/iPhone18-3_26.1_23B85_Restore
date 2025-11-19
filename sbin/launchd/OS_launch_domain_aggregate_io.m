@interface OS_launch_domain_aggregate_io
- (void)dealloc;
@end

@implementation OS_launch_domain_aggregate_io

- (void)dealloc
{
  sub_100018608(self);
  sub_10001BB44(self);
  v3.receiver = self;
  v3.super_class = OS_launch_domain_aggregate_io;
  [(OS_launch_domain_aggregate_io *)&v3 dealloc];
}

@end