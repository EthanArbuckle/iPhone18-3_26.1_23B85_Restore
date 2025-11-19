@interface OS_channel_rt
- (void)dealloc;
@end

@implementation OS_channel_rt

- (void)dealloc
{
  channel_rt_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_channel_rt;
  [(OS_channel *)&v3 dealloc];
}

@end