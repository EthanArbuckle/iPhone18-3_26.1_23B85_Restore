@interface WFSetupServer
- (WFSetupServer)init;
@end

@implementation WFSetupServer

- (WFSetupServer)init
{
  v7.receiver = self;
  v7.super_class = WFSetupServer;
  v2 = [(WFSetupServer *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    underlyingSwiftObject = v2->_underlyingSwiftObject;
    v2->_underlyingSwiftObject = v3;

    v5 = v2;
  }

  return v2;
}

@end