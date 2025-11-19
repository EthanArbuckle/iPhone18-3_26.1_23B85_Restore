@interface OS_launch_event_subscription
- (void)dealloc;
@end

@implementation OS_launch_event_subscription

- (void)dealloc
{
  sub_10003ED78(self);
  sub_10001BB44(self);
  v3.receiver = self;
  v3.super_class = OS_launch_event_subscription;
  [(OS_launch_event_subscription *)&v3 dealloc];
}

@end