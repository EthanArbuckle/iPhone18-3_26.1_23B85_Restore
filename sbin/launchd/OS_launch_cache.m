@interface OS_launch_cache
- (void)dealloc;
@end

@implementation OS_launch_cache

- (void)dealloc
{
  sub_100049B34(self);
  sub_10001BB44(self);
  v3.receiver = self;
  v3.super_class = OS_launch_cache;
  [(OS_launch_cache *)&v3 dealloc];
}

@end