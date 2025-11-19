@interface SBSApplicationUserQuitMonitorSessionSpecification
+ (BSServiceInterface)interface;
@end

@implementation SBSApplicationUserQuitMonitorSessionSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_4 != -1)
  {
    +[SBSApplicationUserQuitMonitorSessionSpecification interface];
  }

  v3 = interface___interface_4;

  return v3;
}

void __62__SBSApplicationUserQuitMonitorSessionSpecification_interface__block_invoke()
{
  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C89E8];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C3AE8];
  v1 = [MEMORY[0x1E698F4E8] interfaceWithServer:v3 client:v0];
  v2 = interface___interface_4;
  interface___interface_4 = v1;
}

@end