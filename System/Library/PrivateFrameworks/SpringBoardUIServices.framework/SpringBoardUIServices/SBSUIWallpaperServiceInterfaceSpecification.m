@interface SBSUIWallpaperServiceInterfaceSpecification
+ (BSServiceInterface)interface;
@end

@implementation SBSUIWallpaperServiceInterfaceSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_0 != -1)
  {
    +[SBSUIWallpaperServiceInterfaceSpecification interface];
  }

  v3 = interface___interface_0;

  return v3;
}

void __56__SBSUIWallpaperServiceInterfaceSpecification_interface__block_invoke()
{
  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F1E25340];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F1E253A0];
  v1 = [MEMORY[0x1E698F4E8] interfaceWithServer:v3 client:v0];
  v2 = interface___interface_0;
  interface___interface_0 = v1;
}

@end