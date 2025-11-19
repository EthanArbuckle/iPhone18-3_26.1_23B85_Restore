@interface OS_channel_endpoint
- (void)dealloc;
@end

@implementation OS_channel_endpoint

- (void)dealloc
{
  channel_endpoint_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_channel_endpoint;
  [(OS_channel_endpoint *)&v3 dealloc];
}

@end