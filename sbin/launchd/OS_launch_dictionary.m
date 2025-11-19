@interface OS_launch_dictionary
- (void)dealloc;
@end

@implementation OS_launch_dictionary

- (void)dealloc
{
  sub_100049748(self);
  sub_10001BB44(self);
  v3.receiver = self;
  v3.super_class = OS_launch_dictionary;
  [(OS_launch_dictionary *)&v3 dealloc];
}

@end