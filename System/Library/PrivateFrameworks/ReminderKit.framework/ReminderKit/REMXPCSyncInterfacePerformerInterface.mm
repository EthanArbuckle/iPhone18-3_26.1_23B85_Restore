@interface REMXPCSyncInterfacePerformerInterface
+ (id)interface;
@end

@implementation REMXPCSyncInterfacePerformerInterface

+ (id)interface
{
  if (interface_onceToken_0 != -1)
  {
    +[REMXPCSyncInterfacePerformerInterface interface];
  }

  v3 = interface_result_0;

  return v3;
}

uint64_t __50__REMXPCSyncInterfacePerformerInterface_interface__block_invoke()
{
  interface_result_0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0DC86C8];

  return MEMORY[0x1EEE66BB8]();
}

@end