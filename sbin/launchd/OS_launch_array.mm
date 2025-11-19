@interface OS_launch_array
- (void)dealloc;
@end

@implementation OS_launch_array

- (void)dealloc
{
  sub_100010960(self);
  sub_10001BB44(self);
  v3.receiver = self;
  v3.super_class = OS_launch_array;
  [(OS_launch_array *)&v3 dealloc];
}

@end