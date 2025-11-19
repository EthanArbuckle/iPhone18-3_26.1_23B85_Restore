@interface SBSSystemNotesPresentationServiceInterfaceSpecification
+ (BSServiceInterface)interface;
@end

@implementation SBSSystemNotesPresentationServiceInterfaceSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_2 != -1)
  {
    +[SBSSystemNotesPresentationServiceInterfaceSpecification interface];
  }

  v3 = interface___interface_2;

  return v3;
}

void __68__SBSSystemNotesPresentationServiceInterfaceSpecification_interface__block_invoke()
{
  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05B77F0];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C38D0];
  v1 = [MEMORY[0x1E698F4E8] interfaceWithServer:v3 client:v0];
  v2 = interface___interface_2;
  interface___interface_2 = v1;
}

@end