@interface PGBackgroundPIPServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation PGBackgroundPIPServiceSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken != -1)
  {
    +[PGBackgroundPIPServiceSpecification interface];
  }

  v3 = interface___interface;

  return v3;
}

void __48__PGBackgroundPIPServiceSpecification_interface__block_invoke()
{
  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F3972328];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F3970DE8];
  v1 = [MEMORY[0x1E698F4E8] interfaceWithServer:v3 client:v0];
  v2 = interface___interface;
  interface___interface = v1;
}

@end