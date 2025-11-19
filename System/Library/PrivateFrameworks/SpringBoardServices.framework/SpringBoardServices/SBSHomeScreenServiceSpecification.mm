@interface SBSHomeScreenServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation SBSHomeScreenServiceSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_7 != -1)
  {
    +[SBSHomeScreenServiceSpecification interface];
  }

  v3 = interface___interface_7;

  return v3;
}

void __46__SBSHomeScreenServiceSpecification_interface__block_invoke()
{
  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C8AA8];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05BD800];
  v1 = [MEMORY[0x1E698F4E8] interfaceWithServer:v3 client:v0];
  v2 = interface___interface_7;
  interface___interface_7 = v1;
}

@end