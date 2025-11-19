@interface WFCatalystContentServiceContext
- (WFCatalystContentHost)hostProxy;
@end

@implementation WFCatalystContentServiceContext

- (WFCatalystContentHost)hostProxy
{
  v2 = [(WFCatalystContentServiceContext *)self _auxiliaryConnection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

@end