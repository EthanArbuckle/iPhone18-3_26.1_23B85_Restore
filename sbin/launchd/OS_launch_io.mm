@interface OS_launch_io
- (void)dealloc;
@end

@implementation OS_launch_io

- (void)dealloc
{
  sub_10000E8FC(self);
  sub_10001BB44(self);
  v3.receiver = self;
  v3.super_class = OS_launch_io;
  [(OS_launch_io *)&v3 dealloc];
}

@end