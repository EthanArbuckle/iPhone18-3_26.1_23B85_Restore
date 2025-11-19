@interface AXTTYSimulatorSubscriptionContext
- (AXTTYSimulatorSubscriptionContext)init;
@end

@implementation AXTTYSimulatorSubscriptionContext

- (AXTTYSimulatorSubscriptionContext)init
{
  v5.receiver = self;
  v5.super_class = AXTTYSimulatorSubscriptionContext;
  v2 = [(AXTTYSimulatorSubscriptionContext *)&v5 init];
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  [(AXTTYSimulatorSubscriptionContext *)v2 setTestUuid:v3];

  return v2;
}

@end