@interface SBSApplicationRestrictionMonitoringServiceInterfaceSpecification
+ (BSServiceInterface)interface;
@end

@implementation SBSApplicationRestrictionMonitoringServiceInterfaceSpecification

+ (BSServiceInterface)interface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__SBSApplicationRestrictionMonitoringServiceInterfaceSpecification_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (interface_onceToken_24 != -1)
  {
    dispatch_once(&interface_onceToken_24, block);
  }

  v2 = interface_interface_0;

  return v2;
}

void __77__SBSApplicationRestrictionMonitoringServiceInterfaceSpecification_interface__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E698F470];
  v2 = [*(a1 + 32) identifier];
  v7 = [v1 interfaceWithIdentifier:v2];

  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C0F40];
  [v7 setClient:v3];

  v4 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C9228];
  [v7 setServer:v4];

  v5 = [v7 copy];
  v6 = interface_interface_0;
  interface_interface_0 = v5;
}

@end