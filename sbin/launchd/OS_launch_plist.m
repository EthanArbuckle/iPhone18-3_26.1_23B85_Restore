@interface OS_launch_plist
- (void)dealloc;
@end

@implementation OS_launch_plist

- (void)dealloc
{
  nullsub_23(self, a2);
  sub_10001BB44(self);
  v3.receiver = self;
  v3.super_class = OS_launch_plist;
  [(OS_launch_plist *)&v3 dealloc];
}

@end