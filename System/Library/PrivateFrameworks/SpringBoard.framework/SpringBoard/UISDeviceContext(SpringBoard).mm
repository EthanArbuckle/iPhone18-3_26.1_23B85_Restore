@interface UISDeviceContext(SpringBoard)
+ (id)sb_defaultContext;
@end

@implementation UISDeviceContext(SpringBoard)

+ (id)sb_defaultContext
{
  defaultContext = [MEMORY[0x277D77798] defaultContext];
  SBHScreenTypeForCurrentDevice();
  SBHDisplayCornerRadiusForScreenType();
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [defaultContext setDeviceInfoValue:v1 forKey:*MEMORY[0x277D77810]];

  [defaultContext sb_configureForDeviceEmulation];

  return defaultContext;
}

@end