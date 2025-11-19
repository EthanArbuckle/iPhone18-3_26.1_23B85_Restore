@interface UNCNotificationCoreService
+ (id)serviceInterface;
@end

@implementation UNCNotificationCoreService

+ (id)serviceInterface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__UNCNotificationCoreService_serviceInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (serviceInterface_onceToken_0[0] != -1)
  {
    dispatch_once(serviceInterface_onceToken_0, block);
  }

  v2 = serviceInterface_serviceInterface_0;

  return v2;
}

void __46__UNCNotificationCoreService_serviceInterface__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E698F470];
  v2 = [*(a1 + 32) serviceName];
  v7 = [v1 interfaceWithIdentifier:v2];

  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F5677898];
  [v7 setServer:v3];

  v4 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F5676888];
  [v7 setClient:v4];

  v5 = [v7 copy];
  v6 = serviceInterface_serviceInterface_0;
  serviceInterface_serviceInterface_0 = v5;
}

@end