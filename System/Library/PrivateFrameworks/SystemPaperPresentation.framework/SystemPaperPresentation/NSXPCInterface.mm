@interface NSXPCInterface
@end

@implementation NSXPCInterface

uint64_t __63__NSXPCInterface_ICSystemPaperExtension__ic_extensionInterface__block_invoke()
{
  ic_extensionInterface_extensionInterface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287D0ABD8];

  return MEMORY[0x2821F96F8]();
}

uint64_t __58__NSXPCInterface_ICSystemPaperExtension__ic_hostInterface__block_invoke()
{
  ic_hostInterface_hostInterface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287D08150];

  return MEMORY[0x2821F96F8]();
}

@end