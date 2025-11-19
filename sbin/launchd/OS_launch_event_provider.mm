@interface OS_launch_event_provider
- (void)dealloc;
@end

@implementation OS_launch_event_provider

- (void)dealloc
{
  sub_10003EC5C(self);
  sub_10001BB44(self);
  v3.receiver = self;
  v3.super_class = OS_launch_event_provider;
  [(OS_launch_event_provider *)&v3 dealloc];
}

@end