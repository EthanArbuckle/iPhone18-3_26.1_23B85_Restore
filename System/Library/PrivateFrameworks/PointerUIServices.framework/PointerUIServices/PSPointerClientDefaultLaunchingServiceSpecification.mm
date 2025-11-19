@interface PSPointerClientDefaultLaunchingServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation PSPointerClientDefaultLaunchingServiceSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_0 != -1)
  {
    +[PSPointerClientDefaultLaunchingServiceSpecification interface];
  }

  v3 = interface___interface_0;

  return v3;
}

void __64__PSPointerClientDefaultLaunchingServiceSpecification_interface__block_invoke()
{
  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_283084998];
  v0 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_283083400];
  v1 = [MEMORY[0x277CF32C0] interfaceWithServer:v3 client:v0];
  v2 = interface___interface_0;
  interface___interface_0 = v1;
}

@end