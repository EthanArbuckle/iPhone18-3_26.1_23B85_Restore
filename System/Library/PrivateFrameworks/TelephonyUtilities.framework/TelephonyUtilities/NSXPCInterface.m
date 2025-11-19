@interface NSXPCInterface
@end

@implementation NSXPCInterface

uint64_t __53__NSXPCInterface_TUUIXPCClientSupport__hostInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09CB4B8];
  v1 = hostInterface_interface;
  hostInterface_interface = v0;

  v2 = hostInterface_interface;

  return [v2 setAllowedClassesForHostProtocol];
}

uint64_t __55__NSXPCInterface_TUUIXPCClientSupport__clientInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09D3E58];
  v1 = clientInterface_interface;
  clientInterface_interface = v0;

  v2 = clientInterface_interface;

  return [v2 setAllowedClassesForClientProtocol];
}

@end