@interface PSPointerClientDefaultServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation PSPointerClientDefaultServiceSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken != -1)
  {
    +[PSPointerClientDefaultServiceSpecification interface];
  }

  v3 = interface___interface;

  return v3;
}

void __55__PSPointerClientDefaultServiceSpecification_interface__block_invoke()
{
  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_283084938];
  v0 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2830833A0];
  v1 = [MEMORY[0x277CF32C0] interfaceWithServer:v3 client:v0];
  v2 = interface___interface;
  interface___interface = v1;
}

@end