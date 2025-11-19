@interface REMXPCIndexingPerformerInterface
+ (id)interface;
@end

@implementation REMXPCIndexingPerformerInterface

uint64_t __45__REMXPCIndexingPerformerInterface_interface__block_invoke()
{
  interface_result = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0DC8668];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)interface
{
  if (interface_onceToken != -1)
  {
    +[REMXPCIndexingPerformerInterface interface];
  }

  v3 = interface_result;

  return v3;
}

@end