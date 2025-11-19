@interface CSMockConnectionServer
- (CSMockConnectionServer)initWithDispatchSilo:(id)a3 andDelegate:(id)a4;
@end

@implementation CSMockConnectionServer

- (CSMockConnectionServer)initWithDispatchSilo:(id)a3 andDelegate:(id)a4
{
  v5.receiver = self;
  v5.super_class = CSMockConnectionServer;
  return [(CSMockConnectionServer *)&v5 init:a3];
}

@end