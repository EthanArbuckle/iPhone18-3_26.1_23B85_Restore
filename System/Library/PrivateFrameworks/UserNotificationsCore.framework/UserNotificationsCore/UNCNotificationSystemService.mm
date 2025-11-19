@interface UNCNotificationSystemService
+ (id)serviceInterface;
@end

@implementation UNCNotificationSystemService

+ (id)serviceInterface
{
  if (serviceInterface_onceToken != -1)
  {
    +[UNCNotificationSystemService serviceInterface];
  }

  v3 = serviceInterface_serviceInterface;

  return v3;
}

void __48__UNCNotificationSystemService_serviceInterface__block_invoke()
{
  v4 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"com.apple.usernotifications.systemservice"];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F566A820];
  [v4 setServer:v0];

  v1 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F5677988];
  [v4 setClient:v1];

  v2 = [v4 copy];
  v3 = serviceInterface_serviceInterface;
  serviceInterface_serviceInterface = v2;
}

@end