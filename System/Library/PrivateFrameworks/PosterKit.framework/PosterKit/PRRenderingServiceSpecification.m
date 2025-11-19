@interface PRRenderingServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation PRRenderingServiceSpecification

+ (BSServiceInterface)interface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PRRenderingServiceSpecification_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (interface_onceToken != -1)
  {
    dispatch_once(&interface_onceToken, block);
  }

  v2 = interface___interface;

  return v2;
}

void __44__PRRenderingServiceSpecification_interface__block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F1C9E4E8];
  v2 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F1C94C18];
  v3 = MEMORY[0x1E698F470];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 interfaceWithIdentifier:v4];
  v6 = interface___interface;
  interface___interface = v5;

  [interface___interface setServer:v7];
  [interface___interface setClient:v2];
  [interface___interface setClientMessagingExpectation:1];
}

@end