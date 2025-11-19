@interface OS_launch_event_stream
- (void)dealloc;
@end

@implementation OS_launch_event_stream

- (void)dealloc
{
  sub_10003ED5C(self);
  sub_10001BB44(self);
  v3.receiver = self;
  v3.super_class = OS_launch_event_stream;
  [(OS_launch_event_stream *)&v3 dealloc];
}

@end