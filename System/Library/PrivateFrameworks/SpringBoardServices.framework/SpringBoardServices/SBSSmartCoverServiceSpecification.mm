@interface SBSSmartCoverServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation SBSSmartCoverServiceSpecification

+ (BSServiceInterface)interface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SBSSmartCoverServiceSpecification_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (interface_onceToken_23 != -1)
  {
    dispatch_once(&interface_onceToken_23, block);
  }

  v2 = interface___interface_22;

  return v2;
}

void __46__SBSSmartCoverServiceSpecification_interface__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E698F470];
  v2 = [*(a1 + 32) identifier];
  v7 = [v1 interfaceWithIdentifier:v2];

  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C9168];
  [v7 setServer:v3];

  v4 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C91C8];
  [v7 setClient:v4];

  v5 = [v7 copy];
  v6 = interface___interface_22;
  interface___interface_22 = v5;
}

@end