@interface OS_launch_coalition
- (void)dealloc;
@end

@implementation OS_launch_coalition

- (void)dealloc
{
  sub_100012DB8(self);
  sub_10001BB44(self);
  v3.receiver = self;
  v3.super_class = OS_launch_coalition;
  [(OS_launch_coalition *)&v3 dealloc];
}

@end