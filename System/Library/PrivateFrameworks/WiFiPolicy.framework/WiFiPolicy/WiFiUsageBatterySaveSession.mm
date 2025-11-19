@interface WiFiUsageBatterySaveSession
- (WiFiUsageBatterySaveSession)initWithInterfaceName:(id)a3 andCapabilities:(id)a4;
@end

@implementation WiFiUsageBatterySaveSession

- (WiFiUsageBatterySaveSession)initWithInterfaceName:(id)a3 andCapabilities:(id)a4
{
  v5.receiver = self;
  v5.super_class = WiFiUsageBatterySaveSession;
  result = [(WiFiUsageSession *)&v5 initWithSessionType:7 andInterfaceName:a3 andCapabilities:a4];
  result->_batterySaveMode = 0;
  return result;
}

@end