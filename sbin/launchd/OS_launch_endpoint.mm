@interface OS_launch_endpoint
- (void)dealloc;
@end

@implementation OS_launch_endpoint

- (void)dealloc
{
  sub_10004BE90(self, a2, v2, v3, v4, v5, v6, v7);
  sub_10001BB44(self);
  v9.receiver = self;
  v9.super_class = OS_launch_endpoint;
  [(OS_launch_endpoint *)&v9 dealloc];
}

@end