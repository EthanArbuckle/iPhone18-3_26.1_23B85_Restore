@interface SBDeviceEmulationController
+ (UISApplicationInitializationContext)applicationInitializationContext;
+ (UISDeviceContext)deviceContext;
+ (UISDisplayContext)displayContext;
@end

@implementation SBDeviceEmulationController

+ (UISApplicationInitializationContext)applicationInitializationContext
{
  v2 = [MEMORY[0x277D77790] defaultContext];
  [v2 sb_configureForDeviceEmulation];

  return v2;
}

+ (UISDeviceContext)deviceContext
{
  v2 = [MEMORY[0x277D77798] defaultContext];
  [v2 sb_configureForDeviceEmulation];

  return v2;
}

+ (UISDisplayContext)displayContext
{
  v2 = [MEMORY[0x277D777A0] defaultContext];
  [v2 sb_configureForDeviceEmulation];

  return v2;
}

@end