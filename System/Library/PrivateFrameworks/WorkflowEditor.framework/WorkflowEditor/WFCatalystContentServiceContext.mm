@interface WFCatalystContentServiceContext
- (WFCatalystContentHost)hostProxy;
@end

@implementation WFCatalystContentServiceContext

- (WFCatalystContentHost)hostProxy
{
  _auxiliaryConnection = [(WFCatalystContentServiceContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

  return remoteObjectProxy;
}

@end