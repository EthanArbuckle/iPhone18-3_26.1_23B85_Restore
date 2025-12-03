@interface WiFiUsageBatterySaveSession
- (WiFiUsageBatterySaveSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities;
@end

@implementation WiFiUsageBatterySaveSession

- (WiFiUsageBatterySaveSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities
{
  v5.receiver = self;
  v5.super_class = WiFiUsageBatterySaveSession;
  result = [(WiFiUsageSession *)&v5 initWithSessionType:7 andInterfaceName:name andCapabilities:capabilities];
  result->_batterySaveMode = 0;
  return result;
}

@end