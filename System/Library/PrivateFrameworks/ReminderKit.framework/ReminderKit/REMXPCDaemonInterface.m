@interface REMXPCDaemonInterface
+ (NSXPCInterface)interface;
@end

@implementation REMXPCDaemonInterface

+ (NSXPCInterface)interface
{
  if (interface_onceToken_3 != -1)
  {
    +[REMXPCDaemonInterface interface];
  }

  v3 = interface_sInterface;

  return v3;
}

void __34__REMXPCDaemonInterface_interface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0DC88A8];
  v1 = interface_sInterface;
  interface_sInterface = v0;

  v2 = interface_sInterface;
  v3 = +[REMXPCChangeTrackingPerformerInterface interface];
  [v2 setInterface:v3 forSelector:sel_changeTrackingPerformerWithStoreContainerToken_reason_completion_ argumentIndex:0 ofReply:1];

  v4 = interface_sInterface;
  v5 = +[REMXPCDebugPerformerInterface interface];
  [v4 setInterface:v5 forSelector:sel_debugPerformerWithStoreContainerToken_reason_completion_ argumentIndex:0 ofReply:1];

  v6 = interface_sInterface;
  v7 = +[REMXPCStorePerformerInterface interface];
  [v6 setInterface:v7 forSelector:sel_storePerformerWithProcessName_storeContainerToken_reason_completion_ argumentIndex:0 ofReply:1];

  v8 = interface_sInterface;
  v9 = +[REMXPCSyncInterfacePerformerInterface interface];
  [v8 setInterface:v9 forSelector:sel_syncInterfacePerformerWithReason_completion_ argumentIndex:0 ofReply:1];

  v10 = interface_sInterface;
  v11 = +[REMXPCIndexingPerformerInterface interface];
  [v10 setInterface:v11 forSelector:sel_indexingPerformerWithReason_completion_ argumentIndex:0 ofReply:1];
}

@end