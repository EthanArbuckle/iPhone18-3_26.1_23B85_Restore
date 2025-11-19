@interface SBSRemoteAlertHandleServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation SBSRemoteAlertHandleServiceSpecification

+ (BSServiceInterface)interface
{
  if (interface_sOnceToken != -1)
  {
    +[SBSRemoteAlertHandleServiceSpecification interface];
  }

  v3 = interface_sInterface;

  return v3;
}

void __53__SBSRemoteAlertHandleServiceSpecification_interface__block_invoke()
{
  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C88C8];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C34D8];
  v1 = [MEMORY[0x1E698F4E8] interfaceWithServer:v3 client:v0];
  v2 = interface_sInterface;
  interface_sInterface = v1;
}

@end