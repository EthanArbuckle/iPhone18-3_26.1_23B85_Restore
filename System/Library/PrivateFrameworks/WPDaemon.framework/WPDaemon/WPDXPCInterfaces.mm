@interface WPDXPCInterfaces
+ (id)clientInterface;
+ (id)serverInterface;
@end

@implementation WPDXPCInterfaces

+ (id)serverInterface
{
  if (serverInterface_onceToken != -1)
  {
    +[WPDXPCInterfaces serverInterface];
  }

  v3 = serverInterface_serverInterface;

  return v3;
}

+ (id)clientInterface
{
  if (clientInterface_onceToken != -1)
  {
    +[WPDXPCInterfaces clientInterface];
  }

  v3 = clientInterface_clientInterface;

  return v3;
}

void __35__WPDXPCInterfaces_serverInterface__block_invoke()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_288205DD0];
  v1 = serverInterface_serverInterface;
  serverInterface_serverInterface = v0;

  v2 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = [v2 setWithArray:v3];

  [serverInterface_serverInterface setClasses:v4 forSelector:sel_discoverCharacteristicsAndServices_forPeripheral_ argumentIndex:0 ofReply:0];
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __35__WPDXPCInterfaces_clientInterface__block_invoke()
{
  clientInterface_clientInterface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28820C6E0];

  return MEMORY[0x2821F96F8]();
}

@end