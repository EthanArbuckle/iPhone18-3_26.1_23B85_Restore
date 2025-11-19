@interface SBSUniversalControlInterfaceSpecification
+ (BSServiceInterface)interface;
@end

@implementation SBSUniversalControlInterfaceSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_21 != -1)
  {
    +[SBSUniversalControlInterfaceSpecification interface];
  }

  v3 = interface___interface_20;

  return v3;
}

void __54__SBSUniversalControlInterfaceSpecification_interface__block_invoke()
{
  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C9108];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C39B0];
  v1 = [MEMORY[0x1E698F4E8] interfaceWithServer:v3 client:v0];
  v2 = interface___interface_20;
  interface___interface_20 = v1;
}

@end