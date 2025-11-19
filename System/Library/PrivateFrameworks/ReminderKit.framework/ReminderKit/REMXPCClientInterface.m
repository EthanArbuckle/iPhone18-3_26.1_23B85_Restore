@interface REMXPCClientInterface
+ (NSXPCInterface)interface;
@end

@implementation REMXPCClientInterface

+ (NSXPCInterface)interface
{
  if (interface_onceToken_27 != -1)
  {
    +[REMXPCClientInterface interface];
  }

  v3 = interface_sInterface_26;

  return v3;
}

void __34__REMXPCClientInterface_interface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0DABDF8];
  v1 = interface_sInterface_26;
  interface_sInterface_26 = v0;

  v2 = interface_sInterface_26;
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_autoCategorizationActivityDidUpdate_ argumentIndex:0 ofReply:0];
}

@end