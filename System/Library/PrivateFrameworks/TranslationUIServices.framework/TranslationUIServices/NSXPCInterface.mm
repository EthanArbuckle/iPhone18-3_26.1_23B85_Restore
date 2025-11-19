@interface NSXPCInterface
@end

@implementation NSXPCInterface

uint64_t __80__NSXPCInterface_LTUIViewServiceExtension____LTUI_viewServiceExtensionInterface__block_invoke()
{
  __LTUI_viewServiceExtensionInterface_interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287F96930];

  return MEMORY[0x2821F96F8]();
}

uint64_t __84__NSXPCInterface_LTUIViewServiceExtension____LTUI_viewServiceExtensionHostInterface__block_invoke()
{
  __LTUI_viewServiceExtensionHostInterface_interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287F93D78];

  return MEMORY[0x2821F96F8]();
}

@end