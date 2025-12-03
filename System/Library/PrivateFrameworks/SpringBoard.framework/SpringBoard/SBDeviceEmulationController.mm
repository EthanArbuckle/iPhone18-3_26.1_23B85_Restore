@interface SBDeviceEmulationController
+ (UISApplicationInitializationContext)applicationInitializationContext;
+ (UISDeviceContext)deviceContext;
+ (UISDisplayContext)displayContext;
@end

@implementation SBDeviceEmulationController

+ (UISApplicationInitializationContext)applicationInitializationContext
{
  defaultContext = [MEMORY[0x277D77790] defaultContext];
  [defaultContext sb_configureForDeviceEmulation];

  return defaultContext;
}

+ (UISDeviceContext)deviceContext
{
  defaultContext = [MEMORY[0x277D77798] defaultContext];
  [defaultContext sb_configureForDeviceEmulation];

  return defaultContext;
}

+ (UISDisplayContext)displayContext
{
  defaultContext = [MEMORY[0x277D777A0] defaultContext];
  [defaultContext sb_configureForDeviceEmulation];

  return defaultContext;
}

@end