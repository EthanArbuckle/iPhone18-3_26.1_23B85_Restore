@interface OS_channel
- (void)dealloc;
@end

@implementation OS_channel

- (void)dealloc
{
  Channel::assert_recv_sane(self);
  v3.receiver = self;
  v3.super_class = OS_channel;
  [(OS_channel *)&v3 dealloc];
}

@end