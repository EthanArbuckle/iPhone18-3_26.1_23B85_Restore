@interface SBSWidgetMetricsServiceInterfaceSpecification
+ (BSServiceInterface)interface;
@end

@implementation SBSWidgetMetricsServiceInterfaceSpecification

+ (BSServiceInterface)interface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SBSWidgetMetricsServiceInterfaceSpecification_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (interface_onceToken_9 != -1)
  {
    dispatch_once(&interface_onceToken_9, block);
  }

  v2 = interface___interface_9;

  return v2;
}

void __58__SBSWidgetMetricsServiceInterfaceSpecification_interface__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E698F470];
  v2 = [*(a1 + 32) identifier];
  v6 = [v1 interfaceWithIdentifier:v2];

  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C8B68];
  [v6 setServer:v3];

  v4 = [v6 copy];
  v5 = interface___interface_9;
  interface___interface_9 = v4;
}

@end