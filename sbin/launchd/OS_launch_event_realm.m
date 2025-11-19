@interface OS_launch_event_realm
- (void)dealloc;
@end

@implementation OS_launch_event_realm

- (void)dealloc
{
  sub_10003ECB8(self);
  sub_10001BB44(self);
  v3.receiver = self;
  v3.super_class = OS_launch_event_realm;
  [(OS_launch_event_realm *)&v3 dealloc];
}

@end