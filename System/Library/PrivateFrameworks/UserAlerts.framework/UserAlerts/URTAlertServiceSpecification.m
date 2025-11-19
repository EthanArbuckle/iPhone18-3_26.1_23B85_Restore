@interface URTAlertServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation URTAlertServiceSpecification

+ (BSServiceInterface)interface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__URTAlertServiceSpecification_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (interface_onceToken != -1)
  {
    dispatch_once(&interface_onceToken, block);
  }

  v2 = interface___interface;

  return v2;
}

void __41__URTAlertServiceSpecification_interface__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CF3278];
  v2 = [*(a1 + 32) identifier];
  v7 = [v1 interfaceWithIdentifier:v2];

  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_288089E18];
  [v7 setServer:v3];

  v4 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_28808A650];
  [v7 setClient:v4];

  [v7 setClientMessagingExpectation:1];
  v5 = [v7 copy];
  v6 = interface___interface;
  interface___interface = v5;
}

@end