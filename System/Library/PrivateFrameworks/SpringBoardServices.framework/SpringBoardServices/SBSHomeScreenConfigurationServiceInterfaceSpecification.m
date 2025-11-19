@interface SBSHomeScreenConfigurationServiceInterfaceSpecification
+ (BSServiceInterface)interface;
@end

@implementation SBSHomeScreenConfigurationServiceInterfaceSpecification

+ (BSServiceInterface)interface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SBSHomeScreenConfigurationServiceInterfaceSpecification_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (interface_onceToken_10 != -1)
  {
    dispatch_once(&interface_onceToken_10, block);
  }

  v2 = interface_interface;

  return v2;
}

void __68__SBSHomeScreenConfigurationServiceInterfaceSpecification_interface__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E698F470];
  v2 = [*(a1 + 32) identifier];
  v6 = [v1 interfaceWithIdentifier:v2];

  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C2D48];
  [v6 setServer:v3];

  v4 = [v6 copy];
  v5 = interface_interface;
  interface_interface = v4;
}

@end