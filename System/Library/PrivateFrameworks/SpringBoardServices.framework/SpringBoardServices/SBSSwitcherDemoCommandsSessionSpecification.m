@interface SBSSwitcherDemoCommandsSessionSpecification
+ (BSServiceInterface)interface;
@end

@implementation SBSSwitcherDemoCommandsSessionSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_8 != -1)
  {
    +[SBSSwitcherDemoCommandsSessionSpecification interface];
  }

  v3 = interface___interface_8;

  return v3;
}

void __56__SBSSwitcherDemoCommandsSessionSpecification_interface__block_invoke()
{
  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C8B08];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C3E88];
  v1 = [MEMORY[0x1E698F4E8] interfaceWithServer:v3 client:v0];
  v2 = interface___interface_8;
  interface___interface_8 = v1;
}

@end