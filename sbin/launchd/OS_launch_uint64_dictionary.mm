@interface OS_launch_uint64_dictionary
- (void)dealloc;
@end

@implementation OS_launch_uint64_dictionary

- (void)dealloc
{
  sub_10001C7AC(self);
  sub_10001BB44(self);
  v3.receiver = self;
  v3.super_class = OS_launch_uint64_dictionary;
  [(OS_launch_uint64_dictionary *)&v3 dealloc];
}

@end