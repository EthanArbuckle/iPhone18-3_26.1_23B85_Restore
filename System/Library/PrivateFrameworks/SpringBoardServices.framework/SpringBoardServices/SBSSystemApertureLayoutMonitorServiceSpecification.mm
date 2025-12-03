@interface SBSSystemApertureLayoutMonitorServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation SBSSystemApertureLayoutMonitorServiceSpecification

+ (BSServiceInterface)interface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__SBSSystemApertureLayoutMonitorServiceSpecification_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (interface_onceToken_17 != -1)
  {
    dispatch_once(&interface_onceToken_17, block);
  }

  v2 = interface___interface_16;

  return v2;
}

void __63__SBSSystemApertureLayoutMonitorServiceSpecification_interface__block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C8E68];
  v2 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C8EC8];
  v3 = MEMORY[0x1E698F470];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 interfaceWithIdentifier:v4];
  v6 = interface___interface_16;
  interface___interface_16 = v5;

  [interface___interface_16 setServer:v7];
  [interface___interface_16 setClient:v2];
}

@end