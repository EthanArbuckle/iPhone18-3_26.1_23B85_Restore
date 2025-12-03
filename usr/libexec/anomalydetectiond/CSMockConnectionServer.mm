@interface CSMockConnectionServer
- (CSMockConnectionServer)initWithDispatchSilo:(id)silo andDelegate:(id)delegate;
@end

@implementation CSMockConnectionServer

- (CSMockConnectionServer)initWithDispatchSilo:(id)silo andDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = CSMockConnectionServer;
  return [(CSMockConnectionServer *)&v5 init:silo];
}

@end