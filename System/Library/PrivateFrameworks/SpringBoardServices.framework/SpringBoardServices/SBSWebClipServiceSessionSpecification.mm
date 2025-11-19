@interface SBSWebClipServiceSessionSpecification
+ (BSServiceInterface)interface;
@end

@implementation SBSWebClipServiceSessionSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_19 != -1)
  {
    +[SBSWebClipServiceSessionSpecification interface];
  }

  v3 = interface___interface_18;

  return v3;
}

void __50__SBSWebClipServiceSessionSpecification_interface__block_invoke()
{
  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C8FE8];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C9048];
  v1 = [MEMORY[0x1E698F4E8] interfaceWithServer:v3 client:v0];
  v2 = interface___interface_18;
  interface___interface_18 = v1;
}

@end