@interface SBSCaptureButtonRestrictionServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation SBSCaptureButtonRestrictionServiceSpecification

+ (BSServiceInterface)interface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SBSCaptureButtonRestrictionServiceSpecification_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (interface_onceToken_18 != -1)
  {
    dispatch_once(&interface_onceToken_18, block);
  }

  v2 = interface___interface_17;

  return v2;
}

void __60__SBSCaptureButtonRestrictionServiceSpecification_interface__block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C8F28];
  v2 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C8F88];
  v3 = MEMORY[0x1E698F470];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 interfaceWithIdentifier:v4];
  v6 = interface___interface_17;
  interface___interface_17 = v5;

  [interface___interface_17 setServer:v7];
  [interface___interface_17 setClient:v2];
}

@end